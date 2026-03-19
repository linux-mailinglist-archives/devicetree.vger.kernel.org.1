Return-Path: <devicetree+bounces-277746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC0QLSDmu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:03:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E932CAD6D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE001304B587
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC003C871D;
	Thu, 19 Mar 2026 11:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N3+croW1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370A13C943D
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921474; cv=none; b=SW4+FOp3kPZwdABSK8LJ039vFa+y96SZy2bGeBxM0dArYZsA/M/x6Y73A/qGxPRQayZ7YMBRUxDHaySZCMNL7RJYW092HhFcxU3pHwWOCUJ+Tg6MVOWTXEmZNoI2vIlPn+oAXPiZqiPoVmx2njfgEOw77G0TXq7VyaPxiWwosXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921474; c=relaxed/simple;
	bh=yC6Ijh7vCR3XdkIrIV9yo00I9p5DCq5XZe85XCd2G6Q=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=DXl7BeLAl7TZOr2bcoxsnEJ5RM7GZfK/AhU9kbpVjLUe9H2P8P6VRmRNdAMGI4QrJKgX4s+xhTq93ILtOApRf+u1bWhkDiJswykbDT3T/pLqj2nCoCvlNCHrkaX/jIwrFhnGTmzfU8IUv8E/3oXdlbduE95CsCP5T/Qi9ZOXy8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N3+croW1; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-483487335c2so6363075e9.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773921470; x=1774526270; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yC6Ijh7vCR3XdkIrIV9yo00I9p5DCq5XZe85XCd2G6Q=;
        b=N3+croW1c7ST5J6EHCB6cZhFtMCt3CFujblmcv9rU+YpIk5XbBR7diwuQ9dh88r5Ea
         s3gpqHoWW/GSSXNBsouH2LvA8pngRkWNIs2r20VG9PggrPD0vNOSaFMq3rN/QVG+As5l
         wMaSiQStyFr0Jn7eIup6GYOlWjWol6h7EBW9ET0Kwn4QNrqch89DBtvndzZb68YUUejZ
         1TSRsHd2hNlmRIuTCrnOvIzO3cHXU5gUQmRdoTAnlYn2CXegZolOwJgphhcl4uU+mQR2
         /Vd7L58+mMQ7pFJl/q4fEDrjyMQnTdXH6MrY4FgYc5wDz5EzvW3AqRxoZEgbK49bya/N
         rZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921470; x=1774526270;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yC6Ijh7vCR3XdkIrIV9yo00I9p5DCq5XZe85XCd2G6Q=;
        b=EjagFnUYjfhp5jKNF+WHBMzqQATBmEUi/Dlee2ftK3EbrB7XDwtsjjiB0I0aegjQd0
         FOP/wacl3qt2uNtyoewJIDoEgY4R1ljzbrhdupEthsvovrm3yiNhA0Kka9AhTINSFkFm
         4TOprxrcHsrc6uSPowbp/gA5LwFZuZyrIze74fobP1dLYIwkzzEXXF4pOI0lkn/WyWYr
         YKGvTOh7FzcJ1oLxxxGqvk3Faq9u2sniIFs7NAaDZJSkcUr/2M5v+Q+NAoE/wh3ZT20V
         HhgiXjzdzchGXzp1TAvLtIabQk4Q4nBn+t51TWJfEJhAV9ssf17gy8b2YZOU5k+i+PuW
         7gnA==
X-Forwarded-Encrypted: i=1; AJvYcCVyGNgYyTOm+cFV0VuXkXimzzE9UNrSxfg9/455PUgUg4kb2FCPr6U62Jf1Ip9q1aQa0YU03NoihuoG@vger.kernel.org
X-Gm-Message-State: AOJu0YzU+xKAhvRTzaUdTQyqDEfyxgWKEd7JWIraD6UHq2IG9agQI6cN
	vofhYikD1xOQpkKf/9sZ+xsxty9AGmgp7dQipraeUJwZXQpwQODyYZ91o52X1V3mcmE=
X-Gm-Gg: ATEYQzxn2cBYywNi0hxFme0SlLxS6kp8cBfXMtDr3pwHeLDo68e/e5WBSijsBLqBnGE
	8xOEYvEcYf2t+alXxkQFA/1Y+CkgGll52Rk3rxKI2czasVe/IGKSpmcccR/TrBx1e1LZA8XaxiH
	OYTl4I8QScnP0Ang3gqiV/O8Y0UZ/PclP0vk5kBwIHT3/c2Ou10G1DgHJAFBea6CMdyeRjXmLUN
	km2Riey48reIMIVtKznAyuEKeWNCzRx8/r7iDGDBtDVpy3gCwx00qh+IdYfxxKtWT+tCDlizjZI
	E84MUEIWj/L/GbXJX0q63HJUA//xjperN7+0CWkka5ZBCyLGZgVm9fsZId7y14V/+QB9tBx3lmq
	vZg8ARk892LQvKtJIvJZ5D+I8PbehiqM3PJOPtDpvrUc8H89X2OV5omVmgc4immBwwIkPJgadmk
	yvtX+fg/PX5fDAmPR13ulCOfA5BGE=
X-Received: by 2002:a05:600c:1992:b0:486:fad0:b166 with SMTP id 5b1f17b1804b1-486fad0b2c8mr30813105e9.17.1773921470276;
        Thu, 19 Mar 2026 04:57:50 -0700 (PDT)
Received: from draszik.lan ([212.129.73.9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8bd5f7csm65030485e9.0.2026.03.19.04.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:57:49 -0700 (PDT)
Message-ID: <ae31c62c940e99077d44e1935465dce7db0e4c06.camel@linaro.org>
Subject: Re: [PATCH v8 05/10] pmdomain: samsung: convert to using regmap
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>, Ulf Hansson
	 <ulf.hansson@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>,  Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Liam
 Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Peter
 Griffin <peter.griffin@linaro.org>,  Tudor Ambarus
 <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, Will McVicker
	 <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Date: Thu, 19 Mar 2026 11:58:45 +0000
In-Reply-To: <c5ba58fb-50f1-4067-a099-97169ea81f68@samsung.com>
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
		<20260318-gs101-pd-v8-5-241523460b10@linaro.org>
		<CGME20260319101424eucas1p2d5dca06240e8760046fb40507ffb3bba@eucas1p2.samsung.com>
		<CAPDyKFrprMSLOBMB_BHbi=j6UXV4dXBn-H8M1BsqDWNSCJwvuA@mail.gmail.com>
	 <c5ba58fb-50f1-4067-a099-97169ea81f68@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8+build1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,gmail.com,linaro.org,google.com,android.com,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-277746-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E2E932CAD6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Marek,

On Thu, 2026-03-19 at 11:29 +0100, Marek Szyprowski wrote:
> On 19.03.2026 11:13, Ulf Hansson wrote:
> > As a follow-up patch on top, please consider converting the open-coded
> > polling loop above into a readx_poll_timeout_atomic().
>=20
> This has been tried and it doesn't work in all cases required for power=
=20
> domain driver:
>=20
> https://lore.kernel.org/all/5c19e4ef-c4fd-4bf5-88b3-46c86751b14e@samsung.=
com/
>=20
> Probably a comment about that could be added directly to this code to=20
> avoid such conversion and breakage in the future.

I am planning to revisit this in the future and am hoping that we can
figure out what goes wrong when using regmap_read_poll_timeout().

Hopefully such a comment would only be short-lived, so maybe not really
worth it? I can add it, though, if you prefer.

Cheers,
Andre'

