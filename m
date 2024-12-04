Return-Path: <devicetree+bounces-126888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7F79E37B1
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:38:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D226A285F36
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 10:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45361B412F;
	Wed,  4 Dec 2024 10:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QmJLbn4U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FFB1AF0BA
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 10:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733308603; cv=none; b=Fug0ZlEKhAvvVpBWfoNqVwg7aRL+wezdmdiKNyeUWwfb0Hn+ByLed0NecXuO8aKJzoNEd8UpZO3wASLlDZpmSGnyjuFFd88TRRDka5xqaC0WyfC+DbRhDdOiDtzZYwr+BAKOEpycoR4ohAi8E/bSqXM/PCM2yqWgBxbFSY7j6GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733308603; c=relaxed/simple;
	bh=peYrt415YULllPSwRUnKU5Qx+NDdGSX6LQbwju+FB9U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=l5Mkkd52QRRmUax8b3AtoYHlSCRgfBbnDcVK7szak1n/CWamhtxOP6lYePLYDHlyPvWVSQ3isDYrhsAVmGue07tEp+ArgJIRErg0amX65U67kHD9vHTgrsiIq9a8yx2EvZfWnLJKNpZIJgziL7ofuwnDm2NwAjuk15RuyBVNNew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QmJLbn4U; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-434a95095efso4238965e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 02:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733308599; x=1733913399; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CEBWDAJs2F15pzwyozxNKYhFYdToRnM6LzIW6iWekBk=;
        b=QmJLbn4Uiqj3a84BcIb4G5O87C3WVKkpwE+AAvZFKZ5k6C6gQWUuRip4cnycZBxhya
         HKckBnsiUGP5Lj5RbumcGpqn7rB4R+p+lvVEDHBtJ1RhlSv4nI/nGnI35v4GjIkC+v3B
         8BIce8cTrwJ8z09IvzWbvogSyhR52OvHGXiLZW3oyaTJdiXCcpPb9tW/s2+9fpfInZvz
         qu0yd2xGLmo1jxrxuTOCFxDcUJ2IH3Mz32JaYLXxAKyoY9D13LbaKlY9mcJvzhcpgVtN
         Obsgc7ZLjmvyLDg6C9b6UenBfhiG58S2mLpXlIZSGXuI4ps50FYT2aU2okY2m8/zWg/l
         DIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733308599; x=1733913399;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CEBWDAJs2F15pzwyozxNKYhFYdToRnM6LzIW6iWekBk=;
        b=a6AFadkkKLFlYgnFifYROi3fvnq1Q0yV5pVSguVwl0h5GWq87faegsVQHIiCeSov1c
         Dqi5rjFjCjD9VUyzHfVvRC9O+RzXB4iczWHB8fxgUgqmjqJB4SBpPdyGdsLoBmiwMLhb
         jCLRrfbnRGkx03UeIyfzNkBoEdbBeyOr+Dq5N9efleTxbGaRVUXN1Dq4s2qrpjEZ2jsZ
         cmoQ3n+owhcMMLAozfB/FZYREN9l/LUpiQY/VP/sSKO5K37kn/rp26BIz/5nCCzwGIb4
         FvqcZjyOli1DgWzDJq3hlPMGAqF4o56m1mweZ3XhfCnYK5NyI1QuNe/ZCW8GUMsBn8Nt
         c/Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUit+OvyG5+Z+sEMJZS49EAX+XdQ5p5lfyK77zHM/9odEflVvcQ1TjoERI2R6dEex2r18T0w2T7Ejwb@vger.kernel.org
X-Gm-Message-State: AOJu0YwTIAD7RgGIsW+CYO6qgYpQ724dPmRCyvfmbW4Q8k82ZSbBwQfd
	YcJLMQKSZKAbnNJL/caIcbB67IMqb0VGcNQmdAs+uGXTVBxArXXwbn2AkaTJE4w=
X-Gm-Gg: ASbGncs2A7fUvOVyGdCAP1ztiShIBVkbkExjQ9fBz5crYwj0RHBDCF47Xk1j16iVsAE
	LvJZWazH8FZoww3g6X5ruPhTR9gvE1Rf3HPNtd9Ho0b6lQhdp47NB5aGmvJZ1lCzhDnQJt3KSik
	mWqZzSO3ANOeV1r5mYBmismoFziyC16JTVzeoJh6FTSHRDeg3+khUFdI0uuKDWawHlbzL+qEBoR
	5Ha6Z88j7XoWw9Sfioe394fS2zvWsGVmYz0udvimaZF5oE+fboklchE7wFgYIHL2BwaSdI=
