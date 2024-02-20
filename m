Return-Path: <devicetree+bounces-44020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BFB85C2AF
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 18:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 449CA281D4A
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAE576C98;
	Tue, 20 Feb 2024 17:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JedIzxc6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C9876C70
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 17:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708450268; cv=none; b=TkXPlyh8YqflsPn1vGlUr+ofs7E1xP6DpCLemdZ3GMkWcfjGIHvUjBPQqDoUjnKy6xNonoMS0aP30Rd4PmLA5nUuZTzaStwaPhj6F16BWUowey8DlQup2YZ3IcZCBYA/76NMutW9tEbkmeJ0nTwiLhPZ1f2uDLxpr9Rv9G7pZng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708450268; c=relaxed/simple;
	bh=hx02bMWjni/BIqa32HymRwKbgZ45Y6W5eQY/go1X1so=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=b/sdk/v5mWQg5cXiQxZ0eanjefumY5j3tWAY/J3MsvXY8GkFbSwAs/gmBYxZC/H+y/y5fhSgrtASON/ZAUMPGvECnYmNi7yG8sYP34SxQY1opiAndIQQ1bhCK0jhzLzdPDUVFCsC9n9eMivCG3o1Ojfq0VdLzI8vi+VFAxdwia8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JedIzxc6; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d0e520362cso58177021fa.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 09:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708450265; x=1709055065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XTun3sjeHoZPuUA68W/Q0xsVB+hQlqb+IVl/9LKFQL8=;
        b=JedIzxc6avduODqdN4l3+h2poUwvi23qo7blM/3G8CfmVlxmTyajuAEUyoeBytg6Jv
         7/C8nZ9ZEL7z9tZjIUl9QtTAFBI9t2oXEGW7NbfHp2Hyn3XJWNYUShevgVH7LR1H4FuT
         Y4n1Gd4KYN9I5oneyi5CMqtLDRgT4rxe/pcOi+1e4L0A4FhXyg4y7EYMAEFVkld8xTbl
         hSWC7UDU7hc0uqDoYHhh5jxBaBBaAEi9UdZ29Nv5c0S1f2xbuDEVS+QoqbWBvRK06w+C
         fd7iozZ1DeffrBnAaYdr0XOQHw2Z2Mtmn8oDGLkMnR2+DKgMkMlO6UGltdI0PN0gFfrt
         86RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708450265; x=1709055065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XTun3sjeHoZPuUA68W/Q0xsVB+hQlqb+IVl/9LKFQL8=;
        b=EDAj5Rjx9ogu8zkpr0n2mswCvxb6NLWukSXN8jI2ag589v1UROTW+AAM29zJSbIPgh
         wKxXVX5fbhhgMkIMLfqNCmdf2B6gYhg80U1Dstloyy0sTMwfW1NUZPoAnj9ZfocwtxzI
         J0tOK2R2ERlLHbY+mYinWamdTJ0XkqMALbMs0vtrHk9nqd91jwe/K+SenD+1I8GWQurE
         psf3yvzC2besETpSt1Idp54OkExTmr/BTHeRKov/t7ajuz8fNGpAh3GnDZjR0nemK5YJ
         Rsc59UX4licT497lSODwPctv9ajLZr8RjwRfikLWAtZvBcNIY6PDoiQoA2Yax9n4Q8zQ
         ieEA==
X-Forwarded-Encrypted: i=1; AJvYcCX0+nFG4GoFnZPE/A2XxN5Z7jZvdfA0WpC4fVTcE7KxhrHBVOjB2sQOpVrd/bU4fFJ9lncqvXuvXSZfCvd3aK89lp1Mtu7YDIchag==
X-Gm-Message-State: AOJu0Yw2pms2/A0jiSeWgYu3u568fez3DS0EZcjV1PiLj6JOfKMK4cO7
	b8rbn1oPbC3jZaBzYXaRRGk7KJiJ/4cvY99iu96p+3eEBZ2zgv+TC+scaNHl9jY=
X-Google-Smtp-Source: AGHT+IF6Im9KKVZF6BrPLUUt83T7OwbOQ3FD2cFzceJ+n1jrzoKNH62XjIkgG0CkuvB6WON7bbYxkQ==
X-Received: by 2002:a2e:9e10:0:b0:2d0:e331:8d2d with SMTP id e16-20020a2e9e10000000b002d0e3318d2dmr10769775ljk.37.1708450265047;
        Tue, 20 Feb 2024 09:31:05 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w4-20020a2e9584000000b002cdf4797fb7sm1585042ljh.125.2024.02.20.09.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 09:31:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH] arm64: dts: qcom: sm6115: fix USB PHY configuration
Date: Tue, 20 Feb 2024 19:31:04 +0200
Message-Id: <20240220173104.3052778-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch adding Type-C support for sm6115 was misapplied. All the
orientation switch configuration ended up at the UFS PHY node instead of
the USB PHY node. Move the data bits to the correct place.

Fixes: a06a2f12f9e2 ("arm64: dts: qcom: qrb4210-rb2: enable USB-C port handling")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 42 ++++++++++++++--------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index ee65ab073ba6..b344f6f6d556 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -884,10 +884,31 @@ usb_qmpphy: phy@1615000 {
 			clock-output-names = "usb3_phy_pipe_clk_src";
 
 			#phy-cells = <0>;
+			orientation-switch;
 
 			qcom,tcsr-reg = <&tcsr_regs 0xb244>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_dwc3_ss>;
+					};
+				};
+			};
 		};
 
 		system_noc: interconnect@1880000 {
@@ -1213,29 +1234,8 @@ ufs_mem_phy: phy@4807000 {
 			reset-names = "ufsphy";
 
 			#phy-cells = <0>;
-			orientation-switch;
 
 			status = "disabled";
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-
-					usb_qmpphy_out: endpoint {
-					};
-				};
-
-				port@1 {
-					reg = <1>;
-
-					usb_qmpphy_usb_ss_in: endpoint {
-						remote-endpoint = <&usb_dwc3_ss>;
-					};
-				};
-			};
 		};
 
 		gpi_dma0: dma-controller@4a00000 {
-- 
2.39.2


