Return-Path: <devicetree+bounces-187157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04945ADEE23
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 15:42:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A63D64A133E
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 13:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B5A2E9EBC;
	Wed, 18 Jun 2025 13:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Gvqj5sC1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EE22E9EB9
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750254160; cv=none; b=G31TEOAF3HbiUY5KxbteBo2121hiC5ZE3R8xAIn1JztAjA/mLON8IPUgAmvtLodlvp51fvkqoIvHz4c8T2RMxEmSv2dFt2yk8r1952+Tx32lviFrLf7b0G8WRCYrPcNhwGfDM9tqFS3tqjnmetwf/x+2TaNngvBQ77Mkg4vi0Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750254160; c=relaxed/simple;
	bh=eEO+Aw2g4Ye3zeBEqfCg7cLkZgwkmnjuAHAb/18yzBw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k7SFhGBV0LSgdMdaFJ3a7YsspokpI2yQ2/bScrWE0gcz+JXdaJexIxnwzLRzICZe6Xng/xpMic2DcPS+8joXvWyz8dP6FKHLjHcg6AM8F/crJZvYKtkG/DtdPUBaoLwOMhba41FMY/RF7qn9mwXJzdtwqa3Zy+lar5IT08IxTJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Gvqj5sC1; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-236377f00a1so62571095ad.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 06:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750254158; x=1750858958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eEO+Aw2g4Ye3zeBEqfCg7cLkZgwkmnjuAHAb/18yzBw=;
        b=Gvqj5sC1Fy0ke6h07ca6fdZDgXIrjDt+D0nDoWyhlXssNHKYtvdcuoeTxXh26WW/uV
         cq4ibyei8wFpWd9/AJRSDOl2VsQV5evLANN5JjCdhbH5NNo5L8MuvRfAxGQqMG2fNixW
         GcmSHwUr5oaVgvWQ0dlml+SW8mWAkn8wY6GNnNnzV7WNuvQHBSTwFQeRvGuqmjl5fyG8
         LjT0hINFaFOSv8Gj7ha4o3sNQf2M2OA3d/b/AA5jd1wn/FLOdhtyYPh6oVXIgQiES33L
         0C/zNe7ZsV2Nq/VJVudFJKykHsi8MIvbmEFXiuu5R7YFyCXAmAHmod8Onpf4Su8TGzB5
         Z0EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750254158; x=1750858958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eEO+Aw2g4Ye3zeBEqfCg7cLkZgwkmnjuAHAb/18yzBw=;
        b=uc4zJ6XUO82bnfd3wZbkTwvrgv8tjpm8UNrc1zVyaR+kBRMTA2LhxLad5frVxPuoKX
         xJA+CK/S39QZ/ngYWTILJLnv3m5MRnP23C47PiaqjVBX98d1t79FbbRrIljpzNW1q2ma
         KlPynpA9BEkOQw8YMdwUSfDW6zaIrjMJVsyTCrsgZK+4G6fb1/goEYWNhhzfhcRdvYKZ
         ar07F3g8sf95dbIqcgNVrYqYUZOnE6f/nMLQ3ig1+UyBnZYeYkqi4+x2fnsQJvUCqtzB
         3qGZBIVDQqYB19Ei2tC7e758fa53NLhdh2uH6zuP7MPbG0e/Qj05QYZa1qAHyX1KMH/h
         KnMg==
X-Forwarded-Encrypted: i=1; AJvYcCUBcKf1KRsvohx/DW9fFspJ9/0RuqSG6rTzuuyhhFwQc6bTGEhcloATdOVgcNJ1qxOCMySwbYSp791h@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxvl7tM2IVbEgl9unEAGcrGIrpguUoOhbCkZ9lqrPTWzYtr2dk
	nrZ/JBZSBE0KxGwRCfwQ5ebEcLSJx9hrLKhaSAK6FBPuyenmnsF8nrWJzRj1TupGJcQc3U57Fj2
	3BV47eaAWBFGc+PoVBjRsfCOm9IE093VVQFmofNb9dA==
X-Gm-Gg: ASbGncsKcWZCYvW9JbvfcC5Wf6wackf1Svug6LVdIdVgDI4fbxo/w437ai4GRxDt8xo
	49PQsPEzLUeIW2J/Mv2yCk35SF9Y/hX6+SpR1tAi4s+8B/OsgjAzwpS5Mva3BnHF1oVMJzRxMGj
	cRHnQBOPNpSh6bFBksThPjCf1etDpb9a9dKM5wiRKKL4VfLZJaxOM/ebJkODMDvYKUcceFAZI9I
	w==
X-Google-Smtp-Source: AGHT+IE9RRF0iBcbNFXcUb8SkJRKabvVWjmiE253LTqxfYGXwndQn6/QT3ohHBsxRY1SrMjuBvVMrN/uQK3qBsQXw3o=
X-Received: by 2002:a17:902:cf0e:b0:234:d7b2:2aa9 with SMTP id
 d9443c01a7336-2366b1221femr273087145ad.29.1750254158312; Wed, 18 Jun 2025
 06:42:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250618102229eucas1p2a5d38013ee52a8a4a10d43449073e79e@eucas1p2.samsung.com>
 <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com> <20250618-apr_14_for_sending-v5-4-27ed33ea5c6f@samsung.com>
In-Reply-To: <20250618-apr_14_for_sending-v5-4-27ed33ea5c6f@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 18 Jun 2025 15:42:23 +0200
X-Gm-Features: AX0GCFtH0tHQpQVePKw4GRZe0_n4DXj2kfns9aQPVtqgBIhjJI4B39bCzPcceGU
Message-ID: <CAMRc=Mcv6KJOCypOHF-KtFk6N-Z=eoMCqH0KuuUND=8J1YvrEw@mail.gmail.com>
Subject: Re: [PATCH v5 4/8] drm/imagination: Use pwrseq for TH1520 GPU power management
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2025 at 12:22=E2=80=AFPM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> Update the Imagination PVR DRM driver to leverage the pwrseq framework
> for managing the power sequence of the GPU on the T-HEAD TH1520 SoC.
>
> To cleanly handle the TH1520's specific power requirements in the
> generic driver, this patch implements the "driver match data" pattern.
> The pvr_soc_data struct, associated with a compatible string in the
> of_device_id table, now holds pointers to platform-specific power_on and
> power_off functions.
>
> At probe time, the driver inspects the assigned power_on function
> pointer. If it points to the pwrseq variant, the driver calls
> devm_pwrseq_get("gpu-power"), requiring a valid sequencer and deferring
> probe on failure. Otherwise, it falls back to its standard manual reset
> initialization.
>
> The runtime PM callbacks, pvr_power_device_resume() and
> pvr_power_device_suspend(), call the power_on and power_off function
> pointers. Helper functions for both manual and pwrseq-based sequences
> are introduced to support this.
>
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---

IMO it's much better this way, thanks.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

