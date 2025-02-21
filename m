Return-Path: <devicetree+bounces-149442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 409F8A3F888
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:25:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB28E17AECF
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF957213254;
	Fri, 21 Feb 2025 15:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Iwldlfbi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91B5212B11
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740151498; cv=none; b=VOrkbDA9Y1i5ThXGEAFT2djWTgkcX8JpGZv7pBPobvCGkIlmsPdXH597e1UoVgFF8xx70RUDtmH/F3LmTdrqoZLniGY0Pn8ejj9s0QYphNEcJ0qbX0oIwmTYXqL5LvSwltGsgFY0lLyIZzRD6/niblDAqRh6+N+5S78DfIRyZ24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740151498; c=relaxed/simple;
	bh=bIJmVQhUPgDWhOxkXZXr441zWOXIC11HBHyQtQ4C9AI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KBskqR7gBNbbKD44BTN/zQsZF5VICGkrYnCthrC6o2eVbELgZdr/5zLbEcXpBh5eG/VUVank5F7dIGqC72g80bxOX1rqTqkqqeG4ed/qRbCflaa2erz3qGe7+RzIgofR+L/vUoZ7Svv3XkYgfD4WZ0u/tcZEpN0JvVW6j82fuaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Iwldlfbi; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ab7098af6fdso34126166b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740151495; x=1740756295; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ve17j3mm/abtdUOwnmohJ1b3/R5tZ1e+gOy6d8tNk6E=;
        b=IwldlfbidIHh44vWWVZ0OhJIvRAnqkNSUK3stGwsoW3jf2wQjZlo0su965kunv48s8
         i5EKyE5Kex9B0d/bdN2dF0+RS8QoxM24MrZkJE9U6uzS/oeRljKjKzcgCkGA3OVa2HL9
         oGf0Ylk6OYmGFt1EhDnbnUF1qaXSrEc20Wb+F2huyZtVy7biqj4qPNDUuJvBD7YvFGOB
         Dapt2yCXAXcg/LnHbyq5QVrJAPOnUy68bkd/7u5brR6t+UvStay5QuE12yxwUx6cwcQc
         WhppTcUJrcC7ix90trdlHohVo0xUJJ6RkdRRusgYq0pVJhqg+qDHPZrwERe1HAn3mwbp
         +Wyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740151495; x=1740756295;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ve17j3mm/abtdUOwnmohJ1b3/R5tZ1e+gOy6d8tNk6E=;
        b=mFV6NN706QpgiVdJOlF74ATfK/yIH5mvEZYIMDOcYYFzJuJJvJvrsikQlV56inUtwf
         BvagmFh3IA45hJAqLwBKcSXoEMtxKuLjdqrBDsd9DYHVRSbxZdik2agC1hKDhIXi/xhl
         1CYyVCHsNr1wxRtU+wXrUnfgweWxIfG2LOMo9teS2MUSUQv1YFAd2JvkvFtzcoZajB9J
         1XkOvoDkZdw4NNFOsFvLBPj6VIyhp+LX65GDd4Ssbpvu3DQk01RQjWwEZONdY9kQUMRb
         H5jbBMa0nEdTx5aMG5p1L5h3Tf80xVGroP6es1tw/tvixE4glF/7u/3K9MrihhEV3FFS
         yTvA==
X-Forwarded-Encrypted: i=1; AJvYcCUmSUqbJOZLqNLUimovGgUioOnoH8AZMsp3oaIL6ORWmo59xDeauNnPRjObWTtUWtAFBtOfXasG00il@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl3agB4YZ30RB11lot7rDnq1w24Pzn2zS03H2787vHyTw1uTAV
	0ZCSP2rwR6Qu03NrMYg21fkm4Tb4HeQAJor6vjjK8eZdCM/kkTimmO0VxvvvYJw=
X-Gm-Gg: ASbGncuIYx5jeIgGIO5BAa/qcCsIo47KH5FLJzhlKFDkf1rF9kxsGzGNzl+aWdDatGZ
	DCeJF8evZu5K42kSqJpIhjjn2nlOz2JINpuvsLjjGe0e25DcBf4tdzIZHJbkYR28E9aHLDIxkDC
	cHokf4QhNnbonMEuDC2GZOzuntZXFoVkPRyEjpmngqWkRc/lrQ3H55pa+QeK+HcbU5A3NPh0sfX
	xCd8gJuZ6sz08/qnuku3SkRxYwHx2zJAxPupGI0jDdfanx1zqSyyJjJBAA8m2uiwfkmdhUOgIx8
	LqBY7YLz/x7/W8KBJKeNreGLUvcM0LwM+xyn8ZhALsHm+XyteTqb4+bGYMlNpnCRuIERrrMkqx+
	V
X-Google-Smtp-Source: AGHT+IGThcFZG5h6nyf0Wo4R9pbuzagN/g7Q86hCwRQ07ocY0fsI/LnRjCQ+ln/jckB/H3+qTrieVA==
X-Received: by 2002:a17:907:7f17:b0:ab7:63fa:e35a with SMTP id a640c23a62f3a-abc099e1dafmr140767666b.2.1740151493681;
        Fri, 21 Feb 2025 07:24:53 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbaa56026fsm865456666b.113.2025.02.21.07.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:24:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 16:24:12 +0100
Subject: [PATCH v3 02/21] dt-bindings: display/msm: dsi-controller-main:
 Add missing minItems
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-display-v3-2-3ea95b1630ea@linaro.org>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
In-Reply-To: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
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
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Clark <robdclark@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1931;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=bIJmVQhUPgDWhOxkXZXr441zWOXIC11HBHyQtQ4C9AI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuJqtl/dJu9saPm64cDkotdIPNx/NMuosAvWNm
 I2ba2uSO8iJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iarQAKCRDBN2bmhouD
 168UD/4soLQMowTp96PKFERzDIPLIBRahxZNBzCNEQBX0rlr1gS10d2jJqUplfH8osgbTis/4sU
 R3B15+PKFAy2ol7Fb8eO9svK7dbJWZ3aNLVQ1DjHKxryodaeai4UhmRFSEe2mVKoVncQ5Phdzi6
 HF9gJdr0ptsIsalibfNCEiXevMyu5rBtcz0TsmeY7BimEG6qWlsuWYyfclVjAlkXHMsV4LYl6kY
 RbqDDsatU6wIw/ft8Z7Rt/L4MjKrF0LibxtmKdp5hTXi10by2V2PS05ysEJ37QUzFvTntouZMPs
 /35sGIrCSBFtujJ8THjXdc3n4dL8ifDigHXraiOa10Qbe4C46tEFP+saQYBKMwr4I0KMLG9g4Vh
 PhhSva15QOGSw+83ZVNv7Ozu8sZDcwd3OYaeMn8tK5bONBjSKCJacXk607YFllITGbV//rJl05j
 J7sUmaG1jo1AYlUeGRv8QkFNqh25b/z7Ir/Xnd8F4u53RnOjAnFCBIIQuk1pB5e/hAqXvyfCrxS
 hm71NzAq7XTyR9gU06Z0Sl9lJAnoEkGUck4PkrzQ99FRsOrUre0qDqe7q5Zyai9viRPuHnAyfSk
 vYnIZyjYq3lg6Mr3SvySVbMx5blM7ZgW3u4rjbA9XOyciLbs2m4DdeLuBgket3YHcCEaY5qeMta
 87c/5O7v0NKq0mg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Specific constrain in if:then: blocks for variable lists, like clocks
and clock-names, should have a fixed upper and lower size.  Older
dtschema implied minItems, but that's not true since 2024 and missing
minItems means that lower bound is not set.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


