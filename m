Return-Path: <devicetree+bounces-249490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70521CDC0F3
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:55:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 561743080666
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE4531B82B;
	Wed, 24 Dec 2025 10:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XdwDREM+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cjWA56Xc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9194F31AA9F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766573636; cv=none; b=t8At+sc13idBlnMxs1YeFUwc0QdyCOIbnpJwbHvF3iv0WDyyK++3Nfh73rnHIxlrjWaet2whBbOR9i7wQgWr5itpMMzLIM8sqUnj42XyeiAThg6wKOGFi5o01xwWew6xUEsXgKGBk+woSi4Z2p+jFJInnyi5FOVuZrBX0Imgz2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766573636; c=relaxed/simple;
	bh=cPDoEfxg759WqZGAjy7ePjMCwqTiwM28X7LtdMqCAP0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UpMIBAS4ZcUGIOdvkuJ9Z2Bxm0hijP4JTpjQobA48P+ld5t+/ooOtGhzsU0VUzMDrWqH9UXhtMxBcmT9Tw7tg97Axr2P3Komgt9I9Y5yFqaVMNFptG6fmNwIYTNGERNPuqOVBp+50flsxf/+LJ6U9FMKJGPo9xInpowkAx7IH3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XdwDREM+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cjWA56Xc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO8Eh1r721977
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nWatTeODsCj9eCOPh6s/ONx5sdA0VSf8P0xfOcNmuC8=; b=XdwDREM+2/o3Gg8k
	tTVMFQsmDRiKhkn6SKQUHPmxHw+ZpQoZrLFzilhKiHcIMbOQA938/kH4o4HHf3rq
	RyT03iQlxDOvXRJBvP9jg+Lj5zcdEwqGOAxMUuol4my4h00PitymU+5aPRWeZwCJ
	xvYCBI0WIJzx8tYiMQNi1h6TyP8d6PkrdkRo9cW8Z2tKI+w+zGvqM5b6bP+ooDvK
	Qm/nnOF/yQe/4qV8aSvhnQT72vduYDi7LMVyucV9EBZe6bakSjZCOOEEjyZF9BuD
	PPB+nAEN+oXvCCeQ+TzUwKA3OUbuIJdEddnOGXSp02ALCeCgWKTV8duiePfQrUP3
	4p4Wwg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b81mta0ep-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1dea13d34so132324461cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573633; x=1767178433; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nWatTeODsCj9eCOPh6s/ONx5sdA0VSf8P0xfOcNmuC8=;
        b=cjWA56XcKmAis6U5gVKd4Z/UqJMpwC2B4x3V8iQ/AH/Db9RqLnKGDIhqQkDQ/DIXRr
         nqYLLQFPK9q5E1dW7Gw/s/MoxMGina6i7Bw4ILRRiKtzncZqNjM3r8yewFBsMINSIAhA
         kT1C3pFUmMS9/FDPk7aobngsFPMuCe+sILiRa/r8MQODuVlcBGIF2Od6JZqgzFyCFDBP
         b90B4vdEYh10xK7cdKTZuA0fugixWEgMiRvv+fnbS+E9sbgl/z2VicBQcrvSDF5zPqyF
         kUTUHYlSqwSh/Zzm8JdGZCUmXGfWY4GFcQ1q/E+wuzSM6P24ZV/N1NjFuRyss6nbzgcd
         tfMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573633; x=1767178433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nWatTeODsCj9eCOPh6s/ONx5sdA0VSf8P0xfOcNmuC8=;
        b=s265piUhUvf5dMphfyhLVTSxUDZ79I43F5y6IJbbEFBmh/cLeLlmMLIHVBszLi/ZfD
         /s8VdsYPCVHWDMGKNq6aULTw3X9fLFuSsElB4bAeYIU7ZxgV7JO7YaPkPN/YFaSUCJ9Z
         KN7r/lH1ljL/Xv5W05w3BzCQqE7AanJop/CIAnry45Qkrva2bPHST523+WxKHFU6PUVD
         mLxF9MDK/iUhxCnTaYrgTcSqto1ZkAh7o8wH16tsgW+4A4SYHIghPixAgsREDVaTjO/j
         wrFAPaiAEc3gtPHJhFKznvioZoulLLuuqstApS8smz7sGgPeiQlmw2CvPUnE8Gy34O3O
         q7Eg==
X-Forwarded-Encrypted: i=1; AJvYcCXFRZd4jvtFaXgSdN/8lsHakgOBrxLeImTbc49IR3oxvJOaKbJ5jZLJAjmJIeGK5tVWPDIJw2kDDvPt@vger.kernel.org
X-Gm-Message-State: AOJu0YwzjHRgjpwxLv4F8qJD2nHL4LInQ7nZXsNxEpqP1H6Wuq6c2d2p
	0JiX/cw5tq8MPsSsQU6A6PsEJNN51l78LsY7DoCYrKjsYtG6KPiB6yq8AK0Wvu/muZO77eY48qG
	Lur/RHVG26QX5VE9qnS6jZnQK9pn2t7X2iwYkyEp7ke2NRDmh3eaGsn00POPZYm98ZHbCpgOV
