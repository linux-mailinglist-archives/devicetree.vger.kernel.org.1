Return-Path: <devicetree+bounces-158576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DEAA674F1
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:24:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D6777ABF59
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC57620F08E;
	Tue, 18 Mar 2025 13:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LqcDrKJW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9132620D514
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742304163; cv=none; b=rVeJ1gfB6zCIuBAzPxs6zJF9qq7c/HfM8niSRx78+493d/bQBjlDbw+TTIV2zRZeEmuovpBR5DBV8mKohWQ0fewDxhrd4HN+TQvDai0J9onNXB1Yz+ywni7/Jj4Y6b/RzVi/th9nHfDY1G7OTwZkMT/ZJr/hlv0gQcYEytzFsDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742304163; c=relaxed/simple;
	bh=rGO8ljRJj2lTMiYab3pEL79ThIPqrqw2LC84J1Wlwas=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OmWeowYcEiVmK+u+Wq6Z6+Eip+Q73seTrW8X0lR+kTNvxeeB+rSMehxECoiehJe5SNwZD3IGJcsoTJQz+Pfuj4X3eAZ+gIQp7YUItoUDUPqLAe5bswP+Km6y41DtV0/whcUDdAkrhx0eiUXsHgKes2kx+8BnoblyQydjUhc7fic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LqcDrKJW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IBfjro002336
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L8yxRMa5j4oUptRKWHe6HWZoaMIYXuESwxb2I3uAvtU=; b=LqcDrKJWDWR39x5w
	dVWo3BD5DFu3bY8ZR9VASJLckV5qn4RXK3z4sIA1mJ06roz1cXizmhhClfLVj1+Q
	VdNGhjQ/zXoMEBHIqAc1PFZ23YULE9Cr3ztRPcy+82NQ31acR64XepBBwS2bFFVC
	QJc0dGbMmixU+54RDONmm81JCebs+8n75f3kQ0TKJOkvZoFa7rx4nkE14VSDSkRE
	gJGugN/R9k7ba61Km/ivRAUE7SavwcYjL8dnw2Ij4olj2Xn1rxit/cZ0muM6eIVr
	SOBodE/Lqyiv/nMFzA433N8szA1u8Ip3V3qbmIp8xKYlipCvltL8xhR67TpS7K/h
	yn0aVw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45f010htq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476aa099fb3so186954541cf.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 06:22:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742304140; x=1742908940;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8yxRMa5j4oUptRKWHe6HWZoaMIYXuESwxb2I3uAvtU=;
        b=PcPEpk+nFQijRmgMEG7czq0/5m3lc+hKAVOc5lnGYHgRmKwUisknSxe7HBjsxx7moN
         9ThEhVKszoYPip7KBtFm3j5azQpiDFsEJ1/4b/lxDWVYIcOhktvEPiUsNQjiMS+GJSqU
         dHAxRrY6r7ccGmgXgOCN5Y88RqyDlPJMGGlTBXrIhSLKc3P0kQ/EgXnQklExUET+Z/Tw
         Yr1Chr9aRdpXe2uHyTdvYaoxWV9hlpmIkyJocutuuPNFxS38aEHXkOya2uddZaJvWBEE
         4fLyeuHUWr8juH/wkZj6xfWKHYK++SuSYtCJHsbGfUO6AObvbPvxEO5jvflEzpy0EwZ0
         Kr7w==
X-Forwarded-Encrypted: i=1; AJvYcCUH8c4Vylp+6W0M9gTed8X/JMwnGtoyRAlxOV4/dHQfQf3hQmmspNIXCRtyd50ZvuXKeDzKevP7miJL@vger.kernel.org
X-Gm-Message-State: AOJu0YwcKNEXRbO9+DIiiOlgkdocACgLG6/DkXalmSIPRgHIZZqhomSm
	8/iHyKvdzMSfTg4RzNfk3C0i13qHDjZr9ph0Td9rP2koQrumRkpBOMMyvpXX4xraSw2COavC5qs
	wYefzk1n1j2rjjakUZTcTm3ftJnEdubpRs7YcUnkDhhOo61PBTrEGNuC0/+wr
