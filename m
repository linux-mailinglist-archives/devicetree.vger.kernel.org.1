Return-Path: <devicetree+bounces-61363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7D78AC678
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:14:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54E121C21B6F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A424E1D1;
	Mon, 22 Apr 2024 08:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zfsV8M9Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091FC52F9C
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713773608; cv=none; b=hGYFe2hs47gPWcO/t3fEeaPOMqh1rkflrf8kEjegWhe0HllfXSrBSeC1sV1I0Hynmx3tPMwXiLfUb++DX/rfKab00VXqmaum/Orw5kq55Ekm7W8PZFdcrwPwZCGJX2R82YC8XMN/YIk9RDERTQ5fXpW27pWfInD7pjNoyv0w8n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713773608; c=relaxed/simple;
	bh=FxkEBziKtQxhWojrucgf/WGamgoTlWr+LUFLjNsCl9s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=P0J0MGWZrslh3jHOx8WwxVgvcAioWFUVCOQUDkq5je/HBxypvr8nJcBUXhtG+eq7m6oJJggLYOiUI6/u8qMmI5BkaVLBeJwVuMDGqLItvaLplj1EEHePSWhexzx+7jpeg49DkXl+rwMMi9TKtEPDA3QgCnOZw59bOFudrp6pTfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zfsV8M9Y; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41a7ae25d53so1945865e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 01:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713773605; x=1714378405; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SS3mxjJZGylPMQWrV6fjHJvytyShfSYEN+VKk+SCWTk=;
        b=zfsV8M9Y15XQoTkCI46CIw+QrNcIbc9v8nztBFW83vYHLcQLfS+c0luHVs/6fvmH9z
         KDKE4F47VXEnxfA3r+aFMznif2560zr3N279qvFNbMdO7onun327KFsnxzNGm4eKVj0r
         3ngAUrGxRavZIc7IOA4/mTj2zxdjC/vEECtMZMnFadpqJdypIhX2Llaj0v6QWgqIrhxo
         p/TCeTH0S8gy+D5bI0Rnlw/swRw81k4q81RuLBb4B61YwIhHPQfeHPuple/lbnDWmKKd
         DoplkS1yufStngZgLN+QSkXyLf695kE3wqjuxJH1sXf6BVbey0lKXnoAnjkHwtASv+Z/
         vuKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713773605; x=1714378405;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SS3mxjJZGylPMQWrV6fjHJvytyShfSYEN+VKk+SCWTk=;
        b=mt9eNw4eEu/VSSaa+/LziAWnX8WBDIICFJ1BO7rUMbfEDZ8neIsK3x137+QKfmKHat
         pLfjE6sw9glU5WmKnuHIHwiiKdQuu2IaqeHZJsbM64GZ93I7NT81cYUDbIAf3LjjMv0h
         nlzeEwSb+an8Yxw+KT7dGf91UEpE5v5e5ou2wH84Yhjze9TCyyTM+BK3FF3wn/KNcU2i
         eQYnuwgHWLbJgeDma8E2SD1xZzwi5NZJTjhENx/3TtjqqTD3DDvbv+qjQ+JPX6e89Y2k
         FtZlxGocs9tYgAhU/hr1dcdkOgOlOPvL7NfE3r0cgnzfMK3Xu/tkDWilPXIPcue5DeN4
         9weQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY7jdj0xP1E7pqlqwh1LYmcxJWh9QWf++YxhflP2JmT/4FfJd/0LEkPVXmE4pZdB8e2yP0lE4eGIHJG06aKt74nBbP9fDBILnHvA==
X-Gm-Message-State: AOJu0YzyFANkU//q07dfOBqWenXyVI2colm4IOmdg/E0S0BO9LzIclm2
	yoir0R8ubRGUdS3zsBq5l2mFqG+4mZYHfKoqmoVfNGd+ahAGPgEaOuMQqJnwD8J0k/SxkWyeFG4
	wKJv07Q==
X-Google-Smtp-Source: AGHT+IGPrO7v5/lKn4DROPvyQytV03lXmW3pR62NbGJT8AmgPph9yPGqucSHM/Ijoe+qpMFYe5TATA==
X-Received: by 2002:a05:600c:1394:b0:418:e6a1:c0e8 with SMTP id u20-20020a05600c139400b00418e6a1c0e8mr5978703wmf.7.1713773604900;
        Mon, 22 Apr 2024 01:13:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r7-20020a05600c35c700b0041638a085d3sm19437504wmq.15.2024.04.22.01.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:13:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 Jacobe Zang <jacobe.zang@wesion.com>
Cc: nick@khadas.com, linux-amlogic@lists.infradead.org, 
 quic_jesszhan@quicinc.com, sam@ravnborg.org, thierry.reding@gmail.com, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240415031408.8150-1-jacobe.zang@wesion.com>
References: <20240415031408.8150-1-jacobe.zang@wesion.com>
Subject: Re: [PATCH v2 0/2] drm/panel: add Khadas TS050 V2 panel support
Message-Id: <171377360401.3418456.5122435310463743780.b4-ty@linaro.org>
Date: Mon, 22 Apr 2024 10:13:24 +0200
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

On Mon, 15 Apr 2024 11:14:06 +0800, Jacobe Zang wrote:
> Changes from v1 at [1]:
> - Fix name from "newts050" to "ts050v2"
> - Add specific description about controller change
> 
> [1]https://patchwork.kernel.org/project/linux-amlogic/list/?series=842707
> 
> Jacobe Zang (2):
>   dt-bindings: panel-simple-dsi: add Khadas TS050 V2 panel bindings
>   drm/panel: add Khadas TS050 V2 panel support
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: panel-simple-dsi: add Khadas TS050 V2 panel bindings
      (no commit info)
[2/2] drm/panel: add Khadas TS050 V2 panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/26f9339212db569310d4b0ef4284efcbb462a86f

-- 
Neil


