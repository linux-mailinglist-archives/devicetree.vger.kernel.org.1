Return-Path: <devicetree+bounces-268123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG5aOlaNnmmPWAQAu9opvQ
	(envelope-from <devicetree+bounces-268123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:49:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 495161922CD
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D2023058712
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 05:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945182DECA1;
	Wed, 25 Feb 2026 05:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mGCDzGkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33072C08A8
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 05:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771998398; cv=none; b=i/JCLdaCPDHsFBaZYJAxQUoUfFrEJ+Fr64NjDloNd+BNtvGj9vCsZagcqq1upoMmqiSeF2IcG2YbJNrDiD3xcf0iKq1iSyl0iOYE0VVYdkQozamjZAo43ev/nd8QFH/QQn/Mw0cXm3EFVHPvDXg+ENh4d1JsOrS3eFyLKPdGiWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771998398; c=relaxed/simple;
	bh=cP77Cj4m/G1y+1a60QFJxBRQ7tgHJ+QW3gBIDH8Vyz8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C19lu1ajFF8Hy3830/yBGn/8r7XY/orVo3UvxAl3b1SHMfZss+s+P9Q803SekO8BmrYnkTyNpazny0dmTIRJjtqec/mGbvR3HXq9FQgo/wLZuib0eUtiluDghWPX+Sz/Dhk1TaTABd+hLj/dkE8poc86rlzvBMl4Tv/dxeEmCcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mGCDzGkJ; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2adbfab4501so4641095ad.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 21:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771998395; x=1772603195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ghgs/WMzo31BTpYC5K6MQ+1m/ImzINe3/dq8q/iLLc=;
        b=mGCDzGkJwaaVy65ZaaLepLMhe5dnI8bQmf1eXrxsezcTgphXtH42rVovmcQVv/jnhf
         D0o/r6LMI859tBqqpR2e3maVNNDah5f6rjuttfCIIKae+dv+wmuUVDZoW9MURDla3CFa
         JQxQihWW7OG819j6moQJ7zBEpnr++mnoV8qK9xQwj0DM9PTc6T+9hxqU+jOobXhbdAgV
         bf7edubDIL1Vxpb+CNpJMju0xpL5ARvj3RZoSoS9pIuVnUBQ8wOfrXBC1a3esMBv4NMB
         Ieaz/kND6fdarY3Ab9BuQ3XqeWrnzXHhg5O8pPpJbZRHZW7QpBC059zn1j8TDyb16MbP
         U6JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771998395; x=1772603195;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6ghgs/WMzo31BTpYC5K6MQ+1m/ImzINe3/dq8q/iLLc=;
        b=PFcpXKlChNrqKBjYYo1bC9B3s+Xj433u5jl5gluGbjFwBYDVGcG6pxrwGe1p8A0Y+V
         5awTPwjyDVY88VSLkxUuZiTEYOT7YJzrKH4pSu3gJjXI2inBLhz/pExEqvG7TWbO1IFO
         P8tgXqbQOZjZoVCX6TCiEnYvs7ND1crMcUGmdXqcNQvwv1bSynR5vfttKE/Pcnpu3I/f
         aYcqZ4Gdx2rvk6tLo9BFvWMughaGo/pGAdkIGvAzEavfNyGs7xjrEqpxt8FoEkFWGf58
         VhShyPXeibX+P2+g3TQFZ333/2bcG6bjffDxUHGNp9nCfhM9rCMH9c2lOVw6vID8RtH0
         Folw==
X-Forwarded-Encrypted: i=1; AJvYcCVyf8E6IItzq3UISN6kVi5ppzw/t5oVuvG0EaHcMep6t6PrvN3pBAASFcgQy3tULUzBQpaLcU/oRZPe@vger.kernel.org
X-Gm-Message-State: AOJu0YwkzukB7HEueOw9uYtxj6vKc8FCVZvMLcWxQFeyqB8Z/fNoTJPH
	kWA+gL+0KDX7mKm5F50SFRqedwgqwX4fqr/BCtI1EEOQBl84pQvVn6tq
X-Gm-Gg: ATEYQzyQDSirPe+AybbpN8iJs+55SY4Zn4c2NawEuj7zOoM+FBR2hobhv41uWjSGZcv
	lbnI+AgXrPciX7fxyde7XTCjnuV140UWD7iDaq91dpaC2QMBF1aHH+/pJCGRrxQPBgQcdxG0xlL
	1r0mqU4B6c4VZVT+1RGoUegIMa/15kPGCDah7V9/Aoldy71wFovvk/y2gBtIBDl0IQA9lRtzQDG
	geN1VIuaq1ORy3jQY7+4UNj6Nq8IbsUA1Y/PPNcYL2PZ9utEoqFYlekalN8lihx+bGxUg2ymtAJ
	dC/xG8/7C5O+uODqGaDXqZWUP+N4vC1UNaHI0diTEwFWyHcWYgOQ5tdh6ObRAl3PtiCxwH+RgpO
	bq3CiA3Wk2rirlRFoGgJlD1nAAXMmPCdDfbTj3bS+WIsyNxbLQOOsaegqUtWihSIY9b7BOrzrrk
	gnQw8FdDAZlTLVnI++
X-Received: by 2002:a17:902:cccd:b0:2aa:e3d1:1438 with SMTP id d9443c01a7336-2add11bb978mr13886335ad.12.1771998395044;
        Tue, 24 Feb 2026 21:46:35 -0800 (PST)
Received: from nuvole.lan ([2408:824c:a17:8230::c83])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e318sm119665295ad.43.2026.02.24.21.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 21:46:34 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tianyu Gao <gty0622@gmail.com>,
	White Lewis <liu224806@gmail.com>,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH] arm64: dts: qcom: sc8280xp: Add dsi nodes on SC8280XP
