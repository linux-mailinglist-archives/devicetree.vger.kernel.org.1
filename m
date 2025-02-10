Return-Path: <devicetree+bounces-144569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E8DA2E7C8
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E17AE1887019
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FB771C57B2;
	Mon, 10 Feb 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vznp9r4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649CD1C3C0F
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739179973; cv=none; b=TsGYI80mcFqci48r/e5ACNw06lXtxFFXN7zGHI/xTt9z7CAxHpvkft6M4V3QjC4HB+lmjU7TmSG1zSeplICfYHJzLbKNdx/15VhE2l7tSxq4t1b0MTl/adUtIdriNqMmTBfVLj+rg+P644SVmweyvnq+urEocjdO9g6VDqpzuwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739179973; c=relaxed/simple;
	bh=lfPxQaMFtbZZ21l+5BkGf/b9VmjDtPXz4pGJe8td0xs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dQfbNLo55vsOyDeXyS05JUsG8oMCzCdpcIbgJH8Re/DW+cNPqIclSPOBnXw5RppkMiM0NaWsn2xxhdLnn8F2SZ7mgO74uOl3b1C8+y1ZnG2WSkaSwGtaV9gcOwpeN5iBZ1iKkJoZn+qa4A2MNRRLswHZGHa7xaaMzAv4NM//Ois=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vznp9r4k; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436345cc17bso27692585e9.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739179970; x=1739784770; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I6IMyTwFG9nX5XomX1cPcbTQEA5dGNGjA4zy+aU6zlM=;
        b=vznp9r4kRG/5HpMbAThTa42v6X8kAbqrxSfdTW4/u6jTkxdGRyFZ5lsrYbp+2tadWE
         CDnm5uLebDXVJNqgrzj0KA3AnFZCp1hYZSywuQLCKlQGweuHYJRFOt17bC6MSIMi2Qz7
         5mdfMYugA3+0Ecq42MPRP65lfMw8pShP6GquW8Lzx8k7TOPbrbLdxzKMIY8R4JdfnjBO
         F330n43LfU/ooxUUNWPz7APiZiGDLlyWZpinBnJgbr+QhXGtyuiSbyO/6yul1KIprThE
         A3oCDTwbV737gESNN+s2RRrM55ByclAevmqWwoMrqtvbgJQcAUBTYxIC8llXJMzd03Dg
         no5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739179970; x=1739784770;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I6IMyTwFG9nX5XomX1cPcbTQEA5dGNGjA4zy+aU6zlM=;
        b=j/8WS9WgzhK4GnvxrdaSSPpoifUOMWUKyOpJoCHeQwGDXryBAh/6bZFDa4DGaYlApa
         Mu2tXxr3MLsdlQIblFmIKWHOl8rwOX+0mnBFWWPzXdiNmnLGOv41RuSNCJdK7RdgXTOD
         7c/ZhoQodfUIRtPb6T1MuFmmbvHoGYjPprvVWbGGAakVIr5/4EA/itXoZjW3preGbdk/
         fT8jqjPmQUZInEQaYozcsrW2X1HIVXzhkyNeeEpGP4Lep6cECpRwd2EyAdz/7ikSDaqC
         7ZUTkfEon4A3+kwJMsUcjpp4uO/Woy+6eYOMZ0JUXoxqYBZL4cWhc0ILkybdKZ3XEJGC
         8FEw==
X-Forwarded-Encrypted: i=1; AJvYcCVSiY0F+WFaT0G3D34FZW5Pssbg1ml5ezCjdrPdtskLsC+O/rZDbwCpABpufH9fQBfq6+PSbYbdQ2d1@vger.kernel.org
X-Gm-Message-State: AOJu0YwIz4pKfYJkxZnWO75p85+kstof2xF96PQIrFKomElifUDdBYSn
	q9b/j3zgf1ZffP9AKYWcHPPbVDo7boJ88cad7xmW1czy5tGxc6RJ9cP8CsrgYjY=
X-Gm-Gg: ASbGncs76VxhgSiKENUugykU0UYygCmLcXz6EZ2UbqtEDDlA+2DTDblZQUpdi4Xi0Lt
	S6h4/PU850cbNhoi6/xX26wYRyBweig+3kIoCeFth11KYpWEQSkAUbN6IOwNCVedHCuNSET9Nm3
	w/mKqgQQi4eoe0m+vYBFx7ysxMRCr/V4m8Nrm3a4lyHxEAmpqoZSoNxVfUIkccj7lB7fAuzBiVd
	7y2U1d5AuCXOrBIyWyICJ+HpFMYdYVj8ZkbXk/ARyLHo4l0OXef0UGaxPT5htZ8k7ub6IFB/0Et
	H1UOcYFDmwqopidM8QUIOYxSnbtyRyKlBdpx
