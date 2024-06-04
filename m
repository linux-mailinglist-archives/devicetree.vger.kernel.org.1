Return-Path: <devicetree+bounces-72286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0359F8FB462
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:51:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3446F1C2259E
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F39C018028;
	Tue,  4 Jun 2024 13:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="KaD5sjGG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C35AD535
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 13:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717509055; cv=none; b=iI7BggLTjKnDnLRbysaLbum37szd4cHvGKq6U1KZUnelavyPF421AzXw0L/jNm45tZavoRL5vGjVpU4wZ6qVoXZVb7PmfIZhA5fTHZ+BwjBSzKIyK42ENSUp13lHa0v77KnPLv/MEwcED/byY7LFeqDFlh7ufwcqJjv+FcTr8dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717509055; c=relaxed/simple;
	bh=w6wxT3v94oRxk3E7RBTjLkHohc3Bnp6aI72JbPDOuSg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=KiL4VgMBgPOp9maeitg8hozVUj2rxa97ekkKvvYwMbrw24tYHITfOcL52+Ho5HtTXq8slsGAsH5M6QPYvnIufJwUA+cRTfEPWIT5XNNYk5Hs9jxfVj6KhyCiOrUTbXFoggye2xxhMrw49ZLocimTlkLwSchKYKhAWT+isVTNIZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=KaD5sjGG; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52b87e8ba1eso5840543e87.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 06:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1717509052; x=1718113852; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DAxZmX6/vrF9fWzRMYvQiNF/0jN2EbEz/3Bo7MBhqt8=;
        b=KaD5sjGGaWJJqY1+N2UZHLtiCWHZTJIa5VCjcSu1sIHvAFR0hcLQ9zvNI0L5qTeqst
         KZVsiBlUVsRpRB3IHJUFB2cX8JxUSJFFbMUENIc7mmB+mwOsDKTqRU5ZCDGW9Um5mdgz
         xmP9p43czCWtr+9X6yiEMfk1Ap0zhwt7O71wJ3t/p6wZkzmzBxLx6ckokcEUVf//8DtH
         sixVajLTyMVh/2PTENgl6Q5mfe2siGOCEBvN3gHYDQc01AlwSzz0u7UQfnb95QjY6D2J
         hncxDWq0iUObkFQt2kZ7hUTeWkZ5VCRAQCiVJpPhuxlLqCtj41zsOGuGx64BCJ7U7h6p
         t/bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717509052; x=1718113852;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DAxZmX6/vrF9fWzRMYvQiNF/0jN2EbEz/3Bo7MBhqt8=;
        b=SP/ojMNDoKZhP1qr+wrjIa4i3MArn9AZgq+7XkzzwE2lrWPVxnUvutWa5wiK36MZrT
         UeJ1QR/I7Z74CZBl5acuNVtQX0MBb+5iEq7VeOthisi1h1tF15bwu/+5gjzqP/1FLOYC
         a1/whLnRiXA1uWykAHssWx+TeN8UmTCn0xscfuN1HM747NKvU2ig7xi3ce6/RxwSF54z
         RQKSw7cKZvGGhYFexW5fFC2UtzRW5BEcosMCy3pthegkDvfyXYof8t6VQEC8hJs5qmhw
         wMm5b3iCHP5OhNschPwqOqZEHSk5rKQtdYE3L7NRwiXRqV8OLE4KLnWD9H0IJA3yZz5/
         chQA==
X-Forwarded-Encrypted: i=1; AJvYcCUnssn+mbB0vjsNN/pz6Jz64tBisRdLqdFoxMfgGuoDmQyejP9NQvd+iApvtiQ1fOY6FwWYB17ehZURdMKYbNCBEsFXZkTbjlU+XQ==
X-Gm-Message-State: AOJu0YwOLrrCWRVJyNFnwViYLVlDXQP7dMnXrB3S2xTrNv9upJpyTC6U
	0Bg6gLtHeCZs6nztPyhpeiOD8/6vaIIZNnACL0s1mB1xgLhefr7eFPC7ynQaZbI=
X-Google-Smtp-Source: AGHT+IHMiuaN/QXE2W2FVQQlvPqF+jnsGtvfXm41KlLvHHQfKwwkQ7H70L30Pz3XUGcM7ni3Los60g==
X-Received: by 2002:a05:6512:54e:b0:52b:851d:4db6 with SMTP id 2adb3069b0e04-52b8957b271mr8132955e87.26.1717509052405;
        Tue, 04 Jun 2024 06:50:52 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42133227f8asm139569755e9.19.2024.06.04.06.50.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 06:50:52 -0700 (PDT)
Message-ID: <9d54a12a-ae66-491c-aa1e-96b7daa02201@freebox.fr>
Date: Tue, 4 Jun 2024 15:47:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 2/4] dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <a2cb1290-9e01-4136-9592-ce439b1096b6@freebox.fr>
Content-Language: en-US
In-Reply-To: <a2cb1290-9e01-4136-9592-ce439b1096b6@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

HDMI TX block embedded in the APQ8098.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 Documentation/devicetree/bindings/display/msm/hdmi.yaml | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index 47e97669821c3..13199f1676f7c 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -19,14 +19,15 @@ properties:
       - qcom,hdmi-tx-8974
       - qcom,hdmi-tx-8994
       - qcom,hdmi-tx-8996
+      - qcom,hdmi-tx-8998
 
   clocks:
     minItems: 1
-    maxItems: 5
+    maxItems: 8
 
   clock-names:
     minItems: 1
-    maxItems: 5
+    maxItems: 8
 
   reg:
     minItems: 1
@@ -151,6 +152,27 @@ allOf:
             - const: extp
         hdmi-mux-supplies: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,hdmi-tx-8998
+    then:
+      properties:
+        clocks:
+          minItems: 8
+        clock-names:
+          items:
+            - const: mdp_core
+            - const: mnoc
+            - const: iface
+            - const: bus
+            - const: iface_mmss
+            - const: core
+            - const: alt_iface
+            - const: extp
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


