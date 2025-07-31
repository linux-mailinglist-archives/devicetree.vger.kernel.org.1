Return-Path: <devicetree+bounces-200992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE93B16E28
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 11:10:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF78C4E320A
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 09:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 151CA290BC4;
	Thu, 31 Jul 2025 09:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P9fNd2UY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8AD26E71A
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 09:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753953037; cv=none; b=JwaxnsdIO+WCQbDCO7kNeiOLXplDZbm3O1dbmcUhENGK6PtbythSWqTxh9r+M8MI7ltgh1wl8Yja++gThlUru/CHxlWwx/VpC349idzntbLgl9q5W2Rny33yH7lgOnDueagWbf8kkVr88wCptp4Z4CKtomODS8JNSkDjly8nKtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753953037; c=relaxed/simple;
	bh=hRwq5x4VwHGS6JkevscNB7G4mlDeMcL9xsQzNX6TfQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MMOsqdhKc+VeMVGxY6NCeah2f7700w4UUt2JRKa8mWHqcJNbfyoxRV5bkqVkWXnXYvKCLXVZ4RjoXGfPMLjJ1PsSGhEY8G6aVnr74OtZ9q6aKdrGY6fmB9u1A2RwtEvROvcTCezZ5ZGJLpkClLfKndMLWTFWUCnp2uWErxJjgbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=P9fNd2UY; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-32f1df5703aso4945321fa.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 02:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753953033; x=1754557833; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hRwq5x4VwHGS6JkevscNB7G4mlDeMcL9xsQzNX6TfQY=;
        b=P9fNd2UYNVNZQqd1yDjNKuMea5eKckDlwKZKC8rR2GOmGrQkvKe5ez2LRsuCYoEhB/
         hQCmSfcv9qh1FjPM4D11yRcCRF2LDbipR4azhKqACk4bxNb/AZUriPPamiqt2lhKcOns
         T85hdfeQSNBKcVOL2dd8F+/7SxyGanrn8kock=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753953033; x=1754557833;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hRwq5x4VwHGS6JkevscNB7G4mlDeMcL9xsQzNX6TfQY=;
        b=JM2lfrOa7YQ8Nsg9szGBdLD69yhIICuSHSytCdzEXTNyD6KW9Tgn8zq2TcJCxXe0yw
         Zoh/ssw9Cn4EiaTkiHCf7MKroewq1Hi0F7tpWnXLrl+VV+6QfnlS3Irn3pxtPrOat17i
         AcDT/LAvrrgO6Ahhk8sisc1kQtU9bB8YlwUMejQi/c9y8ccoBLmEMwkINtNhcTkLoE1V
         7sdh2zZSf3oWU9n5nhrULTDWoxdteqYrnVQJ+8qeMGsXAC/Ls64ptUUf3/BQc3scaeyC
         FNwWpD6wd03DUpg6pkM1YNd0UQ4nk61xPcTmDiKpL+o7z6h7v8OnTheQzWhaFjWq0SYI
         b++A==
X-Forwarded-Encrypted: i=1; AJvYcCXS/8zVqH8dv9tL4OThJ59dLLapg87b6Qx2bqINvL1PbFANPDFqDeJ4lUEMn2baFpbdFBEpnQfo4ssz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2ok1rgz4J8jGFKVFWJATi6ZSM8EZchhzPwZ0uGFoqf58m2TOj
	lTfkT0BVbpGmelsSQQzmSDsYDrqbcqHeVEwRswC8iQwKdYIXT+aLNKRU/oRZR5qm9JjqBO95TjS
	WTZdIeT1zCnc58Beiu9upENSNVmUMa3oPrLewdIFA
X-Gm-Gg: ASbGnctXydXWRmO0RlNdgaanWrDDQKQXuOLQh7ubat/1d7CtRnU57CJMm2abOD2xt/f
	9+hebJt1ZNuHPdGIQJuYZ63a0TDsZPBMo5czSmp5kAa1tF6tlN2Ogw3UFrZbUhvR/aAWv+sTrT7
	PiJg5eHANO952IXBTM9kzhF+LSDE1COaO64oL3mm1gED92q2lzFywiLxmh0WxK5hUSip3jPRZeD
	vU8TmOykGkAOgmKlKHudorTwKkDZLm4+ok=
X-Google-Smtp-Source: AGHT+IGy0Gr0CeJFqOAF9pederTnU2rsst1o/T1ozFpoxo2U18QbJElG5oX2wY8idW4WJNxX3lI94NTcxLdGpZxd8nA=
X-Received: by 2002:a05:651c:554:b0:332:1720:2ec7 with SMTP id
 38308e7fff4ca-332248beecamr19682921fa.0.1753953033319; Thu, 31 Jul 2025
 02:10:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250730152128.311109-1-laura.nao@collabora.com> <20250730152128.311109-6-laura.nao@collabora.com>
In-Reply-To: <20250730152128.311109-6-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 31 Jul 2025 17:10:21 +0800
X-Gm-Features: Ac12FXwCRD80agK2VpVTgVXGMFnqiS6tk-7RfCAqmaHj7sFRHCdDG6ywSscGSLk
Message-ID: <CAGXv+5En_Yxy1BoWWTsQPSLYCqvd0_r-JCtEByan9xNU0QLmDg@mail.gmail.com>
Subject: Re: [PATCH v2 5/9] thermal/drivers/mediatek/lvts: Add
 lvts_temp_to_raw variant
To: Laura Nao <laura.nao@collabora.com>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, nfraprado@collabora.com, 
	arnd@arndb.de, colin.i.king@gmail.com, u.kleine-koenig@baylibre.com, 
	andrew-ct.chen@mediatek.com, lala.lin@mediatek.com, bchihi@baylibre.com, 
	frank-w@public-files.de, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2025 at 11:22=E2=80=AFPM Laura Nao <laura.nao@collabora.com=
> wrote:
>
> MT8196/MT6991 require a different version of lvts_temp_to_raw(),
> specifically the multiplicative inverse of the existing implementation.
> Introduce a variant of the function with inverted calculation logic to
> match this requirement.
>
> This ensures accurate raw value generation for temperature
> thresholds, avoiding spurious thermal interrupts or unintended hardware
> resets on MT8196/MT6991.
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

