Return-Path: <devicetree+bounces-164940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EA4A82DF3
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 469AF885229
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 17:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEAB8279325;
	Wed,  9 Apr 2025 17:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VvUtVBGp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79D927780D
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 17:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744220917; cv=none; b=C+qyjScamYpL0lxksW9pZ77whWl/P3aoBpKeI68YeIwMqRT8ud4z4g0bq3tmNTYAQl9/tcNR7BLGaOLq5MCXEHOXqiOeMadHJkkIxeJq3vZYUJFyKt1MOxLK0jiUMgEZg0bxTKZvJSP7/oaXzyhu0Wul+rDRdgkivhhlsNBi7R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744220917; c=relaxed/simple;
	bh=7SaN6Q3/0/Lx+goxL9+yucCssKeR7G4gJ+8Fds6zJVg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J1YEKuC4ew987nToXSg3luGicbD5v7AJcDpWo2YYXaPTjZEDZUARQYtoQjiUzw2Dw66ZJcCh6zeYoCvM2mVFpYG4JU8wJuQFRicd2AjAIDi2XPvfOMRyZj7Qot4asVOLMKv4KUkJZvDJ8yazwArkXkS9J3J2xf4V/AkdwCGH+2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VvUtVBGp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HGWQn027532
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 17:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VagdqhLUqQ/cHTS3wCaLxpv5RxPWVf0KWqzjzsj4gTk=; b=VvUtVBGptRZErBVd
	8QANgRJCQNYcuAXAdwJDUKfBGephgEpA963ww4JlR+B3FBzaHpmhHNGBTNz96/ei
	EdCNiP8WCd8YOzxxCWNfkLrbVCBAbi8x9Pybt7oE/hT/DxeENB1pS9Jo76n7ST8b
	4mQcZpEb7UOUARmq2CFT+zAS8e4JdhKyLsKRphzhg7FoQSFlI1mATjf3up+WsStd
	unXkGp7A9bLo+pXwvH/2ZhthA7B+kHrUoPZMV7j8l4tLuBtBMCXwbrQAU3WZH6H4
	yyhDzs2iht09oZfJkRGfUvVpJkiPu5LSmvRukh0jpMfho9UEBHD1FmK4TL9ceZib
	+ExFDw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgmcad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 17:48:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2254e0b4b85so60405ad.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 10:48:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744220913; x=1744825713;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VagdqhLUqQ/cHTS3wCaLxpv5RxPWVf0KWqzjzsj4gTk=;
        b=TZufI62eOnvqct2AIIof5VUjQD0xCJkGu6dox6nzJKMGrA3guK/hYwwRlCmSlZsKrC
         DPjDIg9cSKMQYJs3CY1zSVgeIkPS+QRGfGxyqEoy8pSdkr2afEDzR1YxFnvYCrLui/F8
         OBxUFKhPKNd/4pfMthbWwrzriN8Nw6igYNgXuXtCkFRB56bMIk/h9jkWNhOYCuia39H5
         H+jDfsfS/lpYPuVG44W+IeAwGFMuHESTgNfRBTUWj29+oFQBrM5q1haoP+dMudW3MT1s
         tVEFFUb3sn+e4uxyOgTcWFZ2uHlROr2DAaJwxXpDQoQfr2lPEZXdybN6U0VbhOY6w/qE
         6iRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs9b1VfPfN5nr8uHXnR/oF427UwtMMd0ZTi0hMpdNh52zkp5/ywikzW4jxlkj4w3/DCjEMUUfbRByw@vger.kernel.org
X-Gm-Message-State: AOJu0YxgKenAwqvbYS76y/HrgXTCf06ocvqFKbi58XKGJn21o4ft2mRI
	5WIR+vprJ9kAN7EZs2fCA8myE3hMd5Uzlr6TX419+8VS+EPYG1AbGFu8hHLHvirOgRXwsiJFH/x
	m4WUoWF3vm0msLhwrcIK5138wYxKUFJyx2tsx3iFZ+s9u3O5i69632mWzcI4M
