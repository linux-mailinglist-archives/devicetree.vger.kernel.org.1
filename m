Return-Path: <devicetree+bounces-143905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C1EA2C0F1
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 11:51:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 829A5188CF85
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 10:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90761DEFEE;
	Fri,  7 Feb 2025 10:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YV6ySik7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10A81DED59
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 10:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738925447; cv=none; b=GOE+DdmgkYCzni51RGTn/7qNm5zr2lmEVZm2wxd7Sl2GYhReAhV+7kyrysJKM0mJ5aiASdwkhyV277McydAH8hzMzeROB4p6QntobqJ2krZjtdHrHaHPRNUHB9W3V1cjmU7qXB4oMemuEdQr/AnJ/i6vqfzy/28ZKIIC2/jQmDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738925447; c=relaxed/simple;
	bh=7+j3AnBKmeNEDl1PfOeB9mydlM9bTHw3r4PijL2u3sw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pBZLSQC1qIOhVkbSmFYD/HjCmt9Fpu9KzXUeqnDTFrhuEMCAJJza1R/g+ZMfJ4/nyKVrUW35MDmjHxV40zvMnrBjjkum8BNdBLtrtfSEzAW5Z6rQioqFdJC1Gw1dDQGCotUHmZC1BC/7syFyfXCebaUS6sT577GYaHP/3eYcQ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YV6ySik7; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4361c705434so13487275e9.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 02:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738925443; x=1739530243; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9F9syRGL78OlaYlRaFRYp3PVBGzkzHY2NtLPwbRk9w=;
        b=YV6ySik7pmrL0l7R1+x3nZzv1xYMG4yZXZ9uQcy2cYQ3Cm0EYeKzJbDXJ5DOPR2Wx+
         09IWZApdbzZyn3tFWqKsBFEND2SkW9ctpv13+YfiT03gUUYqJXFZEM5LWdS1+Yoh6KOG
         1n+wqHtAJyN5zZ6JLdMwLwOD/RbJGpg80xoItMPdJbb9Ijj5BP2cl+M+HWeW3cmq7I1I
         vFaEIny6eN0ifu2p5UeSoF0e6RVhNT1IXlLZ53nTbNfakna8L2VGqDKsjU5SyJ6GSbZX
         KCepS3dxwUhEk9//nwJU106k23ITtQ70b/rwsF5ruVjkcVSvZHx0V63TAyl3HtNl6i4i
         O2ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738925443; x=1739530243;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x9F9syRGL78OlaYlRaFRYp3PVBGzkzHY2NtLPwbRk9w=;
        b=F9ULEZAAF7reNcqEscwpJX0XQv7+y3Qz2c/SsOZA4YNwDOKqHNrS0H83YhQPO/FZh7
         yJ+xb3PPF4dzNiA5tfp4uEY1mpckGt00fJgo4G7gR3JLG8SDQE19JPdzwWGj8JoWR2Fj
         aqcjhCYQeRpck1Bvy+IFs1FkXKBw1SsegIxurBs2nLi49MTnHViI61YPGcEqe9EYVp7p
         A1ovLWoF6wTvnoaUxsyGuz6g0rIGtyRSRlpPhWP8L/IKS4+J2X9OJzMZyDKIbGE5RbsW
         bPcM/vNI/d1ARssJK1WE8udRmsJyYv+JIQbyKCmqg/jyQ1QtbgJI1bW9816fffRGjhJY
         CLcw==
X-Forwarded-Encrypted: i=1; AJvYcCWS5/Yk9HdKm1GT/0/fAbojkjnaYwzJbH/oNrbU3QMRug7KNBUjzzGOtxygHKH5npgdAQ5l5G8VSw8A@vger.kernel.org
X-Gm-Message-State: AOJu0YygeZonCEL+kEnZchMizBCxxKUTTgWPxyHZ7aKm1epZtZP/oN9K
	+nljXwwAwPn3iIMW+USVH5iJ0hEuJSVWIivJl+L+9pu8WnDpfxSv4C8UyXldfSc=
