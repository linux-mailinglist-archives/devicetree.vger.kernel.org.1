Return-Path: <devicetree+bounces-248055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FE6CCE72C
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 05:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3AB57302CD60
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 04:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A16F29C321;
	Fri, 19 Dec 2025 04:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YNfkxYik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC9628A72B
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 04:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766118879; cv=none; b=DgzpY009HMymCtP/EQ5htZHQuG6ivCxhWCMdMORWze9a1OWItB+Qzn+Fbg9kEROn5xxAghA0vDropzbICoKyp7cuMN+3dW9/NXFfumXB7Vs1DQyXJMKSC4y564uu+iouMvH5Kl0TSsjnDpbvRmyGzW2HIUNTwmdbOKViz+RzcpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766118879; c=relaxed/simple;
	bh=Up2Z79kEtmtDGOhpPkDygBJipNEFvl3e0SnwWNs4gXo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I3PyYZ8c05dn+izeLj8yRucCvZSoj9+oXI91ftCnetSifgF7WlsEHqkvtt+Qs1JZSG0AfY149jQBivSOoM5MoQLfQFwlWTy8D12t0TRJkoG6jIrk7Qrr2vhi/4XLbfWVjd4SzeE+gW5f07eHjDlkWuKEXbYjWes4BvNC27lbcUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YNfkxYik; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64455a2a096so1019737d50.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 20:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766118876; x=1766723676; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PzmKwrslM1ZrqgvgQZdaYLdNHq7Buu+2pybODQLZPLA=;
        b=YNfkxYiky1Wp28TCoJzBVvtzUZ0qyZMBMQeMmaO4Yx/Pa0M8/o2t+lyqaPP29hdp9D
         PYEqq/S9OZOZWSU7wCZo4BrBPOmV52fp4eJMl2WpgC7e3ZENCLIwvcYmZOPul5nnwT3u
         /r+l64hBO2gy93Thk5Yqga2S+1lPg+2OOmfoMYdDkzdtgqikupenZUD3r6dFpcCM5k0x
         b2zoNzQJlxajR+i/RTcq0TA+nxlC6nW5F+oPjXw4oQ+/MEQIOk+0dd31gWqNZodR3J1t
         jzcasXodxUd1HHsBE9MEu3RabIZeX4IVo3oBuErD9t9KtWrKt7H+ascwL8Jeine7NcEV
         ccJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766118876; x=1766723676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PzmKwrslM1ZrqgvgQZdaYLdNHq7Buu+2pybODQLZPLA=;
        b=tpTqxy5hJQoUEL1xJ+X/87WudUo+0iNKcFlbhOL1A7qPv8efNifPw5BclnlvwMyU46
         l3fVSWeDBlUoHobWuAo3DBBxgB1kGbT/56rtBfVOgopFgJMl9nNLtP0cFZhHJ9GqX3k2
         wwLONkZe9Nf0tZHHNzSmzSvLvCARatu5Sd3p3GP+RpVBdE9dE+PzODNLml2gY7IZKAjc
         +UUZLx4la1JpjmHwXAuE1MB6KHIib7SgOswrWDmfDzzD0HItPXaelZcceSk61u21igHk
         Sp1cAf+0GGzlAIkCPlLkbJX2NIAGfWVMPYJ9Bi/t+m/KsxpqSJOxvi2x4uGiSWg4kgfe
         i5Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWz+kHlfwd7N4p6maBjicKDsRlFrGxQTYyIiZ+Ijkrem5HbkjL3WGEkovmlchUvVX4GBngGHR6IsIjx@vger.kernel.org
X-Gm-Message-State: AOJu0YzpccVPDRqHk+iDIB6T0j4bh6xrSvHH5m9uPSPY4lxDmQC7KHQX
	G7nS13NCImziJpVSZ35IhpouzeqDU/+eSkHJvPB/6u2619YQGW5HIMd9
X-Gm-Gg: AY/fxX6cPwZU/f5g9eZhdq66wxuHq9N+gWReWORnf3lgyw1pLxXRu1A0R+ybOOe+z4S
	5e3DN6CfAR0SGvxy2caYy0Tf+SvrrwpzLkYtgKoT5BSs1pEy8zz2/GGX+ldoaKhYu4k4RQprsV0
	KwdqHjCWeiH42enZhpZbNp3LbLXDVKtrBpgMWmEPk2Dx7rPf4ai+EvAZBqgGshZo8HvIqA3VeXU
	3mME+RuJuU/gAEzu/C2+MiZL2df5X3J3eTdGFmz6g5GgRtoF387LZGNDp2Ib3g7PPo9nNzyqx42
	Ghm9Y8AEWy1SGowIJ/joSpdB6fffScSim48lY0ok/nkWRe0XtYGz/d7gihkftwNFkgqIQHWrn6v
	Q/KDDxWYZDiw2auhreVU47s2IrnHdHMbMPYVArECzdZOShY7OjF/WOAab/527AS2MuM3dt7DSZ3
	LGcYaa7eIE8iw74Q5Wl89NjSmYtDXuolDxvJqV0bn0WMLxo0+d1ZgDyLOP53/EIjFlSsjak0Wfs
	dNhaYZHQ94mbEbHVmikYAeDySw3
