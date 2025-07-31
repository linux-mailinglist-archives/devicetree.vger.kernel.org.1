Return-Path: <devicetree+bounces-200935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7DBB16B11
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 06:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 436B1189394A
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 04:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 783DF23C4F8;
	Thu, 31 Jul 2025 04:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hYQ2cRC0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117781FAC54
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 04:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753935277; cv=none; b=Zq9Vt11SA24YYykbQlVCPvezC7Nu7YIYJm2Pj5wYtOrbZT2sgpfanYJ+HsKS9l+l6uQMAxAq2T8QyUP5Fbvdx353HGqgbUGaidglCd3ZexJJctc9EOf4i2DfATpqCoBCmFVlQwBXhaRoPaLma9NvaY/+ZJ3TEEYheA+QbNPfEQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753935277; c=relaxed/simple;
	bh=VYfZznB0Bwd01EwuH/VCVY8bkI+jlyZ0D2t//XUPrtU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dcxddBJPzIMecZpqEmOxRQOLHadm9LQD5hruhyHliP+T1wZrMU0tzD7pwirG/62HZn+POzto59O2DkGbX5ccpW5a2SA8Kx/3b9bMo8M9ZUxBf4G4KX+9nBIdiPIw5BuBezgvfZ4X56tOQuzuRjVcvPpnKNZYc0k9Vh67EUBTw6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hYQ2cRC0; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-31f4e49dca0so633637a91.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753935275; x=1754540075; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYfZznB0Bwd01EwuH/VCVY8bkI+jlyZ0D2t//XUPrtU=;
        b=hYQ2cRC0/aC6EyovMtU9YOHjQBpMXliPIlS0/8g3m4aPmk0wprtBK3rIlViduOYQ18
         3Q0AjYLGuoCN9+AChhJZVbj83lwt9bajgD5Sg5It8PMaeZ/Hj//0X749MUK7ihSK70ai
         1SzTD0RFnPHSLga95S1EB/j5l+6fBKgg/f9+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753935275; x=1754540075;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VYfZznB0Bwd01EwuH/VCVY8bkI+jlyZ0D2t//XUPrtU=;
        b=etH075twC++Adf4qAW5qM2LcHN3ylMVC/vybmM4jpIDbEe43Be0/CZYY0AH/V2812Y
         dsTar9BvpJ0VUa6duAgJU6FdFfMv3Gu5NC1RM5sL1Gdjh+uM1whmqhX3HV2BAFoA6l8k
         EYzsenjcbMfrnPd28QwSsN4Y1SxEqKtN+bAhlrEUzBnBEX9OZBfKn7OckvsG78PxQzYe
         ClBrT1/riHsbGppXXuyysgh1iVijmLReIveR9auZDZIY2xU2KMS435TXPASjHjNOOlau
         fDKQmwecAKXrPtDAPmzwnbwjC19Gc+xI+giZKP/IAaogktqwjGGC4FwKA8ArZyCE0LYL
         WJeQ==
X-Forwarded-Encrypted: i=1; AJvYcCULumg7DPR8LX+l0xlMVyGxYxedZIV3LkG/Dgj6tsy1J5+ExcaGLfEhQpSnLQ1pwJFehs4Qoi0hRsGK@vger.kernel.org
X-Gm-Message-State: AOJu0YwY4jH7sweTleBq7SPLySA/4CYeq0BHDJg1QwqTINze347E437A
	UsLl2ZZLlBUW5BXxArfN+3H0uSsFBoEQrQyz2Kd0WJgF845eesIjjd+y/5f2CKF07080kCMdHdi
	WqwM=
X-Gm-Gg: ASbGncsDForxhaFlM7c2z/pkqp9pT6IuEgTM5kvCdA6+mnJKgMznJViRYEopFmOZbjs
	7+2dIShxgKj9vevsGj+4/zlsS+eKHHzt/FAH0UYWLMWwpjV+Sv2GYQ+pZ5RtPjbL/WXl0q74VZd
	jglrdkqsfYOb536q33hB/K84ITlOhPxE9NiECBR4c3Y+UvId6wZ3ZzwHuW0TQw5DFPsPTSYyVZE
	FIHjuV1dnGxsfMdGAhmPPs5NYMxcN6P+wiShi3w3Ua/COrPqAqNIX78MVOCJ81ctV2YWVSqkDoy
	rU6mXICRfQjRN2dUKeC5egytZDJXZ7sqWdfufxQbWSnWLQwq/idVSIZdIS0aKGrslGuXiVzcWQE
	AU8wam4mFWNzI17diuF/2EMwZ7o9ZwleHQndxEfC0mZp92JsI8VSxcfKZRwNPWg==
X-Google-Smtp-Source: AGHT+IFicBNjhUJR0v6en85rBMr1tqqnNzwdxv500/ofcCkPQinWFbWHeWgS5t4lssjtQsWgW0P9GA==
X-Received: by 2002:a17:90b:2b4c:b0:312:e9d:3ffa with SMTP id 98e67ed59e1d1-31f5de95105mr7816135a91.31.1753935275095;
        Wed, 30 Jul 2025 21:14:35 -0700 (PDT)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com. [209.85.210.179])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63ee4f42sm3401104a91.23.2025.07.30.21.14.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 21:14:34 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7698e914cd2so600221b3a.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:14:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWJlOwXB9E8Q8S7CCTQtmbkhRrRgB7Xq8OtDe+YipXbcI4AIFoYHq4Pb8lu6MpyU1BY12hZHpg+rPrM@vger.kernel.org
X-Received: by 2002:a05:6102:fa0:b0:4e5:abd3:626e with SMTP id
 ada2fe7eead31-4fbe87eaa8cmr4099520137.24.1753934828784; Wed, 30 Jul 2025
 21:07:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250730152128.311109-1-laura.nao@collabora.com> <20250730152128.311109-6-laura.nao@collabora.com>
In-Reply-To: <20250730152128.311109-6-laura.nao@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 31 Jul 2025 12:06:32 +0800
X-Gmail-Original-Message-ID: <CAC=S1nj0F-k37-v-gp5A4p3B_R9Q8exM+STb6vLhJ46=oQV6Eg@mail.gmail.com>
X-Gm-Features: Ac12FXzu20jT5Yk4GmMtSAZzZKsOMgulvP8pOesv2GOi_pI-RDe1qMoPgLQDq0Q
Message-ID: <CAC=S1nj0F-k37-v-gp5A4p3B_R9Q8exM+STb6vLhJ46=oQV6Eg@mail.gmail.com>
Subject: Re: [PATCH v2 5/9] thermal/drivers/mediatek/lvts: Add
 lvts_temp_to_raw variant
To: Laura Nao <laura.nao@collabora.com>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, andrew-ct.chen@mediatek.com, 
	kernel@collabora.com, nfraprado@collabora.com, arnd@arndb.de, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, u.kleine-koenig@baylibre.com, 
	linux-arm-kernel@lists.infradead.org, wenst@chromium.org, 
	linux-mediatek@lists.infradead.org, bchihi@baylibre.com, 
	colin.i.king@gmail.com, lala.lin@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2025 at 11:37=E2=80=AFPM Laura Nao <laura.nao@collabora.com=
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

Reviewed-by: Fei Shao <fshao@chromium.org>

