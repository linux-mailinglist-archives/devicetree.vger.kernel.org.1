Return-Path: <devicetree+bounces-56989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EB489B4DE
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 02:04:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3156C281304
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 00:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE89AEEBF;
	Mon,  8 Apr 2024 00:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D8hah39t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFC5BA46
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 00:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712534679; cv=none; b=Rwj6XCyrugi8QRlBRvRB0R0Cq6DoE7tT0nk65tHVU1hfuuBOhnTIR4VXVFSGcj+GYrxcx0lzduKjfvmBTRXBly690TueS3RPKMLPJ14Qhji6FNiR5np9UAklAADj9DfxOc/c0rQ8IbW3yS5EpaOYJx4UkozAFKrjG/GRKHKk5io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712534679; c=relaxed/simple;
	bh=nAYKKMjqM3Kb8RFCha5OI1S6EWj+PTGtIqzAtlEkxmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tb/ZkZWfWtDYqnvIFHDQKPo3rVgpCSnNVibC6fWhRp4poNy3bJV/OyrYogzrZgZxxpM6HOxxLSqbx8YvGcrHGHx3kCjHkDXIsgJJjV1U9xgweY6CwmqmAL4LXx5fF9RpTrz/1CgBJMV0qcCZfcnXLzLPyBjAvvs+Gvyixpnn2iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D8hah39t; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d476d7972aso50893991fa.1
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 17:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712534676; x=1713139476; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5fggAFWGtjVvdqtakB0C83EFk680HhcCQBgjQ4syqX4=;
        b=D8hah39t3me/eolUfdcYzoYDSrXHDn48l1UF0m2cDlEMLeItwpDKID8OyM9A1mDxWq
         YqJ9IhI2jEGWpdguT50zntSydCeM9YwF/TpAULZJ4T0wcd13+n0unuuDt1FwEPfnhodk
         Dq+6brtcpORv77/GrPd34EqJ6tr28Yy+CpIOvf0CRjE3b2GdhOOEnQXSzULbur/zqck8
         FFStulYg2SkFyX1lvNFbZq/tF7ezzJH+0daIgD/CHL8jpxnfqzgjgMbztKssctD6FG4u
         NzHSJcWOUahQSwjse6vXIcYDYiT8D3EBphvXhyfaXpIXABB7hbktP1A4sisuYOyagGPw
         ao6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712534676; x=1713139476;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5fggAFWGtjVvdqtakB0C83EFk680HhcCQBgjQ4syqX4=;
        b=u/J8U9ljRDbh0NhUYZ8P0VouuDKTbwU0en+UxgOe5tk8aoBe9PTDakjeD9DoDzLd0k
         Kpjs/Z2aXuifMTDg6+/xU100zDNK9RpMwT1zlvHwCCdECt+o781Dewdd3Ug2DZxYCppf
         Wdze6bRoDp3t0W7A2wFwtXM4l7mrrkbUC5FBdaILD28P6TnH6REEUODzF+5hShNY5dnB
         uCG1SQ+kIhrNSl79pI/7YT8jvddzjzfYlnq+/+QFBGyZlBgC9duoxK1XSCKt63rQ+MGl
         FbbbMdY3EXwX/eToEXgajKbSx5xxZlQRE2+HL0hMWVjz7nYNMCaNEUYW2FzErjj5Lugt
         E/mQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmrVVYHVBK/pyDf8R9R7b8PaPrmt0jfE5AP99afg7qqcijqAxsYVgltY6UVeMVLEo9l3PcJ4Xsdrf5DUFoPy1atSlQbiBL4Uo9mQ==
X-Gm-Message-State: AOJu0YxBl+rXKeRFgGLHO+kluKtsJLmdt2yO4F/d35ckMF2yt4Mai16V
	prWTdACtGJd1KahIdsBzRWsMwfN4FR9MnpeXutIZ+kAO1AyGv28IgwPjmZMDtGM=
