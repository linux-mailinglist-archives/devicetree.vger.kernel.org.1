Return-Path: <devicetree+bounces-256299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FB2D389C4
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:22:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 23B36302A04A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BBD534DB6C;
	Fri, 16 Jan 2026 23:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gVsbH5jZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JfdTpncJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EFF31AA81
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605684; cv=none; b=kZiq7vvpHvDmrudIDapBAaVK7DrXY7TkXpyDWfcxByxxsBYN+rz4e4QxDotDNG1uRrWvPaoPvK511eN0cEmHwVMsE/4PeFp7sUT6AfC0WWkt4NurzhK3u07vwNE3nAw8/ElTOkgYrRgZT25mDcDM/HYu1vTGD2xT/IXyZVtXSiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605684; c=relaxed/simple;
	bh=oJZEE75ljDhbxjPAjmqXX/qekCyAnUUIY+vndlyCRTs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TN0UwDfS9RVpoS2DA4iVZ9z+A0c6z1Bz72f/eejcewn4sHnbSAOv4/XDBYAj9+j789WHf38s0T1fW685rXMPUw4SqrP1t32BOLVW0lsMNKznpr9LU/Q/G05aFOjb0k9G1y6o0vujwQmM+X2bx6Y4pVvfs5LyogBuY1S4DHnPyMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gVsbH5jZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JfdTpncJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GNDVvp2825387
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YodHWG0Qjmm
	xJvKMASHwO0ieWVY/Zym4kEuPLt9q2go=; b=gVsbH5jZTWKKD3qlhepO7EBZXDW
	qz7MdvwC6PVR8TU0rWp9UXaTIQIYUURXbZQ9/KP/jYSTx21KL04EzIPRwx9m1hUq
	PjFE/6YF+XklsQJ1+b7DjcKSNXBpUHhyzBvQSxsYOz6CjJG4TQyHIjGwMaTKMYsn
	tAiaqzzgQL5ZMYXXAaa3cb8cbT0uCKzPbPqtctpBbRXzpKb/opflF4M68UqOWOP1
	PQYLKYLqrHcaLjp+6bM4SQns0HNWpetAhzgru0QjhtmsjK+AokW+i1ab40kf8J0z
	GrFZua5Tw/HyaKGIS1r/fhD+Ktu+aLmBqfVI1tGAMSDnATjeNYUFFKPHH2w==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqvecrcn1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:15 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-122008d48e5so4736730c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768605675; x=1769210475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YodHWG0QjmmxJvKMASHwO0ieWVY/Zym4kEuPLt9q2go=;
        b=JfdTpncJ/UDALHZLWF/JGuLIQy9rNR2d0Hy230JSAARNiUqkRFZBgjSy7q5PJ+3t8I
         /CIwdj3u7vbls0dMuLuRtWuIpKmNlr7MpRREfjmcR6OU5FUaLy28aEAiKiYFEStmMrnC
         tODceKXYCUfh2vKoPpNDt8giHkpIUM0gkvzJPwdYRZvQ07jHkpTYpRCI+YcS1NQiCr8U
         gwWTivVUOre8Muq3nvqSmqacHhGSt7IdLuHxxbZc5EcFmVY/6k5M8+8DmzirGM+DA6gP
         i/ZSJFOf26RB/fkrJMd/+pARXb2Y0EsUvJQJrxQmhifp8WCbF3Ojs6p/sh2b+/c0fSh3
         OY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768605675; x=1769210475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YodHWG0QjmmxJvKMASHwO0ieWVY/Zym4kEuPLt9q2go=;
        b=NZUTC50c1kTIFbADZybfC3xk8e3Io4TUrbqctzXvb+h1y9X026Pk0vdQyXHVN/3N0F
         dyRNZTRzNp54ER3RkOmZ2pv23WvPHfs30WAGGOXkU/4Rx84rWo6leT2GhwWBjDNMa0av
         JVvqAT7q710fybxJMe938KBq0JzszVwLz2yGu3UQSqeZ3gg2FLgXALr7w+3NtLqjRs/X
         SaEzrYqwW2m8zmavhVtyZDD1uaISBWmBcdL6oPxrhLL+AvmiP5T2qt1OsFj9uvnfu2hk
         w1UAyVI2RWm7WLkzzMtROS9n2V76a3YmUR9nvvKY0obQDGNdOmtm9uVv0XDH2DrD+gdF
         azHw==
X-Forwarded-Encrypted: i=1; AJvYcCU/idjM8+GW9/IynVMFSdPBzhAdu4dqm5/xspGKo/5NoLctAE5cHLaapRt9nag/zGsPGFUSi085MUeY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi/u/wTYU2YGzPNy8051QhzJLvlgm4gIOH6F1OOOy3gx/3I/n9
	jH/jB/C7pauxp4IBnSMLZq1QYMAtMe5urDLNA5ewXQhPyj2XQRyiggCmXfr0QptG4JLJ5LV1Kc9
	3WHruuGL2REPu0/IwfByURdkhjXpXTEnwpNwJv9l9TWvZ57+xHngaV4OywVQkYMV9