X-Gm-Gg: ASbGncu2GxOXyX614c9G8qUuWMOth2s+8naxHMwOMg2sf7fKS2oqrKCiUrACGAiaceH
	wZt1oeKyuTpFzrpDJj+y+pFfWZnHaFnBzc4e4zaZlDjALOZ1o1MinLRew10r5NtHglN/ZZQJnxY
	CiZEQv5ni9C2Z80ZaFLBPZyTV4OYZFDIRk97YW5x6Ud97aECxnTiM8x6+AGDG/dGnoatD1c1v8R
	aScJ/ycMCwPkl4eN9XLmzuvKssbPq6h+/4nGeQSLCmA6CKogFO/OHorUKpgt2rm1U6ul2S79q6F
	Mthhg/Heqb3kb5/ZQwByTcbKpRlgkhGoMI8Zc84ENal01uIQfjDLe/NDz3DcQ0s2RHQ=
X-Received: by 2002:a17:903:90d:b0:224:7a4:b31 with SMTP id d9443c01a7336-22acfe92581mr4893765ad.6.1744220913240;
        Wed, 09 Apr 2025 10:48:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsG92ws/nA3ox5Fmzps6PGoWhZkEoMYDBBjXWPelVVnEe90k6uZhmPJS67No7KaKKDplowIQ==
X-Received: by 2002:a17:903:90d:b0:224:7a4:b31 with SMTP id d9443c01a7336-22acfe92581mr4893535ad.6.1744220912893;
        Wed, 09 Apr 2025 10:48:32 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97a1bsm14964005ad.148.2025.04.09.10.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 10:48:32 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Wed, 09 Apr 2025 10:48:16 -0700
Subject: [PATCH v4 05/10] phy: qcom: Update description for QCOM based
 eUSB2 repeater
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250409-sm8750_usb_master-v4-5-6ec621c98be6@oss.qualcomm.com>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
In-Reply-To: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744220903; l=1432;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=4Pr6BN52SExwCz3h8ri0CiEwnp4b1SW1BiobceI7Ft8=;
 b=i23jhzeTsiK6PFNrYUYQ3S3HJO3uyNXokW2Ua3kOkY4OMdtdhsrt5b9CWvZvlUzzMpMndpmv5
 GwelesiEFTmDYEuIhlfB//FgZH094PA+hyNHpjmeAVxwODgJLkQiumU
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f6b2f2 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=2IHzoM5ujN45o2WKKn0A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: vttfd6VmAZCmq01CPur3HOXpoS-_Wz2e
X-Proofpoint-GUID: vttfd6VmAZCmq01CPur3HOXpoS-_Wz2e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=851 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090116

From: Wesley Cheng <quic_wcheng@quicinc.com>

The eUSB2 repeater that exists in the QCOM PMICs are utilized for several
different eUSB2 PHY vendors, such as M31 or Synopsys.  Hence, the wording
needs to be updated to remove associations to a specific vendor.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index c1e0a11ddd76c2056eb2e72a287ece4def2cf5d8..3cfb4c9d3d10dce49bb93b241f9b56c75b934601 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -135,12 +135,12 @@ config PHY_QCOM_SNPS_EUSB2
 	  on Qualcomm SOCs.
 
 config PHY_QCOM_EUSB2_REPEATER
-	tristate "Qualcomm SNPS eUSB2 Repeater Driver"
+	tristate "Qualcomm PMIC eUSB2 Repeater Driver"
 	depends on OF && (ARCH_QCOM || COMPILE_TEST)
 	select GENERIC_PHY
 	help
-	  Enable support for the USB high-speed SNPS eUSB2 repeater on Qualcomm
-	  PMICs. The repeater is paired with a Synopsys eUSB2 Phy
+	  Enable support for the USB high-speed eUSB2 repeater on Qualcomm
+	  PMICs. The repeater can be paired with a Synopsys or M31 eUSB2 Phy
 	  on Qualcomm SOCs.
 
 config PHY_QCOM_M31_USB

-- 
2.48.1


