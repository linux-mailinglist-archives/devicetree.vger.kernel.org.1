Return-Path: <devicetree+bounces-5502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D947B6779
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:13:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6A3F62815F0
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43F5721111;
	Tue,  3 Oct 2023 11:13:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BBC208D7
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:13:51 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BECC2E3
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:13:38 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c737d61a00so5668695ad.3
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 04:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696331618; x=1696936418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0fZoRzqsVsl2DrqFfH7FNxDnDstpZGeIPe8SX7WYfkY=;
        b=mE3tyuTssyR9u7zxZb1EfssSkpsODPYSX+gPI1iHVW055RQwOL2XmkOcqcZY7Fah41
         fpqsc8FhIiedASF9A4qXbM5MTretnSsYfQ9X75sdSxaeRbs5rGop/0jf63BZLQT8cdUu
         9UgTNagwilTkKMl1jXgXnAIbgZB2ylFc2CXa3iMwGUOscvrJ6hGroVlqTtZPfnnCWHdP
         YG9CJEimI9Why6Xw8je1kVc9uOzFSDu/oEnbw40yMhMhBcAW1PAX9skZOgMFLIsFtEfd
         QXznWgFZcD6/MzJeeR41zToYIguFNagGt0geYkPniecxzxw9TYvKOKjTS0P7VNN47NJk
         vZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696331618; x=1696936418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0fZoRzqsVsl2DrqFfH7FNxDnDstpZGeIPe8SX7WYfkY=;
        b=C/rg0hnhrEQ92vZp6mzlXluqlQlCcC78z5kCgledLh36MoeplWqQOtoWZDpUooKCiH
         TjnOHzZyNelMKRr/m99J2gvKPgMu3hgHiV/2yC/gxq3oD62J3R7dIibq7yu5qja9s2uI
         W5uQIw+fT+wfkbtUQM1Vlohdjt3lOytSyb93UmSYBsmPpna+6l7ft6gmmHjw13JMSXz5
         63n4SwBYEVBubv5cwmvKEPZm3JIq02daXR9d/JsE2GvqPlBUQawQhLgeO1V1OXiKFANC
         GmrduZkH6dMs3lQrj6QtxpuqpJOpSk5PqOcrYEmj5eYmrDIQJt0wlUIgmHeKLUu7AlVM
         a2NQ==
X-Gm-Message-State: AOJu0YzWb4wkBr06JL2dksFZe5cLjDd0EKi90huKxkE31B/zvFRCqVha
	H3jFRb4zLNQ3wzei1goVhXkB
X-Google-Smtp-Source: AGHT+IHimmOQzpDGDJsIUW5ccfjJhRsInwIKVfH6YjjvLY8aQEgOfwuc6gtSNSt75+EIe69jWEejeQ==
X-Received: by 2002:a17:903:2348:b0:1c7:2661:91e1 with SMTP id c8-20020a170903234800b001c7266191e1mr17095416plh.15.1696331617759;
        Tue, 03 Oct 2023 04:13:37 -0700 (PDT)
Received: from localhost.localdomain ([117.217.185.220])
        by smtp.gmail.com with ESMTPSA id d9-20020a170903230900b001ab2b4105ddsm1250328plh.60.2023.10.03.04.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 04:13:37 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 5/6] arm64: dts: qcom: sdm845: Add OPP table support to UFSHC
Date: Tue,  3 Oct 2023 16:42:31 +0530
Message-Id: <20231003111232.42663-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231003111232.42663-1-manivannan.sadhasivam@linaro.org>
References: <20231003111232.42663-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
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


