Return-Path: <devicetree+bounces-7952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 453647C64C7
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:46:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 681931C20A39
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 05:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFEA028EF;
	Thu, 12 Oct 2023 05:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CqWJFnSb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18221D267
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:45:59 +0000 (UTC)
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6FFDF5
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:45:57 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-69af8a42066so483744b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697089557; x=1697694357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTqO3Bk11vaIqEHJBs3qluSIAGA/bXfT2WWIycF5MX0=;
        b=CqWJFnSbX/X+rnflIIJydJ+aYEVKv+Dv0g8VF+SJPTO2D4zzEiYcatqwpYDG5cByYY
         0XZa0OtmPh2ezyWTBGYrVXoEJPpZmH8wQkkO2dqZWaoBIaBlUJrO7tSnTcCdidpMKHGL
         IIALbJbLqsVdvjQaf0uwx60HoCnTDTWWnqiGNBDT8im8vPLXc/pBeYczQya+vJmEQgrV
         HuKHqNf5W8uo3D/96RUUX677x7qk/h/ydWtbfjBoSwhyLDcmONrDXIaCQDiNTv04hGRh
         LQKPL1E7X2bhAon32wtXF8eFRQN+93Ngj4gPnZWCXTZpPE7wXYU20X4TsXfpS1F7iUf7
         U8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697089557; x=1697694357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YTqO3Bk11vaIqEHJBs3qluSIAGA/bXfT2WWIycF5MX0=;
        b=otOMVeh+w4iDx5MkrPxJpHvZZNeRdEVHTBq2Zo2ieYegjXf4+0l95I56ZhrKFXIfhl
         AVpJ9Ji+KiYcpSJPie46xBKXdZPfpMR8e2gC65xub/Wh3FRA9Go1hivroCfnl6oFLyPW
         ALHamFMLFz2XYuHfz8mamMsfopxb4YUijUCA8mZ1j1j+pOrxvIehKD+o0LKunJp4Gauu
         U8IaEAB+UzKbao5Svm02JinxIjFeUU7HJsSP5WfH9zCTEcTuvPCxP1n0Gau5mdPvL278
         NvykAPTVNY2yjRH+2Oggw4m5h2ZHomSk9ogdCB75FHrSd49EpBJCPPIQKScdcdKJMuS+
         VI0w==
X-Gm-Message-State: AOJu0Ywy0GL93uG9LxraoBLYirPByoSJ5Y7OsRKzjGyYXzA5bOVVTcjG
	bwmXig4MBSZvHPb5SRK3+U5q
X-Google-Smtp-Source: AGHT+IHO+5SbtId9L1+jaifztpi6kqaKVXfP+u0rJNVbTLYBDc+4gn3SGy40qi/57lYijfPh2FZmeA==
X-Received: by 2002:a05:6a00:2409:b0:690:3b59:cc7b with SMTP id z9-20020a056a00240900b006903b59cc7bmr22476242pfh.32.1697089557098;
        Wed, 11 Oct 2023 22:45:57 -0700 (PDT)
Received: from localhost.localdomain ([120.138.12.180])
        by smtp.gmail.com with ESMTPSA id c5-20020a633505000000b0057cb5a780ebsm812396pga.76.2023.10.11.22.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 22:45:56 -0700 (PDT)
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
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 4/5] arm64: dts: qcom: sdm845: Add OPP table support to UFSHC
Date: Thu, 12 Oct 2023 11:15:11 +0530
Message-Id: <20231012054512.10963-5-manivannan.sadhasivam@linaro.org>
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

From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

UFS host controller, when scaling gears, should choose appropriate
performance state of RPMh power domain controller along with clock
frequency. So let's add the OPP table support to specify both clock
frequency and RPMh performance states replacing the old "freq-table-hz"
property.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
[mani: Splitted pd change and used rpmhpd_opp_low_svs]
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 42 +++++++++++++++++++++-------
 1 file changed, 32 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 055ca80c0075..2ea6eb44953e 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2605,22 +2605,44 @@ ufs_mem_hc: ufshc@1d84000 {
 				<&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
 				<&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>,
 				<&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
-			freq-table-hz =
-				<50000000 200000000>,
-				<0 0>,
-				<0 0>,
-				<37500000 150000000>,
-				<0 0>,
-				<0 0>,
-				<0 0>,
-				<0 0>,
-				<75000000 300000000>;
+
+			operating-points-v2 = <&ufs_opp_table>;
 
 			interconnects = <&aggre1_noc MASTER_UFS_MEM 0 &mem_noc SLAVE_EBI1 0>,
 					<&gladiator_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_UFS_MEM_CFG 0>;
 			interconnect-names = "ufs-ddr", "cpu-ufs";
 
 			status = "disabled";
+
+			ufs_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-50000000 {
+					opp-hz = /bits/ 64 <50000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <37500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <75000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-200000000 {
+					opp-hz = /bits/ 64 <200000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <150000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <300000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
 		};
 
 		ufs_mem_phy: phy@1d87000 {
-- 
2.25.1


