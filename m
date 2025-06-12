Return-Path: <devicetree+bounces-185421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C77AD79F5
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 20:50:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7A603A3B00
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 18:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876DC2D191F;
	Thu, 12 Jun 2025 18:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B4Q67bzI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5891029C339
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 18:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749754252; cv=none; b=LLGXA5umSoSZFDjrF0OKLunxCv3h1cToTYuqkqs1bs1m4rTleCuRlAoSIhpXlx9t/anpqrdlpdRxhgiadUZVT75VKXak/zzKhKYOHwcwXWWWu+x9F87xkUKvbf9ZjRLVWPUQ2l+o92PG6D1LHAiv+hCJWK/7sa6PUMBB84G31No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749754252; c=relaxed/simple;
	bh=m7RmatOFZf37KbJP7V43/R/yV8MVhhr9v6tiEmktbF4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=KWHQ1G/T7sGNlDgDt0FcXxQpT4zVoaFqJCoHSnLoHYIYdc1AoHRew9iSh9yZH7S2LnUSIzzYiNHwIec0NCr34Frx3bQaDjjWjCtBmX0D62WqA0Pcus9Owen5+qtJ8wdJU3Oy9+0eRm/W2YFqgrOZtnp35Pk6a9Sut64kyYCrKGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B4Q67bzI; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-450cb2ddd46so7479245e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 11:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749754248; x=1750359048; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8tbSeZMHtNCZXJWreRbrqTxYE7/dISAs2k09LBmNzrM=;
        b=B4Q67bzIJU4coZteL6LKnXHV9bWdUCjT9+viKzPnlDFVfoZG3z2picHwko74ESlp0M
         e8jZD0/SdoEzZjdNNhHiVnjK49nizYWZtpC9ttYthcdC2Iut4W2M8ADo5pXabyhq1jXZ
         h2MCX53seXrwwSmy0vziisZ/4s6Edsmm34DoWbkZtt2bxfLLiBRyLTE9U53AP4mngb6i
         O+c/SrBgQdsNevCsR1OIlSL54c7JvyJu9c0z5o3e3GV+npQtIbumN3OBe0gTLumyEZ3y
         8/R9kbSIzS+tgUWVHUd+BXMtR/K/SQnA5m22JwXjX5D1JqziA+3jHIdJa3SS/lZyPtqA
         WefA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749754248; x=1750359048;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8tbSeZMHtNCZXJWreRbrqTxYE7/dISAs2k09LBmNzrM=;
        b=ruj8Ejtk9zJh1WtVodS4GRhMTS7JJ6UwUfLJ7XwFOApS/pZgaUmpXEQ9Rk6dSZKqYp
         TSOpHV3l3nNw6t3H9uCugtcbLv25KdwA3PK0t9YVYZnTCeygzNz2PEosrNFkXcba9AcO
         k+NMN7723/i3LsFYaJTxYNEKwIk9lHVk+6jlr532MhKwnxpYBOrLNsdmIhvCzPvBtH/W
         URijBXuK6F0YvEhDalszHce2Vr87saGOmkbQ3FrlnAj5jjM8No+YtCuu2fbVpxT7ZnGm
         gNX/htm+lT5E57TVEfv/oGNRNvCuhB7qSo4p7Qnthe/8keoi/eQXSS2IQoDm9KH7Q96f
         cX2w==
X-Forwarded-Encrypted: i=1; AJvYcCU1cf5nsGm6bT8SysiaoyY5+R51ARw2OdXZJi9KA2yKDPbQv+iiWws+XVBjQZFkdwcyZckYqgMECN17@vger.kernel.org
X-Gm-Message-State: AOJu0YzYkXnEpw+rVkyT6S0RcI4KRE8DQ3vvhJQ23e93L9HSm3T9o2kX
	BPHKicsPRzNfToGvACR/Ht2cvE7HRDNAgBDe9OlM6opxth7357R8Nw7pp8q9tdeskoo=
X-Gm-Gg: ASbGncsYub9zSFf/Tmz9z/rlaHauke93Lsy5uIN7MafDt31TwFUVuVyMSFjfaFXI8hM
	XAZDk9nNCAfczPKo7KZt+Y0nhoqmm33qWmP8CbINk/n8Lj/8xUOZGwNwBdE5emn4s2wCbeCH8fF
	RX1CHGzqVf+Ds7uqp6WnNS8NyfGFXoa78Gd4fm2RoKMnAObTJV/9tcY6/2feO3YEu9R8ZPOC+1g
	X33KSBy+xouTWV2Iq5uLOkIXGwowLzE8HJMdtWnWksBd99WjYSz5uLsfg1JBdRdf6BsdfZ4dkxu
	fzzm6uXuyWsm495ZL1Z6zZ3xsxTykwRlpQxNBsdwAb595po0qrepxOI5N5XdzYTMw60=
X-Google-Smtp-Source: AGHT+IFFK9l+yfY1kr4NnMO37BPPvCq/YrWFhg/vLvoWZsXd9u+zkfYJb5d1B0c7bwKtakecyoBgfg==
X-Received: by 2002:a05:600c:1d22:b0:43d:5ec:b2f4 with SMTP id 5b1f17b1804b1-45334b0246emr2257445e9.10.1749754247699;
        Thu, 12 Jun 2025 11:50:47 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4532e253f64sm28578855e9.27.2025.06.12.11.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 11:50:47 -0700 (PDT)
Date: Thu, 12 Jun 2025 21:50:42 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>, imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Peter Chen <peter.chen@kernel.org>, Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, Xu Yang <xu.yang_2@nxp.com>,
	s32@nxp.com, linaro-s32@linaro.org,
	Larisa Grigore <larisa.grigore@nxp.com>,
	Ionut Vicovan <Ionut.Vicovan@nxp.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Subject: [PATCH 0/3 v2] usb: chipidea: Add support for s32g2 and s32g3
Message-ID: <cover.1749747898.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset adds support for the s32g2 and s32g3 chips.

The changes since v1:
* Put the device tree lines in alphabetical order.
* Add imx@lists.linux.dev to the CC list.
* Use power_lost_check() instead of creating a new REINIT_DURING_RESUME
  flag.
* Change the Copyright date.
* Leave the .compatible = "nxp,s32g3-usb" out of the ci_hdrc_imx.c
  driver because people can just specify both in the devicetree
  since they are compatible.

Ghennadi Procopciuc (3):
  dt-bindings: usb: Add compatible strings for s32g2/s32g3
  usb: chipidea: s32g: Add usb support for s32g2
  usb: chipidea: s32g: Add usb support for s32g3

 .../devicetree/bindings/usb/ci-hdrc-usb2.yaml |  2 +
 .../devicetree/bindings/usb/fsl,usbmisc.yaml  |  2 +
 drivers/usb/chipidea/ci_hdrc_imx.c            |  6 ++
 drivers/usb/chipidea/usbmisc_imx.c            | 89 +++++++++++++++++++
 4 files changed, 99 insertions(+)

-- 
2.47.2


