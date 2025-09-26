Return-Path: <devicetree+bounces-221723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 321E7BA25E8
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 06:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF6F22A587D
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 04:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899F326D4C4;
	Fri, 26 Sep 2025 04:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XWdO75of"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FFA1534EC
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758859828; cv=none; b=pcQ1jXVEQh86hIHg55g2RI9RFJslDk5x4cfIx5oSLbzSXNsDCWEB/KZMHyX3rKPfiMlsbOpChc6YcCdiK8avqvPfK3ITNuZylx93H7nMuroyfJhIEZ5+bMHZP979ZirAo3eOwTGcx3TIntA6J+OIq4jfzIYOmzr52lya5qSj4bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758859828; c=relaxed/simple;
	bh=yzczHhkeSpEdjWbQI+EgGiX8wxKMnYTmSWUOCcyMY9I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Ahk6XjdwVKhSRQOT9CeCANlmH6wepxCdiZu47HvlihIpsmAbEImRb6ytfm9lhi6jprFQSPk5tnBPL5A2J7fKOiv5K7+KNt9yTloBeOP5L14YbgtxmQh+KDLFK0eJv5xq0GoGKLJK7Mccoi1MjQydAWYSDS5VVocQ/3jmo2DPLic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XWdO75of; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPYSg011327
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:10:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=fVb+AbPCutZRLVQIm9bnMr
	NnzFAmWf0vDFzFMdHcE6I=; b=XWdO75of1T1SQhThPq8lepw9CkIrWTwFTgxeyH
	kYQCHJl+lKBlHzUs3YprGJRMfpKaZygkqM/bc/EBz2TJQjGum23I20aeum02g4pE
	usYdD8LkJG2EikUmcSQRGYIqvtGXDJSS2rKFIjVisC5/M6NgVBVQKz61HjRjnP+2
	K1QE2kD/O3ywEeVTfZ5rmuOcztPpnZW+ylxXglgch3PeI5Stk7oZVw0PCWHzxVwr
	erMXRUOH1gHtXJ2l2yPspF4MppK6HeyxDCL3ZmABwTWe61Z+psngx0l7C3jKKHvI
	B8Gp+hWEfNxeVnYvgauwMzl/3alb/IbOZJYkJg5l6HLGJFAQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q1bf9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:10:26 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eaeba9abaso2690780a91.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:10:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758859825; x=1759464625;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fVb+AbPCutZRLVQIm9bnMrNnzFAmWf0vDFzFMdHcE6I=;
        b=iK+wGDNgyySYZXHn0MhRl8uVc/MDqEuqxWsEfw3JYNfL8mDzOYnoli5Z4pQS34JxJn
         UwJE2rBGT2GfiQr3ruJEGNcOiZmHY7+uqZrVNSOKjz9HC+8mp929OJJiOGFqr3XJtvY5
         SvFHECO1WWMYkjszvhVortz7eXNpcQOcmsysrF6VEiJiverJ1liDvJJZd6ClmyNZq1X/
         QatejyD3w8XSnsrPqf7WB+wFor4r/3+GFPjrJmOHDtbdO/JDrntqYu4iTUxlptttMZ4B
         p9eQE5qJEUWKdwCITDeHONuHC1qZosF2+HzDgQoXhM9wiWkdSmmzde2yFk/hrMQsg6/L
         cSig==
X-Forwarded-Encrypted: i=1; AJvYcCWS0RT4W96I+M03sxCWABp7kmtE3OcS/ypy2FV4inRbG4aRsd+tWUPk7Oy7BlZFh9L6knbXsYCuNAUz@vger.kernel.org
X-Gm-Message-State: AOJu0YyUC8fLVcN0fJe2Cevk4D4+tf3L+CXqTYiCrMMrIt3vNSOUaq21
	mIgF3i5FyEjjZppSB0w196vgx5kgHFcXLGEV/6EnTb5ceL9fVuvYakCfopF+hvN6npFNUjBEryz
	EN5zuPvgNX88IctG1zC0SKwwIeMm+w8xIryeu45Dxa/ioSJUvrTxbEXY/lFGxZSiq
X-Gm-Gg: ASbGnctL5RXCvpJjlfubM7YJjfiHpiZ3aPZDewTmoK1tIIjLKeTwL/q3ASblmnLZcLk
	yAl1edxlveRxmatYVUc4phxPjQ4DCHJbOTJH9gj6xpfA91jcxX68LkhKJLwjZ9J4EBaI/YqhjxX
	KarMzKB633Tv35uPYAOlBTfjJowJSjscveX+hbWjVZt6347zy5O/CgfGgPmPa6K2qNRTt29q5nL
	e1WgOtx//lnd90NdeXw3onzq+1p+jOCHVxqtzGoNX3uRBckaOYJ2Y8KA3WJulGWHs6m0BMZRQrM
	76NPR5RxlfjBGt/qvW4EvNsCQcqzmc04QQKduHdsao4gse03VmEVAfIfbLKpNQi/NW5ncBeogw=
	=
