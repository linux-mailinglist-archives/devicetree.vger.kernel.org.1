Return-Path: <devicetree+bounces-209146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABA6B34F5C
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 00:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 014752A5D95
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 22:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF5D2BE7A7;
	Mon, 25 Aug 2025 22:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HUxXQ1Ce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7803619E975
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 22:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756162643; cv=none; b=N+pD5wvYszh28/BgpMC1rtqVL+wOWP5oAvpREpJYIkpXPFyXVisvgQDRlqIq1OqlCqymJMkn+HAK5fnK/PV1nPTFhjNxSgDj6eRj1YCfhWx0wS2ol34ZUKV7VIuOLy9mWlaSKki+2ADmGp3uhMZbpzG720Ey4EHFF+TGJl56fAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756162643; c=relaxed/simple;
	bh=n+eq93EFZerFCaRW/YU5rAe56h3L7pAing8rZOS9aIo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vu0PY6eHEXbz+XA9+VwVhsmp9YaIX0Ms2F4KDxF2RHo0vL5uXyrjCXHrP7biADWIILkRXPao11xrSmUJRPTW+Z1GvNbE0NjCyAxnxqIRzaecSXnFwVsf/Ih9wTicNla/BlxF54y3QTdEeGH0VJrj2Amy+KTYpdhvHwclgMzzrmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HUxXQ1Ce; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-770305d333aso3208472b3a.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 15:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1756162640; x=1756767440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k5YulMZOBNM7qvzrKYRTd+kawswMfatbXk3R7yzHh5Q=;
        b=HUxXQ1CexVBNSb9y4pxOc2hUVIgVO1IolJw0d6JOodexjFPanShGn2aY3ym2SqzFHQ
         rVQmL2W+7HGeegKJ8LcHW/S/rpjQrWBMtZS2rGz6c+J7+Mno3t97mEatKZJLjsWNk38g
         6OufbNk/DuvaVKAgTFv8HY8x4B4oop6815FgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756162640; x=1756767440;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k5YulMZOBNM7qvzrKYRTd+kawswMfatbXk3R7yzHh5Q=;
        b=hwqbA6ihRvOy7NCfxB5K+oMDvsupjXFa6faAa4z2E88dzLsMFB0QKMAD7orWYJr45J
         U4bTOs8+nwC2W7gro5jEcFOSNAw/4GVQ7uV3kxiYS1OSdHQJY38CamvF2hn40Fy7ZJ/1
         uNGdoaMSDt+OK1iNgPgx8IAXc0l/EIvcA5ZrGuXccjIicG70pXmLJHJRWJn+UlWlCDhp
         VRtqgcKWS7qh6QakuGZb3UsngRdBzItvN6t3vw8b7hwpV5U3YU6FL+pgJRw8RBPL00tf
         9R7ZV9U2NOS/zCCN+ZHzdSliunU1Da/X0BiycEagxMFoqjwbPfsk4gxrU818DwyZ0ZHA
         SxEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJ0bv6tvXiy5Vo2jcVEr/Y3/h6s3vIvn3zHi/OJO9TxYFGoYvye1aslzaW+cVPBnaTfojgWZsVJq1N@vger.kernel.org
X-Gm-Message-State: AOJu0YxOjXk3TQtIPKk/kxZdJOy8ptJuULgiCwm9gKNd8T7kbSHZNdNH
	/ZnSl1TdvWMjd/cZOGZywYeqk9YhrjQkQO7+P8IB5a9PfNytBlb4z0ZkXjGkF9YglA==
X-Gm-Gg: ASbGncttLGv5pB0BNFWIcm5zrpIhLyy4+iBuZpyw30yACtDh2+VA97du2UdizZnyyc7
	1UiC36IntyKpAm+Yj3a0GM8ly8z5rE3/Vu8xaCeKtJ7rYMf4aBiPBwTgb2FncQeuAYqG0Vo4Od0
	S0xHmGNV3lUDoUEz8+/ofEGBDxVENhq+gvkX1YH/WNukOQOcGcl1w1QYMeSD8Rm5aHFO5i34PFL
	lCh4XgNz9oCSYYQ5ApWOLzs/2MlGIYdS05DUd5tUsjN50jX47ZKhOxs1SD9caq+/fLlgYGPfgkO
	pBu/S4YQmFiz9Wdcde34ALmgIrYn/+AJkvttoZo+unRZQUWYbUcBIM9sWrycFg0T3iqm3QHQFbh
	4aydqGe8l0D30fWS7NxLQydw9VoBDz2RHErF4SCuO4CFZ3DjeCjLESIUqQLc6hOkbtrGK
X-Google-Smtp-Source: AGHT+IE+HIZBtyyFvl4JXHn3tOLjF4u9v/mAZN6MHNUlS7TTvkI/So/QqLFhw5/+roUTI74EBRpCWQ==
X-Received: by 2002:a05:6a00:4b55:b0:76b:fab4:6456 with SMTP id d2e1a72fcca58-7702fadbb34mr16821506b3a.21.1756162639731;
        Mon, 25 Aug 2025 15:57:19 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:230e:95:218f:e216])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-7704fb69542sm6529922b3a.94.2025.08.25.15.57.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 15:57:19 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Georgi Djakov <djakov@kernel.org>,
	Odelu Kukatla <quic_okukatla@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Douglas Anderson <dianders@chromium.org>,
	devicetree@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: interconnect: qcom: make sc7280 aggre{1,2}-noc clocks optional
Date: Mon, 25 Aug 2025 15:55:56 -0700
Message-ID: <20250825155557.v2.1.I018984907c1e6322cf4710bd1ce805580ed33261@changeid>
X-Mailer: git-send-email 2.51.0.261.g7ce5a0a67e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We've found that some device firmware does not expose all the QoS
resources necessary to manage these interconnects, and that the driver
code that starts using them crashes. Leave 'clocks' as optional for
qcom,sc7280-aggre1-noc and qcom,sc7280-aggre2-noc instead.

Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 * new in v2

 .../interconnect/qcom,sc7280-rpmh.yaml         | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sc7280-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,sc7280-rpmh.yaml
index 81c3dff53992..5dbd0563ac17 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,sc7280-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,sc7280-rpmh.yaml
@@ -82,17 +82,17 @@ allOf:
           items:
             - description: RPMH CC IPA clock
 
+  # QoS clocks are only valid for aggre{1,2}-noc. Some TZ firmware do not
+  # expose even these, so they remain optional.
   - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sc7280-aggre1-noc
-              - qcom,sc7280-aggre2-noc
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,sc7280-aggre1-noc
+                - qcom,sc7280-aggre2-noc
     then:
-      required:
-        - clocks
-    else:
       properties:
         clocks: false
 
-- 
2.51.0.261.g7ce5a0a67e-goog