X-Gm-Gg: AY/fxX5mU++lnzvQPSuuv9QMQg9LxNsfFlGvoGAAkD+R5Ljbuj2Xfb4BpbPPlNk6PL3
	zZnARr90ocqrf7XcUUSVjH7drTw3j/PEjhrmJmTjcm4H6wSHUsEHucvjrjcBq4t2qaKlNYmDHxr
	w3ggWyQksMVsc6NEShmrVNuNEwr7bS1r4YQx4XM42I9wj3t1oJu13NalCn64zqIxOOLnD4mzBL3
	Yu8hnLrxDfZ1V5VkGjjDwY74D3BaGZHWFYQyzPg7t83S4ObWu5sfaWVrF1rhpGz+igPqVawL81v
	dSIW2T/Y4RgYPjfWOUr13xT3sLIJfVgUUf4germ3rWahoX92LZgbBcrzOiob2u2pqJvnYrmk2Un
	JxxssPkL5qWZ0Nug=
X-Received: by 2002:a05:622a:5912:b0:4f1:c6b9:b1ec with SMTP id d75a77b69052e-4f4abcf4bc6mr238685101cf.28.1766573632434;
        Wed, 24 Dec 2025 02:53:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeAVgBMuu8KrPTONUD5DkcqKJ9tIQm6gGeqTc0K514xaUnwQGYKjP7mhCnGalBfQmljdi2Nw==
X-Received: by 2002:a05:622a:5912:b0:4f1:c6b9:b1ec with SMTP id d75a77b69052e-4f4abcf4bc6mr238684801cf.28.1766573631897;
        Wed, 24 Dec 2025 02:53:51 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab86cesm1737562566b.19.2025.12.24.02.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:53:51 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:53:29 +0200
Subject: [PATCH RESEND v5 3/3] arm64: dts: qcom: x1e80100: Add missing TCSR
 ref clock to the DP PHYs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-phy-qcom-edp-add-missing-refclk-v5-3-3f45d349b5ac@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        stable@vger.kernel.org
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1831;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=5Xibk6A4j1wuysj5ojbntlDFb4byMzXKcnUoNHObZjw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8Y3/Vr6IAzv66eye1vfvavk7UaaAxU715ACh
 aUi2iBnE5yJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvGNwAKCRAbX0TJAJUV
 VhfnD/48ar5bzCyWjZ1O4avupmAUt4y+SBAWSMARAYBwa/0snPNJOaRs1Jhpe7JRDUUs75YwrBZ
 a5qA4nueyUSSvkvKbrZWuDAqexs/fp13+SuXiMdvTdT+KWxq9el2tXlxm8eso35sLTmYUitMtvt
 WFaGCvpSMfY7cb5qohomBJsdkuXozZ8tH2bCmEOpazZfLZVVnhuj9fRJyXSihKI6NG28UekUy1D
 H5G0dEaJfE2JKKBvZbebvOF8wbUJBVYg8QX1udtWN7g5Xau/H2scolUMj4yV/P46uUIiFEKOoh9
 ou0gvy4Melg9qcMaKj9gLbBQNvqRMFKhiHpjO1X1y9xMvF8iYbVJFiKSzS+opX19E1ieUip7Sai
 FOyLUL6O4ba++eWEDYYhQozltPmJXynFVKXMb6EA3+KbygzLDV10JJe8IlBXuyDD4EkpZ5Z6Ltf
 B6g63aPt7WUbBstP4b/4L8WhIagfH7qjSYrswK19qDrmVZaVOpJmHGFSJT/bpNKalT/jyu0oMWt
 IIyEaHkSwm/qZVFjBgUl3BbBxpYvHa4UbRHRwSPgd0RS/k+1AJIdE1smJeFfvsyAzZZYN/b1eaw
 vqWbrbgiSXXIQTUb0bwbgh2ieL3GB1//+9LhZ+3XUhpY32NvQQ9Na7jtLSPcOgjvTPMigBbZ3RS
 4RLICiLwUSzGpng==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=e/ILiKp/ c=1 sm=1 tr=0 ts=694bc641 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=7z7RlTHwfbxsG2Z0DJwA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: HZDvdnhcBlJpuLtwO1BLywDl7GndofHW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NCBTYWx0ZWRfX093fTvZK5xeV
 sePXUzQjC1/bk6ADHgCcRCZxDiCHUKJuT44gdC/NWjAFzfRqjX8BCZuAuFRISXtZ/q6sqsItsm/
 xxcds0g5uyysFWQOCkeb1/0+Ix75EebgoX2JPyOGWbV+NkkL1im53Z7XldWsXZsoBCVGt5Kc5F4
 9OTtGWM9Hq65hGvB4Cs++LposFeqDCg3fpcSRa4qDlhQsJJP02Cnvwxh43ibMdRQb3S0JgAiy/H
 qFxFOi4I56YlOyKMfgdOtqdBwOa7C6kclU5FGqm/nO9mmdFpeMw3KrvCcJRPnwapZXgQNj4aAfF
 Jpwmg/4DJSjBImcJZwE5Zm9keJMLt/+2Na4+L+79xPUTk6d+MjWk90nDedJ+S4h7f84vwzpxyxk
 6CwoE9mPfb5CVU5/xIlurzlz4jYFuHfe4WQJRwSYH3gvRX32MRjK87CpMQ1O2uDyKntTh6TvAo1
 FngpleFNP0yLsXfFmww==
X-Proofpoint-ORIG-GUID: HZDvdnhcBlJpuLtwO1BLywDl7GndofHW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240094

From: Abel Vesa <abel.vesa@linaro.org>

The DP PHYs on X1E80100 need the ref clock which is provided by the
TCSR CC.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So lets attach it to each of the DP PHYs in order to do that.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20..59603616a3c2 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -5896,9 +5896,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5916,9 +5918,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.48.1


