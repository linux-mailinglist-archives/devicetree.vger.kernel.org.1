Return-Path: <devicetree+bounces-275617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XMcCEP4FtWlkvgAAu9opvQ
	(envelope-from <devicetree+bounces-275617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 07:53:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D64D28BE22
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 07:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 214C73045A83
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 06:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 179E826E711;
	Sat, 14 Mar 2026 06:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AWElYE72"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA70B19F40A
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 06:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773471227; cv=none; b=ATeKr/5zzh6c8GF5mzn+OjN387tVIRXJ6fAFBOXtuQpmwHNxEPE3zfXiT5LTemamKZFFrqb+aUhGYQrR3K+3Z5cR9stYxPe+JeuyWTbuxAEAKCp2YCnBZZqMMGw/gfmJRE9sN/CW+BWmfevkjfiD8OtmpBoje4l0haxEPYWDTQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773471227; c=relaxed/simple;
	bh=OGqE3n15B8Oam7oaufyM4egmtIok/tvgCx592UaF9pQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XyMaBApRxZwF2g56MNmnIcX9PXrczxgw6bbT3NRr8gQuxCPZvaokdZ35R79VYszItWqDFW9/a/gNTae+9ITss0Lj8ww/Y1AKTS5HJZ9kSwozGdw/U7L5c6H3COkAQvOAMeIhFobFQCQMg4TqKugMGE2ujqpc078z/y3RPnu7lZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AWElYE72; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439af7d77f0so2320910f8f.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 23:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773471224; x=1774076024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OGqE3n15B8Oam7oaufyM4egmtIok/tvgCx592UaF9pQ=;
        b=AWElYE72LPnq++Y88iKIndzwe0yzI6583D6RQQRf9sJMpk08yGPuJ/2opVl4WNBHca
         vpk8zz4Wam1MOllrJK8vnBRJPuzvANvdE9GauzASNtpRq6Iuiwyh3o7tvfOwqBmR3RPz
         Yuq4BTxwpvrOXyRr3TWUwFG7GhY3cem1n2QWUQZuRX+juThOhE+wZ7UEwh8c3aMfJJWM
         /1o4ekhR2EAFRT+H1y9I7e6NL2k3RpMueknHP+KCmCOGiFgbRawuJNac8WXEM3l9rNH2
         ZPNk7asnMtcYtfmMXMRlfYRINshV7xD42CD4lhyNEp6Hl9qRJ62dPboQWU1tL6e9DPCj
         w/Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773471224; x=1774076024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OGqE3n15B8Oam7oaufyM4egmtIok/tvgCx592UaF9pQ=;
        b=Kr8mcTnRgzNdWuApHC2r3IhZeBQEh0U6dsR4/YCptGgXvaDIVerS1AZd0oXKo12147
         3PtW6IaEC5XK5s5DZE1zRBqdUnIyh5fxZgeoYlHGIUeow9O82v0VDn4xlcZL9rBRQ49P
         7UmB3V43mERb7WQuthUaxwpspbli5VtwQeiOM0WDX4Tb04wdCAs5pSyBi/f3pjXTsQcS
         9pfB3e2pRpIp7+B6KLXykrQypQPJkNbIV4oePkkGTE5UtKnUT+59cf8mUY7PxHOwg4qR
         lv3/tS9mXKCzLrNgqyo1n7T7uF68OCNeMDCrhDoPYb+N1gIPY1GtOXsBuM96gP7MVgwz
         hw1g==
X-Gm-Message-State: AOJu0YzAlygDB8b5AtNcz5HC4ppbOLfE22EicdpFpuKHA4B/as9wj/Rp
	5O+94H+Sb3akVSjMVcp3BailyuTeMz76IKorFDjMgCAFxTpQ3UpRFdO8L+2OCg==
X-Gm-Gg: ATEYQzxoLmQw+/f0J772MXDOZ4i1j4h/6PagVfeXfCHMnQuBZQ+jDLuCkTe59VX0CdP
	JHu0VNNjYaMJHeOaVRgRjVQGegugZnycEV8Ews1z7qneLNZnB1uG2WwZpB6VJH4Xg4Uc9N8LzcB
	X+d/LB1yIA8RuRBK224YszzFly0p8zTk3GcKtyQf2vqofikpry555xIs1hMFj9tSdVnmvn0cNT5
	FYLaBiqCLb3S2ireg/FlR9a92Xh5HVAPojZD9qLM+0TNBXst0YcpFTf+ToJs/mA2qEt68cJwk6E
	xyjH51DEF/Xk/bZIMfYANsvI52/Gw0Pj4v1MCqedaJij9o4od7P/xEmqEPUX3G6j4XZYG9Qh/3v
	vaBY75D8zoAp57mb1/F8vt3AqIrz+vw9TCDozKW3kvxopJCaJba/Z5g9mpFAWY1RaSlRJUxBUlV
	Sz0+Pb5pZO7S4m/cLHVk1SSiWbwkV5iLu/GUXHTaywqi+YzX90d1lzJjbWSeiwlhPZK6QQ/C9Hs
	eIBUw==
X-Received: by 2002:a05:600c:4f8b:b0:485:3a27:a960 with SMTP id 5b1f17b1804b1-485564981d8mr105428765e9.0.1773471224016;
        Fri, 13 Mar 2026 23:53:44 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-12-163.dynamic.telemach.net. [86.58.12.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48556422338sm40021775e9.7.2026.03.13.23.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 23:53:43 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
Subject:
 Re: [PATCH v2 2/2] pmdomain: sunxi: Add support for A733 to Allwinner PCK600
 driver
Date: Sat, 14 Mar 2026 07:53:42 +0100
Message-ID: <5083201.31r3eYUQgx@jernej-laptop>
In-Reply-To: <20260305-b4-pck600-a733-v2-2-ba6bbed7d253@gmail.com>
References:
 <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com>
 <20260305-b4-pck600-a733-v2-2-ba6bbed7d253@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275617-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,sholland.org,linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8D64D28BE22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dne =C4=8Detrtek, 5. marec 2026 ob 04:34:08 Srednjeevropski standardni =C4=
=8Das je Yuanshen Cao napisal(a):
> The Allwinner A733 PCK600, similar to A523 PCK600, is likely a
> customized version of ARM PCK-600 power controller. It shares the same
> BSP driver with A523. According to the BSP provided by Radxa, unlike
> A523, it doesn't require reset, as well as a different pair of delay
> values.
>=20
> Make reset optional in the sunxi pck600 driver and add support
> for A733.
>=20
> Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



