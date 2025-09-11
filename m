Return-Path: <devicetree+bounces-216115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A753B53B0E
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:09:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 199D65A16C7
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CD2D36299D;
	Thu, 11 Sep 2025 18:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hHjPhwcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56053570B6
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757614141; cv=none; b=IWJfBTQZU1Hk/jtMx1B9gT7K7vsDL0Mxu0IhKnYvQ5MEBdjSiGtCD0Jcl6r7qvHa9CWq5zwe+ClZjJmgRxGwQtxSEA563XQE8gg5W0hAoTqlRNU8KbiocchxUxnvMGi/BqWcwGt3E+JZDtxh9RXe5OnoV1YLCv4ir55H3QEBWJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757614141; c=relaxed/simple;
	bh=nk0BW2Ba7j1ibTLdZtLwj3tMl8qp9lHnXIvnkwXlhdk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rbnGAAx2Egmkj2lztALB2y59k5fHPdvniWVo5klTrnJFJ0eSTEgrpglML8leZ2+cd8PD7OkTGMQLnWSguP5O0iZpltYTD8WqLft8DntZG0idGTgCY2V30AXbtZVfDAq0qLxi022/AZPVRuczNnfPhFoGi/1p9Zu43bSZf411+RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hHjPhwcH; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45dd513f4ecso7186835e9.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757614138; x=1758218938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+7nWRXkwzkNu0lYsznyGEbSzR8Qg1Sj9llSzTwfH6ok=;
        b=hHjPhwcHv9lADrpnFdedwMbPSDA+KS9cYTf0CLKn6V0IMNiiML/2J7RLC2w+uDYuu6
         m7oJig3xMzMq5wfNoKeObwzMKlbNsQgQ9wCNatNIo8u2K+6gf7EAdPAjjJ4RvnFPQsJX
         UfK6vYHVc9ZTaFeoQgyWV3qUPus08uJEfTYsrL9bTr2hhkNfPHLGtH74vYsnoDJqUTSi
         0MHhwFWFFEgk4bf5KU8rM+5YyN7xZWn1Cqz8SNlYvZo5NTQgX6bhtqmg3H0y2uh5MQW6
         Or2mqBQFSjUyY5KIyjkfiT1AaJfqT3FTB795l4u+IC1Je4nDaCVEPOIT8dQgv0ywvfVM
         4pqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757614138; x=1758218938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+7nWRXkwzkNu0lYsznyGEbSzR8Qg1Sj9llSzTwfH6ok=;
        b=jO6CWK5CPnY7vltDjdg0zw9V7AsEBP2VI3psb6EJXDTPBXi70XHC8xtOvXNugOZm25
         f44ND8Z5wgjfvDqgkpWB3MQ8AhsL7Jpc15xVZshW8eFtojDfgFZAx9Cl6HuaNp0M1Y6z
         O3vkD9I0tPeJHhVqYzYYk1mPeey77O+6QdCcC9KjCBZE+p4FVPum0e8B3766pFlrvsUh
         HW1rfMRFI4gVwN6R2l8/sE2zDcB/8PzvNhDvp0h+gVqPD89DOmxXWVVo3MJmRhTzs7MH
         v23unEknKvXzez06ZLjbjgssRIOAjERYiFZPB12reU86Nk8g9c52GvMKO2cTy2zJPVNO
         01Lg==
X-Forwarded-Encrypted: i=1; AJvYcCUbjTn/4qnzSGZUNOgVIJGEPctYop9j6uCYJpUrQPLHU6ilh8NWyEmaIb5Grjp1ur76fSaIDDDAWDPz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/FvZlSaujR32t3vSSNWQRJk97ewCbS6sHYtDdQc5YPjJdu1gx
	oNo0W04OWovx5NLqN7GZyEM5znAjKXZeoYq0f6EfY+RVwAf1P16ddOZ4
