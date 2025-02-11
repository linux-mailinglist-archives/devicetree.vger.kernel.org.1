Return-Path: <devicetree+bounces-145139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D01A9A306D4
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 10:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C564160A50
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 09:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FA721F1307;
	Tue, 11 Feb 2025 09:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lLm+hmkC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C961F1305
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 09:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739265740; cv=none; b=Vdw6/KvEvMT19i0LdDvm71YggW8vNymYqpMsAbGzeukUWs06aTnm61CRKytjnNDno8BAjbOYuiBbgi6qsj82Vr3dp0fWBfzYajmVqFYh3MH4kHfqtVIgxU/Dc6NE+4+l3tRH3CrSufE3O31Gnel86sU3fCZV1pfQlvS/7Zt9a1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739265740; c=relaxed/simple;
	bh=Y5en7ULaxh0ueBzxiG7JRZbLMPLncLvcjivpdbNNNvY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=boVLrz0oD83nGFZkuB/30dOjbzM4JyJZGczFToncbv+dKfH4ZNvXiGGHKDKR5lRrn5HQas6gHMTn+DkxwyvhvLMvy+XKCENt8w4YHA7fhvLYRhcBG5Gmgw93qmk4v1aAF3NsXssoy4GrPP4+aXKaz64lDxirfntI/IHEvPZD58Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lLm+hmkC; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-38dd006a4e1so2696523f8f.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 01:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739265736; x=1739870536; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hxKXnlOOBqsBwwrNI1x2D/yzjPQCMqMA1f8yAIfnnZg=;
        b=lLm+hmkCvR+6NV9iFukY9lIwRuXvg3e4RZ5Wdcc0Hs6pH1WUTMGo9IbUzs9cYL0sgT
         LYv904tnEX/zyzaJEUq/U8xEJdGfVObelufTPH79T91GYi2gbhbpMtBWkHldB29tIP/T
         ni405GOB3Aae5gw94ApzJPo1mSt+eMQyGdCd9UZ5RHzakbV++S7mHVzrBG9OiEc5gw2e
         VCaNdRQ7gfh/2ZUd3IFLinQMj/yC/MoaqI1U/FThSF1rbkSpNoYXKnro3zMfUwUelWOW
         6dCHGUStt1x+uE6LauN4N60OzfvNd12yZHGDJd38r8ffgan1z9umJpM6GozZEE5xau90
         mJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739265736; x=1739870536;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hxKXnlOOBqsBwwrNI1x2D/yzjPQCMqMA1f8yAIfnnZg=;
        b=sxIMmt2lwKiFwO+Xh+ylQyiyw23kQxs8Bfig4FFGqVVFxylcr4rB17hKmJdNOdyCFf
         2g2sQxU0OlYBJl3siaD8wWV6bsXAtoTH8DzFobSWCU2rgyXtr0QgD4v4uZC14+3hZwAf
         xo1u63d6EpmHRa+wAxkX3I4nBdaWHOhMJEAWEUGMW6aGDPjtBp1SNluET/0GGX9XetZA
         G9pHt48mSZFOcVzx6bjcBDfPK/4GDMd8A0M1wJNtr5dY+bRnkR61rRvygHvT6wg1Gptb
         523lgostDyv4cNAInh9SaHrLVDUmurT02+c/NLapDU6nGCA09prZBfTZ91IszrQymzPe
         fdIA==
X-Forwarded-Encrypted: i=1; AJvYcCWyhAqNVnrY8UhAJGC1rYEPeB4gHOM1x9b46aa15VVQ7m2tkMzMA2fLe3ZBYz6/AU9PNHK4X2HLrf6K@vger.kernel.org
X-Gm-Message-State: AOJu0YxdgCTBd4wCipnI41iOBi+Z+S5sVkiKilE53NnqeIsbPAR+560h
	6zVlnv9VofFljw2vm9fRFnp90lRKkIZMU23H7Cr1LWU/1z5s/AWB
X-Gm-Gg: ASbGncu048+Nnjc0HmFYsgXmxiboeDfNq7NPWiW5BvaWhoGnJ1OnuBAXt2Dl550Wt1T
	AqD+cktGI80Nqzci7auxLabtQkEGlA9lZTwnlL2nmFEWrTzMveS00cij1Fx6ZqTtMEaihc8r81T
	IWC9CQY1ZZAqm34rgRf1S1KyZj0h4ldWHv4B7uxNLNohhVqbO2xCRBCqooBz0npQxUCaSu8HmdX
	Z2Qq8GYAWwmyX9Ah3A7RTQqexS3obKIkSfm7Ox1tlVeutnlsd03SMaHL8bR45MaNIMwDSmkPJMO
	LWCopfE6s9eXJlJtNeUbjUv332CJk8ir
X-Google-Smtp-Source: AGHT+IFinbmenD29Rw/0Uw611+rQ/E82ABxvNPKgQBCneBqnOXKQlDtW2JU9WvLJiNHkyHeRBhYRgA==
X-Received: by 2002:a5d:5f54:0:b0:38d:dffc:c144 with SMTP id ffacd0b85a97d-38ddffcc651mr5300952f8f.55.1739265736486;
        Tue, 11 Feb 2025 01:22:16 -0800 (PST)
Received: from giga-mm.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4394f3b8846sm8075945e9.1.2025.02.11.01.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 01:22:16 -0800 (PST)
Message-ID: <6b3cbd15b62a45b44cae2013fec11eb2c5504fa3.camel@gmail.com>
Subject: Re: [PATCH 03/10] arm64: dts: sophgo: Add initial SG2000 SoC device
 tree
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto
 <inochiama@outlook.com>, 	linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Haylen Chu	 <heylenay@outlook.com>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann	 <arnd@arndb.de>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Date: Tue, 11 Feb 2025 10:22:13 +0100
In-Reply-To: <bf8f3ea1-6fb5-40d1-a823-b3bc272a2257@kernel.org>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
	 <20250209220646.1090868-4-alexander.sverdlin@gmail.com>
	 <0d5484d1-be83-4f38-befd-94d458b3aaa8@kernel.org>
	 <03ff407fe68e46df4844e5dd244e7c609331af71.camel@gmail.com>
	 <bf8f3ea1-6fb5-40d1-a823-b3bc272a2257@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof!

On Tue, 2025-02-11 at 09:07 +0100, Krzysztof Kozlowski wrote:
> > > > +&clk {
> > > > +	compatible =3D "sophgo,sg2000-clk";
> > >=20
> > >=20
> > > That's discouraged practice. If you need to define compatible, it mea=
ns
> > > the block is not shared between designs and must not be in common DTS=
I.
> >=20
> > That doesn't come from my series, that's how original cv18xx.dtsi has b=
een
>=20
> You can change the other file to match real hardware. But if original
> cv18xx.dtsi has incorrect or imprecise compatible, I wonder how does it
> work....

cv18xx.dtsi doesn't have any "compatible". They define it for every SoC ind=
ividually.
So it's same MMIO window, different compatible. Looking into the driver I c=
an tell
that even the register map is the same, but they expose (and pre-enable) di=
fferent
subsets on different SoCs.

--=20
Alexander Sverdlin.


