Return-Path: <devicetree+bounces-77004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAD390D135
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A210287E40
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2941519EEBB;
	Tue, 18 Jun 2024 13:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="S8SOz3xD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437F419E839
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718716042; cv=none; b=X9NL9uWHadjMHIlRmQKAHH0EfzlhjPV9TzCmZZBps1z5TEm/tvKi3otgQVlQNQr2K7q+i2cGMvo+q+9Gk+7Dtu/2Abr5ZrTqgD7hL9qdMeFt5kJPlwzkbtrGD0r3OmkMPkQVwZqymitjqhmPP33AbcvnXBBZX9hlafuJd/HJoLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718716042; c=relaxed/simple;
	bh=H58nR73J45ur/n9eOZbakonCTYdx6CV3XthAjf55rWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r5MaRljbNpc2FqlmckxfPJS0aJQTrNGIElJHy1u3IsaxZhf+ugRyuo4HgJ7d6I+trJ0IYCt4SaiZdnvjtmWwPdboZEHO8fqiGd0aRRG3BHD988krDIpGQWCZxCqvYGFq6YDqAI4W/UzMtYwhPiiAgRQA+czUHHzEqS7Mvej/v1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=S8SOz3xD; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-421b9068274so48587185e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1718716037; x=1719320837; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5c9cwGXYmzk+MjLggJac641vRbAprTqVR2Sr/FfwH+w=;
        b=S8SOz3xD/GE31WU2pTph0Zg/mtyHG6y9GPk5gyghrofDl5LGxOP5WG3qmhHTst80y2
         G6o0NZFo0f39UVi2XaKAlLYEwZQ1O3qSmnlxLwNImo3r9iJc4tLSakSOmvOHbqSL6Zpu
         M4vTJijs73eXt9aY2F5gT6DZc4gjNKgQS9zLxJLA9Ek8arFMa3YzL4xb6nUixOwiUXe/
         ySZbmJ3V3UguyGeiPzoPoBUgxbg7H3llh64wWhhzIJdHLPdreV4GGIAkIdHqTaR8jLRA
         wWqz7dM1EU4kiIdlbc6JwoJex8asagHfE63lsIVg5S+Lg02kIl154Ze39TnR+c1Dp+AX
         BhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718716037; x=1719320837;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5c9cwGXYmzk+MjLggJac641vRbAprTqVR2Sr/FfwH+w=;
        b=UXhiP56svoj+SEeqIT983EzIe68KezHqpldq4KlI0jrm15z4lPBIEE0zPi4dIfGdml
         UtMJUiNecft8y3BLnnPxK64x3k6NdmE7+m/9RJaKKsYgqtdZyLvdtyyZRjs4mVxvH55q
         WB8WaFjH+M7h905HgBmLly5pYRwZaiOGhZiUdBS+oti6+vqbAZNHfzobspWD520VQR3E
         b2Pi7MRIz1zesDKxyTZDdQ6kcrECtNBvYZbsmiau9Yr1qmLlr4DiJ6ATmL1KSMSEiUBH
         4fezS6JzVQqpHCdKJNOvzAbkpmWOY+9QFJ0nvKoUmlEr42Ke5OWettR5OCYd/DlVz7gN
         a8Dw==
X-Forwarded-Encrypted: i=1; AJvYcCWN546Ohkmq5TqPD9jo9bSCPTgjRouoMVsntYPcHJyYcdLYJf5BVtBN044Su/C7ufoeOLef3HwAPlfvPesKpk+Ej4bUebEzQrSm2A==
X-Gm-Message-State: AOJu0YyiTUoU+O481cC3elHzbhcfRYgilxQFJWU5IRUAT24YCG1eLwxd
	+kc2tBR+Sb52IOUinM2Hfvi/a+EjquGLczCa9jBJgyMoFYu+A7GbyM7rIs68QeE=
X-Google-Smtp-Source: AGHT+IGZrt8zhLaFKoFLKP39CJT1ArEc4bLWnDCAyL8YNI+BFQ32v1zOGDc5IH3aUK1U1RiC+jq32g==
X-Received: by 2002:a05:600c:3055:b0:421:7e0c:f876 with SMTP id 5b1f17b1804b1-423048607a8mr87920905e9.41.1718716037340;
        Tue, 18 Jun 2024 06:07:17 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f9e2b306sm187017515e9.16.2024.06.18.06.07.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 06:07:16 -0700 (PDT)
Message-ID: <fac01fa5-f257-488a-854e-716bd2634d85@freebox.fr>
Date: Tue, 18 Jun 2024 15:07:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Basic support for TI TDP158
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/06/2024 18:02, Marc Gonzalez wrote:

> Marc Gonzalez (4):
>       dt-bindings: display: simple-bridge: add ti,tdp158
>       drm: bridge: simple-bridge: use dev pointer in probe
>       drm: bridge: simple-bridge: use only devm* in probe
>       drm: bridge: simple-bridge: add tdp158 support
> 
>  .../bindings/display/bridge/simple-bridge.yaml     |  4 +
>  drivers/gpu/drm/bridge/simple-bridge.c             | 85 +++++++++++++++++-----
>  2 files changed, 71 insertions(+), 18 deletions(-)

Series has been NACKed.

Can be marked as "Rejected" in patchwork.

Please ignore.


