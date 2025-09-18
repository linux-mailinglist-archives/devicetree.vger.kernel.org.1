Return-Path: <devicetree+bounces-218966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C72B85DBA
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 18:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC8031C247D0
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0047313D4B;
	Thu, 18 Sep 2025 15:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bz2jjyCV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C1A3126C6
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758210903; cv=none; b=UwNcLZLqljdInA9d3+6aJnptHvc5fjJwtyPYUGhKEN4zjvv9XN12Bc36ithOK1vXoWTfjXXuwbKgCyjYusvp1n7nT4GDXmPPcRSqHBOnu0Bb9M5E2S9NHTbGJSe+ut1wS4joymPvCeFTJz1jrtwSP/1Om2/ZUXcwEoPsBP8QYSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758210903; c=relaxed/simple;
	bh=TrV+frHKp8A2bFzxsG2fj2eLK4upb9k/aGE38082JM8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pWpIsy5+ENE/+uoIDhlTk2YVZQtMaAETpqGgMt+h9Ct68+/CWQV0p/lXnPxyDc8yp95TgZ5qtvv/z0x9+tYu4rGkFfbAF0erlkM10vYQmtVNqIMIGi9IMwcszuqBvtQCb1b4VadDPE3oIPV0GVpRoQJrzqIfLrxgrLm8pGJ9duI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bz2jjyCV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IAaYZe032419
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:55:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=LU5pItXmiqnd4o/P2E59yLiYc8TuhTKDEsc
	hoWWnvRw=; b=Bz2jjyCVnLTxqJonWjLOUioz4+ECBbJhasAduLwF+udTWq0IDbk
	aPcekNODRAFTsB2gUGNvuAgMYe+K1WanO2yFUMWKLHmGsmRlzvihJzZ5qTVkJ6Gx
	2bbgJNKUHwvPWd6aQcfs2rdEA4YvVz/mbhWDM9Fdc6KzUF0naNVZEmk6fEuQhE2F
	3fMasQ31lcP+vUu2rnz5s0LR5Tr2ghttQYqbvSWnmITuIRd132S2lfdLG5oUggh5
	coCREGKlzMvAzpUPAvVae19tfYjKtQVeLk1OgHgHWRWB8yBmQnWtQjgFdp+QynNv
	XMrO22BV83WCvsYwvfWUNO432KmGxqe29QA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxyq1a3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:55:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-77585c74658so30223076d6.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:55:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758210900; x=1758815700;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LU5pItXmiqnd4o/P2E59yLiYc8TuhTKDEschoWWnvRw=;
        b=QRtlAx9byBnU1Ac6Iw/VEXLbZQYyvL9LfBVrIWkyyu1W6JZruFBAJ1XRMs7SUL/m5w
         HQDEqVmwLZGXRxA9N0uRGxmL+plamF7KSgUDd4GWtfoAUzMSWlnJkxFk4CgzCO0qQkQ9
         u4fs+7gderZSQcZe7XVU66XU90MfY7Dx6G4KKCNGojSr2RaKFCkOVKOLtjQ4QrbBh9Yy
         gcg/oPA1GcAx1g1voWT5da81EJYSMigEi9WFCUmRZtjZqzEfVi4ACPJuQBNJl68gjOYE
         j0rWt0GiyNW+ESFriHTQlEaP3AMiN9GAyfVFDC2zuCbzxvOAGVSC2v959fDPch0NDcYP
         nztA==
X-Forwarded-Encrypted: i=1; AJvYcCVrnPWZp8EHScO1rMp2KO05RDX5vPglNb0Z3RkwH14U+UNCK6si7DB9+x591EEcYgZzROVBntsHe0MR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0irRQhYwdofj/k4GUWsmr4u8l2+Rkc5nUHRbO3Cme1Qf4qkfD
	FH613izrYjQos/6PFtglwgzpvjSMAg6qSfFhrz91J9+0rfNuxIefn+6VsMlGYzaAk503GpbW+M4
	Izcv5dsHp/B74c7xbaGthTBTX8ItCru0dLourVMPPEE1ITDZZ+xjgRIMvR53rJWrwVLNghxvy+9
	s=
