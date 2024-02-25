Return-Path: <devicetree+bounces-45693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55181862B9A
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 17:13:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 855DE1C20DD1
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 16:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04B21C6B7;
	Sun, 25 Feb 2024 16:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TtA5/lQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3060C1BDD0
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 16:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877475; cv=none; b=fRZwoGZnsYLax+QzRCbiNb34s+VGv5J+rde5sqqfL+FdCUrqATHLdFyPHfhl6ZL4jC+iKqJ2ksf2iG6n6BhZL3ZSezDMInc4OEVRyADUjL6sfcyvmfU04RsDHtAhkDa+DjutytY6B31Q1xChiI4SmixJomLWx2RCMZmrHXLePnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877475; c=relaxed/simple;
	bh=u8Qpi5YiOy9kRaDr0ChX2/pXA1mqNLtMkVDkNl61WfQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=L45FdIZIID6cQhOks8uPKdFywtmn37rRARinm/VG13Bag002wESC+G29SxJCWdJ2d5mSlzDPUWGO8/x+KOYrZsc7WjywHM3opoq1jx8r6zN9I9TKsygm+JHRjRDaSmedYHEh8OdJVf7EEkN1N44eVytsbwFXxoF3iiVdd0VdMo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TtA5/lQG; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d243797703so29438111fa.3
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 08:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708877470; x=1709482270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REeTwuyBteq5+THLDDm+N0sqW9JR2kC2T9JOUPzqTZQ=;
        b=TtA5/lQGRL/UROVJ/pSLyqTWZi8F3bCyMVnVhz0pnCGV0BUoPx/ggCNfqn8pXwM7jb
         dxUTXzK/LD3lammTvA+qWT1h4m8gKZ+rlQQVZ+4HRMMIbgkbbKZTn/k/ECxI1FMFHYdt
         gzKPLI9brf9nH0wzc/HgWlVte7iXafghvuYVikVjJ48MNleEcBGpLBEg4xy/A6VFbua6
         FZV35UhnmwMZDj757//pwHTUcynXcO6oGYhA33GMj3kX3eqk5/btyzuNixEKXO1WFSlc
         dhTk7fqPGQrDMEVaRvdmTr3MTAmo+jylzAwRRk4D4N1+0bTC3Ca8mcGrlz8nzatVRKVB
         TT8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708877470; x=1709482270;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=REeTwuyBteq5+THLDDm+N0sqW9JR2kC2T9JOUPzqTZQ=;
        b=K9txXdpXb49Am53fevF9208CVWi02vB1udDCf7BPCEX+H43F5yldjdZOZGKifBCLcj
         GQGgNIkn0pTC7D/4KrF2oBOQwA/Kf6VFTdm6JDelb5+tG407sRH1URXxTwosPx4C0lHH
         qilV6lEkOzhmTQgPY9MZgAJHydGh3utMIChroHJb95uZ190B202XqMy63V948+n81J5+
         7zfFdxusRaMOJ/lapyIUZyMxMbEQ+6UZCY5aTHjFzuVtjgb10c41pX7p8Sv/qm9c7Q6t
         Ec/njxdS+XsZFp/kcZtBSQW6yIZkGXdtna5A+KMMI4H9R8zXP2JcNbN35TYl1Fksj/cn
         Il4w==
X-Forwarded-Encrypted: i=1; AJvYcCXeyae+q/Sd/AHqx135UqI9ffCIfSA3Z84tbIzct/jTfe9x4Q+sHMYAZvegV1kUStSaChHTa1XDwqTCCsmHtjgvdVZFCZCjknY9yQ==
X-Gm-Message-State: AOJu0Yyd4rP7Tgdoko2dYHs7mbIG0JGOJxmRjOttQPv77zHqrkmx96X4
	bYrKudCRdGpD7JjnGd5tAefFtzeKaGZVtSyGRnskkWc9woQl51nyEN59/8jDFdA=
X-Google-Smtp-Source: AGHT+IH5ysbPnEAR4gSNi9Y8xJXQNzwoFma6m8b1/S0CcoLGSmBaXXI9IRTtAoynqulT2fdbH///4g==
X-Received: by 2002:a2e:b170:0:b0:2d2:4cb2:59e4 with SMTP id a16-20020a2eb170000000b002d24cb259e4mr2790327ljm.31.1708877470466;
        Sun, 25 Feb 2024 08:11:10 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e7215000000b002d2697570fcsm579184ljc.93.2024.02.25.08.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 08:11:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240224202053.25313-11-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
 <20240224202053.25313-11-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 10/15] clk: samsung: Keep register offsets
 in chip specific structure
Message-Id: <170887746854.215710.5270227845876951742.b4-ty@linaro.org>
Date: Sun, 25 Feb 2024 17:11:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 14:20:48 -0600, Sam Protsenko wrote:
> Abstract CPU clock registers by keeping their offsets in a dedicated
> chip specific structure to accommodate for oncoming Exynos850 support,
> which has different offsets for cluster 0 and cluster 1. This rework
> also makes it possible to use exynos_set_safe_div() for all chips, so
> exynos5433_set_safe_div() is removed here to reduce the code
> duplication. The ".regs" field has to be (void *) as different Exynos
> chips can have very different register layout, so this way it's possible
> for ".regs" to point to different structures, each representing its own
> chip's layout.
> 
> [...]

Applied, thanks!

[10/15] clk: samsung: Keep register offsets in chip specific structure
        https://git.kernel.org/krzk/linux/c/78bc2312ef9cea4af1073dfab4c71d91b2015b5d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


