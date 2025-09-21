Return-Path: <devicetree+bounces-219660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59449B8D608
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 09:12:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D48844269B
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FE542D375D;
	Sun, 21 Sep 2025 07:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HxvNNAHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8962D29AC
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438702; cv=none; b=Af5hSGgVI8Ru0ZrhpPymioC140giUNbVjw3J1RQ0r8qKsvZMVYccgngvtYt7l1FL/37BzXzbcwcnb/sfkYNr6QZ31yeM8nuIxozzhBS6N0c5OQziKSHlfc0v9j02XygPBIitmuL8AoVZjuLYKFNsW34vFyL3hDVf+BpeQJihJis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438702; c=relaxed/simple;
	bh=zkiKWQ545lawisDQZ6UcjJ+C2fdKGwCIkk4moVU3rlU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L3CPQ3yoiK2TRAAULRPC4efGhu3n2RH16Dn386mw+4V/gP4O0bvMOLWMw5OZRJSwzCTOTzb1NkQlI57b5WcICizSLQs1/gEgeWVp0+vhip79eEs3NyA496TAhg8ISs2agWX7lhqFaO4gJDIiqYjrWuNf0ZJLAkvwxlnPvOl6uGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HxvNNAHg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L2P1s4032030
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kNz1cnXxXp4gzrXuV4750J5uBw00c5aRRnJI/0NE9io=; b=HxvNNAHgkynK7x46
	K+mUHsqoOIZacNJ4CeC/wq2xlpElfvw7xR4WsmP5XCVIPExFih5WZ3pCokl9b2z0
	JahCdk1gKliFUTQa13RdFEX6fcD/D1C/cSZwrjplO8c/eQiEbtaeEeUGIawEkXV1
	tDVbLs2SvQcJeVJv08eWYT6Tf3rnlALIQlq5DEu9GEuMr+VzBTjlfAOI0LVXBXnB
	Rr2x45XIrlHQJyg/fk0A1l6UsI44gQAb1aT/fk8OQsP6cCAf14wHVhTFAcCMAwKO
	U1YrzkFoErrI4GrLjf8qFM+fRNgYAj9WcvkQjMrqhsy4kcT6GRWtExpp0q76mZbM
	61kN6Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnj46n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-84853e8e61eso23744285a.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 00:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758438699; x=1759043499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kNz1cnXxXp4gzrXuV4750J5uBw00c5aRRnJI/0NE9io=;
        b=MKotNBayZUxS20zlhXEAo3Bq6z1a4jmGY8LUgsRcmbsGyRtn5FZN7Um+K9bHxNcLPx
         9bWouT3bACgbUz9zVzV5RyGORL9RyO/P8UPPiFfHRHWBMQbPWNTbtiHOWlevUhcLxLxD
         nY/2mSl5IvPDjWWzmJ8GVnB8C6kxteVMTnmNuc6e0SZoaZURxTOUjXS3DFwsSk67hfmL
         dJwxFYO4zrUEQDHgrwc0jE9OMwtnA6IPTOw7o50TlrxLEXJVo77rpOpkeBbmqqpd+0pS
         y96DHPkD1b05o6TOahAJYY4D5B8Rux4iq8t279mVMHXbqsGSzS9rtGIxS1fDR611R0Oy
         pXCA==
X-Forwarded-Encrypted: i=1; AJvYcCV5pCvOfqwoujQyGiHjOhVsXf6DIboK8JfreoG8PaPh/oThZfkZHN4JHbfcaazCsfMHRyGF7vxRpqtm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxf+62btjrnHAWiKSoy3yBqsIorjtcZh9oUsNCVPU5v04Z+Ijz
	Bcn/kkH4RVwSIcp6RTwtXAVKKnJz37t7yWUE+9A7ufvtL8gPqZ4uzn/VMECxF2y+ArRb1Z4lLOs
	yYRcwMvd8afbNMCcSz/+K833N3pZnWvZCGOT5FlBeCS6Vb/1IuEXnO6PIHSgtGLyF
X-Gm-Gg: ASbGncv9mmCUIAg6nd4ZRKC1VvNRZ5e7/bEIqqSLGblurEumtv460RqbX0YC+H5RzZ/
	mUG6mYyIStH1ZWSfJda4cIOZFSuKViymflekMwAAZw7uc0LyXjF7rB+5qwdan+vq4+Ppysf727d
	vPQGVs9ikWQNqAhu0QQ73wpekHlLlGWQ3yqNgjeB6qbZlQ2QFx5tF4zynaf01o4ALDqWpdEW4Lu
	7E+sqOuqRjvStecfwPaErDocD/qXprektYnfs+OMJf8ZgK0K8uEEQ5b6Lv558OgXBLbKmy4k158
	naBm0r5/iKVVRaXdEX9e0UOEbrRqMNNLc/6q0tE5EsXv4y9fqnieumywYoHKEkza9TO/kKX3zFL
	rKvS12oeVK3bCFiDGd6AuVCeYNs8oVo3/gny0Gyrdl2AZOL2ri23z
