Return-Path: <devicetree+bounces-218821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3B9B8459C
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 13:28:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0CF25845B9
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C31306484;
	Thu, 18 Sep 2025 11:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LUV4rZI0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA78830102A
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 11:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758194860; cv=none; b=hhOOocgx4qdFsRQdiCmYNRVf4ChxrHWh8iXKCSshExLaWQ/91nxZ6y2a0VshJgkQWTAe2jndGbZ4UvAcmlF/ZnfrO8uAFwt2yLS8DRHcIBgmRBuKy1HX5QaiD9edD8XyLUFO8jbIn936Umu76aHbyB0zOpCOUtSi0AQ8O61Nkbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758194860; c=relaxed/simple;
	bh=IUU/IggIt5ZdvVUDdA+5dvadTg+m7Vkq9dz4uwpNq0Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KIcfzqoicT3CVAgxpl8RXzoLlYExr+RH57Xt042fdi09IEwMVm6CfvUCkDadC7ti0dE92IJXac2aWJspQcyMIHglGa39J1nIRvIqrwfSf/r5ItioVCeIj2q1tJjvNRt7xiK1W1roxv+hcIPwtzfVoma5ePWmPT1W8zIpGfepGzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LUV4rZI0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I6UpEC027129
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 11:27:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=em02LUNYeaoKw60r2hbDNF6m9VIKoQ80dUP
	lB9X65YY=; b=LUV4rZI0SzSHDYpKEf9ShLhttC0NM2NWvNC7WEuQXG8Lcbs2ET3
	za3ZcRJHtNtjvaTLCbe45Q86Iniqxg8B10Gur1ccT9AmljSdIplunRhx2/iez38z
	r1A2/Yk9DUTBGtEKEC1utkIvpyXW3XLN0iTQNJnRJGcCghysSbNSkW40fjHhSo36
	em+bvYm7ke2JlToxRXTPZlxSDfm59ut3DIPc1hvBrg/J6TlzmCgaYGfYCbAFbHha
	PwLl5i+0bYvp/C0eLZVbrNdlVwYV/gTYgrAMSms4o3MmO9+0ZSbFP5d6TFJJ0PX2
	p31Wgpxxh1bScC57NewpK+l2QZdTjpnF7Xg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1jc2rw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 11:27:36 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77daad52913so270614b3a.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 04:27:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758194855; x=1758799655;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=em02LUNYeaoKw60r2hbDNF6m9VIKoQ80dUPlB9X65YY=;
        b=GXc1ucKkNg9xzzbNbgNNPPWKGy6FY6X+olrM8ARmU2DyhT1aOXr164O4bjwU2AN+6Y
         nXvVQCmq2BlRJJMuSRERMRnO7ageki+OjmZK6LvaZjioTxBSOwm/EVRORiz6QbSsiH7c
         KM6+2z70flfN6dFbFbEvqGwjN/EvurYHD7rzrITXqpaXcoqO21kN9tt/2E6XAfbeb7qp
         bcM/D2xl5ABLF3TuSRLRhXnTgDb6QGDyP3zaZPnUjKeSABIwDSa8m3aKK161v80uOyfj
         XQA9cDDpXNOzNlBaMBrZ71EpodGvGvzbIe/8e10PUA21xy3gFhtyUT0kBS+IC16pSph0
         RmWg==
X-Forwarded-Encrypted: i=1; AJvYcCXt5K+XbbD/PK9aIZHtpQz3BQbVOorV9CkjcE3Kbb0EuZUw3MvHNba09gJqw+A7Ypaxuku3sMkfH3Z3@vger.kernel.org
X-Gm-Message-State: AOJu0YyKIqOyVKFmYjFLx3TOkFfZAq03l3S8jc6USSfcOSZHC/zwIet4
	pxPOHSDbyLRi3/qAJ43PRVrSeF1789eUKEHCV0EqTG6VHVB3tvFwDgprgBwbYhYzVo3Btybdaoj
	Bz/W6B5Wt2T8ZlCwbmZDXJHgBo9tNDRqS6XWl+lx+kP8GpHf0I9A8tLvqhGArF81A
