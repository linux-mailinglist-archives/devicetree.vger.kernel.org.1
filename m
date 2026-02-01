Return-Path: <devicetree+bounces-261577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLo8CG9Uf2ncoAIAu9opvQ
	(envelope-from <devicetree+bounces-261577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 14:26:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB23C5FEF
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 14:26:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7B0BE3002B74
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 13:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD3434FF66;
	Sun,  1 Feb 2026 13:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z3CqHZMp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5261829B795
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 13:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769952359; cv=none; b=rTDdU6zw0BagBzzT6IEIhZ7wkJtpdTzaVQmTFRpMnibPMB0wNaPJ+LYvob7TfncE56dqpS5UEyJ1xvw0a1TG3btfPUXLDhDsYIN7PQVDTAyMYyQCRC7NYh9K8U0yoZl6xgxRID0hiskZ3hOCnGJFYaYrUSHnNgbGyhhzepPZUnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769952359; c=relaxed/simple;
	bh=jJFvw+hb/Ku72BqORxwCb7dF69kYAVC7y3zLvEXgqH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kXGDaCWMLmZNsQTheIfMn1GOnR8RH0RhLTpMP0uYZyZF7RZz/fxcIUGU7Rl349YnTDRppOyJo3nX6aAx6+dEEKLP9oWO3oxMhNJ2Y444UiO3DjmY/zlbZBX6RHhJHi93FgGi+Bg1/KTBgjwB56WzAOwCekQJuPxmes4C2V04/KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z3CqHZMp; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a09a3bd9c5so25540235ad.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 05:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769952357; x=1770557157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JUlbKJ0tAnOBahwTWyLY7mbYAo1LF+unvBDF/GtAc0o=;
        b=Z3CqHZMpctzthzBEtXQ+AxEeBLSFVXXUiulhalc+Q6viCC7r7sJxDtTzYVTgD/JShq
         4CbLsZ3Lng6G05p+aj1UJRBQIZ1TI3zsnp/zzyfuWkFR6w8brVHealvyrpbWsjEFB0+S
         vcN8pVeq/XKQnGC0tobiXtXASNUf4X0f8GWJ/Nrnk+UVgRHSj4vn+u7qZcx11TEIg/89
         pwWwdt8FIxJ0fuKQ7oqaGjluzqmA7uNTuJ5rwfD+wD4/EMeSS7kn8/VPh3+N+khSWVGN
         YhgpWrCgGQPFKz5HOt2WUmgDvZ39uIJseWavWya19udpQcvFijLD0/5GMDZ94bQlYTq2
         wNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769952357; x=1770557157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JUlbKJ0tAnOBahwTWyLY7mbYAo1LF+unvBDF/GtAc0o=;
        b=xJbBFvLSJcF6dTyr2omZX91SmnP7cjLEnIV0EEFci0On36sm8GS5+q1BUVjKxxITzA
         W8Vi8zQ3PNYrtF8LrYAV3pIn9WRTTCmSCFzgYX9H4WfgxaMgFNGI5Npzz99X4DOsFgYR
         v2yMheJtLiMoDtiHBB9qqpU8ISGwR7TvAZhQhZizVCFxB6sGmqEd51qvXVulEWLKS9Iy
         MHwYTcQUaNg3TbrhvywcXY+pBiQqYCblV1K+bykLsGZwyG0VYsQRHFvHvco1zuCFQSUN
         WEK1O4rP2+E0U+/WQiZ4LDIedvaoxSbQmbUeayWDbKGfbf2KIbi14l48mvLw79V6UBls
         WoGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKAcVcZeA0Vo1S+xC2kwf08Kv+UjjKzodzlExQAGQQIDJhOJ2Ff6ok+Kl89DFc1tr4h3jaL+4d/sgM@vger.kernel.org
X-Gm-Message-State: AOJu0YxHzQOAtGriRDtClP0d17RcxmS/RtI5TqkFfDCCCbTGn+9+BQsH
	2191R9oimjFkrKk5vIvxGT4xR/YEFX6P8VZaU0VpCbdXSCb4FkPjxPsj
X-Gm-Gg: AZuq6aJIG7E8N95VQV6TOaKUHESHxwaoyiPZqhMbTQFoWwHKDeV4QNqNNqbn9UnUina
	p8beo6bbjyt1J2xBJCw46JTGbFgCq2YKAMGsQK1i4K5m/FQ7izZX9m1I5SdoIVe6HyfnSAywELS
	usmB0Tae9gfs9jB8MZF9wcNgnJBczzU7fSav37rxUx3XrKdN8uRoQRht62Rg6h/NFtCV5LcuuHb
	I8DX7Itu/IyMqU49H5QCY/Ja7EDmx8rMlwhmc7T/6dEOiYh3x5q3F/dXTxrhywxFDkI2MshVQXh
	TqvrDVE44pqtMafWPeoQELDqJvPwdB0H8ZKqXH2Wh9A+qMTlbo594OEmuVj8k4E2duV3t/3zrTD
	jc1yyFUC6MeZQ/erf5lMeCEh6wzy103QyNQZpzJlqurK1DHoYJhiyxMLJgL+Pz+1Sw1C88iX1OB
	ivWPfZgNAk
X-Received: by 2002:a17:903:8cb:b0:2a9:db7:4467 with SMTP id d9443c01a7336-2a90db7462fmr9667595ad.6.1769952357498;
        Sun, 01 Feb 2026 05:25:57 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a8b47f4717sm108599565ad.18.2026.02.01.05.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 05:25:57 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: conor@kernel.org
Cc: alchark@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Sun,  1 Feb 2026 21:25:49 +0800
Message-ID: <20260201132549.66244-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260131-acclaim-exciting-dff4e7af23a5@spud>
References: <20260131-acclaim-exciting-dff4e7af23a5@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261577-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,manjaro.org,sntech.de,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2DB23C5FEF
X-Rspamd-Action: no action

> > Add devicetree binding for the OneThing OEC and OEC-turbo
> >=20
> > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> > port, and one USB 3.0 port.
> > Among the lineup, the standard OEC model comes with 2GB of RAM, while
> > the OEC-turbo features 4GB of RAM; The rest of the specifications are
> > identical.
> >=20
> > The OneThing Edge Cube series (shipping with the vendor firmware) is
> > originally designed as a PCDN (P2P Content Delivery Network) device.
> >=20
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
> ntation/devicetree/bindings/arm/rockchip.yaml
> > index ae77ded9fe47..eeafe40e0f23 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -813,6 +813,12 @@ properties:
> >            - const: openailab,eaidk-610
> >            - const: rockchip,rk3399
> > =20
> > +      - description: OneThing Edge Cube series
> > +        items:
> > +          - const: onething,oec
> > +          - const: onething,oec-turbo
> 
> This doesn't match your dts, so clearly you have not tested this
> sufficiently. oec and oec-turbo should be in an enum.
> pw-bot: changes-requested

Sorry for that. Following Dragan Simic's suggestion, I will merge 
these two board items into one in the V3 patch set.

> 
> > +          - const: rockchip,rk3566
> > +
> >        - description: Xunlong Orange Pi RK3399 board
> >          items:
> >            - const: xunlong,rk3399-orangepi
> > --=20
> > 2.52.0
> >=20



