Return-Path: <devicetree+bounces-126540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B159E1ACD
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07AB8B24140
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D711E3772;
	Tue,  3 Dec 2024 11:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jvN4th6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F641E32C3
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223978; cv=none; b=jXhfXZ3aLL5ie45fKzchggXVv7odhgaRg1zKPvkxGwxUU2i0iqyPSCh0lGZWkx97s+Yo82qGBUBVSS70AZWnyfXF25ERuINiaP7Zyp2ctMw5yMtb5sBUk5TB8LXInf5GB12dyZ2i3YPX3gn8C8m0lOAOSGgeMzTNwgCOilupGHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223978; c=relaxed/simple;
	bh=ljSYGUKoLDTXsKObxNS/4LJp3u+C/OrF1P+fya2ivGg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rnAXzhW6ph18jmJ7AfBIKnryNh67BEC7UqxYOvNBDW2QEm5nIh2wJ0TkSY93Zpn2h2iHfZdmH5j8qBLFdNiVytvIPC7R1gImvMtvdy+nL3pz/2oerm8opSQLKs4GqTGZEdx83ZmKMIc92TNSak4wHyG90x4fD1aaXeqlyFEe0BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jvN4th6Q; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434aa472617so45880675e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733223975; x=1733828775; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5y5ad0avUs5r379umO5xs4htnxZ4LiFXVwnGLxowvNw=;
        b=jvN4th6QFgWV6BYuy2oid2F7cnhN8eKcy1cIghtquMsYKKbt5H3jZoJeVTFiQZ5U4g
         SYtT4I8kOXfwFs2iw6y7WLsLpQsFgyxadnf7mopFboXIDnO0gdhvyT/77NjpwIJpABxF
         0dy8Q5wHWLyDp+Xiez1Vhnjkn0m3tift4Z2NXpHeQ/COacbdSj3+UsEuDwo/tq+meIOK
         Exwns69Kgc6Bk4XcMzfpdl4oE4L65JXn5CykOHpdty/3V4fMstUr1ftBC6YIShzbGzcF
         N1KPGsovVVOI3j/zYBfErODY6ebIN/6BlbEFUplLQIdla7amCSLsRPrAvdt2MkvhHaAE
         orPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223975; x=1733828775;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5y5ad0avUs5r379umO5xs4htnxZ4LiFXVwnGLxowvNw=;
        b=Uj21kOSrvFKoTcWYzg1o4CFSOviGsgBzG9aHn2ATlU5HSBvu3XhGkP/lLx9FNTLSTU
         Zq9eHPNhOpomJSTxb2KGaoBIFyLiI9KcvdwwQZ+V06OAHrcsWAdIeo/wsu2F5VRuzcrL
         uLx7CLZHBvZ4HOikmSCFev0SDs9FQ8GM9FOp/eHNRP37w2KCUCR1F+QMIqRH0XPHGe4m
         gdtGVHJQpm1kbB/arwt0n0IZIeg/SoIFvmxVV+UZvx7NoIx7h27Thk5iZheNoSEQgaI6
         rDefFQboSuH+IMQ1b2Q81LmdX/s5l/tH+hWOkbVifJLXBmMK7EvPDRHgIpQKnXcpGWXJ
         Bd+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVr1VxF0EAWc38hFVLJC5Mg6UAnwhf/E1G77vz5AnFxVy3oMFWmYPkiseQs6UIBPw/Qn99j6E4xbphO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw704YyFkrXH4r8kwiu8xCDjKcC0LeTe454W/n5Po9/O5PMzFXu
	bUk+JbgtdjHKAgG9ReiAboHQdQPcyKt0jBQMVxi1UZIIlLjlpR+hLr7kulOEr+A=