X-Received: by 2002:a05:622a:11d1:b0:4b6:1acb:64c9 with SMTP id d75a77b69052e-4c072d2d5d9mr100406621cf.67.1758438698939;
        Sun, 21 Sep 2025 00:11:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/gPyDWmRNBkl5UV2cfMUtRiih4ggyLOshMaxW+JJa3TbXIgaLn7/c1gLOiBlpPMvvmZz1Hw==
X-Received: by 2002:a05:622a:11d1:b0:4b6:1acb:64c9 with SMTP id d75a77b69052e-4c072d2d5d9mr100406441cf.67.1758438698475;
        Sun, 21 Sep 2025 00:11:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875c2csm144031e87.4.2025.09.21.00.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 00:11:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 10:09:19 +0300
Subject: [PATCH 03/14] arm64: dts: qcom: lemans: add refgen regulator and
 use it for DSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-refgen-v1-3-9d93e64133ea@oss.qualcomm.com>
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
In-Reply-To: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1389;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=zkiKWQ545lawisDQZ6UcjJ+C2fdKGwCIkk4moVU3rlU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoz6Uh9DvFtGnaoCCAOvZ9NsakJUzDIwXmToZnO
 A3ZMODOtxmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaM+lIQAKCRCLPIo+Aiko
 1ThQB/9Hn2Pe1z+Hc+rApl00pow6WaTnztYuv9wPR4zcG749lLNCVs7vNHdbJsR7givMkBAeYYV
 Hiy4rG9wo2zyisJl47tl1Jb7I0iwMHberVBV/8WhPKar+vxO4yy5mb6VZLsVq5Fng1cwx8iYnvy
 xFRi+eQ1U1qwvAspBIe9BiSLTdm1tPnRSObkRAJ0L4K9f0dKNDWQjXGq4e25SXBmpcvbNZ3E0S0
 /MmM0ucHFMVe43VESGrTRgji7I55uLBiKIokey4eiHWqYTaXEv/+KozLlfZ51ONJzAp+3ymqyX2
 xRQ3dkSeeZRMDgBPnipgm+MycRRksjCT1DOAS5LEPhhmP9T8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68cfa52b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7Z5K0qU3zCLuYjkCW_MA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: qkctuCP4S4JURGAJKBPSmVSIm6VK6FJA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX36T5nsxzVKT2
 MjXcbrQd+DhsVss7kHCScA1/fsQO4An+Y9PG2F2798n5hVHdXKDeGflThMPhNnPkNpnDWp5/IMq
 I0+2WJU+z8VefhO4JaPEQfT0ATJ33QP2QeSky6rGEtIIiOPzWPB1a5XhgFDjXIB/G2/ns5bXVzP
 sJC9zckkuIBEx8ocZPLT6ezIzNj+tcaEe7MSrfHppoN3GceKOy28HjE2yZ7Q7GewxueuXdGinXO
 Nv/vBGoGn7UaQKLXjVPgpGLCXHEXRJdhoOmW6rL96K9/kLRiXqSlk5daiEbB/orET3gbCmCfLcU
 NUSMb3HKWAUYGusH+gjpPrSbROF/gZFhlDFlrhLghpT9RIDbr5QowfIunLudSQD0OImwy58Vyx8
 1ERvvGA6
X-Proofpoint-GUID: qkctuCP4S4JURGAJKBPSmVSIm6VK6FJA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Add the refgen regulator block and use it for the DSI controllers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 7b5f0b4d1be75d1aa757069522bbcf20898a321e..b9607cfa117c8a5d71105c7787a8db79d36cc842 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -3975,6 +3975,12 @@ usb_1_qmpphy: phy@88ea000 {
 			status = "disabled";
 		};
 
+		refgen: regulator@891c000 {
+			compatible = "qcom,sa8775p-refgen-regulator",
+				     "qcom,sm8250-refgen-regulator";
+			reg = <0x0 0x0891c000 0x0 0x84>;
+		};
+
 		usb_0: usb@a600000 {
 			compatible = "qcom,sa8775p-dwc3", "qcom,snps-dwc3";
 			reg = <0 0x0a600000 0 0xfc100>;
@@ -4899,6 +4905,8 @@ mdss0_dsi0: dsi@ae94000 {
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 				power-domains = <&rpmhpd SA8775P_MMCX>;
 
+				refgen-supply = <&refgen>;
+
 				#address-cells = <1>;
 				#size-cells = <0>;
 
@@ -4981,6 +4989,8 @@ mdss0_dsi1: dsi@ae96000 {
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 				power-domains = <&rpmhpd SA8775P_MMCX>;
 
+				refgen-supply = <&refgen>;
+
 				#address-cells = <1>;
 				#size-cells = <0>;
 

-- 
2.47.3


