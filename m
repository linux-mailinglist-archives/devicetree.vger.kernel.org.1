Return-Path: <devicetree+bounces-158573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D752A674F2
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1530A162EFE
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8DE320C484;
	Tue, 18 Mar 2025 13:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EIt/uQwp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EAA20E319
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742304135; cv=none; b=pBIkNWBAUR1GVP+FHDaNgbgd4NRemzHRXT/SiE9bhccgOV18lRDsj8Ec+LjXUKVDYox2Y8yesRTjQYl1zzxMs15cdVXdr1lmj7Cxlv2c7qJ8VS4I/mbpfvMGKp2TeBQP4eDAZTBorszZ2A0XytIVr6rD7BiNWfALyi9E9WV5WWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742304135; c=relaxed/simple;
	bh=A5b+7PiOzdnEsoIXhJtEDtIF4/+zzwMq2jbAcRXdx6A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=clRtfiHsXZZLrOiuAFqBU2qq8YVMfmjE8DVIBaGR/G+vddLw3KVsj3xOTd9zbfNY2+P6BbFA+IJp54vehgE8vq62y4+Xe5pSHb7BFdWTDdUtk6S3XTIEmjBMgIx0m/jLIPnMz1Yp0TjYhdGhqq0eJoNYvvER+ES64io3PSBagMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EIt/uQwp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAqe9G010237
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	90Qa8a9JOpfX6xK3iRiQYBwU2Lz8sFA7p1khs43FFPw=; b=EIt/uQwplWImJTR8
	9zCTrhS/qn82m3ayFhZvwjwBOyGJllUs94349vVEZZ4WpiezGeTrlxwrgEhlUPI3
	uoHOiCUwLh7qOAJhRgLzJefe15yvBE7JAMfLUR5M6oQov8V7Do0lLgc1gD5WW8GJ
	44Srqgdv8zgxmKOq3LEaSnEybTtBZfDGLe41LTglVDxahqnO3ZFH5q+Jl2wsxQOo
	9lkx5FjbsD5TvIkr0HSmD637LXhLN6CEblgV8J87pskJT4OQXxZkyBRD3VKlrD6p
	JkJFF+XC6IgaDHJgUM9it2UXjKjR03ov2/b6UF/DakvjqKXqLyH46AGlltGkPoyj
	CWA5Ig==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exx32090-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4769273691dso119269571cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 06:22:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742304132; x=1742908932;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90Qa8a9JOpfX6xK3iRiQYBwU2Lz8sFA7p1khs43FFPw=;
        b=X6LjfOw0EDlRibG+kgq5slBBGl7AS3XOzToIRtwJSrGvj/Y1ht8LwG7vbiVmV1ay2k
         9mKDKlf5D/O85ZJ0kC/BNuFmJyWuViMCn4GWuSHLUwA1WfzQlyzrZAjzQ7s0G/Yrz4R7
         y5Orz1QRgKGjoxtwSkJUqBgIQcRz8a/ULlWNnx1iwQxhJHYPGIg5/F+9EUkJU4k2G8Ce
         jXNzvF/O1qcTvwfw+4bDbHbfPepT+Fs/OECBAE4UHEa0wftTN2C9jIQMxxdgk6BrzrR3
         8bJ0Xr5momrQuKmZu6bGZRfJNZ1WET4S5T1+/SYElC0oGvePza4LJx3e0cDiBu5ecNP2
         YVJw==
X-Forwarded-Encrypted: i=1; AJvYcCXKuQV7SFDd0FmQKiHfQ6zUiMOTkVRVU+9dY9n/O3SrgCJEmywjhFW1rm6s7eLig/2DaY/DeuT29v/y@vger.kernel.org
X-Gm-Message-State: AOJu0YznWnOabnmCS1b/S4PNoSkbli/yvDuJm881+YInlSPaGkzh5SSC
	MzUVtzkG+B5T9nyPMfkmmefg+tbw0GV5DMYBYWodp0pwSnQjaCFEuoqFHKRscGsGV5lX6F9BXhB
	M4uNFXR4boghoWlCIzge8DSgmKVTzic613lAr0QJRUG/zbxhPwQlCqffIIatO
