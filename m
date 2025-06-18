Return-Path: <devicetree+bounces-187160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C80AEADEE35
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 15:44:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD71E40315C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 13:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB99E2E9ED8;
	Wed, 18 Jun 2025 13:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="kKh2KMHo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCCB2E9EBA
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750254217; cv=none; b=qZW3U6T0dhirAuA3Asbym0kVEQ6OxTC/DsvurxetYJgy6ffvJNANM95FdqVg+dy6AL6SeYUCQZYHPcdGCjCGf26eFN1b8XsSIYqaprmG/3URaXQbjsLaqtzD9pYzQd2u/+PiJFj5zksX5OLrMQC/eviX2sTmTDaWLTRyOud5YLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750254217; c=relaxed/simple;
	bh=DH2TdO4qlgMmdVZuOlcVSevdsjnZbtIfQYEMA25f/cg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IyxIby4lsN3WY7td2RSwsQC/QLFBukhrZzSgXXDLjBCBvCMa9hAqWSLD+3I6Ir53tJ+q+nS1TlTRDURXo63QTsHtuKRHAYwcbo6jSUFijXB4lsjnX7p0c8cslyRI9HNigbxbFj6nSg4w2QxtDaPlObK+jHUm7nqeLLHfHLIo3Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=kKh2KMHo; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-553cf020383so1814806e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 06:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750254214; x=1750859014; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DH2TdO4qlgMmdVZuOlcVSevdsjnZbtIfQYEMA25f/cg=;
        b=kKh2KMHo994rHvJocvWhAeLiVF/fGmSnZRvhA0NWsBYFYfx1GceR/YW5C7UTkojr5p
         XlBAVToAiws+V5ge57oA21cVcb6NUtpyL9HI/RNfdMl1//ol+/3QURhaielWZI2ugGEh
         JQp9VUezFzbbDkHzEfX7scfR5c3rDUYBIQAGbXZFYjBtk7LPiIHvr0lWGN1pbY4puv5V
         ixT1Smfd34bS3DA8WWn1S2Q5XW9+pGLCSvN1JuHIh1bpiK8kQPwwLuKnXCYDo360GWti
         D0teN6Z0SoGXh/XK1cVzx55XU7SVLKMYgEYgZKoxhO3TC0TffSELGA5mGeoQSgO5PZrR
         abnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750254214; x=1750859014;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DH2TdO4qlgMmdVZuOlcVSevdsjnZbtIfQYEMA25f/cg=;
        b=bZ5aNHBWfVK5E7/nFuCSjInv0QhxUpF9/J7YM9q5dT6oNl4dJkV19hbO3Ua5Gi/iPV
         kG1qm3/7jcmTK/CRvKV7ajHWi/9R06f0nhTepHj6Kf45StwcWXaFJOO+dQHzcZTbImlp
         7ZMfickXRhYenOuCVlImO3om4Xzeu6vsD9fLVSne+MZYtDqVVk4E3G9yrBRcio0nkuPJ
         iNG9L5+kHKW3WEf2N7XikYG6x6YW5UHbcOcU4LAxlcZUcBCmZgUKRLr4Xj+zMQq1r1uq
         9DQLfZTnn1OpbOJDmAk2k2CTChhrKvBvrHw1Sjik6huCuAfzwOIsSgajzMihSAdWli4k
         iV7g==
X-Forwarded-Encrypted: i=1; AJvYcCXaIgrUFnA+SfAYxzKFHq80SrBbuKi4vJcl6rUsMu2XU9aCkZ0A9eK3+5tk7s46PODTJpy7ndXfAPMW@vger.kernel.org
X-Gm-Message-State: AOJu0YwaV0Jv9dXGfxy76WR0kNEVP7+1EmHJ14ROEPkBhDAe453jbZ1f
	6PqT2T2Abjg4BKv06pZXMYFc4vtaWR6UFteGVOKy0SigJI3zCIZk+tG9NJ2npMUX3dLI2A0Kz4P
	bTuftxSDA8JhY7LH33YjVhugUEZ5ZY5uSWLyT+bloIQ==
X-Gm-Gg: ASbGncuhAUjncz28+3X2q7mdHf0fPLIB/msQaTSAh+531Mu/oAw/Ennd9eKHdvco7Ju
	kmZMcnKalJdw+6AElMzo2NSZPS0chspuRhD6jjF29acsu/LZAi/FFL6sgEfsFVxBIE5kR/KP4Sf
	SLDdjYg95xMQLChJeIUwJYCgIXMf6PMn5yUmlzlqhzylMyCGTTCjRJs00UDoGpVMLhHAwxEH+hK
	w==
X-Google-Smtp-Source: AGHT+IHftNw+Eih04FWqkzxlxHZa0pUq9QbEcwUOmlySQIbB01O/3QL4rt3xwi2A6yMgr8Es7P1LaWGFLlQxbE/YI0U=
X-Received: by 2002:a05:6512:39cc:b0:553:3770:c912 with SMTP id
 2adb3069b0e04-553b6f42a3fmr4662087e87.47.1750254213943; Wed, 18 Jun 2025
 06:43:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250618102233eucas1p228b24f58e4cb3d15b0f273530b582cea@eucas1p2.samsung.com>
 <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com> <20250618-apr_14_for_sending-v5-7-27ed33ea5c6f@samsung.com>
In-Reply-To: <20250618-apr_14_for_sending-v5-7-27ed33ea5c6f@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 18 Jun 2025 15:43:23 +0200
X-Gm-Features: AX0GCFsy7p_bfVyodl4lMK_1wlqkCV9i-ffK-YbNgbQ1QgrzZEcf4YhKpp98eDM
Message-ID: <CAMRc=McvK2Og1kxDmN-5YW0UHxe-EEXPg88zh=oVEvSvCZ+-EA@mail.gmail.com>
Subject: Re: [PATCH v5 7/8] riscv: dts: thead: th1520: Add IMG BXM-4-64 GPU node
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
> Add a device tree node for the IMG BXM-4-64 GPU present in the T-HEAD
> TH1520 SoC used by the Lichee Pi 4A board. This node enables support for
> the GPU using the drm/imagination driver.
>
> By adding this node, the kernel can recognize and initialize the GPU,
> providing graphics acceleration capabilities on the Lichee Pi 4A and
> other boards based on the TH1520 SoC.
>
> Add fixed clock gpu_mem_clk, as the MEM clock on the T-HEAD SoC can't be
> controlled programatically.
>
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

