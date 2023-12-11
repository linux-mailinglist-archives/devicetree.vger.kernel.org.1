Return-Path: <devicetree+bounces-23762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B4F80C437
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:16:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0952281750
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22372111A;
	Mon, 11 Dec 2023 09:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GZloR6y+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F2EEF2
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:16:20 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c3f68b79aso19183175e9.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:16:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702286178; x=1702890978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SjMxzyRwkdL/2AYzzLiQnqwjdltPGTpYZH9r0TugZAM=;
        b=GZloR6y+M7Z60APO3QUOW4xIm0X/Jg0uiJ411BfyVn4bRErMDmMsq4MiZhbPDVFukb
         jUNXZ0XxohOaS1kSIrpgKPJ/xAYiJrY3BuafxqecWp0PvL8U1s7FtPw5+KCFe5L+mL15
         DAd4EpLPgUGl1kCZMxgiD4/j0HIqbzjHNWjmTjxUdcwq74MPFBONB14maZw3a9//BiME
         0WkwEgpGlpj1y9412F2aVV03eR6jeJoqj6nVs0s2ArtQwyuvYxvpgNGVpHBXPnZCUzW5
         rSN5A/Kx8VMjsztRaJKAcGMGoyyx/qYnqAFinEIHyo5aVV2Ck3ulUFO0m6gpNKJb++Kx
         iatg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702286178; x=1702890978;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SjMxzyRwkdL/2AYzzLiQnqwjdltPGTpYZH9r0TugZAM=;
        b=PRztZRFiBGjxkmiQ9a7SQEZwqE67lL0jplbbcsNUhye0GvDFhRy7f/CqOlcRmtRfVc
         IU02WcIgkI7d8Y4ybanq25TnEsAAWOL4rLtVfBR/9L1xtvmyP0ZlOFPYUGJ+w/juJVNL
         8alnIpvkREgGLfL9Sbxs2B/lAdoISnfoZISMqyf+OBmn0pesGSvvRmvA9IF/4ZmxJ8zw
         RTCwNjGMdZYUu0yfD9Z4wudXRoyvypygAlJ4NMM5hbVnHHY+S54LOh23hjUEnA5fHG4u
         1iqCT5MQPRzeclQ2aexx1CEvY9PBbY3lzePhlNBAufPRElupe7yxvqgZft3OF3VDi1tm
         /ejg==
X-Gm-Message-State: AOJu0YxL+TfzD9Fi1+D7dR/22vaP8IyaTY1uHplC0c0goMuTcORP4NLY
	/blqxqmd58FUSw9Zmd8sVbI+/Q==
X-Google-Smtp-Source: AGHT+IGqUFHwBiG4qbbgxDSACeXDifjNebaZ+jVC5Fhm47uH9wX7VT0O54VgSxVi0RX0nkInjt3V5A==
X-Received: by 2002:a05:600c:4f4d:b0:40b:5e21:dd34 with SMTP id m13-20020a05600c4f4d00b0040b5e21dd34mr2438020wmq.98.1702286178694;
        Mon, 11 Dec 2023 01:16:18 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id bd19-20020a05600c1f1300b0040839fcb217sm12398470wmb.8.2023.12.11.01.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 01:16:18 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>
Cc: Elmar Albert <ealbert@data-modul.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, 
 David Airlie <airlied@gmail.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Liu Ying <victor.liu@nxp.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <thierry.reding@gmail.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org
In-Reply-To: <20231209063714.1381913-1-marex@denx.de>
References: <20231209063714.1381913-1-marex@denx.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: Add AUO
 G156HAN04.0 LVDS display
Message-Id: <170228617769.2409693.256554551788540699.b4-ty@linaro.org>
Date: Mon, 11 Dec 2023 10:16:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3

Hi,

On Sat, 09 Dec 2023 07:36:59 +0100, Marek Vasut wrote:
> Document support for the AUO G156HAN04.0 LVDS display.
> 
> G156HAN04.0 is a Color Active Matrix Liquid Crystal Display composed of
> a TFT LCD panel, a driver circuit, and LED backlight system. The screen
> format is intended to support the 16:9 FHD, 1920(H) x 1080(V) screen
> and 16.7M colors (RGB 8-bits) with LED backlight driving circuit.
> All input signals are LVDS interface compatible.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add AUO G156HAN04.0 LVDS display
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=bf7f730dea3125b2272ad7268f59e8992c5b7822
[2/2] drm/panel: simple: Add AUO G156HAN04.0 LVDS display support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=9e52d5c808215b0033cdbeca72700b1e401ea987

-- 
Neil


