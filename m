Return-Path: <devicetree+bounces-156651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 169E4A5CEB0
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 20:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FE3B189DCB6
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720AA264FBB;
	Tue, 11 Mar 2025 19:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IKzWetNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8845A264F93
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 19:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741719748; cv=none; b=s6JGJqyNK1lfC+VIzFg5yfBSprBmLO9dYOnod26mqVQzs6Z6yRQbtKiuLn9wZ06c8Thoic25Zbr28XB5+C3JZ7AlaczSI2p3G0SOclzCh+g5eEZj/OgtLQNL87EeyFOdZ/fPcGGcZihprf3QArNdp39VjxQkxriFR7eWqrlikGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741719748; c=relaxed/simple;
	bh=XAiYLxRtRR03zRuiEeNU+04LRvnGN6GksYFFL4NnpKE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oAqC3bTrSLca/PdvD1dhYTlguJu+dcETj56yXhMCymfj2D2WpDUf34Vr97WsRViwXkIBmFuvhrjc88p/AiE1wFRJbHTS+E7/lTN6PYwyBE+XTU/ie4e03EesOsv+5Y3CcFQmS2rvPzcFgJ9WoC2wmLDLB1czmeqScL8pykYG/I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IKzWetNp; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cee550af2so2904775e9.1
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 12:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741719745; x=1742324545; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HMwQylNN1keD1LXzQIzfgxocXgJrdLeSwuocytue+I0=;
        b=IKzWetNpo14u7+45KJgt4U6AT8xN6zSUZxkgbw60WECABkaM7IHgZH6BYGAVZOkpBo
         OMoiB97yojii9852azbQf9FINZih7VBwJxx3k35xqf6D9N7bqjjz4iP7hSPfF63523M3
         CJrv+FyMW8PYYlea2jYrZA/IIb0cJAupcrQqukxVCB3mA7Qvy51KTOWc+1j+Mp4IQZEg
         v/HFWyQFh8C70o0IqfUVj9iyDqDpxgctRD4Uy2iAodJpnO4UdzDG8dIcX+khExXnu0fu
         OaKSrusjQ8PwfM5T4eFD6rIi/M4jrC/c/2RcrppkD9TP4dAjfrEdzqv8i9Gxe0p7V+yr
         Xjcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741719745; x=1742324545;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HMwQylNN1keD1LXzQIzfgxocXgJrdLeSwuocytue+I0=;
        b=DoA+i3XzRHuM0Oq0c/tLbBFKwIkFNDtUuC+3Vcgylvn47TIU11JK8oRARlWnGtCMol
         psTsChE5vcs9WDNPsDpwX6ica1mI5yNTiSXQyBI/VWf5hpV6Xc0mqEf/Efsa/rnoxxyd
         zv5AYmE3UMRvN2rSjFfbd7wVmkgEG3m2ZY8Kipeg5/cb/7bablBl7LbPRxl48gDTkAG1
         inFlZf7ZbW8Oyioneo2TRsim06wfHhFRkDlbSeSmpeiYTrBo4LOhg5oI494GoSI+LtjA
         h7aXoHfNSbhMO5h3jlDPLXT/oQtjvQn4gOAB25DzuvveSC12ncxxozTMtbuWskJ4SHyK
         ssaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvM5ykuLoZrGW/xQYlXUsOW/bjwm8ospym2539IHB1lrMFQxwWbE8+LXPQ9dU97nB4SxxYty5yqK2U@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9/Z8ZZbQbQKV2lPWF4FOXl7FGFn+T+kzDyKsnn74ka9eCv/ow
	RxNqJATOBi52CHblxL887gKcY7XgBqluurL0UJVy5hHST0qCNHPb8OEB3x0Dtec=