X-Gm-Gg: ASbGncuYIwsiNwhwo8/P0qYm+l/C1W2Ggdz6/bJ7TK9/xOCNhziKgS9EnSSOizeM1bl
	oJUSOuixmBXlixAxQHky4wlnqMrAEFsHKnH5SC9rnMmLY8gBxvWvpXOLZGo5YfiJNbM9cCygXRs
	S4Rmq+FMbf/DKjIgzs1AGvHP9C2nH4HnSeKzXbvr1ni5esemC/8EUHfgOpoSWLCsnbb1x8bl/fV
	gGSdsiWkvpFLWfaq5v+63f5R0szhX1snSHTCOx2t8ASUuhEuEU0zFmQ9quKg66w+E8zbIz2gc6z
	207nFw7lL2nAzSM3dBAMiHhDSYmtWVBLcnjBxVkJRcO69833J9B78Ch8RNi/Uw2j/ANkifnlmOB
	Gmeby9G54EZI6fuBdhiH1I/ZkGRbOMb055C1re144HusOthFz/mGxdc+RiZEM2KKOKZ+JCJbx3V
	fBTL4jnYdhXw==
X-Google-Smtp-Source: AGHT+IG/tgONKkALdGCBSwVsuGobkxpNF6yi/bsIuUbq0WXKY1dVZ7jjm+lB6jrMTTAtwUaxRQ2WoQ==
X-Received: by 2002:a05:600c:58c1:b0:45d:e0d8:a0bb with SMTP id 5b1f17b1804b1-45f21214d99mr2291715e9.23.1757614138011;
        Thu, 11 Sep 2025 11:08:58 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e016b5a2esm35156765e9.13.2025.09.11.11.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:08:57 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>, linux-sunxi@lists.linux.dev,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/7] clk: sunxi-ng: div: support power-of-two dividers
Date: Thu, 11 Sep 2025 20:08:56 +0200
Message-ID: <5919523.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20250911174710.3149589-5-wens@kernel.org>
References:
 <20250911174710.3149589-1-wens@kernel.org>
 <20250911174710.3149589-5-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 11. september 2025 ob 19:47:07 Srednjeevropski poletni =
=C4=8Das je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> Some clocks (for timers) on the A523 are mux-divider-gate types
> with the divider being values of power-of-two.
>=20
> Add a macro for these types of clocks so that we can use the divider
> types instead of the M-P types without an M divider.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  drivers/clk/sunxi-ng/ccu_div.h | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/drivers/clk/sunxi-ng/ccu_div.h b/drivers/clk/sunxi-ng/ccu_di=
v.h
> index 90d49ee8e0cc..be00b3277e97 100644
> --- a/drivers/clk/sunxi-ng/ccu_div.h
> +++ b/drivers/clk/sunxi-ng/ccu_div.h
> @@ -274,6 +274,24 @@ struct ccu_div {
>  	SUNXI_CCU_M_HWS_WITH_GATE(_struct, _name, _parent, _reg,	\
>  				  _mshift, _mwidth, 0, _flags)
> =20
> +#define SUNXI_CCU_P_DATA_WITH_MUX_GATE(_struct, _name, _parents, _reg,	\
> +				       _mshift, _mwidth,		\
> +				       _muxshift, _muxwidth,		\
> +				       _gate, _flags)			\
> +	struct ccu_div _struct =3D {					\
> +		.enable	=3D _gate,					\
> +		.div	=3D _SUNXI_CCU_DIV_FLAGS(_mshift, _mwidth,	\
> +					       CLK_DIVIDER_POWER_OF_TWO), \
> +		.mux	=3D _SUNXI_CCU_MUX(_muxshift, _muxwidth),		\
> +		.common	=3D {						\
> +			.reg		=3D _reg,				\
> +			.hw.init	=3D CLK_HW_INIT_PARENTS_DATA(_name, \
> +								   _parents, \
> +								   &ccu_div_ops, \
> +								   _flags), \
> +		},							\
> +	}
> +
>  static inline struct ccu_div *hw_to_ccu_div(struct clk_hw *hw)
>  {
>  	struct ccu_common *common =3D hw_to_ccu_common(hw);
>=20





