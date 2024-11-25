Return-Path: <devicetree+bounces-124178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CE39D7CFA
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 208BEB2346B
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C432A1BA;
	Mon, 25 Nov 2024 08:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="DDIv0taD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321DF188591
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732523684; cv=none; b=RtVxJ/zuKryl8oqaQt+MAjrt6l7c5Mo75yHNxsReK4c997NNTxiBrdKQu6+eAqv/oj8WChCCaMrAfb9te2AiV+Ibvg82zUO6KJzShawfDhuzp3TvWECwMjkvAYFoDnFy6YbnNQYYjO4f3yESDcc3bg+ppIYt+bYl1BZu7zbKpp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732523684; c=relaxed/simple;
	bh=5Nhv1Mm0+fbxtk2KdzQJbKFpjj2DWs2QHyapg7sOW0E=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HIb/5wTU6sJ8O3qTyP1szkgPtavZ2KTqHtZ9GHR7HQBZ2w2SvZvnwVBVrz7vUKULML5KuotSPqQpTOpSTTDqXMWCquZnpA8gBlBQ5A75oYrGQcEcPKtWVpJbRF1EnnzqZRWGx1cJ6igB2n49QRLLJ6EEp2xudi4WJFSN9AJVt9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=DDIv0taD; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5cfc035649bso5652336a12.2
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1732523680; x=1733128480; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vg0D/GXC726IE1EJTMsV29mWCwy+CAcBXGOGjtO3CHw=;
        b=DDIv0taDA8NxOu9j0vaARHXUXN4/MCxzDydDyuQWYRsU6gz+vewnPcxNbF5zL0IQUy
         qBwx06I22FYw0quLmSmGeCa46iLIfjgp7JD+lcl+HAPlFLsBk6Ln4ZF8AGjC5iyBYbFy
         gqp2M9QOQJY/OtQYJoRLyFJL3EPUYc+kCmwnbkfWl5TfRImvmS6ntM3BftwNAWDiQTws
         9zy90N3EpUfI6BJBEh59TNYWyH56oSdrtTpUp8jG2m3TTaGd45+H4miYskgztd+fSZi0
         8oVkI98JzMyUzc30rRJTLJQOoUmCYv6sLWr0j/GmAeMsOY+mmKo69aM7HoYritTbnsWu
         BtNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732523680; x=1733128480;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vg0D/GXC726IE1EJTMsV29mWCwy+CAcBXGOGjtO3CHw=;
        b=JwZg1POeVPtFz0+WsmmFHGVth1ugXiCJQrokFCPCQT26p+R71vPXzcAvgru9NzK8H5
         IWIvUMDiLk/KPM9kZRz9llJxnRdiOMPDrn9dqHpWxMgQvjoQDYtpB0QiMRdWcA15P6NU
         oycHk3f0BTMwOUEX79YRdswcXN8XkeqrkVdlVbdiPUYionL6Ji2+nFOgcjzsxMU/Ga0v
         R9X+sxVT/lqtpVAx3atmdEsPXog5pYGLKJNPHV1gwTNbJ1WhP+mr84OPziH39EOy7FfG
         LhdHNEn5Mx/9kVKa29mNh11ldckvkprupmGzv5xMHKsbqnpQ4T6Hronq/x01WRCnpAkG
         1fWA==
X-Forwarded-Encrypted: i=1; AJvYcCVKaNFFXkKg64P8wPwPgL5UAtd1olrWYzKPmTUjLVjNGXDoYZHbqKPrreAijAM5voyyhG3YoMOHrr+6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+m49w57ywWuSstHFMTbt/15eEvNS/vQ+Be2rSdb3EhJaVzLr/
	Mfh3GA2H/Bgafn3xhqLRRGVQ2i4zU9k0s1BnQ+p2i3S9soPn7FGwBoiEhsdit80=
X-Gm-Gg: ASbGncvLVLy9rGYmlTIvSEW+lWerTO2krlhtt2CTaHpWF/5r/zex3DI8sAS0Umyhi/h
	79JES4oun/Quto1Q9OiWCqBwWKe+2kdvOQMZkXmUVgEmEdnPFfFQGEgkuB/iBXlDWxZuHxZKfy4
	c8/u0EPRo6ZrK54//NjHj5aeUo7mxpe5DbK5mTteH/YV8fdM1o4Op8dwpGBxPs6z9ojMhiviTpD
	gtMlkd9Ei6aG0pHNepjbrze1wctI1iUhBFqrqdJVO10HJzebbwrokTAA7Bg+7nHfIEgTTG8svIA
	z14qRvHO2tBzXlKeshL9
X-Google-Smtp-Source: AGHT+IHTcfEoEYoZ9eKBklAA7GYxZ5kMOqK2yZ8KaAw01uPI3MZswrc9AVeFlfapHP8sHh0b3gsj9A==
X-Received: by 2002:a17:906:3096:b0:aa5:1d0c:3671 with SMTP id a640c23a62f3a-aa51d0c36femr719670166b.23.1732523679890;
        Mon, 25 Nov 2024 00:34:39 -0800 (PST)
Received: from localhost (host-79-49-220-127.retail.telecomitalia.it. [79.49.220.127])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b57c19esm433460966b.154.2024.11.25.00.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 00:34:39 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 25 Nov 2024 09:35:12 +0100
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 08/10] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <Z0Q2wJBMdN1dyJWA@apocalypse>
References: <cover.1732444746.git.andrea.porta@suse.com>
 <c48e6b9b178cdaa01b92ae82e8fd24c2ba5f170c.1732444746.git.andrea.porta@suse.com>
 <e57c9c8b-2534-4d3a-b762-ca9c1f7dac40@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e57c9c8b-2534-4d3a-b762-ca9c1f7dac40@lunn.ch>

Hi Andrew,

On 20:33 Sun 24 Nov     , Andrew Lunn wrote:
> > +++ b/drivers/misc/rp1/rp1-pci.dtso
> > @@ -0,0 +1,8 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +
> > +/* the dts overlay is included from the dts directory so
> > + * it can be possible to check it with CHECK_DTBS while
> > + * also compile it from the driver source directory.
> > + */
> > +
> > +#include "arm64/broadcom/rp1.dtso"
> 
> This is probably O.K, for now, but really the tooling should be
> extended so that DT files can be checked anywhere in the tree. I can
> see more such embedded DT overlays appearing with time, and there is
> nothing actually arm64 specific here, it is architecture agnostic. It
> is just a PCIe device, there is no reason it could not be used on a
> S390, Risc-V, or loongarch.

I completely agree with you.

Regards,
Andrea

> 
>       Andrew