X-Gm-Gg: ASbGncv/uwtkSA6VxSagYPl9DOlrR/33uboUGUhKa0SBaxUusQqOTutgV7UIFda5sTa
	gk3ZYA483e6fFX45itjuqbqgHP59F8+lQ4NNJqLCk+NzIM78voJjkTarRovDd2bbx5MMAa/oifb
	lt1mjc1bxje9yj+lWCzpv3zJ8sb2cFGMXfymP8/U8EURQ8sgG3UN/9iJ/EEa1PE1RknCZqA3Epc
	NS/M5/jVtlyOgtxiCiaVkA5OJutmR8D8paYHthi18CW/urZQB9EHLf439fUic5nzfr2GabxAM3s
	3L0sOpT87LjfLo0MuxfvqBxzXegPrajXfJWk
X-Google-Smtp-Source: AGHT+IHJ0IQ5eJAn6lwmpSD5Q7BnuG1tR6YViGBqJPThkFk/1nqflnJML+7RJ5gogTUT8jCkusUDfg==
X-Received: by 2002:a05:600c:4f50:b0:434:f131:1e64 with SMTP id 5b1f17b1804b1-43924988842mr21093595e9.9.1738925443007;
        Fri, 07 Feb 2025 02:50:43 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390daf4480sm85968635e9.27.2025.02.07.02.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 02:50:42 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 07 Feb 2025 11:50:37 +0100
Subject: [PATCH 1/2] dt-bindings: display: qcom,sm8550-mdss: only document
 the mdp0-mem interconnect path
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-1-852b1d6aee46@linaro.org>
References: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-0-852b1d6aee46@linaro.org>
In-Reply-To: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-0-852b1d6aee46@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=951;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=7+j3AnBKmeNEDl1PfOeB9mydlM9bTHw3r4PijL2u3sw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnpeV/DLHzDiSC4+1BT+Un0xrC6SdgHIcfgAMQ7X9q
 RNV7RP+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6XlfwAKCRB33NvayMhJ0TggD/
 94HOkL3KJEF7KYF02IE1qsJH+mvb/MxPuMYQ25p2JZZjVntBiPwquHSwwE+Kfd6xpcdZlpfUzkSaY5
 hf8kNBgkZvnrkDHPYZbrZdQ/21zRAL1BqSnfGCC1BEAdTKBrE82eRKfyh1S948U1zRfQgBPYmBypNR
 Ac6BIJHOmxQTtlBumb9LdjrjcgksmTpW9SAYzR7+0WE72FNezRPG0/Dj65j6FXw6TtHvmsNI+su+e2
 9mihh+HCBrE2wqtWa6WWCHYX5tkA36r3ReJnsfVxG4P11xbI+tld/qSI9v4B+XW7ZduhF8mAFtyhV7
 RGZYOHZ3/IZaVjFpL7R4wg2ZfDkk076uGQ1GlmHpEHo0AsmLPmpLPsHNyuWnoUIzFrua9EVH24y8do
 Fvc70xEyyHIBTFkfjNdOoRfLhEcCB0R5CGbuJ4mJBdsuf/t9p7ZJ0yqFbuLb7utJeryszX24Rc//C/
 GbPF73VKJ09vXDxfnhSlfTsvEM+Ifv9Bxu8OIb+TPAZFMGBes6NN8P5+O75ITt/zPgxmalqBUO6w33
 Wcx2mTfG0ubcPI9v/1fUHuBs84kFko0WyH0uuWeFdUKbHHdSQ7Vd0S8YT9okcyxvgwXt3x3XpUrJQ0
 pYFBpzF8yQGFZNkHTy14Ab0reF/mjyGHR9p4IXHh5/CcIsyBT/D5chgFsrAw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The mdp1-mem is not supported on the SM8550 SoCs, so only support a single
mdp0-mem interconnect entry.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
index 1ea50a2c7c8e9f420125ad30a80b4ebd05c9367a..bc95ea33682e494ee498b3b049c4966f010aa2df 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
@@ -30,10 +30,10 @@ properties:
     maxItems: 1
 
   interconnects:
-    maxItems: 2
+    maxItems: 1
 
   interconnect-names:
-    maxItems: 2
+    maxItems: 1
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":

-- 
2.34.1


