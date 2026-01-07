Return-Path: <devicetree+bounces-252408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DF7CFED7A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 17:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9250D3267633
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C3BF34EF03;
	Wed,  7 Jan 2026 14:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OJonxOTB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3754320A1D
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767797357; cv=none; b=SHlbRgilJBmFFMFOH+RP8PRRYwY2lLwozEuDzaHcQrrHrVDR0FaF/3HPUnFjY/ira3uZMH/GuH8hiAGKu86gKkCzRq4fbdPgwU5pLmeD2IHDshQacmhlWBPIw/MZSa0T8INuPnJrp461PliW/HvJ9Wg8DR6GSXQRdPzgB07WC6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767797357; c=relaxed/simple;
	bh=OfBOw+zvnXh+fRBNf7KvpQ50xt+kI6/6pjV+rCaiu1A=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LCnsux6CSpmiB694zS+ytK80ar8Y2nMl0zzfpEcoWsKOF+mTFRcv5B5WeSlp3EG0ic3jZP5Il7Kqu0syaw8tBqAp25UYqlM/821vITxTdlgjdScgcfKmBoOPBDvmtQIz5CrIurI68UeP9qjvEEZ4M5SCpZzTRwlqm9NTQZmq+RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OJonxOTB; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47d3ba3a4deso12357485e9.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767797354; x=1768402154; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=peT8hDVe1vV9CvEJKFFERAFarbRQwnMnwY5d7hImP38=;
        b=OJonxOTBOVvsRGrhOfXmogjOPnb6wr3lvAdvm/LCYNMqyjiADVIPb41OtxpdIpriyf
         IeIK8OQZ0IOvPxTDGW5wh4Mdhp6zesh9qul+BOxEKybpntA6c3so6ZcHZsjTVHuySpT6
         eeqD+5YgdIy1NEg3WG8/mIM3M8RFmKvdTMGdgCEgSBWRI6ifT1Lpz9W6cNmaRMWHpVF2
         Spb9YEafC2sOqtlQ7fvQHVIUpN5TJkc/iAh8Dtqokmf3Ti5xR3Ii8gbbhOf+RQW/Ysi9
         0WVrXhYliOKlYTf/icPwcAKsw73n9m5VfqnQHqTqwQxbM6N1wTzQViTVZTmzfRf1dAQP
         y71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767797354; x=1768402154;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=peT8hDVe1vV9CvEJKFFERAFarbRQwnMnwY5d7hImP38=;
        b=poyjDmMIIL0EQ2sIuVMOxaxmcw2X4zain2WzIKGPFjj/UzwpZUsGubWqPX/pljcfHc
         1gaoP7z30oHFJBD6P/01GNh6rtwBCwRPS8s4jdwwKSHCgqmcOKPTJU2BWAce3EW+3qHr
         /152riPG7TuVDZwOFxleqDLnh0d3FWjBS6O+DfxkQ91z40uZpG/YaINJQbCW6L0MBwXf
         ALXxAejiK2trGdBoKD1+j1zZXhVtJioFXVOD9QvwwDf8L5HXZtdGdnSgBpP/lNwzBnsj
         I9LMloCryrSCTzLhg5wGeHDsrtaTDB9e3s3CdmV9wqC6gO07qqnpL2Dnesc0f+6DdrEE
         fCKg==
X-Forwarded-Encrypted: i=1; AJvYcCUWoQdvWb+bWv29HAtEMh7QOiPOvZHNcx02yHE3lKjm0PLSS/xFdaUzT1T6EHo59Z48koEwKmrARVAp@vger.kernel.org
X-Gm-Message-State: AOJu0Yyda5MWpUSQKDaBgwjWUsrIwZoz0yCVW5UcDKD3nfzTUUTUp0+A
	lY2BwG/1SdkQvEhJG5o65xb6GGN2skSrOlzWRlhu9T1JOHlFiBE5oTXY