Date: Wed, 25 Feb 2026 13:45:25 +0800
Message-ID: <20260225054525.6803-6-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225054525.6803-1-mitltlatltl@gmail.com>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268123-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 495161922CD
X-Rspamd-Action: no action

The DT configuration follows other Samsung 5nm-based Qualcomm SOCs,
utilizing the same register layouts and clock structures.

However, DSI won't work properly for now (Partial content wrapped to
the left side) until we submit dispcc fixes. And some panels require
DPU timing calculation fixes too. (hdisplay / width timing round errors
cause the fifo error)

Co-developed-by: Tianyu Gao <gty0622@gmail.com>
Signed-off-by: Tianyu Gao <gty0622@gmail.com>
Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
Tested-by: White Lewis <liu224806@gmail.com> # HUAWEI Gaokun3
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 423 ++++++++++++++++++++++++-
 1 file changed, 415 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 5334adebf..a1507f000 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/clock/qcom,dispcc-sc8280xp.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
 #include <dt-bindings/clock/qcom,gpucc-sc8280xp.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -4657,6 +4658,20 @@ mdss0_intf0_out: endpoint {
 						};
 					};
 
+					port@1 {
+						reg = <1>;
+						mdss0_intf1_out: endpoint {
+							remote-endpoint = <&mdss0_dsi0_in>;
+						};
+					};
+
+					port@2 {
+						reg = <2>;
+						mdss0_intf2_out: endpoint {
+							remote-endpoint = <&mdss0_dsi1_in>;
+						};
+					};
+
 					port@4 {
 						reg = <4>;
 						mdss0_intf4_out: endpoint {
@@ -4791,6 +4806,195 @@ opp-810000000 {
 				};
 			};
 
+			mdss0_dsi0: dsi@ae94000 {
+				compatible = "qcom,sc8280xp-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0 0x0ae94000 0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupt-parent = <&mdss0>;
+				interrupts = <4>;
+
+				clocks = <&dispcc0 DISP_CC_MDSS_BYTE0_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_BYTE0_INTF_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_PCLK0_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_ESC0_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus";
+
+				assigned-clocks = <&dispcc0 DISP_CC_MDSS_BYTE0_CLK_SRC>,
+						  <&dispcc0 DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss0_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss0_dsi0_phy DSI_PIXEL_PLL_CLK>;
+
+				operating-points-v2 = <&mdss0_dsi0_opp_table>;
+				power-domains = <&rpmhpd SC8280XP_MMCX>;
+
+				phy-names = "dsi";
+
+				phys = <&mdss0_dsi0_phy>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						mdss0_dsi0_in: endpoint {
+							remote-endpoint = <&mdss0_intf1_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						mdss0_dsi0_out: endpoint {
+						};
+					};
+				};
+
+				mdss0_dsi0_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-187500000 {
+						opp-hz = /bits/ 64 <187500000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-300000000 {
+						opp-hz = /bits/ 64 <300000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-358000000 {
+						opp-hz = /bits/ 64 <358000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+				};
+			};
+
+			mdss0_dsi0_phy: phy@ae94400 {
+				compatible = "qcom,sc8280xp-dsi-phy-5nm";
+				reg = <0 0x0ae94400 0 0x200>,
+				      <0 0x0ae94600 0 0x280>,
+				      <0 0x0ae94900 0 0x27c>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				clocks = <&dispcc0 DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface", "ref";
+
+				status = "disabled";
+			};
+
+			mdss0_dsi1: dsi@ae96000 {
+				compatible = "qcom,sc8280xp-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0 0x0ae96000 0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupt-parent = <&mdss0>;
+				interrupts = <5>;
+
+				clocks = <&dispcc0 DISP_CC_MDSS_BYTE1_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_BYTE1_INTF_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_PCLK1_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_ESC1_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus";
+
+				assigned-clocks = <&dispcc0 DISP_CC_MDSS_BYTE1_CLK_SRC>,
+						  <&dispcc0 DISP_CC_MDSS_PCLK1_CLK_SRC>;
+				assigned-clock-parents = <&mdss0_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss0_dsi1_phy DSI_PIXEL_PLL_CLK>;
+
+				operating-points-v2 = <&mdss0_dsi1_opp_table>;
+				power-domains = <&rpmhpd SC8280XP_MMCX>;
+
+				phys = <&mdss0_dsi1_phy>;
+				phy-names = "dsi";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						mdss0_dsi1_in: endpoint {
+							remote-endpoint = <&mdss0_intf2_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						mdss0_dsi1_out: endpoint {
+						};
+					};
+				};
+
+				mdss0_dsi1_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-187500000 {
+						opp-hz = /bits/ 64 <187500000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-300000000 {
+						opp-hz = /bits/ 64 <300000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-358000000 {
+						opp-hz = /bits/ 64 <358000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+				};
+			};
+
+			mdss0_dsi1_phy: phy@ae96400 {
+				compatible = "qcom,sc8280xp-dsi-phy-5nm";
+				reg = <0 0x0ae96400 0 0x200>,
+				      <0 0x0ae96600 0 0x280>,
+				      <0 0x0ae96900 0 0x27c>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				clocks = <&dispcc0 DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface", "ref";
+
+				status = "disabled";
+			};
+
 			mdss0_dp1: displayport-controller@ae98000 {
 				compatible = "qcom,sc8280xp-dp";
 				reg = <0 0xae98000 0 0x200>,
@@ -5080,10 +5284,10 @@ dispcc0: clock-controller@af00000 {
 				 <&mdss0_dp2_phy 1>,
 				 <&mdss0_dp3_phy 0>,
 				 <&mdss0_dp3_phy 1>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>;
+				 <&mdss0_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss0_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss0_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss0_dsi1_phy DSI_PIXEL_PLL_CLK>;
 			power-domains = <&rpmhpd SC8280XP_MMCX>;
 
 			#clock-cells = <1>;
@@ -6008,6 +6212,20 @@ mdss1_intf0_out: endpoint {
 						};
 					};
 
+					port@1 {
+						reg = <1>;
+						mdss1_intf1_out: endpoint {
+							remote-endpoint = <&mdss1_dsi0_in>;
+						};
+					};
+
+					port@2 {
+						reg = <2>;
+						mdss1_intf2_out: endpoint {
+							remote-endpoint = <&mdss1_dsi1_in>;
+						};
+					};
+
 					port@4 {
 						reg = <4>;
 						mdss1_intf4_out: endpoint {
@@ -6139,6 +6357,195 @@ opp-810000000 {
 				};
 			};
 
+			mdss1_dsi0: dsi@22094000 {
+				compatible = "qcom,sc8280xp-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0 0x22094000 0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupt-parent = <&mdss1>;
+				interrupts = <4>;
+
+				clocks = <&dispcc1 DISP_CC_MDSS_BYTE0_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_BYTE0_INTF_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_PCLK0_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_ESC0_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus";
+
+				assigned-clocks = <&dispcc1 DISP_CC_MDSS_BYTE0_CLK_SRC>,
+						  <&dispcc1 DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss1_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss1_dsi0_phy DSI_PIXEL_PLL_CLK>;
+
+				operating-points-v2 = <&mdss1_dsi0_opp_table>;
+				power-domains = <&rpmhpd SC8280XP_MMCX>;
+
+				phy-names = "dsi";
+
+				phys = <&mdss1_dsi0_phy>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						mdss1_dsi0_in: endpoint {
+							remote-endpoint = <&mdss1_intf1_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						mdss1_dsi0_out: endpoint {
+						};
+					};
+				};
+
+				mdss1_dsi0_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-187500000 {
+						opp-hz = /bits/ 64 <187500000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-300000000 {
+						opp-hz = /bits/ 64 <300000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-358000000 {
+						opp-hz = /bits/ 64 <358000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+				};
+			};
+
+			mdss1_dsi0_phy: phy@22094400 {
+				compatible = "qcom,sc8280xp-dsi-phy-5nm";
+				reg = <0 0x22094400 0 0x200>,
+				      <0 0x22094600 0 0x280>,
+				      <0 0x22094900 0 0x260>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				clocks = <&dispcc1 DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface", "ref";
+
+				status = "disabled";
+			};
+
+			mdss1_dsi1: dsi@22096000 {
+				compatible = "qcom,sc8280xp-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0 0x22096000 0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupt-parent = <&mdss1>;
+				interrupts = <5>;
+
+				clocks = <&dispcc1 DISP_CC_MDSS_BYTE1_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_BYTE1_INTF_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_PCLK1_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_ESC1_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus";
+
+				assigned-clocks = <&dispcc1 DISP_CC_MDSS_BYTE1_CLK_SRC>,
+						  <&dispcc1 DISP_CC_MDSS_PCLK1_CLK_SRC>;
+				assigned-clock-parents = <&mdss1_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss1_dsi1_phy DSI_PIXEL_PLL_CLK>;
+
+				operating-points-v2 = <&mdss1_dsi1_opp_table>;
+				power-domains = <&rpmhpd SC8280XP_MMCX>;
+
+				phys = <&mdss1_dsi1_phy>;
+				phy-names = "dsi";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						mdss1_dsi1_in: endpoint {
+							remote-endpoint = <&mdss1_intf2_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						mdss1_dsi1_out: endpoint {
+						};
+					};
+				};
+
+				mdss1_dsi1_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-187500000 {
+						opp-hz = /bits/ 64 <187500000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-300000000 {
+						opp-hz = /bits/ 64 <300000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-358000000 {
+						opp-hz = /bits/ 64 <358000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+				};
+			};
+
+			mdss1_dsi1_phy: phy@22096400 {
+				compatible = "qcom,sc8280xp-dsi-phy-5nm";
+				reg = <0 0x22096400 0 0x200>,
+				      <0 0x22096600 0 0x280>,
+				      <0 0x22096900 0 0x260>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				clocks = <&dispcc1 DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface", "ref";
+
+				status = "disabled";
+			};
+
 			mdss1_dp1: displayport-controller@22098000 {
 				compatible = "qcom,sc8280xp-dp";
 				reg = <0 0x22098000 0 0x200>,
@@ -6426,10 +6833,10 @@ dispcc1: clock-controller@22100000 {
 				 <&mdss1_dp2_phy 1>,
 				 <&mdss1_dp3_phy 0>,
 				 <&mdss1_dp3_phy 1>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>;
+				 <&mdss1_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss1_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss1_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss1_dsi1_phy DSI_PIXEL_PLL_CLK>;
 			power-domains = <&rpmhpd SC8280XP_MMCX>;
 
 			#clock-cells = <1>;
-- 
2.53.0