X-Google-Smtp-Source: AGHT+IE1eKytGYhN/G2avEbscWDzaqM2N9y7QbNLOqIY3WvlHqBjWYhCRVwGHZqF/ZoYxBdvoZSCOg==
X-Received: by 2002:a5d:6c62:0:b0:385:f010:e5f4 with SMTP id ffacd0b85a97d-385fd9b6c06mr4026493f8f.28.1733308599326;
        Wed, 04 Dec 2024 02:36:39 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385df74157asm15409391f8f.0.2024.12.04.02.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 02:36:38 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 04 Dec 2024 11:36:37 +0100
Subject: [PATCH] dt-bindings: display: msm: sm8350-mdss: document the third
 interconnect path
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241204-topic-misc-sm8350-mdss-bindings-fix-v1-1-aa492a306bdb@linaro.org>
X-B4-Tracking: v=1; b=H4sIALQwUGcC/x2NwQrCMBAFf6Xs2YVsrFT8FfGQJpv2HZKWrIhQ+
 u8GjzOHmYNMG9ToMRzU9APDVjvIZaC4hrooI3Um7/wo3o383nZELrDIVu7Xm+OSzHhGTaiLcca
 XZXIyh5yjhEC9tDft+n95vs7zB4azNaN1AAAA
X-Change-ID: 20241204-topic-misc-sm8350-mdss-bindings-fix-1701baffc1aa
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1684;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=peYrt415YULllPSwRUnKU5Qx+NDdGSX6LQbwju+FB9U=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnUDC1nleUyZQQLS9gEd7//NknovstellbNGR/a7EQ
 eyLt7XiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1AwtQAKCRB33NvayMhJ0YhkD/
 9U3qDvqecaANAURilULho5J/RjI0flxgZwbAVSkj2UH7c2Ifm0TEJm/PNkwLJgE/jIYZ8DP4o7qTt+
 x4TRZVYeu+QVirVM/e4z8PMgI0scaCwmrwkdjy1dyUlUxXxyZc2tUyOSpsnBmBSqmwb8SCvUoOKhSy
 NTXIvoP2J0YLDMTUryjNP0av/W+9k3Tw8wgy7lse1tXil3MhdXbufiSstkS2MZs9bFuYOvz8leUOR7
 8QE3Fa7FTMYdTWEU9dEwIPqnMBcmu4C8yfbXiWRnru075t6rcT2BKyvA57BY/PYjSYFqO3BTOt7HND
 YcHxVfEDXY7pNe0j1mZ+HQce2nCGEjtWyS8LUDPfntDpf3PaySc0ESyeu32Xm6Z1+2fvufXlUds3rV
 +Le2js2U5SQq2nFRXXzxLltckVq+6122EV+MD2N9ElD180lTFrNXXqSxEHHG+S+KlhuYTGRX1pHBKg
 iNrRGeE+97Ueyk9r1QXJ0whDnFsz32k/VHI7OkelttMYUdUm3HXDuTqyDN+7GcJdFgLZXwe6FFbBuN
 sPd5SpFM+y42SNCOMeiXfZ+DoACTRda1hBRWWGk2oO685P2uFJV21NN7b32MOQ9CJ04CXRQi/d26aK
 jvUGV67nUXQyNFkZiU2Ndxm28uPmob6GYdVFptyfrE08LgbJ8tRqnB1fB74A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the missing third "cpu-cfg" interconnect path for the MDSS hardware
found on the Qualcomm SM8350 platform.

This fixes:
display-subsystem@ae00000: interconnects: [[121, 7, 0, 77, 1, 0], [121, 8, 0, 77, 1, 0], [78, 2, 3, 79, 16, 3]] is too long
	from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8350-mdss.yaml#
display-subsystem@ae00000: interconnect-names: ['mdp0-mem', 'mdp1-mem', 'cpu-cfg'] is too long
	from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8350-mdss.yaml#

Fixes: 430e11f42bff ("dt-bindings: display: msm: Add qcom, sm8350-mdss binding")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml
index 163fc83c1e80cf07383f9aef510f2f58a26e1ecc..cd9c6c78413f887c984b522f83cc7e437ce97d25 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml
@@ -38,12 +38,13 @@ properties:
     maxItems: 1
 
   interconnects:
-    maxItems: 2
+    maxItems: 3
 
   interconnect-names:
     items:
       - const: mdp0-mem
       - const: mdp1-mem
+      - const: cpu-cfg
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":

---
base-commit: 667ff2368867af7000ce32a8b3fc025c2b3226b3
change-id: 20241204-topic-misc-sm8350-mdss-bindings-fix-1701baffc1aa

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


