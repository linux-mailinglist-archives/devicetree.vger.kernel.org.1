Return-Path: <devicetree+bounces-147559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 310C2A389DB
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B2A03ACD09
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:42:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60362225A4D;
	Mon, 17 Feb 2025 16:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YAQXYcuz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EB9225786
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739810511; cv=none; b=h7WUph8/PSwbW0wszGYQhGLhRFt6rPlHyb8138cfJh7JQaLIBCO5qvz6/lLOrcKVkQErFz81yV1N4cQ1CgZ/qLzQiHxU6iiDcjXSCcne8q73nRZfXdAEw8MjRtpzi+nHxlCJHc2PwQAissbX9yiE47/CgQY2jNzJrFEOnJGc3go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739810511; c=relaxed/simple;
	bh=wf+CuC28ypTqu4EQD5hdI+GDr7Fn9S7Y7CIcU8MS5oE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J64Z2R3EHJnzgbtYfaX1FxC60qKf+hpuFjaMB7mxVfKqaA4niU2ZVUJwtJvpeRxJSkEbeJoYylvX+T0qMIAT/mT7oczkqN0CVObQuWwQjxleog9UEO/KNIaxNS8IFc1pAWrq5N5k7L6cIIodEqOWd4xBx12Wdn1ewElI6AcnSl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YAQXYcuz; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5dbe706f94fso670945a12.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739810507; x=1740415307; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N+5aoDlUUPJ10rJqXrmf7ktYiK86nyUI9p9lZazil40=;
        b=YAQXYcuzK3d3zcIy4adFGxBrL986+c9Q7UIL6hV7Y3x3PnbCAK+juh5ApHK8zXawct
         wm+CtKToK6Zw/xemDsDiwH1R2oi7netAaWM6vyhwT94zID3PuukUIqsgy5LChhGc7IUe
         7Xi05+7uoBVkrtGlvk/UM2Zc3oxM2QTDkOHAyMfhMoHf0FmR0sB+QJ9KSFqDWKsXpi1r
         vWrqDkYDdCjhvjJS5rLGFKHYhwBItmG6k97T1eE8YStP43w6eNkoXmKykoul+81iIdWL
         HeCIXUT5+qUWcrbpoImxvmK6Vs33WwdwlQErhWash0wKxypbLlquHecVGtx2byOB4zC4
         /6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739810507; x=1740415307;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N+5aoDlUUPJ10rJqXrmf7ktYiK86nyUI9p9lZazil40=;
        b=MJH8VukGt8PNY/S4fLC7y5lkdvVkaAaQPcJFBg+u1pCk0nQlevkKwjKND/+yj4OFax
         KI9lk/cm/QTmnVSIeCR48+vFCvI/HhvE+o2HADVjGZKtY59P+GYCPktuZlH2f83BLqlU
         +Da/00+36yzG/apvqqlySop3JW4EeT1eHVUh4HSzgJekLA4i5LxmWw96KcyIxT8ejq51
         sP1A6nXigAjuTkHGCpKXevkbmwkRn3WOFeGYaHvJvRBcf3FkHrjX0n8nbLykX6TXM9p8
         OpjuxKM8i79pB0qo2VO1nUyqt7IWudYvdpx2uxFhKyrQTo3usZ8xGKZtyawZVA9WNC31
         Q8tQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQhq0pzjSgb81n+TgMNkXvEdP1+rO67Zu/xruAre/L5SxpetobPjxN1d8FWqDQM91DKo3HYEXN9Aaj@vger.kernel.org
X-Gm-Message-State: AOJu0YzSDzhU+5Lm/pRGTjOErc2jCaJ91mylqEuQK5IREuWnls9xgQD3
	BE/6tfFw/xSq4aT+KxXhlYS6mvQ1+G3FLQlCOzezPlPdkrRvu2bz4pjLCQY+T08=
