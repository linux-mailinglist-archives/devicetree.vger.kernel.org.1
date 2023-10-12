Return-Path: <devicetree+bounces-7953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3E57C64C8
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DB671C20A8B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 05:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7AF2D26E;
	Thu, 12 Oct 2023 05:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q2rFxBiC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C50D266
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:46:09 +0000 (UTC)
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B95E6195
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:46:05 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3ae65e8eb45so352101b6e.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697089565; x=1697694365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HMmysdE7+hFUIPmp9MMMe3xjxP9qrN7IYcx3e2tg+gE=;
        b=q2rFxBiC7dVO+AIBAj1om5KfTI5rAPzoQQXsgvhloFK1EqyUUOezeB9hBK9mXj1ZqD
         0Nhs8xp3w5eX2hQKN9PAI/T5yW/Fikz9U4QHrZz6ILgxOu8+Wh6g5nqT+RQv/Yl57AbD
         15ApKQHLcAeE3XC1kfwEaiYxyO4diEbXXcXpk9EADb6gCP66bHaVyqo/lclR0dxM+Fpm
         5+o8C3dM3mC6jUZZOCI90CTr9+mmmW4Art/sFyz8V0Nk7CbUTi6tyVmovmnsDfgpllw1
         iW1B2How1TbJ15CmSjYLzwR36T1bMJn6uWbDpK7XlWiQDUu5eo9pDtktYlqZIas3/kZn
         MjMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697089565; x=1697694365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HMmysdE7+hFUIPmp9MMMe3xjxP9qrN7IYcx3e2tg+gE=;
        b=f03rpu/jMUnMa/1g1Gny1bmzqvngvYetMqieSu4YV6nGvKCkXAh/MmvmYo8fArqTBL
         cv/9nTUGOFsihwnjno+khrdfpQOe7FFFbQaibu37l+VEueWF9ob7VDrHVHWtFEao+Xjq
         McDfzGFypnBwA51+wrsJo2OpqPpzZzk6tE565klcSJoi4J3NK93SIjUyecI8NT/Q36Y9
         67M7r2iB2iQNHX/+E3XXF84pkAomPqX+0jLC7g2Ok3e3rDu1/ueCEfkKRaBXqj2NSZgV
         5ktrJ/VjjnMBz+empYzAqAclTDUGuWzEZ+9o2KAmJtvFPmOueoGOdu6ffyMI5c/Z7GvN
         1rUw==
X-Gm-Message-State: AOJu0Yw1eeqe8PhdSJ9uIIE1rj9v8CBqbyO/xtNuTKG9gB1OJsbqJRpT
	/QcbMiuMB+qZnilwzZXXNhUU
X-Google-Smtp-Source: AGHT+IHN9zCwe//72WmN/4AIFcmMeQCy5WLSod7P5ruMv69SJKQqOewxIAI99dLEebbL3vgHPz4UMA==
X-Received: by 2002:a05:6808:1441:b0:3af:583d:3c5d with SMTP id x1-20020a056808144100b003af583d3c5dmr30255565oiv.52.1697089564929;
        Wed, 11 Oct 2023 22:46:04 -0700 (PDT)
Received: from localhost.localdomain ([120.138.12.180])
        by smtp.gmail.com with ESMTPSA id c5-20020a633505000000b0057cb5a780ebsm812396pga.76.2023.10.11.22.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 22:46:04 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vireshk@kernel.org,
	nm@ti.com,
	sboyd@kernel.org,
	myungjoo.ham@samsung.com,
	kyungmin.park@samsung.com,
	cw00.choi@samsung.com,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com
Cc: alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	linux-scsi@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_asutoshd@quicinc.com,
	quic_cang@quicinc.com,
	quic_nitirawa@quicinc.com,
	quic_narepall@quicinc.com,
	quic_bhaskarv@quicinc.com,
	quic_richardp@quicinc.com,
	quic_nguyenb@quicinc.com,
	quic_ziqichen@quicinc.com,
	bmasney@redhat.com,
	krzysztof.kozlowski@linaro.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v6 5/5] arm64: dts: qcom: sm8250: Add OPP table support to UFSHC
Date: Thu, 12 Oct 2023 11:15:12 +0530
Message-Id: <20231012054512.10963-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231012054512.10963-1-manivannan.sadhasivam@linaro.org>
References: <20231012054512.10963-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

UFS host controller, when scaling gears, should choose appropriate
performance state of RPMh power domain controller along with clock
frequency. So let's add the OPP table support to specify both clock
frequency and RPMh performance states replacing the old "freq-table-hz"
property.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 39 +++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index a4e58ad731c3..33abd84aae53 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2198,21 +2198,42 @@ ufs_mem_hc: ufshc@1d84000 {
 				<&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
 				<&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
 				<&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
-			freq-table-hz =
-				<37500000 300000000>,
-				<0 0>,
-				<0 0>,
-				<37500000 300000000>,
-				<0 0>,
-				<0 0>,
-				<0 0>,
-				<0 0>;
+
+			operating-points-v2 = <&ufs_opp_table>;
 
 			interconnects = <&aggre1_noc MASTER_UFS_MEM 0 &mc_virt SLAVE_EBI_CH0 0>,
 					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_UFS_MEM_CFG 0>;
 			interconnect-names = "ufs-ddr", "cpu-ufs";
 
 			status = "disabled";
+
+			ufs_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-37500000 {
+					opp-hz = /bits/ 64 <37500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <37500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
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
 		};
 
 		ufs_mem_phy: phy@1d87000 {
-- 
2.25.1