X-Gm-Gg: ASbGnctkE4VgUZuOsd3oQ4klcbEwTtVDOS4GUNjBS1Rv1Uh0xfreXLsCFTlI1G2HB64
	dbJDZw1m8/TcOD8n+eL9wABG4JuCs44GYciFSv3qC/Tm3y1MxZULIjX3Mo0zqhUCWxAdyOdEBzS
	WQnyGH3cnvXNt3ym45rGyjR3sPj4mYKVHgo0Myy4AjfpmDK/hS+JpxBxSkAJ86Dm5cdkwK467/g
	fBAHu67Qs4GbPnW6gMHaokBLRYZ3PTz8Oqnh1HM1YyG3BoP59nq3VY6sl4mju0MU+1MP6tJvHUA
	FwdLoW5NS8Kf/xWoP/EKspeJAevVQTVEhyZnV9PXVKHVCTc9F1SkCp4vGbOSfw==
X-Received: by 2002:a05:6a20:914a:b0:252:2bfe:b65a with SMTP id adf61e73a8af0-27a91197b56mr7041416637.7.1758194855322;
        Thu, 18 Sep 2025 04:27:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3iHWGK8a3hmAVBUv+NQGrIktg73U/FZNcDHWZ4s3IBRB+hSihP3LeJbH5xBNSNNbX2z8UtA==
X-Received: by 2002:a05:6a20:914a:b0:252:2bfe:b65a with SMTP id adf61e73a8af0-27a91197b56mr7041377637.7.1758194854834;
        Thu, 18 Sep 2025 04:27:34 -0700 (PDT)
Received: from jiadhuan2-gv.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff3733dasm2143820a12.14.2025.09.18.04.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 04:27:34 -0700 (PDT)
From: "Yu(Yuriy) Zhang" <yu.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: qcs615-ride: Set drive strength for wlan-en-state pin
Date: Thu, 18 Sep 2025 19:27:29 +0800
Message-Id: <20250918112729.3512516-1-yu.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 0A0SSkPvR23hN1w3ItNxS_OiNoSZRJIC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX9/eWCOSUex/v
 TVsxmucTYdU+VZjtbSWHRduSzFIvwiudF64GxvU+BgWTc06k6kKSIX6mTRUrkCyuOMpf4WVC+uX
 XlBEVUU4YTm6umJxGeGNFqEKEzLlx74Mg+GCIxeYFvt37ev/GLmeOrs9QY8uKp3uY1TFhNE0SrS
 u7ZWZIeozBXWIPglD2ywR3nfoEa/3axIVZePi+PwmFjSTf+6EMukom9RWauh2rln1rsupd96aI5
 64RCw5u7gJl14XrnJUmLjtzmTbsqG6clk5g+V88tvt43rTZYgp3DBa8QGcdGEAaLTWCDf7rmomY
 tuiacau2n/BQ9aszA2uqVuU21X/CGTYTjaUDhLi4fu13Xk38/tNEY/hU2cNy91PL6b9gCoimJoD
 BWSmNBgv
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cbeca8 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=xJVcXfk84ssIFEjcLW8A:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: 0A0SSkPvR23hN1w3ItNxS_OiNoSZRJIC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110

From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>

Set the drive-strength to 16mA for gpio98 used as wlan-en-state in the
QCS615 ride platform device tree. This ensures sufficient output
strength for controlling the WLAN enable signal reliably.

Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 705ea71b07a1..a69b1335f0ba 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -398,6 +398,7 @@ wlan_en_state: wlan-en-state {
 		pins = "gpio98";
 		function = "gpio";
 		bias-pull-down;
+		drive-strength = <16>;
 		output-low;
 	};
 };

base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
-- 
2.34.1