X-Received: by 2002:a17:90b:3ecd:b0:332:3d8c:eca9 with SMTP id 98e67ed59e1d1-3342a306b4cmr8030210a91.33.1758859825195;
        Thu, 25 Sep 2025 21:10:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFH2pTc5OfdrAzvz37KW4lSHAkarGZabrpZ1vlaHE8LgJgWIcJCAKIAO9O5nvxCixAj4XdS/A==
X-Received: by 2002:a17:90b:3ecd:b0:332:3d8c:eca9 with SMTP id 98e67ed59e1d1-3342a306b4cmr8030166a91.33.1758859824749;
        Thu, 25 Sep 2025 21:10:24 -0700 (PDT)
Received: from cbsp-sz01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341bda15a6sm7455239a91.10.2025.09.25.21.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 21:10:24 -0700 (PDT)
From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 12:09:27 +0800
Subject: [PATCH] arm64: dts: qcom: qcs8300: pmic: Remove 'allow-set-time'
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-remove-rtc-allow-set-time-v1-1-76895a666939@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPcR1mgC/y2NQQrCMBBFrxJm7UCsVEyvIl0kcaIDTaKTWAuld
 zdYl+/Df2+FQsJUYFArCM1cOKcGx4MC/7DpTsi3xtDprtemO6NQzDOhVI92mvIHC1WsHAlDcMG
 aizYn7aD9n0KBl5/7Ou4s9Hq3RN1HcLYQ+hwj10ElWir+Mz2M2/YFV98DKZwAAAA=
X-Change-ID: 20250926-remove-rtc-allow-set-time-ffbfa980930b
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>,
        Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758859820; l=1003;
 i=tingguo.cheng@oss.qualcomm.com; s=20240917; h=from:subject:message-id;
 bh=yzczHhkeSpEdjWbQI+EgGiX8wxKMnYTmSWUOCcyMY9I=;
 b=5ggYwmxE3npQ/BeDf7eaVNnjMHQTZenmKPEJNFWKS6JS6SUkXId5LcUGOusHaxWTTShunLlTU
 9nWCTfmD7HVC6tjNQnmF6LuJEg0OdqQ0Z2iB8HOcGt3yJrOz8bJQpGv
X-Developer-Key: i=tingguo.cheng@oss.qualcomm.com; a=ed25519;
 pk=PiFYQPN5GCP7O6SA43tuKfHAbl9DewSKOuQA/GiHQrI=
X-Proofpoint-ORIG-GUID: L4yVZtoRlgtoxzsZp7KxnTerYCCrMcoI
X-Proofpoint-GUID: L4yVZtoRlgtoxzsZp7KxnTerYCCrMcoI
X-Authority-Analysis: v=2.4 cv=aZhsXBot c=1 sm=1 tr=0 ts=68d61232 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=qwOtTkZhaZOgDaMejNkA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX2lJI+vFyS/l3
 2A5OasOC6weL/fpQC0iTIdpEeMtxUgQ5teAY5tIUuTOHN7VnfqQ0JAw4NfZ66CXBJ6wgiBoFs2l
 k+YARx5ii5DtMn9tp0NkHJTRbk6GdcwMLcXELyXrxJAK7liSw1B2eLajrppwtA1+aQTOSqAElkm
 0Tvy4LH404fv71Ls/fxbixAM00v2Add1n5o0lbw3ScEW1/9Qf1s3RGOdlrZJXh7q0rSNRMTetNh
 xfwGegyeOvSwiO0Fuugl+NwZvS/sExllVUZ0tBDD7BB1G9w8l/vxs+cS1lKzV3p3Ulto5KkZAOd
 ZpimUouFjaAsj/iv3qaeo/uKc9UsL5vI67VTV8a2bZ534qTYwcOCjXtyTvM1k1iqO5NFi1t2+Tf
 LjW6Ys5ggyyWGGdd4zKU+B4E84Mqvw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

Remove the 'allow-set-time' property from the rtc node because APPS
is prohibited from setting the hardware RTC time.

Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi b/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi
index a94b0bfa98dc39e41d1a0de3373753953609b95c..e990d7367719beaa9e0cea87d9c183ae18c3ebc8 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi
@@ -18,7 +18,6 @@ pmm8620au_0_rtc: rtc@6100 {
 			reg = <0x6100>, <0x6200>;
 			reg-names = "rtc", "alarm";
 			interrupts = <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;
-			allow-set-time;
 		};
 
 		pmm8620au_0_gpios: gpio@8800 {

---
base-commit: ca9c6709e594e040535540a41b89baf6437672ba
change-id: 20250926-remove-rtc-allow-set-time-ffbfa980930b

Best regards,
-- 
Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>


