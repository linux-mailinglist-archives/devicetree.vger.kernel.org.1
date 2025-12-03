Return-Path: <devicetree+bounces-244119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A0ACA1495
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 20:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 44E16300A6E0
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 19:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C439261B96;
	Wed,  3 Dec 2025 19:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pwHwke8e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46BD32E136
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 19:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764788985; cv=none; b=GUEqHi/OLJhp3GL29bvUPSmOdlWQ+8dqQCJh7V4p/cipOUUva0LWCz8nHPfw7W2HA4TIpSLa5Exo2PG3plX6Izo86yDjv0uMrkHkgCcbknh6L3oy274q77AXOVJ3DxBVi7gO6kp6rHJlYw1SZc8Gu9iXkI9heVpNRM41yPeHFxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764788985; c=relaxed/simple;
	bh=UQ9P4gpoDW6/g+aOONFllk+M86mat3ZiIaRaBBWZWHk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XPABpKwLuwrDedIJa6EUPkBDEuQG5exaJZOrlwjAJrUByH4fLatYPPaXn/xYo/SgVXoJ3Qnm9mNXN5eODzQYExx24ZOuCIPqMkvhS0/Bkq3eirKewTUp/lZKs8GmROQJJCHxHVCSQJLLu3Avk7u8WewE6LFn+32QqQ2sKSK4aI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pwHwke8e; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-298287a26c3so1553645ad.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764788981; x=1765393781; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B3IRsPmCpiCqjml1bQ7Q4E8Gj2zFoNTCEFI1NKqRplI=;
        b=pwHwke8e/pv0MnQBxHtn34JFOWKRfYnkjYSJ5KPdk8MKepsuyBFH7weJsQ0fWSt0I1
         /eqlxOlLBgywz7H+nPhQRwmNiW7wNiZ0TqzOFdTXCMxVxboICLYLIsGdxW5iuWUb+6i7
         LtfYObIsmB1jh4OfbKgAWykQlK2ZbGm1OfI1EfNQIpHqRBKqBDEXXpCTFL8SRxsuOtqz
         pbjuic708dJAuawrsKwqo6xOnof60kic317n05avi1myu5zxFQ7LAjLHyyqXx0dO53Ih
         APZY9HS8KDq/2ih6GGzRgfIQ5+EF6ypSgfbY5q5+yG7rlsB00rT4qS2/sNyP3IRh+XXG
         +2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764788981; x=1765393781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B3IRsPmCpiCqjml1bQ7Q4E8Gj2zFoNTCEFI1NKqRplI=;
        b=YOXck+KuwWJJv6Muet/mcxGqA5j8ZMYVv+MdW/ns/jPGZrp+M11NhlSG87yzVvBx1u
         TUWMRRxvQvBVprLoR8X0WWAlNXy2N8dXcrIQbws69K+nhhw///sHQR8g6pV+k5Um3y96
         a98bubuknjOnt8LJNlJPX5qgf4Mdn3DQ1YTlFblYk9T2IIowjtheu7sIoilzRBMagu8e
         qkdNBTxyCdoJ+ByI2szljCQQ9OHL5tAwl8U9EbSb5yFUuhIOcJ+HHJxIBtuHZQx7in/t
         1J/EMMklbwW16yHIR2QbWj98C+8nf48KH9vsOVY2fDxwL/CYB0pcR1tIk7Mhs3KBzg6T
         oeqw==
X-Forwarded-Encrypted: i=1; AJvYcCWaKJYzi9VrGdi3V9UxxYP6/fRa7NzP+3k8JVXlCeC+L8unBVjQnD8nrfdMw6jhvI63Ul+6p5ivAq0r@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4Ze//gAb8w6zd4NELO8JFc8R/VzAYAXErflVepkrWLGa10R7V
	nhVFf5LfahawCPJ8esmQbwpmSKSi70Ha2DIBUfLIw4qOBMyFsZe15whF3SOhd2KtWCE=
X-Gm-Gg: ASbGncs0TeHzkdxcfgi3KWjbAyQ4P1Dp8FvmktqO2UZNR4lLrW+xJgUjRlpT0rXakph
	KU9RLqC4lWYBeF/jXixXBe1gZmDauCI+2i59G/vM9SuxuiUEttfljYsUlM4sopSUhH/pKbCxnZZ
	iuTZ48GE6mPCU5zJgyMs7PsASonHtawM4b2JcFRfmFS9MyhCYPL7S08kAx/ARWza8C8wH8k1uUn
	3J5tlBo2c85NPa24q1cHmOEzopUz2BUAKRcEJMHiDlupEhus1Zeii8Zvucm4KQvYhbl9bSnCLjE
	5ctlaT2WY02YvMwFTndoYRjU0gPr4kks+pSrWuVCgR4rcL8Z/AYBv75N38oPf5OnBydDBCI7xEe
	EHNtofQEuMalcrxpUcS0c1g3tghsVeGbhV2+BnywQB1JwE1YnNQp+EAVDYl/0V6pVkutHWdpM6M
	1DzwC3PsajPiaPynpoFkvbZ2HS
