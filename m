Return-Path: <devicetree+bounces-91944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D0D94B6FD
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 08:56:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BEDC1F24D68
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 06:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A036D187879;
	Thu,  8 Aug 2024 06:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="Ez7qANQ9"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic314-21.consmr.mail.sg3.yahoo.com (sonic314-21.consmr.mail.sg3.yahoo.com [106.10.240.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C03187864
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 06:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=106.10.240.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723100213; cv=none; b=NX685WLCAMDtgVe6zWhsixNVgCKTQz2zVByzIjkRHRAyjhvqk6lRdI4Mc7Hh73odiIHpaqrhJAZd2ABPxp0Br6aVOZS4ijl+THAtbGAa5ty+N+uY4DduZuaQzILuHCyKvKYukXzvNogxADuqVzSWq+cEbHdsnyUVvdJ7BeBXHy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723100213; c=relaxed/simple;
	bh=nFyODy9OicDiOkfnpYUJWbFCcOEef8Vr45lsPx9Sphg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PDVFaU9NkxP2oi8Xk6w+W6nQJgyPmpX+eN8bm7Pdn/Ajq2XjWGRJngu7xVYjNrYR448wtaQ1p87WdQGfYXrnnBAhRTwt2mt5E3MMcP2OX5di2yohtZ6w2G/pMemjE32mFZrlIKJ+A8t8WXjGIzKdol9we/HXXVnhgPa4XnguSR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=Ez7qANQ9; arc=none smtp.client-ip=106.10.240.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1723100209; bh=nFyODy9OicDiOkfnpYUJWbFCcOEef8Vr45lsPx9Sphg=; h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject:Reply-To; b=Ez7qANQ9SlYRPEMXuytwK4zQCF9BB/uaAMRrmCXUyMOTaDQjQrQEwgWvUB9UfWUEI6PlmnDPITBDQZJW8s5+uNaUDXM29m0Jx+oz1m9+4wmsN+OCyN1wN8Vt6tOkTxycZuw/z041sdSk8yALCMstsiTeGxxvzMQY+UERmsKdRu14BhSAbRCE7gxDXrHPqJT/llvimkIdKS9CdiVKJKB/oNU0GR6rW5LlQXh3jvFDsZeorDqE8RdU4QpORu/kh5N6ss6mP27zt38R4rIXghzCGOfWC+WnBzJ8yDE0gSJqzzkKRehaBmgJwU4FfmEa9g/3L1Np5QitLd8CzFEA9X1REA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1723100209; bh=U6GY0z3uoHgnIknzHy6oSoap5B8uU7whFJnCdI2fM39=; h=X-Sonic-MF:Subject:From:To:Date:From:Subject; b=s5znbMYA9jdTCGjScl1BPdC/xNEmyVb75eGAmNLxozzavYLE0DOQNpSlPqjOYdNSS/ZZAfugYv66DuIwtYq4RR1AqjCBMVt51L5eiiztPc8ENPyR2Kylrdvaj05GuQMP2480jwEfugSDh8YjZDed7pfpgLUwaYtTYbOeWH/HFOQKZsGpNMZi8JFDE6p22lUtZrTZzQ4WbpKcQ/L4rOKVZeDz6TaukjqkdyvGcHwFeFuVL9U/RgslblyPdsVQKKL105qnWBd8FdP4qjw6KkvNLrq4T4bPP0y4xpFVtolOvDMiP2x/0hkEW2k4UI1LWolJcOWd+tSfrShZYgHFVIMycA==
X-YMail-OSG: J2t94YcVM1kZc21kIsisdiHmdbjcEUmVEDL_sWygRWmmxjWs5ahrGv8A2H_BLGc
 Od887yX5fFT2Pd7W4be4PcmZeWjrBg9QAzhgJnGXgE8vkAUr620UWu_xU5hEFsW3kG20HbMkbiT0
 yDWtKbSKx0jKTaF38otS4PS3kD4uaQZMquydu.w0V8GSmlB2G_eNTaUVFgIztqPhgrZ9X5ZknTLA
 JYmbXhHIMzRBjGrnlwQpW3WqGcC52f.n9CbvNgYnaeKLsgcGvwtMI6nDmmCQPXkjxuuVMqx0TmP.
 XpOiga9xv05YzHVjkGLh.fB5WMbaREaFEBWfA3l4cZ6CUQUVk0tow6ra4GtS6gBxEo_yVF2ke.55
 p8FoihpYSR3_Xc8meKiW.962ZGsNtK7jG2Ady4_thLFgd4wEEbmcalKtgRyJUVVEjLu1Bqt0e7Hd
 T4YdPuy4hWAPl5pYiVxrBK9.cn..0U8ffc6ruitasl7gBxsTpyiH2WX_seEFB2zTJNxSyC92gkpy
 zCPLbOccLLJZcQosU6Gm4FhwD5g43LJ3xY.FNGtgureUifn4mCIiDEgo3PNjj9e7mBFP5NG6Tngj
 _q1QFbks5Fkwws2.rz25tnoXyh6pYAAvPj989LzxGCkkC10LbmrDoFq3J04z3HN.kKkNht7RRvjf
 bxpbU3w.qxUOjIWcaBaWrk.3u1s8SzwT4qPEOpOuMd3SAowu0WEV1dld35v0lCIhy_XYktcVsDo3
 aiO20JDMKcIkvX53qnqgSA1DDatIu.Jo9GWviHkLjuqsRAEhzeoif.Pkjo_RGY5JSOMLNpjdRjHc
 BKZogzaXb16GAEql7.YfmwCyCUr8Bnh5AiFl4eDkckI94gGH.Q2pvjjiA830FchnzrwlugdbrHH4
 e_aaeKG2zG4PtpivSUpU99Pq3L77ZVY.R3IX6fHNCgF1clcTLun5owEAhNUcT1p5r41uwIGHd942
 F1Mn1w8Xpl5Z7K9oGfTq_72IufvK87yRWIkOHKEqOSA.ZOYEmj07rAK20pV6aVUrimXOnHVgi5vm
 Q6hx29anzjabc2uOLOggRDnWfxivG91XgskBVQBnmukFR5YF.vP2ryJQwZJhXUqRQBBGXRMRFKdN
 GEagUQnazRdsSnrK81H8Q6JHSo8qFeINF1n5S0EVpMj_oPN4KRBuWtapniAe.OdWuSeqfJNeo1X.
 dwhKMd4kUXOC9CjyS7kqNPvVfQ7ElANRj8sLpQiWRHhCAdgOe6wGbARpclz9DlC8BR6B0vdj3_9a
 pIFAE6Y1gev6Dkr_bl9sCbJHn4.CnnRIOnFa5u4CYZGsN0jIMaZCh1u97A8_HkosifYb0LvGNZZz
 iAh3AiHAM.ChDnbiIkVx5tA1HN4CC8zg4Wbqe_tyL11A3Q0pm5IvEIVrnzzbghARq.tvzNQ8c2YB
 2tybuWpMWY3vClJ50J.Y02hafFCbsS6cokMJDEUTGvCn6z2UPcYQwGwdYu1MbJugnfFkkbj8rMIr
 yQ7tPdiGBwmYJQEmT30eTS.5nwVEcuQhSfSzRx9fqCO_Sad_.iwzWO.FLBwYhlz3do_qt4BTZ2EQ
 JnqzsTy.Nz0GjTHFRgwoeKom.HGTaUDyF8cEJ77lq9nYlOUXIUZJTKtK_2tBFHEN.LnJsb1vGOyf
 31uNSCZZx97nP7dul13WXFAISRY1VsJ0NaRulcNDLb4jMD._YIk7wqVU5DuNuyQBuIQpej86nHFk
 xEW_413IZMdH_KBHlG2Q9bjqA8obTW4.evQzIqKstBLnbg9V5mFuVZIYdRFAEa.v31Q9X9PSv35C
 BngHkr5jidkvjqMV0Brjq0TJJmthuwOmEFnhE2yXaBCn5fJ6XLR4EiN3T0jNFFoKSPjJpnK9Maem
 NO1BZW.mSLkSVSiustaMPML7suRXXnTcbYTT4BfTI0.8Hxy09EdsjPiVlhT4keDzW_UTSi0dwmMh
 p1kJIDbGlP9XufkH1hXSYY5vQGW.auH0AgtnwRmwF6N6MPUf9LJ.9sXgalYJjOz7mjLPOFJVumJv
 CrIL5MxREOSUbLETZpQ.TrOzz6xyJGOLwj4gOD235RMVWHwM2foDIceeWTAqI2llG.4f8puXhcB3
 kt8U3lIu55USb7hQyeytVHaTTkcBr9AWu4cnz75nRPEoIqFucJrhfWSFwhFYz3RnBFGQ7rBqJW2V
 7eUjMK2aN1NuhDIfqceyEYYwzVcHBHgykhyJDnQShWN1uI8BUmTVtwxNtcN5oasecvo.YZjemXrT
 z2eyPsBgJ2UpAjSHTJvIHkB77XSJhUIxrk9tlezILdumEo.YlB0haDhGCg40ZbmTYiex6ZTgEwG8
 -
X-Sonic-MF: <kwangson@yahoo.com>
X-Sonic-ID: 770b26d2-00b8-470e-8f18-6d930f6e4f3a
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Thu, 8 Aug 2024 06:56:49 +0000
Received: by hermes--production-sg3-fc85cddf6-2xn87 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 0de0f388ebe636e1f855371397096932;
          Thu, 08 Aug 2024 06:26:22 +0000 (UTC)
Message-ID: <83d53dacdfaa4ccb3b1034702b1f6075e67743b4.camel@yahoo.com>
Subject: Re: [PATCH v2 0/3] dpum clock support for Exynos Auto v9 SoC
From: Kwanghoon Son <kwangson@yahoo.com>
To: Kwanghoon Son <k.son@samsung.com>, krzk@kernel.org,
 s.nawrocki@samsung.com,  cw00.choi@samsung.com, alim.akhtar@samsung.com,
 mturquette@baylibre.com,  sboyd@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, tomasz.figa@gmail.com
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Thu, 08 Aug 2024 15:26:19 +0900
In-Reply-To: <20240730111535.135301-1-k.son@samsung.com>
References: <CGME20240730111628epcas1p30976a7c1192749ff7997be5685d52c49@epcas1p3.samsung.com>
	 <20240730111535.135301-1-k.son@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22612 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

On Tue, 2024-07-30 at 20:15 +0900, Kwanghoon Son wrote:
> DPUM (Display Processing Unit Main) is main dpu for Exynosautov9.

A gentle ping..

> =C2=A0=C2=A0=C2=A0=20
> This patches enable clock for dpum, sysmmu(iommu).
>=20
> Signed-off-by: Kwanghoon Son <k.son@samsung.com>
> ---
> Changes in v2:
> - Squash patch 1,2 to make headers with schema.
>=20
> Kwanghoon Son (3):
> =C2=A0 dt-bindings: clock: exynosautov9: add dpum clock
> =C2=A0 arm64: dts: exynosautov9: add dpum clock DT nodes
> =C2=A0 clk: samsung: exynosautov9: add dpum clock support
>=20
> =C2=A0.../clock/samsung,exynosautov9-clock.yaml=C2=A0=C2=A0=C2=A0=C2=A0 |=
 19 +++++
> =C2=A0arch/arm64/boot/dts/exynos/exynosautov9.dtsi=C2=A0 | 11 +++
> =C2=A0drivers/clk/samsung/clk-exynosautov9.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 83
> +++++++++++++++++++
> =C2=A0.../dt-bindings/clock/samsung,exynosautov9.h=C2=A0 | 11 +++
> =C2=A04 files changed, 124 insertions(+)
>=20
>=20
> base-commit: 94ede2a3e9135764736221c080ac7c0ad993dc2d


