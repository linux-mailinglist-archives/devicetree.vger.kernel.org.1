Return-Path: <devicetree+bounces-277614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBr/DLSyu2k8mgIAu9opvQ
	(envelope-from <devicetree+bounces-277614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:24:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 416192C7D49
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CC8833025675
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5DBA3A9DB5;
	Thu, 19 Mar 2026 08:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4KSN+uUf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277703A9002
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773908614; cv=none; b=u42PztKql/rYbiE8UvzRsqKYHVctiwSP6/SYMN7S/1CoYLdz08Lk5yseR3g4BNxcKz4WevPZBS54PeIMz5BMUAoTM94C+mVa8xxIK2Ojt9FoQNLAmM7Jp4+ZEcRu9J2/YNMNGt5X26jb4cX5uGCp4trpR9nBgZ4f7R+BM1Ee+Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773908614; c=relaxed/simple;
	bh=DztUC4lS/7DD4vVPL63G3J+vnYcM9o3DQ762mAq/SwY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lSvg/1XLwIf2bpmC4L2UzndfC2+8SdzdEzcXgorLN6Ne+pikrTAhDau4cqRjdb4cggAc5/sc2FRpAUoIMYw4/HGh4bcxoy9bwku/VccIt6LawwnlReglzyDtXXVSkmbum+5nSmRuYWVYM9YRrGyYQh5IHYQXzmaNXRQXp/tW5QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4KSN+uUf; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-666f646f5cfso2769954a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773908611; x=1774513411; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cL/hyqTgwB/G3QPzkxaidzuCBRuVwzstO8c3gTas3yQ=;
        b=4KSN+uUfoH2Ifd5a/fLqnff1Ui43k3YzH8G+6CUx9jKMoJeiNLQAu3P7pC+2YW0v+S
         PNwsZAMbYFZIOac3yxhtHo6aKP1osvH3ReEYTKt7K4Ok/qP72Vr9zL5SVfFzRtV170MP
         EjwtZ8LPUo7X9YbtprC8vLoNguCC6xez1cb+Ilf1D1U9GuVKpViPiYKsyRZZMJAkdWLB
         lesBDE0p5smRLYWVspxg+Zg3ggQeoNg65h+acLeCVWaA6CGtXVRR+HQev0+v47+wbeyZ
         njvB3dkV2YXFi1VyhRFUVTBZlo6alyLOwMuFqjmP5C5D8Q675Ai9MJRinoBuse0Y9hky
         o7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773908611; x=1774513411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cL/hyqTgwB/G3QPzkxaidzuCBRuVwzstO8c3gTas3yQ=;
        b=jVBBjhbmcgYRIZDQeabcoLfIx5qlcbU8DQjw+jydCJLDxt/sxV0k2qtTdE0V+Tzdln
         pzzaBP8NHmVP701bmT2IpOcWegcVtAhhftwgLHFXMFsZBIYeB18i0m8fsjTwehMzjDle
         K/cEIhkK2rNAbus35JvrAXyNbcn/QlB1fFhB+H7DtO+I2sKxc6cZSqsfSB4TQu2BGk7S
         9WPyMv0rh8mvCCp/wEj8P4PbBosZiLr5A2PhFnhnUMkVVxcb5CkpSJ3UCji3N//AJH+G
         I8iUbMmSVQ9L99zvdUn0/kckz4hT0iu1xX/DVPCYFsBzT9T5qjVp+jkdw7xR7uDtgMva
         BIzA==
X-Forwarded-Encrypted: i=1; AJvYcCWLdT/O4WMIwMbprnaTfNs1CB+/OGgc7XXwOPHbIbmeWaeA5cD07gOys7JazXI7872cGRfsSlY9+3GX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4c+oG0NWDoYVIHD6VER01aog/r3ZUE1SmSuURDtd3xx7tfY55
	Xwpg/HGl2yWYHuj/osd+yGOR6E8s3JhUvE39nTjdnJAJMb+86VqhmWvcxHY5Y6aP1XvosJFVncP
	ym4aF
X-Gm-Gg: ATEYQzyO7zZsRdyEqVfW86zozUYZwMBvCKYGeRmopktmRQg0iAu25FnDB1qjik1t2Lv
	G75sHViFwiH89K8PhmJktiITzsqggbrl39zG4dt9KlWwlu57kQs5ZkBb8AcvRMkGRVl2u38Ep57
	tSfbLnGacvVd+LF4SVlpQW73bUrtTwp/vWyNIS4qABIjH8N2J2ZH2HKh5LCcmbC1IO/dDt2BPXW
	0ZFYQBkWhbo9jpojFD/jkivjNxvxCRZZC9wRc/DcvsQE65kSxsLcfXaUPtsrNzg7CsIoRvuHE9n
	ubEdDLKje40uCwu4tQu1gJdzoX3QZZf7wh0hhBDYSTiFAnwsCV9nh7ssL2eDTioHzxCfp8wFitF
	afLZz87jB3ciIGELZAA4N+YVfOIdkUuHJxeTNIaiox95TRKDNiFuY9p1aVFzZrlzz4/iiQ+lplZ
	xey0QxPG1tj6k2kHMLlTf7qPqqU2mDUUOYoqGi0LocKVOJZid3MHUrnL8xi8Gc7OeTADmx/Ncim
	3wNEQ==
X-Received: by 2002:a17:907:86a1:b0:b8f:c684:db28 with SMTP id a640c23a62f3a-b980f982e02mr145214566b.12.1773908611130;
        Thu, 19 Mar 2026 01:23:31 -0700 (PDT)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f142cf16sm419743066b.20.2026.03.19.01.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 01:23:30 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 19 Mar 2026 09:23:18 +0100
Subject: [PATCH v3 1/2] arm64: dts: qcom: milos: Add UFS nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-milos-ufs-v3-1-b7c60bdd0d48@fairphone.com>
References: <20260319-milos-ufs-v3-0-b7c60bdd0d48@fairphone.com>
In-Reply-To: <20260319-milos-ufs-v3-0-b7c60bdd0d48@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773908609; l=4541;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=DztUC4lS/7DD4vVPL63G3J+vnYcM9o3DQ762mAq/SwY=;
 b=sm2YyMqQvUM21AQ7DTyDpnJanoqPxL2+GlgoyE5EnJD7GmpwOY4aVaIt7y1zWdIC7m/77H5z4
 FdIRJahjwkqAN3vGul0NmjqdnVr8LcXexv/AlrrzGFK3BiHjzIZMAbO
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277614-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.25.240.160:email,1d84000:email,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,1d88000:email,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,1f40000:email]
X-Rspamd-Queue-Id: 416192C7D49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the nodes for the UFS PHY and UFS host controller, along with the
ICE used for UFS.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos.dtsi | 129 +++++++++++++++++++++++++++++++++++-
 1 file changed, 126 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
