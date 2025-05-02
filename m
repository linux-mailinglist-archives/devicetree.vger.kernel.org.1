Return-Path: <devicetree+bounces-172815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E157AA684C
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 03:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0C9C1BA7FE8
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 01:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569BD18E3F;
	Fri,  2 May 2025 01:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e3c+aPwB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B022BB13
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 01:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746148546; cv=none; b=qatiyljVSXVBVRcIWqF8LIPMypU7WVJ8ZkJDvxYcT3OQyEmk2X9R+D/VdYZCpmn1UevjoJY3sPInktFFUYKPIWFGlVbWG2UHtTb9w7XOqNn3fePClu+XNbycF2KK0IIrxzGU9uMBji4budEXGQ95bOpUoUjj89lPteZy4TB30BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746148546; c=relaxed/simple;
	bh=7tblKRIEs/wuHiRfiDyfbeKTY0Tq2mICunAPZlfSnAs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Go7QKn4THVgTofw0aXW1CRz+vrisxE6DN9btnCX/wS4f0sT3+J6tnuN7Z5UDdOUPSx3T3zdeqpKPV0BGuxAhqnFuctO7Qm4YLjpQofniao35YeQP8tk5GnZ4eyxls+h9mTK9TIggaL8zmtOatXe7t7b/LA4UX4jN/2+7XwuR1kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e3c+aPwB; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-39ee5a5bb66so789480f8f.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 18:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746148541; x=1746753341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=olGP6orZfNAwJCaA6Lz+3muHKwDTOzLKnHavYSk8xUo=;
        b=e3c+aPwB9MXZSLvJvcpTaFcr3uJiJ0ih5MNsXpsgsrwQWKoSKuVzEM8D/BBvvzvkHP
         /yERUKOhee2Vi6KpV602PlnMWaFVQtsnnyFiKlDrvIhEqDleG8Y+bH3jbBQVNsLsLV7C
         GDVRt08jFSX9Usghl3ILzV/CQ5oqmlvLzIuV3BDHG8US2KmOXt4OBT3KECM9BJDPyofx
         BUdfOECI454a4kOh1kJnCJaWS0f2KaDwRG/p0IfkBDi7sJ0e+mDvFR1yk9ySqhOGSL2f
         gsAi914Eb6koMs/6n2qG61Z0AWgL6eBcOlMrosYC+6JyM0WMhdzUwL+/Z0fIsyy7LR5t
         GjgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746148541; x=1746753341;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=olGP6orZfNAwJCaA6Lz+3muHKwDTOzLKnHavYSk8xUo=;
        b=PnPMJiYMWD/H8eFQna5MmVp/q2HNhoFyYFI9q9gT8JBfoS/X6TkdRhxm+5pShBnBA8
         Xh/qmcRBLrKXxJteRD6pRFMg1pz+5IT9J0qDcYBJThajz5Ormu450fCJ1A1zXKJkuNxi
         t/kcO3kK2pYor1xse+YaAhjY0oPe/Jq4cCFwLwmx0eZYt0Dmjvn8ONbSfnzrnkYjcPjO
         Am6raOmS3XfXBhmY0Iwv4eIoSrt9OUgAof0gD1yU8kchKcabnVx7qHmj5LuBr44x1QYC
         07QC10OzbVlvBEc5JEO4A5jmBYH9s0mjUoPADgdGFrjPcvT4kyhSSfVplYdz8sKUtckR
         Dgkw==
X-Forwarded-Encrypted: i=1; AJvYcCXr7Bszsmxpx+Vcb4TF2q1gcIPpzMkYAlKS0rKmwFT8P2Tk33OV5Z1d1taO4UOqOR4s6WEwyYo85fiC@vger.kernel.org
X-Gm-Message-State: AOJu0YxcQdT4Kd9a+2gvXLRMDIKUA71OOq/StnmKLaNUkWdIUy4Hvgqh
	pweT4vJ7uWgLoN61T8O8ef6oKRkDrO0ogMJj5excB9jGMwZPHovfyZv0+fnFvRk=
X-Gm-Gg: ASbGncvXbxPBIA/jjGJxK8bn30wNUDGdEo38O8KsCec6Y2YpJ/O35euJoSCqMN0VL8R
	SeHsqniWxfbjlJ3FrKEEnLKGOcqQGv4wrDeRtQwz1c0nkzP+o6Zf4M9CScCCyNj+H63Pt1StlPv
	tNh3yMFlBM8rFOOORtjdw1yVdLI3+2v0OYPdx2CIWjQD3iEa+WtMdbXVx1Ws4gVBZPEXXzMjAvp
	jLKnNH39roMPM2Nk6ThQxXJJwwyY/n6Box0PeftaqavoebrQToOSgwWs6KHCCzeSxZ6WSuTUOen
	GD4Kl/R1KeUI8FxIWoDIyeUG8N5bW+twj0WYAV3fxRvXifqQh6FAWmOw
X-Google-Smtp-Source: AGHT+IEqYUFmpZ7odHGnJ1BNpmOkYizLtX9vRoQQWqRfk5gA+1X5UK2ITRLVd7eG4aVWuhHCMBNPwQ==
X-Received: by 2002:a5d:5f87:0:b0:3a0:7d64:502 with SMTP id ffacd0b85a97d-3a099ad46famr556036f8f.11.1746148541310;
        Thu, 01 May 2025 18:15:41 -0700 (PDT)
Received: from localhost.localdomain ([2.216.7.124])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b172b3sm660560f8f.90.2025.05.01.18.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 18:15:40 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	srini@kernel.org,
	quic_ekangupt@quicinc.com,
	krzysztof.kozlowski@linaro.org
Subject: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
Date: Fri,  2 May 2025 02:15:39 +0100
Message-ID: <20250502011539.739937-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

While at this, also add required memory region for fastrpc.

Tested on sm8750-mtp device with adsprpdcd.

Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
Cc: Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 149d2ed17641..48ee66125a89 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
 #include <dt-bindings/dma/qcom-gpi.h>
+#include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -523,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
 			reg = <0x0 0xff800000 0x0 0x800000>;
 			no-map;
 		};
+
+		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
+			compatible = "shared-dma-pool";
+			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;
+			alignment = <0x0 0x400000>;
+			size = <0x0 0xc00000>;
+			reusable;
+		};
 	};
 
 	smp2p-adsp {
@@ -2237,6 +2246,67 @@ q6prmcc: clock-controller {
 						};
 					};
 				};
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+					memory-region = <&adsp_rpc_remote_heap_mem>;
+					qcom,vmids = <QCOM_SCM_VMID_LPASS
+						      QCOM_SCM_VMID_ADSP_HEAP>;
+					qcom,non-secure-domain;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1003 0x80>,
+							 <&apps_smmu 0x1043 0x20>;
+						dma-coherent;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1004 0x80>,
+							 <&apps_smmu 0x1044 0x20>;
+						dma-coherent;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1005 0x80>,
+							 <&apps_smmu 0x1045 0x20>;
+						dma-coherent;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x1006 0x80>,
+							 <&apps_smmu 0x1046 0x20>;
+						dma-coherent;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+						iommus = <&apps_smmu 0x1007 0x40>,
+							 <&apps_smmu 0x1067 0x0>,
+							 <&apps_smmu 0x1087 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@8 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <8>;
+						iommus = <&apps_smmu 0x1008 0x80>,
+							 <&apps_smmu 0x1048 0x20>;
+						dma-coherent;
+					};
+				};
 			};
 		};
 
-- 
2.47.2