X-Gm-Gg: ASbGncupm/76jrWtpWnbo4tgegiticMnXi/uBC1wZbjhWIG/86QExBShPX5tmGB2YlR
	vYVqqN7EUrauVWL8myoiykeRUuqiigsskWWKaS9eFSakVCqGk2XlT/+elPIzLKxrjZqKEPuy3vG
	mJpkxs0Kk/31ZnfBpdiCHXfug0/HPmyBU8VW7l1Tb2PjSOjpADI4kArInsOq0/98XxDc+N4FhLQ
	pDCx3fRW0K8ydXs9vj1UT/tPfWeUbc90vsy4co7Wk9GzJRz59bW4iiWqHOOsEnTucggp40qOiyj
	G7FG1ffNZdvo3OI80VWv7qU7vlVt3O8=
X-Google-Smtp-Source: AGHT+IHRBktJ2CMWFcJl7zTzhiegmw14O+ej0MwM1UHqZCG86dEftz5Cx0FG4ED7AqXi7Fd5goBe5g==
X-Received: by 2002:a05:6402:5254:b0:5de:b604:355e with SMTP id 4fb4d7f45d1cf-5e0361b8ac9mr3287589a12.8.1739810507589;
        Mon, 17 Feb 2025 08:41:47 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbac781b78sm82647966b.60.2025.02.17.08.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 08:41:47 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 17 Feb 2025 17:41:23 +0100
Subject: [PATCH v2 02/16] dt-bindings: display/msm: dsi-controller-main:
 Add missing minItems
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-b4-sm8750-display-v2-2-d201dcdda6a4@linaro.org>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
In-Reply-To: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1881;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=wf+CuC28ypTqu4EQD5hdI+GDr7Fn9S7Y7CIcU8MS5oE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBns2a4hP1oKS+5fk1zOVCpOHjK18I1sB8j5kDHF
 64DS60m7cOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7NmuAAKCRDBN2bmhouD
 16czD/47KDXygwBuqAB7VjF3Nql/EcBgYmDNCQH4Vs9GqJpR/YCiOStKlTsIY6A1WCHPP2arpML
 ojcquVoxXC8dRFfPRP/YjI7pLQBU4oKV9C9P/cfdWSS7uKCjKp0hlfhnlJ1rYVc9ekvDTgu0egr
 FqMKaiUncDx00ORd4/IYAAJIrtfJYsmEd7MlC079iIJDd5JxwTiRvoo/5p6AJOWRQho+aIkPje9
 BVzoCrWGm+ZcqMErfsYTVSJpgjHY/Vf1sDl17MFejYyEXPo1VcQyNNblxsrZ2NwghOgXsItXXIC
 ltZuyEsoG3n+eisguigZElJqHvSBU/+btT+qDZOlP609DaYmw0wjDPl7hG80perADV0fhnocOJX
 /LI8FnN42wi3zxxhX55/ZkhX9eCzKB977V+pbOMiJeBxZBBPKXkEKdL15BIK9UzL9oT0KFDtN3u
 QcptUq2QZANSehzBqMJEQhDCW/4J642FUT6UZKYT6eOB4LVvXnSTFvK72KVohvYqkoOXARq2FMd
 GFHIqugLpTSp3EmuaUgA30u1gI80jpK+9X95fL37bTZLkp/ptIAPRcVp7ml20DYHmm9KL69wpJa
 L7wVyFHHsyKMNuwOSpDizRAw2AqmLewg9LLQhC1QfejxGtnEBYkKeGzytxIeUKAphRlyJXSC9kW
 JCeb2pfpCCbcZtg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Specific constrain in if:then: blocks for variable lists, like clocks
and clock-names, should have a fixed upper and lower size.  Older
dtschema implied minItems, but that's not true since 2024 and missing
minItems means that lower bound is not set.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index e496e5430918d54b2f07f1d5b64de85d29256951..2aab33cd0017cd4a0c915b7297bb3952e62561fa 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -231,6 +231,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 7
           maxItems: 7
         clock-names:
           items:
@@ -253,6 +254,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 6
           maxItems: 6
         clock-names:
           items:
@@ -273,6 +275,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 7
           maxItems: 7
         clock-names:
           items:
@@ -293,6 +296,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 7
           maxItems: 7
         clock-names:
           items:
@@ -328,6 +332,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 6
           maxItems: 6
         clock-names:
           items:
@@ -347,6 +352,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 9
           maxItems: 9
         clock-names:
           items:

-- 
2.43.0


