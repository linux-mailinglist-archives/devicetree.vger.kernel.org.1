Return-Path: <devicetree+bounces-143936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 314B0A2C3D4
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:38:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8FC418857EB
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 13:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7296D21507A;
	Fri,  7 Feb 2025 13:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FmM1HxvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D67A211472
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 13:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738935445; cv=none; b=tKcLPDBQvGjlRoO/sUqBfo+0tdVrmXKmt+0JC/9qsX93MRLLchnl/uPv6Tb0UYdyH671bSA2+g3CK2egbXe/F3/QVN85o8HLZ57prq6FARrq1N9HHzQGy6E5TkN8TL/2BQwZtMbmgumeu/5/m2W2a0w0/1VwIvaXY2r3tGJeiMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738935445; c=relaxed/simple;
	bh=6UP7CZ7A41uinwFMx07lVRRr5pIXODcEEp4oGZO3pWA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A3e8Zi5LXi4uJzyl+kOzpPNGS2805cMwjVNHKSHFlDWcieLFcwWXO0V66fxaAFLK0pUBLvVK+UPtlQOPM749MahPRjW6uDK8E0COGQBtl6xjpopT6ghrHTCy2HqBgPjcMeaGco+03sY3AkyrtQpgYUwylu6D/XzDVV1/Y1jZL1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FmM1HxvT; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38dd0dc2226so46718f8f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 05:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738935440; x=1739540240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rPRSrDHPMQkspBW9wFDUJ/iKaqBFin7bc0Krcp9BIfo=;
        b=FmM1HxvTYC7HAY5zPdZhGTbljJD4YUhucl39vXAS33bW18d8y3cb3/xM2FpuQ7D0cW
         n7zeGBlsATaHUtsRgkDvc6vdUlzqmn8+TuMwjMeanO1sdBWItg8lxklH3bTrCZZDxppu
         XHr9IpopotUSswREGWw5+RB+KHzsbIVv1S4P671nEea1dCS3faYG9PrzR4tlzIU+uS4B
         GbGlwGcWSM+KhsmZTJgIdme+uHvE4Pwl/l+I2xpLIdifZMhru7r/6B4dZjV0babGt7oM
         TP7U4VwiTfUO6DzvVURIYUs7Sj1AXdgg7+h16K4ATSi4ZMe+mhAPqhsLxG+pdDdEulND
         SQBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738935440; x=1739540240;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rPRSrDHPMQkspBW9wFDUJ/iKaqBFin7bc0Krcp9BIfo=;
        b=uBThZPraDzfGx8Oqv3OpuSPvK5aOkSnEcX9Q7gGLe2xWLXwfBtrnSSVzEFVIz55HVj
         bDJG5Vxj8WYo8KReE38WM6IEYAzAZ4+tWzHSdvcWsG9hGXgQnAXngR3HQLBThks0/7nb
         7agRjMj/He8JPK3nDQk5q9NRuKUkq7mUOkyYS3bkK3CMwjKsJccVbrmxiV96w8Q4b03g
         S/EJEAlEJE4s/KfTWTKn30vwOfewfQM5m/pt/S+bEW3r69vc2TFyym9vZ1jCwkmB15zc
         Pfoeq9QmQ3SKFDMTXzYDF9WWb9F9BYfNhCSrrdI6YVMvBWx+AoM7e/E9yMvWEGm53fms
         U0AA==
X-Forwarded-Encrypted: i=1; AJvYcCXGl2J3j9DVWeFrUrdjPa1T0NfxVCXAoR5Z60OkCZcuXyLl7BSf0LplsavW4AMqUJr+ZYzeP0KEMLqq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1K0i/LoZ+Nba5ta6uFstSH0Sbu55gvkQsB2fVhNT3rxxY3LVm
	0xWyV2Poz21rtehRldNC9D/2REolLJZr+pbC8mFCzm5Te//qrVYxlaXunYXJ5xM=
X-Gm-Gg: ASbGncvF0+ekem1s3JAH5+kcbT4B4FGUzm9neujaN+V+jAjvaz/yQUDbw7VT7F5Bdd+
	KKs6ZIgshzrLcZle8FeISlhgOFff3WmK+fhwq90Y9Hk5C0zxuq6Hgx/p5/y0a0lLvInSQf9gxKA
	0+z60AjxLHsZhEU2H7O8J5N6ouBEjJ5li/yAX+teSmp0yrjBWZN/0faAERI5qGpDqS/L917Yw3P
	rrlUegqZCC0mAJQ3yBnIXvXNPg08Q/A2MYnWwKKqQqhGI+Zf3EL0RBbt5oAoZ/LPByAtI1MROze
	Zh4XTZpqQGD5QFza4UVhyAUocjbYlxUoV4yIROMp0ZyCNwsWpSkasU/NzKWb1sY=
