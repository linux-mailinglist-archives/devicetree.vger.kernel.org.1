Return-Path: <devicetree+bounces-257193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B17D3BF80
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 07:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3D7594F70FF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 06:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E255937F0F5;
	Tue, 20 Jan 2026 06:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZaNE/+NL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QgGOLvD+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB1136CE0D
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768891395; cv=none; b=ueyneBwD+8Sz25QV03mRSbAc9lE5qmQSmU5pcwYEoL7Y8x9tbZqZobQ8D6h8+dMUe0DOR2tf8P8G0AoXWllXt16LzD0FxWHeettwVaCSp2EiFqLpqnuj206RSFvElTWe6LXdYas1V1as/VzxKPYZn2AnQpMcmSxTkLIYvRONhT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768891395; c=relaxed/simple;
	bh=gu473kq61cSZJm9VyFb40QrOqKkNTdf/7tHjb4r1jJ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mwwhjLkQEj75V1zqetwF1DsIF5If5mUPTR1vYBA0gESchyLXvfNWodqQXuQUBsk55WZogp62JO+i500Rt043MLD5S3Dmu7fADMXB3He08kNCH/9/WmKpsDnHmUONL2JbInRJ6XZMBOBwudAYfeVbvwfk+o/awDXMFbhwqauBGbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZaNE/+NL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QgGOLvD+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K5n9qQ1904969
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:43:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EHpnhETPQKpTkYEur0En4T1/9DNORTc1e4H/HBNvjAs=; b=ZaNE/+NLQX0GYzyF
	hHugE+6RuE7nlYtpNL8B10Ef7uTZ8ZuPDIWA5F4e0rEutnZaSKaw00c4VP+d2G6m
	uBEDDlm1+IeDcblatwlYR0tQb273rrHn/P4kjQha4sgRXsQ8YqGu8NOMPMcLC1h2
	DsWlYSz2MkpllT5GvXffiCq8NOhq3utDK5FRERJ/RZufPiFK0UERcY4MgMo6EEUf
	fa6BZnhM+jjDs99Z8SnLARhUh4zA/HW3wDpC298j0tDUC2OJu6T0tsNsDnyZIQ5D
	bLKEuLuquKiueZxAKI/H+rWIy0bBZjLCBBHs2kG1PY1/McsTgZx1JD4yX/WuM/aX
	e1eLdQ==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsgmubb2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:43:03 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-124627fc58dso3063730c88.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 22:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768891383; x=1769496183; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EHpnhETPQKpTkYEur0En4T1/9DNORTc1e4H/HBNvjAs=;
        b=QgGOLvD+Oq8EcWQuznl704yU0P0sqlLD4ySYF2riPVBFdAheEmqOKfKIxnpnNn1CMh
         v8AXE6REXvuxj1v51FwtNoB/xO81M9Kfk3H6ut2iKQhdBnhWGMaSi5ELMV8aKCZzmQXo
         YIGxy/kYx+FoD1pycbU8LfveqWz+QopktgnSivtGFMVmoeuC/tLn7xJvGo/4AFMRWkRf
         lJpqkqwI3oHRtf3ihq7ylbMcwIPvDFHxzH4qxg49AoqWSBFT2YnPlwRXvgiFds2bi97p
         meG9OMMCDkgH+/zrS6OKrBBwtpOKe2tQ5whLPWlXlovhc7a3WSreyenlp/y953lIBIq+
         9CXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768891383; x=1769496183;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EHpnhETPQKpTkYEur0En4T1/9DNORTc1e4H/HBNvjAs=;
        b=Z/z616cE3ZCK5cjrkxK+4gj3SiHuRqWy1gLyH/BUKOa1X39ntnkaF0fOGqIf5S1xrD
         CQDJr7Qc0xFusLBGAA0UB1XjceOeH1fl8z0noA2Ifhl3QQugJS4Y+FMcS4AyH39l4vxU
         mFd1kOw2f/b/4ddkCcWXQwc8Tu2t7H4AwTg2fh8N4XJGfmQoutpEyDanpi064N1Lnk0c
         ad+HO2+PuhNHPvq7fkqPX3DzJUTJBBk1f5PxHUvz0GrgU6QYyQzTCevTWfSqkmsL4Aao
         kEzeJRoSHdpxikOnxFSFctj4jiRoOuHLM9mFVLbb9XR5LP68AAdYbKLQgN86SnRdU+4k
         285g==
X-Forwarded-Encrypted: i=1; AJvYcCXY5OMcHCAtW1M4zalol/d1CyYqIwMP5FisFxNTmf8JCGKGjEAfZAK1H005CVQmBIe5SZ/pM1b1TfQc@vger.kernel.org
X-Gm-Message-State: AOJu0YzX+7m/tClLGDPz4LUg34f746biD8Xr4qi7h5kFsi9sEiJt3JUn
	gclgWN1FckXVhMSSjeAMK1qvGMy4cMRqWEaoKvLiJanLouQ7+iKWBaX/TPXBqbc9zDXqfvrrBSo
	Ae/cUmI+DdxIEE0mX04Y1oHPVXxsVNO7Z1yfwPyb+nex/g5BgOxDkRcBGsws/rXIV