X-Gm-Gg: ASbGnctPLVwcTLvAlr7gcxNdUB7HrxAzHiqgl78Kqp+tn8hbsedCBjm1Nm+4hIApwYX
	JNQU7bRV82HdGBZ/bu5nKqQ/sn0hHJ4ZQy9jIIOzdis6toobeiRBgLUlcnKFD/d/W96JkU+DLX+
	tOYAtdXjAWVdBKgO9bVDmO+y+7og/O0+lVAUYAyivKEDwx9T4W83rU054zhVZxGWDPZxq0dm/gt
	LmRT4RpEZXNJxlQrmRIoO/B1nkw5UTexZc4NVxyvSzN3deTBIHTBQ4=
X-Google-Smtp-Source: AGHT+IGLmTRJVKICc1kAtHcJQX0sTL1Ubtwsn5MKrksTZEqwhDb+BEw5tNQRlwNX5ov75IPA38SNyg==
X-Received: by 2002:a05:600c:3b8c:b0:434:a4bc:535b with SMTP id 5b1f17b1804b1-434d09bf66dmr16906005e9.11.1733223975578;
        Tue, 03 Dec 2024 03:06:15 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b0d9bc5asm183847755e9.2.2024.12.03.03.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:06:15 -0800 (PST)
Message-ID: <d1bade77b5281c1de6b2ddcb4dbbd033e455a116.camel@linaro.org>
Subject: Re: [PATCH 1/4] power: supply: add support for max77759 fuel gauge
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Thomas Antoine <t.antoine@uclouvain.be>, Sebastian Reichel
 <sre@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Dimitri Fedrau
 <dima.fedrau@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>,  Peter Griffin <peter.griffin@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Date: Tue, 03 Dec 2024 11:06:14 +0000
In-Reply-To: <61a54367-2406-4106-bf8b-9fda4f2d11a6@uclouvain.be>
References: <20241202-b4-gs101_max77759_fg-v1-0-98d2fa7bfe30@uclouvain.be>
	 <20241202-b4-gs101_max77759_fg-v1-1-98d2fa7bfe30@uclouvain.be>
	 <c377f3302c6c282ad826211c859e2b65bb1222cb.camel@linaro.org>
	 <8f585460a1bc52f78a6d0867aed87398bde30152.camel@linaro.org>
	 <18629c9edd295a524a1c9764f013a0e97e0b275f.camel@linaro.org>
	 <61a54367-2406-4106-bf8b-9fda4f2d11a6@uclouvain.be>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-12-03 at 11:30 +0100, Thomas Antoine wrote:
>=20
> Should I explicitly deny their use in the code for the max77759 or is it
> just for information?

I'd probably do something like this, which will indeed deny their reading
and/or writing, both via debugfs, and also normal driver access via
readmap_read()/write() etc:

static const struct regmap_range max77759_registers[] =3D {
	regmap_reg_range(0x00, 0x4f),
	regmap_reg_range(0xb0, 0xbf),
	regmap_reg_range(0xd0, 0xd0),
	regmap_reg_range(0xdc, 0xdf),
	regmap_reg_range(0xfb, 0xfb),
	regmap_reg_range(0xff, 0xff),
};

static const struct regmap_range max77759_ro_registers[] =3D {
	regmap_reg_range(0x3d, 0x3d),
	regmap_reg_range(0xfb, 0xfb),
	regmap_reg_range(0xff, 0xff),
};

static const struct regmap_access_table max77759_write_table =3D {
	.yes_ranges =3D max77759_registers,
	.n_yes_ranges =3D ARRAY_SIZE(max77759_registers),
	.no_ranges =3D max77759_ro_registers,
	.n_no_ranges =3D ARRAY_SIZE(max77759_ro_registers),
};

static const struct regmap_access_table max77759_rd_table =3D {
	.yes_ranges =3D max77759_registers,
	.n_yes_ranges =3D ARRAY_SIZE(max77759_registers),
};

static const struct regmap_config max77759_regmap_config =3D {
	.reg_bits =3D 8,
	.val_bits =3D 8,
	.max_register =3D 0xff,
	.wr_table =3D &max77759_write_table,
	.rd_table =3D &max77759_rd_table,
	.cache_type =3D REGCACHE_NONE,
};

And maybe without cache for now. Most are probably not cacheable anyway.

Cheers,
Andre'