X-Gm-Gg: ASbGncsji2x55XCt7FzLwC+JzFvv1AUKd5Zmgi3V+K7yVykqSOU4KH+mUI0Of3Rie5G
	M+0H9b1mnLQvCrONqzKEvCw5tx7b9PPEpTX7G27bdTzKYC40/N85+ncM1izqzXgdsFRe1cN42DM
	pxYpTU+glmWZDxDyNTf+72SWfcWzDpx/4pMagY854h7O5/AO/ZYVkk7zfk4wI3O5i8p2n0q0JkX
	HLVJWOiKx8xwcM4GALrH2t+YlAYKMhVW/Y5NUDoMUnqh83gZcFoDOlORel+6FqINtAI3v6c/k19
	/UEopDb/tI35SASPZZml9cI3up/ALGOLd6I2Rlci1fAR3BUh2taMIk+JFfLqGcbb6129JutyUzD
	7rsPJe79zaETfmBeHkuVHBlvgpKRo
X-Received: by 2002:a05:622a:13ce:b0:476:a74d:f23b with SMTP id d75a77b69052e-476c81edf41mr217060201cf.48.1742304132079;
        Tue, 18 Mar 2025 06:22:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3cOhI/uaSCyn0dHPO8pflDCmqzgUPHvz/xK7Lgn/iw9/ohToEyaGvfEydfUSRss7Lc4O3yg==
X-Received: by 2002:a05:622a:13ce:b0:476:a74d:f23b with SMTP id d75a77b69052e-476c81edf41mr217059861cf.48.1742304131746;
        Tue, 18 Mar 2025 06:22:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a79c4sm1664831e87.226.2025.03.18.06.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:22:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:21:59 +0200
Subject: [PATCH v2 06/10] ARM: dts: qcom: apq8064: add missing clocks to
 the timer node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-fix-nexus-4-v2-6-bcedd1406790@oss.qualcomm.com>
References: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
In-Reply-To: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=945;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=A5b+7PiOzdnEsoIXhJtEDtIF4/+zzwMq2jbAcRXdx6A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2XN1GNH7XEZ/cKYsIbOrr56agd3ol4ShkdTzA
 NU7LHgC1bGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9lzdQAKCRCLPIo+Aiko
 1QSVCACCx/SRir78Lqxpwe2gj/DnNHmZ78WE7r/CnzspxSjw6HD62EeTXRvoWunYl67EbK+lxae
 64Mnsdd3r+qo/eI9qE+skbsKEG32/VGJy+58d/98ZTbBcy923r08CiicvsR+kDNCcdNHobyjaI3
 u+qm3Utr1pOvTz+Lh0RrCNCd3Zb8wmb3Vmomvo9w341VTwIIG2PXGmLs7RBm1Ppm3uhUYhcYza1
 0r6Wd/Qgq8ripF/dL25lQlAAIFSPt/IJzptrL24gjyLddCjdBadIdNqM78ErystrwTtLVpfSffV
 WUWaN337ADz2EGHX3c7Pxfz3ePYNK2SHrpSHBmbjiW4RzhUM
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=b+uy4sGx c=1 sm=1 tr=0 ts=67d97385 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=ZANWpg7mVWKCtM2BIo8A:9 a=QEXdDO2ut3YA:10 a=mjqSHpV9Z7kWhFShES6D:22
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: oWUmobA7rz3JbcbMpXsY4VLqNKu_MYxt
X-Proofpoint-GUID: oWUmobA7rz3JbcbMpXsY4VLqNKu_MYxt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 bulkscore=0 clxscore=1015 mlxlogscore=832 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180099

In order to fix DT schema warning and describe hardware properly, add
missing sleep clock to the timer node.

Fixes: f335b8af4fd5 ("ARM: dts: qcom: Add initial APQ8064 SoC and IFC6410 board device trees")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 5f1a6b4b764492486df1a2610979f56c0a37b64a..ba99e794dcd2236f65f2f3d8c49213cfdaee5f6e 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -326,6 +326,8 @@ timer@200a000 {
 				     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_EDGE_RISING)>;
 			reg = <0x0200a000 0x100>;
 			clock-frequency = <27000000>;
+			clocks = <&sleep_clk>;
+			clock-names = "sleep";
 			cpu-offset = <0x80000>;
 		};
 

-- 
2.39.5