X-Gm-Gg: AY/fxX6zO50TujjmUbSCVtxU01rR/gqMl3t8S9s3/jHzWy7uUZwKsEb9v7HO/oWkCv/
	73a9LmQIFnA8cFBUgZhaJnRUku/lSwzCTq9+nHMNucCi7gKpOv39+7WimOo0QJKwPn/CGSdQWeR
	Odi1xa+/Gkq+vsfBXJvUOR/KInyDxthE9AYMDcWNY/i6DNtJYfQYsUjQpWbUYKgM47O3XVZV+hw
	h5xumou83D3EMG2FSUpwYvT18J0d1gQbQN+RnZ3clU1qANgGmJOukXAHZUFY6WrM05yBWCuGFTm
	Z//VrbjE+m8tu9ri3/WD48wLmA1IMEzxKmaPT20hqHeLx2cP5SgVSM2N/V+d+mNL4pAc7u1euot
	iv/Ra6ZhAyOm5KqxLyoUvTWWXHICfoOyBpu08jmz0CiT9TmVlnPbnxUpeFIo/mrLF
X-Received: by 2002:a05:7022:6986:b0:11b:b3a1:713c with SMTP id a92af1059eb24-1246a958283mr690933c88.9.1768891382707;
        Mon, 19 Jan 2026 22:43:02 -0800 (PST)
X-Received: by 2002:a05:7022:6986:b0:11b:b3a1:713c with SMTP id a92af1059eb24-1246a958283mr690914c88.9.1768891382184;
        Mon, 19 Jan 2026 22:43:02 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ad7201fsm19128658c88.7.2026.01.19.22.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 22:43:01 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 22:42:52 -0800
Subject: [PATCH RESEND v2 2/5] media: qcom: camss: Add SM8750 compatible
 camss driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-add-support-for-camss-on-sm8750-v2-2-3e06583a0a81@oss.qualcomm.com>
References: <20260119-add-support-for-camss-on-sm8750-v2-0-3e06583a0a81@oss.qualcomm.com>
In-Reply-To: <20260119-add-support-for-camss-on-sm8750-v2-0-3e06583a0a81@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA1NCBTYWx0ZWRfX0K7jKvVovfFN
 OPYXzQQqbrdoS1X19sO3ztR/MXxX5mDFWHymonlWgBtKU2bLc7ttnn9aVORq0BcAQsxoCAQza89
 7XkZlE9V2UdC4cwUUvKRI7IlZsLoQBxif8hhqYAtowVgK397GMQQXvNA7u6QV47RAm4S8X2cL0U
 LyWeSyT9Qp5SPp/FeP18kYt3K2M5k7751YOawtKQQ9+FN/hLFN6JnvXneoiTQ0c1zFf1hi4KzVZ
 spWtENrnclccvZUdkr80Ed3o7KBJlxAacB8ssHxwz+FluTnBY4PDSpi25IKhob/M+BlXmEvyVtz
 Iui3QZA7t+KseVC9YxgAISd3I+srqUSMFIRDmgXOacWIg6Btvx4tS2+QkE5KfCX4baxwNhwEpZC
 M9q/97rsfvI8KCT5irYtPAwTltepS24WY1BXSngI5pL8pYHq2xnwy/aEpi+g+4ngZpq1yZd/h+a
 INPdZK3G1OpYa3JT/OQ==
X-Authority-Analysis: v=2.4 cv=Is4Tsb/g c=1 sm=1 tr=0 ts=696f23f7 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gE60Ov1lhapgyOv8Ur0A:9 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 77oUvuC8F-LLlBmo4cTw83q4pLvhelfg
X-Proofpoint-GUID: 77oUvuC8F-LLlBmo4cTw83q4pLvhelfg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200054

Add support for SM8750 in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 9c99fdf34bbb..0b524b615a94 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4248,6 +4248,20 @@ static const struct resources_icc icc_res_sa8775p[] = {
 	},
 };
 
+static const struct resources_icc icc_res_sm8750[] = {
+	{
+		.name = "cam_ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "cam_hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
 	/* CSIPHY0 */
 	{
@@ -5670,6 +5684,13 @@ static const struct camss_resources sm8650_resources = {
 	.vfe_num = ARRAY_SIZE(vfe_res_sm8650),
 };
 
+static const struct camss_resources sm8750_resources = {
+	.version = CAMSS_8750,
+	.pd_name = "top",
+	.icc_res = icc_res_sm8750,
+	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
+};
+
 static const struct camss_resources x1e80100_resources = {
 	.version = CAMSS_X1E80100,
 	.pd_name = "top",
@@ -5702,6 +5723,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
+	{ .compatible = "qcom,sm8750-camss", .data = &sm8750_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
 	{ }
 };
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 2820c687e066..dafdfe1d3a4a 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -92,6 +92,7 @@ enum camss_version {
 	CAMSS_845,
 	CAMSS_8550,
 	CAMSS_8650,
+	CAMSS_8750,
 	CAMSS_8775P,
 	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,

-- 
2.34.1