X-Google-Smtp-Source: AGHT+IEYyEqfmWIUKG2Y+ruPQ9Io2nHHG5li13pYUOchjuJ8qo3zDn3ISkVLwm5t55YYTxTWAvHfSA==
X-Received: by 2002:a2e:8557:0:b0:2d4:69bd:77b2 with SMTP id u23-20020a2e8557000000b002d469bd77b2mr5818267ljj.36.1712534676623;
        Sun, 07 Apr 2024 17:04:36 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e86c9000000b002d2191e20e1sm947077ljj.92.2024.04.07.17.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 17:04:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 08 Apr 2024 03:04:34 +0300
Subject: [PATCH v4 4/4] arm64: dts: qcom: msm8996: drop source clock
 entries from the UFS node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240408-msm8996-fix-ufs-v4-4-ee1a28bf8579@linaro.org>
References: <20240408-msm8996-fix-ufs-v4-0-ee1a28bf8579@linaro.org>
In-Reply-To: <20240408-msm8996-fix-ufs-v4-0-ee1a28bf8579@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 "James E.J. Bottomley" <jejb@linux.ibm.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Nitin Rawat <quic_nitirawa@quicinc.com>, Can Guo <quic_cang@quicinc.com>, 
 Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1595;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=nAYKKMjqM3Kb8RFCha5OI1S6EWj+PTGtIqzAtlEkxmQ=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ5qwyYTVklLe1943zd6sOMNEMdP4517zT+lm7tall/p/c
 nx5KqfayWjMwsDIxSArpsjiU9AyNWZTctiHHVPrYQaxMoFMYeDiFICJOP9j/6clU7YoVvTI7sIw
 tT3VKpG/M+NVbm5sE7p+cQ/3NJulTcKGy5pmhn8RDbgo/rrTcXvjjbokFuWennMTF3xsXpah2L9
 VZ1HwlZI09mM3WY8F/aiIn7OjMuMJyxFRr+rzdQWMD+MesmZ5HePy9y9njNkxmeW9nvWXRRd9mw
 5ul1or1Wwcwnf6G9/eRN0wJvY105/qOC5r3MiRly8dte9oWYVD5PM/hfuezj1360tAoGhvh+kBk
 /d73k6vOj21fl1ke0/G5ofWvIa7bTpn+rRfjo39q3ujVdLp2IPORi/9J8J3GpMYmOw6iuy/PhSK
 y9srcmWj1z854TxpcXeHyjYfgS5LJ4GVrw2N8t5vtngDAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

There is no need to mention and/or to touch in any way the intermediate
(source) clocks. Drop them from MSM8996 UFSHCD schema, making it follow
the example lead by all other platforms.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index da7f599bd2a5..708f797f1b44 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2047,24 +2047,20 @@ ufshc: ufshc@624000 {
 			power-domains = <&gcc UFS_GDSC>;
 
 			clock-names =
-				"core_clk_src",
 				"core_clk",
 				"bus_clk",
 				"bus_aggr_clk",
 				"iface_clk",
-				"core_clk_unipro_src",
 				"core_clk_unipro",
 				"core_clk_ice",
 				"ref_clk",
 				"tx_lane0_sync_clk",
 				"rx_lane0_sync_clk";
 			clocks =
-				<&gcc UFS_AXI_CLK_SRC>,
 				<&gcc GCC_UFS_AXI_CLK>,
 				<&gcc GCC_SYS_NOC_UFS_AXI_CLK>,
 				<&gcc GCC_AGGRE2_UFS_AXI_CLK>,
 				<&gcc GCC_UFS_AHB_CLK>,
-				<&gcc UFS_ICE_CORE_CLK_SRC>,
 				<&gcc GCC_UFS_UNIPRO_CORE_CLK>,
 				<&gcc GCC_UFS_ICE_CORE_CLK>,
 				<&rpmcc RPM_SMD_LN_BB_CLK>,
@@ -2072,8 +2068,6 @@ ufshc: ufshc@624000 {
 				<&gcc GCC_UFS_RX_SYMBOL_0_CLK>;
 			freq-table-hz =
 				<100000000 200000000>,
-				<100000000 200000000>,
-				<0 0>,
 				<0 0>,
 				<0 0>,
 				<0 0>,

-- 
2.39.2