X-Gm-Gg: ASbGnct7c6z2dtZvHzEB91jMrPJx4YIKt4GUtqB/ZTHa90CxPnPYHrH7MFpYSLCBd2d
	lT7Pbk0KnzKYt2XHKG7LQzXjYBXrQoaQUiLJR/MOwCUUQDeI7iv+sVZbmDorNRE0Fqyt8UQAnI9
	wEo65vMVPG9Gkq7uvMvl9dn+H3BkOIS3aQAk9pdZ52LngOnVfe6pY2UlUIN6Mo4sYyVyfZ8FOrE
	lxijkgaSy8vgAotQ3XufbbWbJkivpnhGti4hcLa5qkiQT//1osS02vmRpk6MQ2p3DJB1l5uo4yJ
	WkGSF6fSzRG1DVnhwSF6fqXbl1Fs042EmGEvGFulXW9LcVcBdDxBC1yXSn82zZGIsdhBETPOgqg
	=
X-Received: by 2002:a05:6214:2022:b0:784:be20:64e9 with SMTP id 6a1803df08f44-78ecc6297bdmr77300346d6.9.1758210899739;
        Thu, 18 Sep 2025 08:54:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPqTfGJSu0pVm0mj7H6Eq6hklqspz+RrX/TH168uK1ggsxUzHAvffXmh5lREb28mNN4fUGfw==
X-Received: by 2002:a05:6214:2022:b0:784:be20:64e9 with SMTP id 6a1803df08f44-78ecc6297bdmr77300056d6.9.1758210899228;
        Thu, 18 Sep 2025 08:54:59 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:81ce:8337:616d:c2d5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fc5f4386esm223209166b.15.2025.09.18.08.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:54:58 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: qcm2290: Fix camss register prop ordering
Date: Thu, 18 Sep 2025 17:54:56 +0200
Message-Id: <20250918155456.1158691-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=e50GSbp/ c=1 sm=1 tr=0 ts=68cc2b55 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=ssarpNazB3TWaIbJ0ZoA:9 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: PFNGTXb60WjboJqzs2P2Yr8BywgzSc5A
X-Proofpoint-ORIG-GUID: PFNGTXb60WjboJqzs2P2Yr8BywgzSc5A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX6e1pTMwymX18
 lAKfzjJcqgwbjfYE1j+2TvhPb3qzlFp4OIP/Sk1d0iaFElAdFHEMlfuruiNcO4Dse6egK+Uu7Sx
 mB3dz/+60bdeADN9LoUgWY7V+7mG6gbwZfzVilOO+axtF+dBLz9kzGmKwnPO0afYE6ODmxCao/A
 jBRD5k13ZfIBKuemwzfAxpiUljOR6vviHFbbGtujGNFXE/0buYgAp+JhMfhYwKT5XdzAOL0NblQ
 bToMI9II0h5sJz/oZVWX1JC/ew/RvGZO0NBGJZ5N6F8Ci1M1bFygxLNB53d4oQHioiK9CAHQ6Ht
 iyW0ITZMKZSzf6Kq5YqMu98w//Z3s1U3GkQkzN4ROwAUyP/c1nPIri80D4/vv9zFeGqVZSWxx+R
 fUjVECIU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

The qcm2290 CAMSS node has been applied from the V4 series, but a later
version changed the order of the register property, fix it to prevent
dtb check error.

Fixes: 2b3aef30dd9d ("arm64: dts: qcom: qcm2290: Add CAMSS node")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 08141b41de24..3b0ba590ee82 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1685,25 +1685,25 @@ cci_i2c1: i2c-bus@1 {
 			};
 		};
 
-		camss: camss@5c6e000 {
+		camss: camss@5c11000 {
 			compatible = "qcom,qcm2290-camss";
 
-			reg = <0x0 0x5c6e000 0x0 0x1000>,
+			reg = <0x0 0x5c11000 0x0 0x1000>,
+			      <0x0 0x5c6e000 0x0 0x1000>,
 			      <0x0 0x5c75000 0x0 0x1000>,
 			      <0x0 0x5c52000 0x0 0x1000>,
 			      <0x0 0x5c53000 0x0 0x1000>,
 			      <0x0 0x5c66000 0x0 0x400>,
 			      <0x0 0x5c68000 0x0 0x400>,
-			      <0x0 0x5c11000 0x0 0x1000>,
 			      <0x0 0x5c6f000 0x0 0x4000>,
 			      <0x0 0x5c76000 0x0 0x4000>;
-			reg-names = "csid0",
+			reg-names = "top",
+				    "csid0",
 				    "csid1",
 				    "csiphy0",
 				    "csiphy1",
 				    "csitpg0",
 				    "csitpg1",
-				    "top",
 				    "vfe0",
 				    "vfe1";
 
-- 
2.34.1