X-Gm-Gg: ASbGnctF6adZrFeymGimdWS/qVbYvXSYRWLJu/CYxC3/O17KrdGQgJc4EF/qBCuNqEz
	4pCqgEU1W8PL8ToFxfo4oZPjO51748r+5OK1itaStSYZ33lG7JrbyHYTrQsVXoQ01QXoxL/3gfs
	O96ztM4X6OPbb3aCXn2YjWBl+tnaZzAADG6DLDUytCiPbE11zl2+jbfXUdAlFdWHi5lvtS9KCGq
	cuoTPelBo+4eNqRMwZaMvtTEN1u86fc9qdxh09IHwg/tGu+qWRvMqqnGDbMjLHrG0CZke7ZkND/
	G5bIUur/mIXyFtRR3sKEO5FAFYVYghmhzPkBFQfCD8NSv7nUS60vgJ56qI6LZOUyC5Dwrw==
X-Google-Smtp-Source: AGHT+IFtSACGiTtY/7OwcqqLsxGKFPwpnfo/L0NhtuuAhW3jAAZXWSdbOgGKmBqu/tmKYdpHknvnvw==
X-Received: by 2002:a05:600c:310d:b0:43b:c825:6cde with SMTP id 5b1f17b1804b1-43d01c126a3mr23602955e9.3.1741719744864;
        Tue, 11 Mar 2025 12:02:24 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ce70d13b4sm127681155e9.38.2025.03.11.12.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 12:02:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 11 Mar 2025 20:01:53 +0100
Subject: [PATCH v4 03/19] dt-bindings: display/msm: dp-controller: Add
 SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-b4-sm8750-display-v4-3-da6b3e959c76@linaro.org>
References: <20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org>
In-Reply-To: <20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Clark <robdclark@chromium.org>, Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1260;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=XAiYLxRtRR03zRuiEeNU+04LRvnGN6GksYFFL4NnpKE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0IinIpSionyZrcP3NS3QKIozmXPcBscI9+NJw
 OCnZxrY/2mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9CIpwAKCRDBN2bmhouD
 1zjOD/oCeI4/7ol8PdiEwfTURIFeuy/KseUOvLUXQiak1Ni/wWLqmwl/UqelmsPvCW7I/e2eJOw
 eVXCVBGoTIoV9Y2aZ6nZu7Sk3NOGFE5ciNIpCN+UAXcuqPGOfnp8cL4TT/48jOCO2CZtnTxHn2R
 kbBGXwEQgXJnxZsAEBrxfW7FNZ51Y75YF8tu7h7RVBsfRH/1OZzCfVniEQBnBvewzAKXl0GeNt6
 GSkvFP3cRdachphRHjR4lag9J6+GnYb2ghG0Nq776jyyhmHpDyEU3xwp4dulaJcY5h2VEjtIlw5
 YeiUwBwXDMQ1AvbAcMnX6eiDCwyV5PQU9x/SspyuFnTpINTt02JWx8erDADvqqjAMmHmWCYJNL+
 IGkkmll4LRhqCgcEmMh9naZI8ZapNeqdSbVaG9uWP1Irp7aMCcKE9aanjVKH5n/jOyFM6aAM7id
 TF3Xl21SO1ogBrVsr2mjUsFpaLRCEocpcn71fComh2rKyM5vwN/E/H+6BynQOJLihoutS4L5HJ/
 V+/KKGku/DuSWFjnHidhaHySAmc0A/dyG6xZdxAd0sWHCusQBz2uGhJ6S6ZmMCGa6DyVVMilnm8
 UXITSz0BFiN2G65O29JXpJBBh/PcHH+VaEXc3jhYzQi2Hg7Dl6CPeb2k0sdnQJYTnBNEPqLP093
 4PoFant8VFgVKLg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add DisplayPort controller for Qualcomm SM8750 SoC which so far looks
fully compatible with earlier SM8650 variant - both are of version
v1.5.1 of the IP block.  Datasheet also mentions that both support 4x
MST for DPTX0 and 2x MST for DPTX1.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v3:
1. Extend commit msg
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index e00b88332f2fed2fc33f6d72c5cc3d827cd7594e..a4bf9e07a28355c0391d1757fab16ebe5ff14a44 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -37,6 +37,10 @@ properties:
               - qcom,sm8450-dp
               - qcom,sm8550-dp
           - const: qcom,sm8350-dp
+      - items:
+          - enum:
+              - qcom,sm8750-dp
+          - const: qcom,sm8650-dp
 
   reg:
     minItems: 4

-- 
2.43.0


