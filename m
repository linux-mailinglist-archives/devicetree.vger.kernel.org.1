Return-Path: <devicetree+bounces-23180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C61B80A6BD
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46F0B1F21452
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93BE1225D0;
	Fri,  8 Dec 2023 15:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="r5nTAEIl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7C9C1BE8
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:08:54 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-54dca2a3f16so3698155a12.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1702048133; x=1702652933; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fnWkFuJY6MJ2ZaOXK6UAiukARQkpq+UgbSGCMQcOUUQ=;
        b=r5nTAEIlcbgSm2Cf66LfCLht8G1zpc9bipVg0dYpnEhw0pEJDa6b9kF7RDIuMaZXbb
         cn3wISuRKh83vE8OBsHGGuHzqIPjt61OHsEmJ3ZqE2DpGPo5enPyyYoqb34R9HJ5Llni
         MKlrJP0YeXZI0sgTEKfciUuZ831MBH9+isoTR+Erw6zx/CBz3aJVb5XiYAP/a5XXTFss
         iaeh3DWjtZn4w/jU6/86VIIXjE3X9Emtj37CqDvafSksaq0uTke6zHTKA+HlbCLWnVIR
         gmcH55JTyZCqmscPH2id4s2RI1OV+k+QQI0OA6v8P1clBzElf1Nq6wmICDbrYKxfYAhf
         3FCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702048133; x=1702652933;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fnWkFuJY6MJ2ZaOXK6UAiukARQkpq+UgbSGCMQcOUUQ=;
        b=RClnZwCFmhRHk3ZqJGu1EGP2PFCP/BCcwcUxqoRycuwpqcrhrWnSGKtiy3X0NzdyJI
         +2+l1qQQBu002Bl19uV4i4RJbpljwCPo8X+W2F9aW0Pumhg2dvn0VprPcQ2jUBNmW3WC
         eaXrLDTcc6oJJWSZGeolNGkVsuhH8sJ5cC5cUGP7soQCj2bZDY0gGB88c5Q3G8jIRY5D
         1Ml3N20MvhqZD3a43cn9YNTjvkp4+YK053uivOsavUjbQL7klOxgtPV0VH9m2gvNtsmr
         4FELtAeXqZLL6rV/eF1Wo+ec0fpaoqvWHIMszkOs0WKxqHPRUcS4oSfApLFXXS/5Xdx2
         5d0g==
X-Gm-Message-State: AOJu0YwzZK7HW/RGz+PHRDbn36KOV6DYn9ABvzWZ7WcYy01TF+3HR0fd
	oJB/oop6iK2UssyAUVIngBtY9g==
X-Google-Smtp-Source: AGHT+IEmFRxtrsca3mDhjUWqafanESggtlWIY3O+aAEq1bMK37FzHZtm8hQx8Vt2Bt3FOQc2UqMe9g==
X-Received: by 2002:a17:906:fe4c:b0:a1c:4eee:3521 with SMTP id wz12-20020a170906fe4c00b00a1c4eee3521mr334656ejb.56.1702048133106;
        Fri, 08 Dec 2023 07:08:53 -0800 (PST)
Received: from [192.168.55.221] (tmo-113-102.customers.d1-online.com. [80.187.113.102])
        by smtp.gmail.com with ESMTPSA id r25-20020a170906351900b00a1cc1be1146sm1096114eja.217.2023.12.08.07.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:08:52 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 08 Dec 2023 16:07:59 +0100
Subject: [PATCH v3 03/11] arm64: dts: qcom: sc7280: Rename reserved-memory
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231208-sc7280-remoteprocs-v3-3-6aa394d33edf@fairphone.com>
References: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
In-Reply-To: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

It was clarified a while ago that reserved-memory nodes shouldn't be
called memory@ but should have a descriptive name. Update sc7280.dtsi to
follow that.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 1b40e18ff152..f4d02d9dcb55 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -92,63 +92,63 @@ reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		wlan_ce_mem: memory@4cd000 {
+		wlan_ce_mem: wlan-ce@4cd000 {
 			no-map;
 			reg = <0x0 0x004cd000 0x0 0x1000>;
 		};
 
-		hyp_mem: memory@80000000 {
+		hyp_mem: hyp@80000000 {
 			reg = <0x0 0x80000000 0x0 0x600000>;
 			no-map;
 		};
 
-		xbl_mem: memory@80600000 {
+		xbl_mem: xbl@80600000 {
 			reg = <0x0 0x80600000 0x0 0x200000>;
 			no-map;
 		};
 
-		aop_mem: memory@80800000 {
+		aop_mem: aop@80800000 {
 			reg = <0x0 0x80800000 0x0 0x60000>;
 			no-map;
 		};
 
-		aop_cmd_db_mem: memory@80860000 {
+		aop_cmd_db_mem: aop-cmd-db@80860000 {
 			reg = <0x0 0x80860000 0x0 0x20000>;
 			compatible = "qcom,cmd-db";
 			no-map;
 		};
 
-		reserved_xbl_uefi_log: memory@80880000 {
+		reserved_xbl_uefi_log: xbl-uefi-res@80880000 {
 			reg = <0x0 0x80884000 0x0 0x10000>;
 			no-map;
 		};
 
-		sec_apps_mem: memory@808ff000 {
+		sec_apps_mem: sec-apps@808ff000 {
 			reg = <0x0 0x808ff000 0x0 0x1000>;
 			no-map;
 		};
 
-		smem_mem: memory@80900000 {
+		smem_mem: smem@80900000 {
 			reg = <0x0 0x80900000 0x0 0x200000>;
 			no-map;
 		};
 
-		cpucp_mem: memory@80b00000 {
+		cpucp_mem: cpucp@80b00000 {
 			no-map;
 			reg = <0x0 0x80b00000 0x0 0x100000>;
 		};
 
-		wlan_fw_mem: memory@80c00000 {
+		wlan_fw_mem: wlan-fw@80c00000 {
 			reg = <0x0 0x80c00000 0x0 0xc00000>;
 			no-map;
 		};
 
-		video_mem: memory@8b200000 {
+		video_mem: video@8b200000 {
 			reg = <0x0 0x8b200000 0x0 0x500000>;
 			no-map;
 		};
 
-		ipa_fw_mem: memory@8b700000 {
+		ipa_fw_mem: ipa-fw@8b700000 {
 			reg = <0 0x8b700000 0 0x10000>;
 			no-map;
 		};
@@ -158,7 +158,7 @@ gpu_zap_mem: zap@8b71a000 {
 			no-map;
 		};
 
-		rmtfs_mem: memory@9c900000 {
+		rmtfs_mem: rmtfs@9c900000 {
 			compatible = "qcom,rmtfs-mem";
 			reg = <0x0 0x9c900000 0x0 0x280000>;
 			no-map;

-- 
2.43.0