X-Gm-Gg: AY/fxX5+668RcSAJgDgqeWOJ1zE4Ix48QmRdEYiBEE1znq40kzQ7nvg0Vw74j4SGP1l
	ctZ1riWdFY3NFL8Db6v994z2kawV8o+wia/swoZL9HbOiW+WUkPXDl4H/irR+EP9j1vgXRpy3iO
	f7uElxjeriXhwPAFvUhT64lwiy5dr18CBCPTlJkXcGdaWTkoaXZIsJS09REO/rqFvl/ZCenkgxP
	B8PDVIt3padfzuxI0dKsqC3d+Erfpn35qz2oQFZoGO9e843H7CAWL+suEsDqFqf+05nema9b/+W
	f5Rv5ZPJyPnHQxGokECkno/gcvVmAu0vs2syNz7fKtOgyBeNkj/6/R6bVZSXDGU2wpKaaUBZzYq
	En1r2AmUd9cfnMJPvThOdx5qn0pmhGWxSJFLvJYfhGElPYUG654FHqsUBMHdbPWU=
X-Received: by 2002:a05:7022:128e:b0:11b:9e5e:1a40 with SMTP id a92af1059eb24-1244a72e9fcmr3479663c88.15.1768605675164;
        Fri, 16 Jan 2026 15:21:15 -0800 (PST)
X-Received: by 2002:a05:7022:128e:b0:11b:9e5e:1a40 with SMTP id a92af1059eb24-1244a72e9fcmr3479651c88.15.1768605674645;
        Fri, 16 Jan 2026 15:21:14 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4611267c88.16.2026.01.16.15.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 15:21:14 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 9/9] arm64: dts: qcom: qcs6490-rb3gen2: Enable EUD debug functionality
Date: Fri, 16 Jan 2026 15:21:06 -0800
Message-Id: <20260116232106.2234978-10-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
References: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: BaJzN7f_8bABJRWFRhoqet3EzX91J1dR
X-Proofpoint-ORIG-GUID: BaJzN7f_8bABJRWFRhoqet3EzX91J1dR
X-Authority-Analysis: v=2.4 cv=L4YQguT8 c=1 sm=1 tr=0 ts=696ac7eb cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=bAolQom50hykzV7YMrMA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE3NSBTYWx0ZWRfXxVdzljv5mhPc
 HfF2qA1MxdDRos2GcX6wpMz0qnRIkujKC9NhveqSxgk6IS6sKFxquBy+h6w5h6yditgDVuyWGTt
 sI41/IE7uMAEszhtzqPDN89lld09iuffF+SkNLmHnfoRnYL7ehTqocGsI5Dzk3TrO4CPPn609vs
 bUxBfBkumEnPrPf+1BcEoiDrQrzR1frWY1jiV2I9XcGc5ztgsWAS7mgLG7uQH21gHyAtwGxxaAZ
 sPwesCo6GgPGbzqxN6Ov09fvO+lCBaFRS+chIWH8+/L1ugJtNhDKr+JVHqNEASxsv40pVC9wtCv
 8v/5MnAB8zzZF+ZIgl3UiMAer5BwF/tcf8BroZwAyy2JE/52tHgzbRd4oFbAT//Xpp3O1mefSW7
 /dNfNkPAUAjAbBHvmjqelZzJZi8wfqjF8i19Z9PN68jkNRrmAFm2NEVQfx3RtkBWy23WvKayw6d
 hCkkS622Uu0d3q/sImQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 clxscore=1015 spamscore=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601160175

On this board, EUD resides on the primary High-Speed USB data path between
the connector and the DWC3 controller. Update the device tree connections
to correctly map the connector and controller endpoints, and describe
role-switch capability on the EUD primary path.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index f29a352b0288..2fc2d0aed8dd 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -194,7 +194,7 @@ port@0 {
 					reg = <0>;
 
 					pmic_glink_hs_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_hs>;
+						remote-endpoint = <&eud_con0>;
 					};
 				};
 
@@ -1176,13 +1176,29 @@ &usb_1 {
 };
 
 &usb_1_dwc3_hs {
-	remote-endpoint = <&pmic_glink_hs_in>;
+	remote-endpoint = <&eud_usb0>;
 };
 
 &usb_1_dwc3_ss {
 	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
 };
 
+&eud_con0 {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&eud_usb0 {
+	remote-endpoint = <&usb_1_dwc3_hs>;
+};
+
+&eud {
+	status = "okay";
+};
+
+&eud0 {
+	usb-role-switch;
+};
+
 &usb_1_hsphy {
 	vdda-pll-supply = <&vreg_l10c_0p88>;
 	vdda33-supply = <&vreg_l2b_3p072>;
-- 
2.34.1


