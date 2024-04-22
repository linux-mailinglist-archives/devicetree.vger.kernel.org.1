Return-Path: <devicetree+bounces-61368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E5D8AC6C1
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:21:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 822F028156B
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:21:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D67B50A88;
	Mon, 22 Apr 2024 08:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K763iNHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DC750A72
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713773948; cv=none; b=ip+cxknGmwxlGWCub236blKhdzSjnNrE/AJ1m3N4w7kJAcFMnSUHFzmLW9Ba1vuGgmY8GDanqM8gGYXekAxXJy/3mpP8nvOhdC6/+O/Ef0Ip26zJKxt6BZ+k44hbhpvuN4/Lqolkwyx5km9d7Fntz2pwfEiNCbl6mjLGfZI+wXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713773948; c=relaxed/simple;
	bh=wG43oGVU6IR5Zc9pbzHI1xScR+FwszCEHsFm8LAKKlc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=VHMnG+8oriXYyyXvegRkkvCVfvGLvz9ayTsw81NNPbxpACKpNwLRGhMbtfoNJXWhJUv15Uy+nPk1FqQkTx4u60dKvp6We7wuuP6WyUax9KSWGYhIVEHrrglqQBba4ncpqimmxWz9Q2mhx6FJ3jX/7YkGAakihG3eJMqhs6GBOGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K763iNHf; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-41a55be31dfso4583975e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 01:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713773945; x=1714378745; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lt2BkwQqXLpwxVqBhAGtLtKzSow+0YulByb/B8x8jm4=;
        b=K763iNHfF4z3klCFzQ+J0fHcZIMhy7k1fQ70yRu4UV6+wgMcNZlG8azzpiVDEcz+VR
         9c7T5q6QMWo4+O08pNEHKQJ1kGBQ0zIS9DGFLDZCNljWDbldrYsPlBeW3YBjY05Bw6/+
         sQHsQqjAvC3j1HHTzHdlBBOYwFfgM/VDqaLsKlKi/Rqceexr+DGskbbJ3VKkaTkJ70lT
         VPPRSIXai1a2dVxrkOumw1hMxQHuJFepJdCGdXdKVktB5Cc1pNRWWmf3hhaJ8oGzEgaX
         wXvfPzhwrFQ1N+ee+JayAMIBLIF2kQxqHEGlGq7ld5tXMsq/2DlwhvCiQu/Lw+q6nU3l
         vZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713773945; x=1714378745;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lt2BkwQqXLpwxVqBhAGtLtKzSow+0YulByb/B8x8jm4=;
        b=Avx2hJ+r5K8okM9qA6Gh3X9Pm+qpU+umJNHYQft3WaqHzASrlwCh4Ki6JzSA4zOVb8
         VK6MdXnbARt7InCZTBDcSADyAjkijIgH24vjfrq01A01MxPPY8m6JhWam4ow/6uNhP/Q
         6+bGZBidd33mJDa/sOIMiX7L8dGjozrpyQoJysi2FrTOqY8pAyXN5dTvBy/FQpqlQ2Lx
         ieOOHNjri8XCfq282f+rIiZszdHjHuDUiIfiCwPKu8oW3vWNwJ3i31hheyzJSJuMid38
         94kWEGAO2dVW5WBrOwb4fBBL0IUtBCSdmcem7wItsN/QWGWrNn7+rWF89FFAOkFEjKdr
         FF/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIXTxHdeh/NJZ7g64EizOVTXZGuX81BM2MkkmTPc6AmiFN2X8ETe0jH8m5qeGF15Leyjz37szI+q6Ptf1ZkTH7ZoDp3Sd0unhgfg==
X-Gm-Message-State: AOJu0YxBs5v4oUsnnaUxsNAQ8XJLPbQgUittPktmTa2bfLqpRJdOwJNc
	1ZZ0XXMgQ5RVbyIWUa5GwGAQy1P7cbqAzdkUwvAVOan87/iba6zQNPmRIOaMa5Y=
X-Google-Smtp-Source: AGHT+IFXlMHZ14I8rBJcDUvo536bca1EkYW6D1umCUji+efGTdjaWTO0Ml/fnVCCeSCCFWgwLl8OkQ==
X-Received: by 2002:a05:600c:510b:b0:418:f616:f087 with SMTP id o11-20020a05600c510b00b00418f616f087mr5098734wms.29.1713773944733;
        Mon, 22 Apr 2024 01:19:04 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j1-20020a05600c1c0100b00419ea5fb0cbsm7894927wms.42.2024.04.22.01.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:19:04 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 David Wronek <david@mainlining.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org
In-Reply-To: <20240417-raydium-rm69380-driver-v4-0-e9c2337d0049@mainlining.org>
References: <20240417-raydium-rm69380-driver-v4-0-e9c2337d0049@mainlining.org>
Subject: Re: [PATCH v4 0/2] Add driver for Raydium RM69380-based DSI panels
Message-Id: <171377394364.3456385.10710774432037845943.b4-ty@linaro.org>
Date: Mon, 22 Apr 2024 10:19:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Wed, 17 Apr 2024 18:29:32 +0200, David Wronek wrote:
> This patch adds support the 2560x1600@90Hz dual DSI command mode panel by
> EDO in combination with a Raydium RM69380 driver IC.
> 
> This driver IC can be found in the following devices:
>  * Lenovo Xiaoxin Pad Pro 2021 (TB-J716F) with EDO panel
>  * Lenovo Tab P11 Pro (TB-J706F) with EDO panel
>  * Robo & Kala 2-in-1 Laptop with Sharp panel
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Raydium RM69380
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4f888782d30276b08a32fa3d9b5c13b7dc123e28
[2/2] drm/panel: Add driver for EDO RM69380 OLED panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/9a314ea512b7db9d38107ea0284b56f805b8fc9a

-- 
Neil


