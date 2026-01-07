Return-Path: <devicetree+bounces-252399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5DECFE450
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:24:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1487C3002BB2
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54FE633290E;
	Wed,  7 Jan 2026 14:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdgAG1ma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9994232AAB1
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767795791; cv=none; b=QdssKm+rkuEsAesiFUVdVSq0PHX5FD8gcmZhIsdhqBfGxhx2SduaiskdbNm+cND4TFzL7Lrd06CO0jZ+hGzSxjKmBK0XG9ED01jQpX/XsPBImtyQF0Lq4y9toXROn+aFZYBoAYAAIbt4vj+nx9iJ+rQc3Q8bWkQ3t1elP3CVWLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767795791; c=relaxed/simple;
	bh=jQ9OF0ymoFals9exq/7bBWFp85XWYStw3l97Dj2gW94=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QYmCWoELxaReZqeDWmt2tFP34zHiuqJik3ImDkBNzFnPkKNaRvNb6X8WQxdrR9PjVP9Q8m9nzrz2PEvHUZg+arNXe5pgWRO9yfasuOvhQ1/zImyxJBuGsVtMXdJDkica7yzu11AIY6AuoRWEp1y/xVvon9qCXs89E4EuJnoSMJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdgAG1ma; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47aa03d3326so18245915e9.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767795788; x=1768400588; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lrBlQj4UNq5bX0P2Oj0hlsW+yiO8yPsf9QHL05Ffxd4=;
        b=mdgAG1maixa2zDjSZcpgU0TBStf6UW9RQprQFDEU6Pc19KN2KqWRMm+Vhp0H/+KEv/
         KAKm1Rec+EMg87IlhCoRkLpoc4FRs8gFGodbNmo0kim5ix4WxewFLE1JDUQjDOGjomdt
         e7GMoiCXj5GyvLIdwPFaiQR7lHsSlMLZsR19Kor7mW/4vv2naklDizF5m0St2vDu/YRF
         O2jd9ofoS9Uf6tpDpstxMuA4JDqO6nQ/sDyHT3+MCe2XG8MkFeXGUaIK1m/4Dh8zUeNf
         WLZnKWvMNPSlT0r9usmkpCHURMEY30kafVotWY2vrj66dCLmu+pxJ2k7cqbqDBrY/nak
         Byiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767795788; x=1768400588;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lrBlQj4UNq5bX0P2Oj0hlsW+yiO8yPsf9QHL05Ffxd4=;
        b=VIgCcwduJpuJbwG9DZCUc3rrrRtsdef7OXwiHaBTrInXAZRvB6sDCLZ66QcRYDbtaZ
         01FaC0fbd39TTNPY+5RAceyaXqbXburiZCcPwIfLHZYHDh1azk5672+Qduw5/xPeSptL
         jw58fO2i7UsHG43iet3jUCNHkux97GbT96k5MEzzsPZgKJb54J6d0SSKfLH3BQT7N/ot
         UEYO0LzJSnyEA85+MQVwFFBDsu9lMgmL9z9vhvNrfknIXPL+XXpmLNOTgAHhBNUP91bK
         Uu879KAe5wMsr9a7UpteSzrcqXV+SBj5SssHlrk3CmdEUWGOxAONE1c2eyVF6JoILHr5
         p+ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQdzMA/n4hWLF9tot64NC35zescPNFPPRT2I1WP7TjR/I0J6AtQxHYU1Adw8JLdMQ9F67F6XyVzOqt@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4RNGINmDOHxkt37RBjQ1jqLBKxRLlIBHRH++fRlSaof0OHQRe
	TDI616ZAOTKx4WU9D+hNEXgpea/18PmpXkkVHjIZMBPaI9xrKcJrbwBi5BbA1w==
