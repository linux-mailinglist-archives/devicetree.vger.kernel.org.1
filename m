Return-Path: <devicetree+bounces-91305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B9948E1B
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 13:49:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 021B11F26A1E
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 11:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16DC61C3F3E;
	Tue,  6 Aug 2024 11:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wSNBgM19"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DF11C3F06
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 11:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722944982; cv=none; b=WPdX4WmJgxxgH93mgMeo8TIYyCzNnnhX3LfQ+OUVx8OEe6iV8LmASaxc6pZCutMHK16VkWKmvicSKUABY3f0+/I6J+s1BgEuz2wnSxP2CLgR4iJnGvQNhri+CNnsxbrY0X2zv0c2wtyc9ddkBBGGcnIYr2P/tVG9FWSFNCeMOBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722944982; c=relaxed/simple;
	bh=6V65vXM8FQwUV7v0SXbiGpzXztfTEZwxdLqnBCxG6/Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gpZlmy3miTkDlCxHeS7fqTsrn/k5AB1BZH4QnLciCMx0nCWlIU6hto4sQQV7H9WjC6QL+Sp7Phww+k3ilwMkVAOZQ5uoeAE0GcLbJ8otlYBsDyPcu83HiWX3KDUjPJRSdzAWvfo8adfwcWRMCV8n6CCXvW7lPJ8Vx/GGq+aQKnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wSNBgM19; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-428141be2ddso3658655e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 04:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722944979; x=1723549779; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zcyvcwsgz2iQmtLQWjshVBEVrR/YiNBp3RnZXLsmNgk=;
        b=wSNBgM19l1rWghz/Y+iV07S+3KyuVFlPOmmltuNp1SW28LhGJgTUoWFpUpIvcvh1S6
         0KbiDtj1TbK/UVaZqOmk+k7ZGnSRyFvDTw02mboKPHnQKOFFcQl+BJj+dgN5jWdI+s3o
         9scMRHPYWFx0y8oyC8S64vVgwhi8DWUvBp0Ov9JNGEPsFPoUW6NSXZmRtPBA6df5Rb9S
         kf8vEqr4OxQuwdTCB60I01fVWLVktzZkLsoDrfXPIGkLQOfvjyUndxxslmFrN8pN5Jl2
         cG9pfHMqIABHhh+o1Ov/rkS4RhjFHGKzIkch2ks7gzlJO52YaDJYdK3EQJOqYUtFcBbd
         cWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722944979; x=1723549779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zcyvcwsgz2iQmtLQWjshVBEVrR/YiNBp3RnZXLsmNgk=;
        b=w7KeV/YdLXXIdzLeEafXVFQ5LcwMBnoKRKwkQbGuUxYNgnKTzfmGJH8x+lyNuz4Kau
         yf4PgiJWFaTVN4Q0UFeiwK1XgXYJKZV5spfxnN3QZVSt//sjBMruYpKddgP3fsaOK4Az
         RecPN9qv0J4PUs5JPXjp8meA9PhCKmstO5OWXVS0R+ijXg7oP/Yz/wlqHayidI8Q3f/o
         jkrMQOLngLr8Rj1gl5RgtltZKfwfh1RLQtEv5n3NeOoXsz+iZQ4hy2y7RDqP7TLwC1cV
         mLP95bJWYe7zLCepOoAM2/GrWlXdNAU7MBkN/TN9FX3jUYBu/BlRMJkxRi/4uOHeHnE5
         29iA==
X-Forwarded-Encrypted: i=1; AJvYcCVWoNDn5LhSGuTGnzcUwLgo+KZiKnk7K7eY62UAAKmhbiYpbJb15O1p0DYI/XLDsLRBs6bj6lhhwZtHSa+2zw78kzl77/ImiU5ymw==
X-Gm-Message-State: AOJu0YzNgDOQ9uxMbOY1/mBmG/gSUc6dPsqy1rPB3WUTAgH8FVgkVU3D
	0ntZUy/U9swPAX36QsPKdfHKQYBOZwj8aIZsDj8Wq6RAEpn5BKRewL+GB43ixONeMpbwo5n+rV1
	W
X-Google-Smtp-Source: AGHT+IHdNQyl3G6YqRv/AULLacN9IkO3UKdGEkDTc1z/CSIyS1focn/fP6c1AdbO/8YkYsQAvDZDYA==
X-Received: by 2002:a05:600c:4513:b0:426:63b4:73b0 with SMTP id 5b1f17b1804b1-428e6b96e50mr97378085e9.34.1722944979504;
        Tue, 06 Aug 2024 04:49:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428e6e0357asm180287485e9.12.2024.08.06.04.49.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 04:49:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] ASoC: dt-bindings: qcom,wcd934x: Correct reset GPIO polarity in example
Date: Tue,  6 Aug 2024 13:49:29 +0200
Message-ID: <20240806114931.40090-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806114931.40090-1-krzysztof.kozlowski@linaro.org>
References: <20240806114931.40090-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The reset GPIO of WCD9340/WCD9341 is active low and that's how it is
routed on typical boards, so correct the example DTS to use expected
polarity.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
index beb0ff0245b0..a65b1d1d5fdd 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
@@ -199,10 +199,11 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     codec@1,0{
         compatible = "slim217,250";
         reg = <1 0>;
-        reset-gpios = <&tlmm 64 0>;
+        reset-gpios = <&tlmm 64 GPIO_ACTIVE_LOW>;
         slim-ifc-dev = <&wcd9340_ifd>;
         #sound-dai-cells = <1>;
         interrupt-parent = <&tlmm>;
-- 
2.43.0