X-Google-Smtp-Source: AGHT+IF06RISZgnSJBztNS3j4oN16EtI84xL0/NkOjF0OCvNrCJXb3n/r6sR5sNc/4qd+kbVJVFsEA==
X-Received: by 2002:a17:903:94f:b0:29d:73cc:c9f6 with SMTP id d9443c01a7336-29d73cce8bdmr29319365ad.1.1764788981186;
        Wed, 03 Dec 2025 11:09:41 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:dc26:2c67:b58f:e40a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb7f69asm190635605ad.102.2025.12.03.11.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 11:09:40 -0800 (PST)
Date: Wed, 3 Dec 2025 12:09:37 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Corbet <corbet@lwn.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-imx@nxp.com, Randy Dunlap <rdunlap@infradead.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v5 0/5] Enable Remote GPIO over RPMSG on i.MX Platform
Message-ID: <aTCK8e1SJA7Uh3wL@p14s>
References: <20251104203315.85706-1-shenwei.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251104203315.85706-1-shenwei.wang@nxp.com>

On Tue, Nov 04, 2025 at 02:33:10PM -0600, Shenwei Wang wrote:
> Support the remote devices on the remote processor via the RPMSG bus on
> i.MX platform.
> 
> Changes in v5:
>  - move the gpio-rpmsg.rst from admin-guide to staging directory after
>    discussion with Randy Dunlap.
>  - add include files with some code improvements per Bartosz's comments.
> 
> Changes in v4:
>  - add a documentation to describe the transport protocol per Andrew's
>    comments.
>  - add a new handler to get the gpio direction.
> 
> Changes in v3:
>  - fix various format issue and return value check per Peng 's review
>    comments.
>  - add the logic to also populate the subnodes which are not in the
>    device map per Arnaud's request. (in imx_rproc.c)
>  - update the yaml per Frank's review comments.
> 
> Changes in v2:
>  - re-implemented the gpio driver per Linus Walleij's feedback by using
>    GPIOLIB_IRQCHIP helper library.
>  - fix various format issue per Mathieu/Peng 's review comments.
>  - update the yaml doc per Rob's feedback
> 
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Randy Dunlap <rdunlap@infradead.org>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: linux-gpio@vger.kernel.org
> 
> Shenwei Wang (5):
>   dt-bindings: remoteproc: imx_rproc: Add "rpmsg" subnode support
>   remoteproc: imx_rproc: Populate devices under "rpmsg" subnode
>   docs: staging: gpio-rpmsg: gpio over rpmsg bus
>   gpio: imx-rpmsg: add imx-rpmsg GPIO driver
>   arm64: dts: imx8ulp: Add rpmsg node under imx_rproc
> 
>  .../bindings/remoteproc/fsl,imx-rproc.yaml    | 123 +++++
>  Documentation/staging/gpio-rpmsg.rst          | 202 ++++++++
>  Documentation/staging/index.rst               |   1 +
>  arch/arm64/boot/dts/freescale/imx8ulp.dtsi    |  27 +
>  drivers/gpio/Kconfig                          |  17 +
>  drivers/gpio/Makefile                         |   1 +
>  drivers/gpio/gpio-imx-rpmsg.c                 | 475 ++++++++++++++++++
>  drivers/remoteproc/imx_rproc.c                | 146 ++++++
>  include/linux/rpmsg/imx_rpmsg.h               |  48 ++
>  9 files changed, 1040 insertions(+)
>  create mode 100644 Documentation/staging/gpio-rpmsg.rst
>  create mode 100644 drivers/gpio/gpio-imx-rpmsg.c
>  create mode 100644 include/linux/rpmsg/imx_rpmsg.h
>

After reviewing this patchset I come to the following conclusion:

(1) Other people have pointed this out multiple time and I will do the same: the
only way this work will move forward is by adopting a generic solution.  This
proposal is not (no need to try to convince me otherwise).

(2) The right way to do this would be to have a separate set of virtqueues for
each component that sits behind the remoteproc, instantiated using the content
found in the resource table.  This would follow the same approach as the
namespace, with their own VIRTIO IDS as published in [1].  That way we could
re-use a lot of the work already done for other components, such as virtio-i2c
and virtio-gpio.

(3) Some environment may be too memory constrained for option (2) above, hence
using rpmsg as a transport protocol.  But as with option (2), that way also
needs to look like virtio devices to the kernel.  It also means that protocol
to interact with components need to follow the OASIS specification.  As such
you'd have platform drivers for rpmsg-i2c and rpmsg-gpio that would register
rpmsg_drivers.

I don't mind which approach is taken as they both represent the same amount of
work.  Lastly, your next patchset should contain an implementation for GPIO or
I2C, not both.

Thanks,
Mathieu

[1]. https://elixir.bootlin.com/linux/v6.18-rc7/source/include/uapi/linux/virtio_ids.h#L38
 
> --
> 2.43.0
> 