X-Gm-Gg: AY/fxX7/EKdo6ZynWKgljptKf7Zo+SYR1CtboY3ZmzfNGbHCAjutbovWyjvN2Uqk5rv
	Ou8qCKCZNYyTGJ5WbsCnRVjKdu0CwhtMEYP4z2tL8KKJAOVUBPUbrIwjiYPnrEW1pyfmQHc0bIj
	1AvA2BewIXDi9x1QXvx/UtoxwxrK7clkzqPQSPWv5cQy6xbTV3kCVEARCYvgaqPe086xAMMQoJI
	/gbumAk9G/h39DM+U0socEt/VwEgFBvngLvP13iIT2UfMyAywCeUtJFJn7zdKbwtIT1mmM88qnX
	tAzOWclgsBk8i+HBeuiI0Ic9CqwYuTh1EWYecQOY+Y/z9vEDjketE/SKBM9KYT9vtzfHzc+gd3n
	Obn1rg/pIpYizRtlpoPiVwB1nf1GGfI15yALMkKuCiAIJNG9HIG8MQSeOZH++IU7NuRN+IH9tbp
	+XsR98y/R4K5Mj9J2ecoFxMVC3CUb5NipsgSOQdOATapXWSZVOYqWx4eyVqTd7m65y8Wo=
X-Google-Smtp-Source: AGHT+IHuQgPCjwiilqr6hyBHN1HkSgQVZ6NN3lKXSTWrISePYNQxZTvkk1unNl5fT/qHKyALjSw5Og==
X-Received: by 2002:a05:600c:4e13:b0:47d:25ac:3a94 with SMTP id 5b1f17b1804b1-47d84b32f30mr35819795e9.17.1767797354005;
        Wed, 07 Jan 2026 06:49:14 -0800 (PST)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f418538sm99516175e9.5.2026.01.07.06.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 06:49:13 -0800 (PST)
Message-ID: <5e116c9089bfa8d645eb044090a75523758c6743.camel@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>, Nishanth Menon
	 <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
	 <kristo@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, Kendall
 Willis <k-willis@ti.com>,  Akashdeep Kaur	 <a-kaur@ti.com>,
 linux-arm-kernel@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 07 Jan 2026 15:49:13 +0100
In-Reply-To: <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com>
References: 
	<20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
	 <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com>
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

On Tue, 2026-01-06 at 18:25 +0100, Alexander Sverdlin wrote:
> > =C2=A0	main_mmc1_pins_default: main-mmc1-default-pins {
> > =C2=A0		pinctrl-single,pins =3D <
> > -			AM62AX_IOPAD(0x23c, PIN_INPUT, 0) /* (A21) MMC1_CMD */

this is a bit trial-and-error, but maybe you could try to add missing clock
retimer/loopback pin for test instead of disabling ST? Would this help:

			AM62AX_IOPAD(0x238, PIN_INPUT, 0) /* (N/A) MMC1_CLKLB */

some SoCs from AM6x family seem to require it even though TRMs claim the de=
fault
PoR state is the proper one.

> > -			AM62AX_IOPAD(0x234, PIN_INPUT, 0) /* (B22) MMC1_CLK */
> > -			AM62AX_IOPAD(0x230, PIN_INPUT, 0) /* (A22) MMC1_DAT0 */
> > -			AM62AX_IOPAD(0x22c, PIN_INPUT, 0) /* (B21) MMC1_DAT1 */
> > -			AM62AX_IOPAD(0x228, PIN_INPUT, 0) /* (C21) MMC1_DAT2 */
> > -			AM62AX_IOPAD(0x224, PIN_INPUT, 0) /* (D22) MMC1_DAT3 */
> > -			AM62AX_IOPAD(0x240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
>=20
> All of these have ST enabled on PoR, according to TRM.
>=20
> > +			AM62AX_IOPAD(0x23c, PIN_INPUT_NOST, 0) /* (A21) MMC1_CMD */
> > +			AM62AX_IOPAD(0x234, PIN_INPUT_NOST, 0) /* (B22) MMC1_CLK */
> > +			AM62AX_IOPAD(0x230, PIN_INPUT_NOST, 0) /* (A22) MMC1_DAT0 */
> > +			AM62AX_IOPAD(0x22c, PIN_INPUT_NOST, 0) /* (B21) MMC1_DAT1 */
> > +			AM62AX_IOPAD(0x228, PIN_INPUT_NOST, 0) /* (C21) MMC1_DAT2 */
> > +			AM62AX_IOPAD(0x224, PIN_INPUT_NOST, 0) /* (D22) MMC1_DAT3 */
> > +			AM62AX_IOPAD(0x240, PIN_INPUT_NOST, 0) /* (D17) MMC1_SDCD */
> > =C2=A0		>;
> > =C2=A0		bootph-all;
> > =C2=A0	};

--=20
Alexander Sverdlin.

