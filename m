Return-Path: <devicetree+bounces-54153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E12488FBDD
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43BBA1F23BF1
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2838B7BAF7;
	Thu, 28 Mar 2024 09:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="RRxTaK9a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4609439FD8
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 09:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711618987; cv=none; b=nF0sB+YQIDOrPj/xXCgBjRhoyjLlCz64OmMwkdflD3bWwr6zxk35uZXXH8swVWHX5zw5mqsmyIjnh3wjciRYST5ePfUcR9jj+fg2JajRhUPKWWshvBM8Acz6aYyyNioXRqfslS35DbizrD5Tu/3k/uw/Gk3E6CEDahOhZ43tnlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711618987; c=relaxed/simple;
	bh=yQP2qf85NlAusdUbH8btXJoCmRYlZdQcoHVk9uHR7yg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=exGIRKv9mCLyQNADn+O51VZa192v46IVhmdGIwy+v/+Av22VRMjgvCLBwiG2rflDnMcId0WOd37v89zPSIRQImOyImUsSpwG5FHkFq4RKcCPUI2ZHxuXT5u+BrEp8Ut1/mOeec6J6qP3q/nbMEy9FhvhtZPsdvB2kYc8DIGpJE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=RRxTaK9a; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so853273a12.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 02:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711618983; x=1712223783; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IWaLqxKFsff0HC4ZJrh+qrM5gTmGQFtweOeGkkKCYRU=;
        b=RRxTaK9agLWfnUFcMYz3lJ+P0fKKGY5ZpIfo33RZ4z7+EODh9S4RvREpOTOtkpJOr8
         a85l9B26haBMsDAYP6ixsgtiNU2ROPx3M5rjJl3vjjLAw8F55g15ega7u/at4bPkh7ce
         oPt14yCnARRQ9cKnkDispf2xHUjalVomWM8OdC/rDy7r/jmw4kWAZwx29vAoJ2/wOfVb
         M2n7FVQ/DrnApEMyV4TxdNh7VgOxEO8ObyF4zPNEGugDzzvtS8hTQenQ73JehJkQWqJc
         qFiwi40L3CJwtSP98y1DKLB1SJuuh+3ZPXVTNH5MVwQNzp0dnMr8zgp6llVRcsA6sl/f
         d9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711618983; x=1712223783;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IWaLqxKFsff0HC4ZJrh+qrM5gTmGQFtweOeGkkKCYRU=;
        b=Oj8XqY0FA0J5fytGwb7Dy3yHsWB4OOVRLQq4eJouW9SwtWpMZZAGBJOHzUrTmutVvY
         rdXnj9F95Tma0QzTTMlRooNyNT2U3FM14OljDf3T+KkyMBBw5cIfg0pq2CyoYnCoUBJm
         bde3STPHBfvzUUNIhTLTy5mv8qCm2TV+B2A1z6mG/SW7CJqnyjNwqCmeFfmuO9ePRE0U
         XQAVLX8YwMDIatwkxoz6FSKgDfeouA4/9e624xrqv9IHN/jrB8KyObIvAcuRmjuEGuZN
         GFZDFeZDU2JzIP/r0FsED1S38KInlK7xtz4lPwv8xzY0jAGjJ9pjWiMkDXwTMlavr4A9
         YPVA==
X-Forwarded-Encrypted: i=1; AJvYcCUsBEGpPjonXfSj1IhEPLa0QuxgWIUlk/4VB+55GC5fKTHdyicMcYQjoe+IgvmRTfQdPFg+4U1x5DTAStG8hZn4Qw36YNuuHYMnWw==
X-Gm-Message-State: AOJu0Yx2bVPX2VKXmoqaWhyOi/1O4rJt2Du6ek9runL3eqRBs87zj/YS
	05tiMkOIGBR6VDNGTXgC1eOA1sCfclVkT8ws/I2gybewNWbyvfZs+ncXjk30tRc=
X-Google-Smtp-Source: AGHT+IGonGHsQ9ouyMDD2MO97PoD8QuMY2EXeRRHhh0Q4aWvKaO5R82DEegQI8rei1CJvYFMt4V1ng==
X-Received: by 2002:a50:9b09:0:b0:566:d333:45e8 with SMTP id o9-20020a509b09000000b00566d33345e8mr1799112edi.20.1711618983567;
        Thu, 28 Mar 2024 02:43:03 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id l2-20020aa7c302000000b005645961ad39sm631362edq.47.2024.03.28.02.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 02:43:02 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 28 Mar 2024 10:42:45 +0100
Subject: [PATCH 2/3] dt-bindings: display: msm: sm6350-mdss: document DP
 controller subnode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240328-sm6350-dp-v1-2-215ca2b81c35@fairphone.com>
References: <20240328-sm6350-dp-v1-0-215ca2b81c35@fairphone.com>
In-Reply-To: <20240328-sm6350-dp-v1-0-215ca2b81c35@fairphone.com>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Document the displayport controller subnode of the SM6350 MDSS.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml      | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml
index c9ba1fae8042..d91b8eca6aba 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml
@@ -53,6 +53,16 @@ patternProperties:
       compatible:
         const: qcom,sm6350-dpu
 
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        items:
+          - const: qcom,sm6350-dp
+          - const: qcom,sm8350-dp
+
   "^dsi@[0-9a-f]+$":
     type: object
     additionalProperties: true

-- 
2.44.0


