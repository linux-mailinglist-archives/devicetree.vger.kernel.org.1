Return-Path: <devicetree+bounces-265339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAItGJIIj2ltHQEAu9opvQ
	(envelope-from <devicetree+bounces-265339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:18:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A636C135A83
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:18:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CEB53059A85
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B362E34D915;
	Fri, 13 Feb 2026 11:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PelC9FNf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E1834FF5F
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770981298; cv=none; b=mzahskzDAHmUUuJWQy6n+2UQjP/w2qaKE+yc2EVvbek49tOfdNhMcPkKWN5hgawARBdgpjBXE3lrANPPlnDapfAyvJJKog8m3itH7BVBCr7OpvCNn3tGBy4pQZ6sYDyPmnzNf1sGzPHYoOOjExJ0E3eXevNMy4M6Gnbetxr9yXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770981298; c=relaxed/simple;
	bh=8ytPLGxNj2ElVA8s+TjvSjee8Qn3nzSUlf4+BWnRGjg=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=mMWvnAGK/G4tp0HkCVU49c9YYkQJaT+gWdAuKHORKyjrv/sICRcWJa2D9p65KzQXZd/ugMQvaEmuWzAHVSpSSWV4Tcp6IgcdYTH3hX7vjZdZSrwrBxxKyK5NvqldaPCI0O1jq61pT7u1r3ex9j1cAjNXnsdGFXcyZFdQgrkJomM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PelC9FNf; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b8f96f6956aso99871266b.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 03:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770981296; x=1771586096; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ytPLGxNj2ElVA8s+TjvSjee8Qn3nzSUlf4+BWnRGjg=;
        b=PelC9FNfMKTHVBtO+wAgF8CPg5WWR1qbJd1PstJVvqLBHn8eSjUhOXaSEXoXTMZ43P
         T1bxvdxk/GXoulZcHp+sQcUCcSg15pA/i8frzb0pLP1313hhKeKa08aPq/uGPS8Stl6R
         wQN614kM1wkCzR7GQQgoh4dPZG4RpRTIrSbC23gNgYNnt2JpQ9I59KeSdmKDksWBxry5
         J8/Ztq12MGql/Ppamw9bF+s0tSpuzwzfvVyES/dsc0D0bROD5xGTw5VHq5zJ8c3o1L99
         Fkw/OCEvEEWlEi4UnoI69WZpD4tA4ENmhL7F9D5236ExpzatvwsUWautWKCkPjCHdGCg
         t4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770981296; x=1771586096;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ytPLGxNj2ElVA8s+TjvSjee8Qn3nzSUlf4+BWnRGjg=;
        b=oTEWUu7DNIEi6iiA9aHV5qK/ib3xw69TmP8SXiG9fJLkCg4nPZ8FAJhUB5jay8aolp
         lgiCVBfzw7hegq634mhgiDrNB7AWQ2NEqEs8xtTxuautYq3qWEiM37LBemDZ6t0EqQBR
         3HppDnNmXb39jifjdd2fTkhWyOANgKcBijEirjlPGiQHTPhWTWoPMyev6+fkKqC0OFil
         RDhHaF5SjO/+j4sY57PpWfFDyxff0T3Zy42CX9c+pZL1rSg+Ddq+Y52sP86zKnN90Ck3
         o46YZ0gtKtE/ao2IQbdVwFqGUt6+HULJRdMKdRVubgvmnNt7P059vLfIabdtglTk2r0B
         Xb3w==
X-Forwarded-Encrypted: i=1; AJvYcCU3X2+IZkFu1GMYwheBp9KUcaEcKfR3sS/mceloeH5wfOU55tRrLWIOkrX75nydN4c1pCCgME/XGr1R@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0po92sutEE9CxxCXmhYwiK0s1esTRShnpAb5+cDMDxCSSPjx9
	Ej/26LjYrSi07m3uhNz8mnTuhz9b/KDPLE3PxnQwicjxW0F3u2AUsyG9
X-Gm-Gg: AZuq6aK0QyFE7dHnn9B+3W+mNKnT8IgC1ptCvvj/q9nq6vKOae92FKshSKUbW8tdkZH
	3q9eTNBAhKIBcumQ/yQinOF2GGzPNQRxgBl64+ddWNhFsDvnEKbY76Gf1sqTdfPYm4GuneJyobe
	u5NsBhXPjjytzW0ZoVfE6BKXwKaK87CvkqsaSLttN9NYbi0nsoDnksCUZMzc3IgtNW8g3CulABm
	8By7JPp4ElPcA9X8m8jIFWBoaiW0TJh7A3UcIpl9++UQ8x4nWAdwzL7+8GvNVZyTP1RH5/MMKgd
	tvBWQFok8ro5/C/GYuDeNESrwbIOTOXkmFyAokOnvyFDuYXAPPUuoMnsfIC0u2z4TCgun3fhoXp
	z4Ic0SrwQ7QHwvmZxDw4VpPYbzikdkbB86rxMM+0uCE6mqsd7xlHve9zt7iPVh6STP8eglBSwmA
	KutXsD1CsBCPqdD1QRV6Ry4tfiMj26SQE7c3DxTrWsTJgRYLfv+5ZcXlIbifAKH9KkJkgWrSuKQ
	rMD
X-Received: by 2002:a17:907:9715:b0:b84:2b70:98ec with SMTP id a640c23a62f3a-b8fb44d62efmr75438766b.42.1770981295511;
        Fri, 13 Feb 2026 03:14:55 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fbe407520sm3908666b.43.2026.02.13.03.14.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Feb 2026 03:14:55 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.4\))