X-Gm-Gg: AY/fxX5Ns0kmB1MfDLp2KwFoIkwnSu8MW7Ixq14X/DsKi27STD8WH2BSgviPyNeWppo
	upKMcO2vSsxm78CcRKNz31m6w+Voe/wXNEUI6zNsHxerMdocfwZW/IyQD7BNeZfTuHXI4S54GPM
	IpolrD6MI5Bwbc1OfbkSyKDG7JviBYNnNUbz12bwDYB6xsvmMkz3+OYB741k/GaUM+71z4zkcHx
	+/c1IyPVhAkg5DRpy3MynIfIcZX+Cs134W/HglzHSe0e7ZkBR5ImlYzSJlXCauJzB9kcic4rJd0
	Troa+FZdbgY4NhrSkx2/pSrguAKBgtFaR7sBISp1NjRbcuGAvPsOh8q8tswIqA0KmDZM7BKHGBV
	jn31xIM40o5teBlWQQxGopro7jW5yA/1f9dUOOjwll5iTOfavm+8Gv4Wj0nqyO4eofRs8K8PNIc
	lBk/DABE7t8NS5du+CGsyYYIphDh7y8TeutX55IuOb5zYG/+k62klFv4314iqb15CHwGs=
X-Google-Smtp-Source: AGHT+IEmuNd/Qt3WtOx0ii6Kg8kTIcWNI7cbIrZ2DWSZKQmAlz52wmNUGTe+YLzDADT+PqNKD4TrJg==
X-Received: by 2002:a05:600c:1547:b0:47d:4044:4ada with SMTP id 5b1f17b1804b1-47d84b1a0abmr31546605e9.13.1767795787751;
        Wed, 07 Jan 2026 06:23:07 -0800 (PST)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f4184cbsm107667935e9.6.2026.01.07.06.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 06:23:07 -0800 (PST)
Message-ID: <96bebaef0d608d4d7bdbaf0fbabe3b1835b01400.camel@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>, Nishanth Menon
 <nm@ti.com>,  Vignesh Raghavendra	 <vigneshr@ti.com>, Tero Kristo
 <kristo@kernel.org>, Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, Kendall
 Willis <k-willis@ti.com>,  Akashdeep Kaur	 <a-kaur@ti.com>,
 linux-arm-kernel@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 07 Jan 2026 15:23:07 +0100
In-Reply-To: <DFHSDXTVL4AU.2OQ9VB9TEJ75G@baylibre.com>
References: 
	<20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
	 <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com>
	 <DFHSDXTVL4AU.2OQ9VB9TEJ75G@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Markus,

short update from my side:

> > I think we would need to discuss this with TI via our FAE, because the =
change
> > in question has both been discussed with former FAE and the technical t=
eam
> > behind, and adopted in TI SDK.

I've reported this to the new FAE at TI, let's see how quickly relevant
people at TI could look into it... I unfortunately don't have access to
AM62A7 HW, but I've re-tested SD card on our AM623-based HW and I see no
issues under Linux.

>=20
> > > +			AM62AX_IOPAD(0x23c, PIN_INPUT_NOST, 0) /* (A21) MMC1_CMD */
> > > +			AM62AX_IOPAD(0x234, PIN_INPUT_NOST, 0) /* (B22) MMC1_CLK */
> > > +			AM62AX_IOPAD(0x230, PIN_INPUT_NOST, 0) /* (A22) MMC1_DAT0 */
> > > +			AM62AX_IOPAD(0x22c, PIN_INPUT_NOST, 0) /* (B21) MMC1_DAT1 */
> > > +			AM62AX_IOPAD(0x228, PIN_INPUT_NOST, 0) /* (C21) MMC1_DAT2 */
> > > +			AM62AX_IOPAD(0x224, PIN_INPUT_NOST, 0) /* (D22) MMC1_DAT3 */
> > > +			AM62AX_IOPAD(0x240, PIN_INPUT_NOST, 0) /* (D17) MMC1_SDCD */
>=20
> My board is setup to boot from SD card for easier u-boot testing. So
> only the mmc1 is relevant for my setup. I just tested which pins need
> NOST here for the boot to work, all DAT pins need the NOST variants,
> otherwise it does not boot here. Not sure if this is just my board or it
> fails on other boards as well.

Thanks for checking this!
I'm curious: is it only U-Boot issue? Does the card work properly if you
still have ST enabled in Linux?

I'm a bit hesitatnt to revert the ST on these (or any other) pins without
understanding what's going on in HW, because from all our discussions with
TI we've concluded that ST shall be used on all pins without any drawbacks.

Getting this back to TI will also help them to figure out the HW requiremen=
ts
and document them better.

I'll keep you informed, shall I have any new info...

--=20
Alexander Sverdlin.

