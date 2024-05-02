Return-Path: <devicetree+bounces-64469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C11068B9717
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:03:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D39D283E2A
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 09:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48863537F0;
	Thu,  2 May 2024 09:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KiZiDDi2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF55535CE
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 09:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714640624; cv=none; b=SBB/zocqzmGfIhVmAzKBypQZyXWMnvxLVoTTpSdMekWnoFPkVsyLSrE92cgdDUrOvhexwYyksIv4M8ZzCHr3yFF2CqcWCtixExdS35YmSvhOdcsrF0bS1WOxt08bu8P0XvakKVwJqZGx1J1tL2zoZBYONfAz/KlaMdSCidKlsFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714640624; c=relaxed/simple;
	bh=B1/JsRHaRwh8xuvVCfPfE8zGZptpICAFi/tgmIGfjyc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UTkFmD+HQolH/Oj2IWJkQNond1H4KL9A0IIEmwm9HMvOs2SFdLQq5FezcYiLpL6LOU7/R8bANLnTZobp6IpvTYceTk3YmzpoC4aGbnZxiasBTzJ/pzJBHSGw25EJmT6jJJ0IISV+/SuDB51iWPs3MeOrv670Bj8xf1193gECMiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KiZiDDi2; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e651a9f3ffso39855485ad.1
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 02:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714640622; x=1715245422; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I9jftfW39bbIeQUfZAK90lWrNeaGnmPoobdnKBYyOfs=;
        b=KiZiDDi2ScPb+xCCcArPOQ0uW7fhi2rGWbqcKKTlbQYMXxSPvWPsHlasZ2C40wcaOa
         gFuHA5EFh0F9C9X5jpDGc3Mwc/Cvx80X//Cz7DtgdQTPWDR1F9H9mOgSbrTpXvq7SXPN
         V7QG5CboIUcojkkDdMZ/p3JG348nKaRcjtZZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714640622; x=1715245422;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I9jftfW39bbIeQUfZAK90lWrNeaGnmPoobdnKBYyOfs=;
        b=etlJVJKUdh7MZBPBCU2xY85CaX2BLUH4MBKuGCivfy8woIAoNfDyOK7RU6rw+bhhOU
         J+38Yg7m6CJTFJPrZKdUonLRAUJQJfQCzOt3ynvnJvPc9DNjBjM91JFKx+AITmJ6j8nh
         DVdONosil+Rt6fFyW+vkt3zD/LFY/7rDfrdcrdbUdAuil8ducXhX5tAGDpW3uZrWeh9Z
         QqJtO91F0WR2HN/NVaoYU+yXMU3TuNDpul8p7g/qsvuvvJSUbP0INAOtgFzeNMboYNu+
         B1wAWX/0Uml28XH62tz0Qlo0bZQ4utaWV9A5oKKPzmiXObseTUHIjsAPFe87Ddgeohvh
         e/nQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnEG575IQ9P0h/ohX4awS5ODQ3C7woEMpn24V0+glN4HeMG5C19C4aTFvmSgG7/7IOP5S1tZ70jB74YYngyNK+TRid5kd02zxPAg==
X-Gm-Message-State: AOJu0YxYtofZfeBHLMNiCrlCKzTmIA6k7/+hH1LpeOpt5pGxomSXJTIU
	DGuy4tZVeA6pj3U2BbaS86v1rHlhUNi0/BgfEAKgLRwUQrW51sXeQN2KSG9Tzg==
X-Google-Smtp-Source: AGHT+IHkk47f/oaNwBy+tqBFBgyeA5BhGR8Bu0LMaWx3ZnBeZ9jL9N9vElMhu4nySP7qHeAXoZ246Q==
X-Received: by 2002:a17:902:bb17:b0:1e5:8769:aadc with SMTP id im23-20020a170902bb1700b001e58769aadcmr4864021plb.22.1714640622119;
        Thu, 02 May 2024 02:03:42 -0700 (PDT)
Received: from yuanhsinte1.c.googlers.com (150.221.124.34.bc.googleusercontent.com. [34.124.221.150])
        by smtp.gmail.com with ESMTPSA id c17-20020a170902d49100b001ebd73f61fcsm764983plg.121.2024.05.02.02.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 02:03:41 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Thu, 02 May 2024 09:03:31 +0000
Subject: [PATCH 1/2] dt-bindings: drm/bridge: anx7625: Add a perporty to
 change TDM setting
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240502-anx-tdm-v1-1-894a9f634f44@chromium.org>
References: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
In-Reply-To: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.12.4

Add a perporty to indicate whether anx7625 should shift the first audio
data bit. The default TDM setting is to shift the first audio data bit.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 .../devicetree/bindings/display/bridge/analogix,anx7625.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index a1ed1004651b9..915d5d54a2160 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
@@ -82,6 +82,10 @@ properties:
     type: boolean
     description: let the driver enable audio HDMI codec function or not.
 
+  no-shift-audio-data:
+    type: boolean
+    description: Disable the first audio data bit shift in the TDM settings.
+
   aux-bus:
     $ref: /schemas/display/dp-aux-bus.yaml#
 

-- 
2.45.0.rc1.225.g2a3ae87e7f-goog