X-Google-Smtp-Source: AGHT+IHV4EY7sTS07g1E7oibzLMjyhOoccEfgDEPV1sDgvAPwIVloTk4IXSQns8jlwlJaTFu3t/bqg==
X-Received: by 2002:a05:690c:6d12:b0:78d:6c06:4a04 with SMTP id 00721157ae682-78fb3f04375mr29478967b3.1.1766118875853;
        Thu, 18 Dec 2025 20:34:35 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb452c441sm5610227b3.46.2025.12.18.20.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 20:34:35 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: andersson@kernel.org,
	mathieu.poirier@linaro.org,
	krzk+dt@kernel.org,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/9] arm64: dts: qcom: ipq9574: add wcss remoteproc nodes
Date: Thu, 18 Dec 2025 22:34:12 -0600
Message-ID: <20251219043425.888585-4-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20251219043425.888585-1-mr.nuke.me@gmail.com>
References: <20251219043425.888585-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The WCSS remoteproc is typically used by ath11k to load wifi firmware
to the Hexagon q6 procesor. Add the nodes required to bring up this
processor.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 101 ++++++++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 86c9cb9fffc98..56e6f1370d6c3 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -226,6 +226,37 @@ smem@4aa00000 {
 			hwlocks = <&tcsr_mutex 3>;
 			no-map;
 		};
+
+
+		q6_region: wcnss@4ab00000 {
+			no-map;
+			reg = <0x0 0x4ab00000 0x0 0x02b00000>;
+		};
+	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 322 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 9>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		wcss_smp2p_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			qcom,smp2p-feature-ssr-ack;
+			#qcom,smem-state-cells = <1>;
+		};
+
+		wcss_smp2p_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	soc: soc@0 {
@@ -903,6 +934,76 @@ frame@b128000 {
 			};
 		};
 
+		q6v5_wcss: remoteproc@cd00000 {
+			compatible = "qcom,ipq9574-wcss-pil";
+			reg = <0x0cd00000 0x4040>,
+			      <0x004ab000 0x20>;
+			reg-names = "qdsp6",
+				    "rmb";
+
+			interrupts-extended = <&intc GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
+					      <&wcss_smp2p_in 0 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 1 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 2 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 3 IRQ_TYPE_NONE>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			resets = <&gcc GCC_WCSSAON_RESET>,
+				 <&gcc GCC_WCSS_BCR>,
+				 <&gcc GCC_WCSS_Q6_BCR>;
+			reset-names = "wcss_aon_reset",
+				      "wcss_reset",
+				      "wcss_q6_reset";
+
+			clocks = <&gcc GCC_ANOC_WCSS_AXI_M_CLK>,
+				 <&gcc GCC_Q6_AHB_CLK>,
+				 <&gcc GCC_Q6_AHB_S_CLK>,
+				 <&gcc GCC_Q6_AXIM_CLK>,
+				 <&gcc GCC_Q6SS_BOOT_CLK>,
+				 <&gcc GCC_MEM_NOC_Q6_AXI_CLK>,
+				 <&gcc GCC_SYS_NOC_WCSS_AHB_CLK>,
+				 <&gcc GCC_WCSS_ACMT_CLK>,
+				 <&gcc GCC_WCSS_ECAHB_CLK>,
+				 <&gcc GCC_WCSS_Q6_TBU_CLK>,
+				 <&gcc GCC_WCSS_AHB_S_CLK>,
+				 <&gcc GCC_Q6_AXIM2_CLK>,
+				 <&gcc GCC_WCSS_AXI_M_CLK>;
+
+			clock-names = "anoc_wcss_axi_m",
+				      "q6_ahb",
+				      "q6_ahb_s",
+				      "q6_axim",
+				      "q6ss_boot",
+				      "mem_noc_q6_axi",
+				      "sys_noc_wcss_ahb",
+				      "wcss_acmt",
+				      "wcss_ecahb",
+				      "wcss_q6_tbu",
+				      "q6_axim2",
+				      "wcss_ahb_s",
+				      "wcss_axi_m";
+
+			qcom,halt-regs = <&tcsr 0x18000 0x1b000 0xe000>;
+
+			qcom,smem-states = <&wcss_smp2p_out 0>,
+					   <&wcss_smp2p_out 1>;
+			qcom,smem-state-names = "shutdown",
+						"stop";
+
+			memory-region = <&q6_region>;
+
+			glink-edge {
+				interrupts = <GIC_SPI 321 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
+
 		pcie1: pcie@10000000 {
 			compatible = "qcom,pcie-ipq9574";
 			reg = <0x10000000 0xf1d>,
-- 
2.45.1