Subject: Re: [PATCH RFC v4 1/4] media: dt-bindings: Add Amlogic V4L2 video
 decoder
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <58d57a6c-7c69-4f5b-a4c2-f34ef0238511@kernel.org>
Date: Fri, 13 Feb 2026 12:14:43 +0100
Cc: Zhentao Guo <zhentao.guo@amlogic.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-media@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <D93350ED-72E3-43B5-BA4F-42E0FE491B2A@gmail.com>
References: <20260213-b4-s4-vdec-upstream-v4-0-c7112d00d662@amlogic.com>
 <20260213-b4-s4-vdec-upstream-v4-1-c7112d00d662@amlogic.com>
 <d96c689d-a5a3-453d-a1ab-56dc1bf01635@kernel.org>
 <75e55ceb-e6dd-47b5-a829-66f6fbb3e13e@amlogic.com>
 <2f68ee18-e9d9-4da6-900c-93a7663b3c9d@kernel.org>
 <598c161c-d157-40e5-992c-912540589d7e@amlogic.com>
 <58d57a6c-7c69-4f5b-a4c2-f34ef0238511@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: Apple Mail (2.3826.700.81.1.4)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265339-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amlogic.com,kernel.org,linaro.org,baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piotroniszczuk@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A636C135A83
X-Rspamd-Action: no action



> Wiadomo=C5=9B=C4=87 napisana przez Krzysztof Kozlowski =
<krzk@kernel.org> w dniu 13 lut 2026, o godz. 09:55:
>=20
> On 13/02/2026 09:31, Zhentao Guo wrote:
>>>>>>=20
>>>>> Why? What for?
>>>>>=20
>>>>> What is canvas provider?
>>>> The canvas provider is: drivers/soc/amlogic/meson-canvas.c
>>> What is this "canvas" device.
>> You can think of canvas as the agent through which the decoder =
hardware=20
>> accesses DDR.
>=20
> AGAIN:
>=20
> What is the canvas device. Describe or point me to bindings describing
> it. Your current bindings say that canvas is "a collection of metadata
> that describes a pixel buffer" so there is no way it handles DDR =
access.
>=20
> NAK
>=20
>>>> In short, canvas is a hardware IP inside the Amlogic SoC. The =
decoder IP
>>>> needs to access DDR through canvas IP, so we need to reference the
>>> Why decoder cannot access DDR directly?
>> The internal topology of the S4 chip is designed this way, we don't =
know=20
>> why our VLSI colleauges designed like this. But similar designs have=20=

>> been removed in subsequent chips, eliminating the need to rely on a=20=

>> common hardware IP.
>=20
> Quite poor explanation. Based on this, this as well could be entry in
> device reg lists.
>=20
> Anyway, I am done guessing, explain properly the hardware instead of
> answering with half-baked responses just so I will go away.
>=20
>=20
> Best regards,
> Krzysztof
>=20

Krzysztof,

May you pls explain me: what added value - to upstreaming aml video =
decoder - will be provided by giving NAK .... because canvas/DDR access =
details explanations are not enough detailed FOR YOU?