X-Google-Smtp-Source: AGHT+IEwRlW2DrLkiktuMQW07Z2SL+sgeHovK/MRPd++QhDmgF5mqDzEvYPl7b2V7XAwAGPCMCGvAA==
X-Received: by 2002:a05:600c:1c28:b0:439:4825:727e with SMTP id 5b1f17b1804b1-4394825731amr10547935e9.23.1739179969602;
        Mon, 10 Feb 2025 01:32:49 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391da964e2sm141340895e9.4.2025.02.10.01.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 01:32:49 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 10 Feb 2025 10:32:40 +0100
Subject: [PATCH v3 2/4] dt-bindings: display: qcom,sm8650-mdss: explicitly
 document mdp0-mem and cpu-cfg interconnect paths
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-2-54c96a9d2b7f@linaro.org>
References: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-0-54c96a9d2b7f@linaro.org>
In-Reply-To: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-0-54c96a9d2b7f@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2075;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=lfPxQaMFtbZZ21l+5BkGf/b9VmjDtPXz4pGJe8td0xs=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnqce81eAz97fUjAcEQoJORzuzKOeABTMSToiwQoHR
 qUCUVImJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6nHvAAKCRB33NvayMhJ0fplD/
 0cYY7doqunfG1masd3Y/dnrcjJOQZun5jdN203atsgPQP4RpjN7SJwpQRjldFB3ECitFP6Ts3jXjJB
 Mzo/orhdxvng7eUp4tgvlgCFj0oRSFiJEq+bK3baw546MjZjqNE4Zdb8tJr9ZSVBbfRLyv5Cb2n4kR
 Ir5o69mjEbbqIoeEidhvOSycaPtbofamK4vlVAyksAYUHn8LFyl8VjFGVeB7MG//MiREqtb7s5Lvof
 9lmLQPrq7f5wV/iiWgyvNKoIQL66ASxQwHDKVEKiQ2ZINVkrs11Xq4NlRa8U2mPQDnSpWjPnV+sdzK
 I9giyxUJT9WRRS+coOa/ArWtE4kAd9khekWm4PLKfLeCp21zhKsv8zieZ8icHVMw7rSREy3TJj32zM
 0fBeAcICpneYHFJ2XY1aIyneMgjMzpkoApLjjuplu49EJ+l4IXgonehRtIUvuqWnk73vy9vzaFTIpS
 j9+G5Dg+ZC0CZyHp8JicLzUSZTXsGhDmN7a3yK3b7fYsIP9VblL9ScHfvZ+pX0B/jR+QLu9pGxdd4V
 qx0cAFnlkqmX5bxRgwQfcRkh4tSjBwkKUJB0G/Kte9ME0EjH1QQUqOM6NMt5C94Y3ZfyTj74St+jm9
 6vcTY7/gQWyaCVC+mVK2kP9KW7q4uJvdEMDB4cEnQoWVwKlww2yh4auzz7+A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The mdp1-mem is not supported on the SM8550 SoCs, and having maxItems=2
makes the bindings not clear if mdp0-mem/mdp1-mem or mdp0-mem/cpu-cfg
is required, so explicitly document the mdp0-mem/cpu-cfg interconnect
paths and complete the example with the missing interconnect paths.

Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml   | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
index 24cece1e888bd35f169dc3764966685de4b6da1d..a1c53e1910330af473a1e6c7827026e0770131ee 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
@@ -29,10 +29,14 @@ properties:
     maxItems: 1
 
   interconnects:
-    maxItems: 2
+    items:
+      - description: Interconnect path from mdp0 port to the data bus
+      - description: Interconnect path from CPU to the reg bus
 
   interconnect-names:
-    maxItems: 2
+    items:
+      - const: mdp0-mem
+      - const: cpu-cfg
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -75,12 +79,17 @@ examples:
     #include <dt-bindings/clock/qcom,rpmh.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/power/qcom,rpmhpd.h>
+    #include <dt-bindings/interconnect/qcom,sm8650-rpmh.h>
 
     display-subsystem@ae00000 {
         compatible = "qcom,sm8650-mdss";
         reg = <0x0ae00000 0x1000>;
         reg-names = "mdss";
 
+        interconnects = <&mmss_noc MASTER_MDP 0 &mc_virt SLAVE_EBI1 0>,
+                        <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_DISPLAY_CFG 0>;
+        interconnect-names = "mdp0-mem", "cpu-cfg";
+
         resets = <&dispcc_core_bcr>;
 
         power-domains = <&dispcc_gdsc>;

-- 
2.34.1