X-Google-Smtp-Source: AGHT+IH3fH05sr0RzEENOHx7i7cRr0rsu4948lpsFnWwYRkB7HQdSGQ6B8ZBEJuZdUoLFPuxdIY6Mg==
X-Received: by 2002:a5d:64ad:0:b0:38d:c5c7:4f07 with SMTP id ffacd0b85a97d-38dc8dd07bemr2770452f8f.16.1738935440380;
        Fri, 07 Feb 2025 05:37:20 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8? ([2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc933ff9fsm2213064f8f.96.2025.02.07.05.37.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 05:37:19 -0800 (PST)
Message-ID: <5dc5c251-4f66-4468-b253-6c8f58f5fd81@baylibre.com>
Date: Fri, 7 Feb 2025 14:37:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/6] Add display support for the MT8365-EVK board
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Gentle ping for patch 1,2,3 and 4.

On 10/01/2025 14:31, amergnat@baylibre.com wrote:
> The purpose of this series is to add the display support for the mt8365-evk.
> 
> This is the list of HWs / IPs support added:
> - Connectors (HW):
>    - HDMI
>    - MIPI DSI (Mobile Industry Processor Interface Display Serial Interface)
> - HDMI bridge (it66121)
> - DSI pannel (startek,kd070fhfid015)
> - SoC display blocks (IP):
>    - OVL0 (Overlay)
>    - RDMA0 (Data Path Read DMA)
>    - Color0
>    - CCorr0 (Color Correction)
>    - AAL0 (Adaptive Ambient Light)
>    - GAMMA0
>    - Dither0
>    - DSI0 (Display Serial Interface)
>    - RDMA1 (Data Path Read DMA)
>    - DPI0 (Display Parallel Interface)
> 
> The Mediatek DSI, DPI and DRM drivers are also improved.
> 
> The series is rebased on top of Angelo's series [1] to
> use the OF graphs support.
> 
> Regards,
> Alex
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
> Changes in v7:
> - Improve defconfig commit description
> - Add comment in the DTS about pins clash with ethernet and HDMI (DPI0)
> - Link to v6: https://lore.kernel.org/r/20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com
> 
> Changes in v6:
> - Fix DPI binding: remove the duplicated property (power-domains).
> - Squash defconfig commit.
> - Fix the property order in the DTS.
> - Link to v5: https://lore.kernel.org/r/20231023-display-support-v5-0-3905f1e4b835@baylibre.com
> 
> Changes in v5:
> - Patch merged, then removed from the series:
>    - dt-bindings: display: mediatek: rdma: add compatible for MT8365 SoC
>    - dt-bindings: display: mediatek: ovl: add compatible for MT8365 SoC
>    - dt-bindings: display: mediatek: gamma: add compatible for MT8365 SoC
>    - dt-bindings: display: mediatek: dpi: add compatible for MT8365
>    - dt-bindings: display: mediatek: dsi: add compatible for MT8365 SoC
>    - dt-bindings: display: mediatek: dither: add compatible for MT8365 SoC
>    - dt-bindings: display: mediatek: color: add compatible for MT8365 SoC
>    - dt-bindings: display: mediatek: ccorr: add compatible for MT8365 SoC
>    - dt-bindings: display: mediatek: aal: add compatible for MT8365 SoC
> - Enable STARTEK KD070FHFID015 panel in the defconfig.
> - Rebase on top of 6.13-rc6.
> - Link to v4: https://lore.kernel.org/all/20231023-display-support-v4-0-ed82eb168fb1@baylibre.com
> 
> Changes in v4:
> - Patch merged, then removed from the series:
>    - dt-bindings: display: mediatek: dpi: add power-domains property
>    - dt-bindings: pwm: mediatek,pwm-disp: add compatible for mt8365 SoC
>    - clk: mediatek: mt8365-mm: fix DPI0 parent
> - Remove mediatek,mt8365-dpi compatible from mtk_drm_drv.c because it
>    use the mt8192's data. It's a miss.
> - Add MT8365 OF graphs support, remove the hardcoded display path and
>    rebase on top of Angelo's series [1].
> - Link to v3: https://lore.kernel.org/r/20231023-display-support-v3-0-53388f3ed34b@baylibre.com
> 
> Changes in v3:
> - Drop "drm/mediatek: add mt8365 dpi support" because it's the same
>    config as mt8192 SoC
> - Drop "dt-bindings: pwm: mediatek,pwm-disp: add power-domains property"
>    because an equivalent patch has been merge already.
> - Add DPI clock fix in a separate commit.
> - Improve DTS(I) readability.
> - Link to v2: https://lore.kernel.org/r/20231023-display-support-v2-0-33ce8864b227@baylibre.com
> 
> Changes in v2:
> - s/binding/compatible/ in commit messages/titles.
> - Improve commit messages as Conor suggest.
> - pwm-disp: Set power domain property for MT8365. This one is optionnal
>    and can be used for other SoC.
> - Fix mediatek,dsi.yaml issue.
> - Remove the extra clock in the DPI node/driver and fix the dpi clock
>    parenting to be consistent with the DPI clock assignement.
> - Link to v1: https://lore.kernel.org/r/20231023-display-support-v1-0-5c860ed5c33b@baylibre.com
> 
> [1] https://lore.kernel.org/lkml/20240516081104.83458-1-angelogioacchino.delregno@collabora.com/
> 
> ---
> Alexandre Mergnat (4):
>        drm/mediatek: dsi: Improves the DSI lane setup robustness
>        arm64: defconfig: enable display support for mt8365-evk
>        arm64: dts: mediatek: add display blocks support for the MT8365 SoC
>        arm64: dts: mediatek: add display support for mt8365-evk
> 
> Fabien Parent (2):
>        dt-bindings: display: mediatek: dpi: add power-domains example
>        drm/mediatek: add MT8365 SoC support
> 
>   .../bindings/display/mediatek/mediatek,dpi.yaml    |   2 +
>   arch/arm64/boot/dts/mediatek/mt8365-evk.dts        | 245 ++++++++++++++-
>   arch/arm64/boot/dts/mediatek/mt8365.dtsi           | 336 +++++++++++++++++++++
>   arch/arm64/configs/defconfig                       |   2 +
>   drivers/gpu/drm/mediatek/mtk_drm_drv.c             |   8 +
>   drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +
>   6 files changed, 594 insertions(+), 1 deletion(-)
> ---
> base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
> change-id: 20231023-display-support-c6418b30e419
> 
> Best regards,

-- 
Regards,
Alexandre