X-Gm-Gg: ASbGncumNdkWzEnHmyf0+7CNIQeqINkv1iSqCXD1IWzuhFmM4IqDB8NCcnVKzVONSFz
	dDMqI0igneWr6FXAw5cmL4FKcpUeQxnu1qwRN8TX3nogFSRlQUhO+Uxmws3N3s/OEW4CaKQuiwA
	wajuX81+ZAS4EyLNr9YregImjnCirdoneWVMhdWObEoDuBI9G1yFr6ZkaKINTPXqQc6lxr9WKz0
	aNdqVZ3SNbWjC2AZbfp/l4XIh00fbr+j8KMVBCx8SGT6CBxwpi04yWqdu3R+hFHqjlevmKFUAd6
	nHxLPSo2dulwC9YYWxJZ4/iZdnw6xzmyB38ahsejdRr+apYO49uJR1USWZ61/tyq8G3kItOMzz6
	Zd4CC6npZDbas+JffOI8go+kqcjPa
X-Received: by 2002:ac8:5802:0:b0:476:7e72:3538 with SMTP id d75a77b69052e-476c81d8e94mr316429261cf.50.1742304140074;
        Tue, 18 Mar 2025 06:22:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwyFkJjOgyoKomBt2wYBMfOH/z1hPsNpjFOhgy61zIEiVBQ6NRmiZvk/992/PdhTpr5TKEQQ==
X-Received: by 2002:ac8:5802:0:b0:476:7e72:3538 with SMTP id d75a77b69052e-476c81d8e94mr316428741cf.50.1742304139749;
        Tue, 18 Mar 2025 06:22:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a79c4sm1664831e87.226.2025.03.18.06.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:22:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:22:02 +0200
Subject: [PATCH v2 09/10] ARM: dts: qcom: apq8064: use new compatible for
 SPS SIC device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-fix-nexus-4-v2-9-bcedd1406790@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=918;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=rGO8ljRJj2lTMiYab3pEL79ThIPqrqw2LC84J1Wlwas=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2XN2VlgxbD3pLVZFmEWmBFECbSfg1LbnAQwzl
 9Crg6fK9pCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9lzdgAKCRCLPIo+Aiko
 1QPGCACpysEPjxlYldEhFTaYVNzCM1Sc/vDP7O+jCuj3Hs3CN+4o0HMa4k9V/p38QfeW2BEmEcG
 KVmH1uIBVD0ss2Uwy/8iqXQc4dzUNB188/NwxH2Hs3u08DTqhf3GzbwXko7/g21D1pJkxlGEvCs
 G4SvhXRsBAcgzprYbN4GYTpmjFfATfjXT5U3xNQzvEQvsIFNBoFteNlP7Y8gzUx1xgpZKR6QNxM
 nQOLiBulGpduDFsPUDpB/nL5JoeSZs4qoXbW+jeeQG3FIDmki0o7XYO+jhYEZSmPzSTeARYxw0Y
 Yiz1ZcvjNRLgxItgEP/f8Vt83nPbP7PnEfcBnPbwYzMN6FfC
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: nfQTbEkdpEfOwSWbQ-HqFtBCo6a0hBIv
X-Proofpoint-GUID: nfQTbEkdpEfOwSWbQ-HqFtBCo6a0hBIv
X-Authority-Analysis: v=2.4 cv=G50cE8k5 c=1 sm=1 tr=0 ts=67d9739d cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=p_EMIZExALG5VSdhSekA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 lowpriorityscore=0 mlxlogscore=563 phishscore=0 adultscore=0
 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503180100

Use new SoC-specific compatible to the SPS SIC in addition to the
"syscon" compatible and rename the node to follow the purpose of it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index a5aad4f145dd368aabed44cf520ffc037018b37e..b6533630e347c8fc5e3f0791778cd05760b3f3c8 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -402,8 +402,8 @@ saw3_vreg: regulator {
 			};
 		};
 
-		sps_sic_non_secure: sps-sic-non-secure@12100000 {
-			compatible = "syscon";
+		sps_sic_non_secure: interrupt-controller@12100000 {
+			compatible = "qcom,apq8064-sps-sic", "syscon";
 			reg = <0x12100000 0x10000>;
 		};
 

-- 
2.39.5