index ed814c45ca05..25c092fae262 100644
--- a/arch/arm64/boot/dts/qcom/milos.dtsi
+++ b/arch/arm64/boot/dts/qcom/milos.dtsi
@@ -798,9 +798,9 @@ gcc: clock-controller@100000 {
 				 <&sleep_clk>,
 				 <0>, /* pcie_0_pipe_clk */
 				 <0>, /* pcie_1_pipe_clk */
-				 <0>, /* ufs_phy_rx_symbol_0_clk */
-				 <0>, /* ufs_phy_rx_symbol_1_clk */
-				 <0>, /* ufs_phy_tx_symbol_0_clk */
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <0>; /* usb3_phy_wrapper_gcc_usb30_pipe_clk */
 
 			#clock-cells = <1>;
@@ -1152,6 +1152,129 @@ aggre2_noc: interconnect@1700000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,milos-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
+			reg = <0x0 0x01d84000 0x0 0x3000>;
+
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "rx_lane1_sync_clk";
+
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &cnoc_cfg SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
+			power-domains = <&gcc UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			operating-points-v2 = <&ufs_opp_table>;
+
+			iommus = <&apps_smmu 0x60 0>;
+
+			dma-coherent;
+
+			lanes-per-direction = <2>;
+			qcom,ice = <&ice>;
+
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+
+			#reset-cells = <1>;
+
+			status = "disabled";
+
+			ufs_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-75000000 {
+					opp-hz = /bits/ 64 <75000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <75000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-150000000 {
+					opp-hz = /bits/ 64 <150000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <150000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-300000000 {
+					opp-hz = /bits/ 64 <300000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <300000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
+		ice: crypto@1d88000 {
+			compatible = "qcom,milos-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x01d88000 0x0 0x18000>;
+
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x20000>;

-- 
2.53.0


