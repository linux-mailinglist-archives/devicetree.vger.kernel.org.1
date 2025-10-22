Return-Path: <devicetree+bounces-229706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C40FBFAF2E
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B4CE19A061D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EDB83112BD;
	Wed, 22 Oct 2025 08:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UkARakR8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8963331065A
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761122478; cv=none; b=FJM86K5dN71DjTB8MjUWXYsitqIZCg7ssL0+6PCOkqVLFPPPsTXsflYfQNNnpyA6NRNLIvp1ZxvDJrSkAsJ9gC2DG728BLUNq7aDHI1M1Bmqpp8ga7iSQ45mvyLitWu5oXM5cORHKQe9ZyIFgPxr6GF6kE3fgJ46y3LXgQVXAqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761122478; c=relaxed/simple;
	bh=2JxH3SAb5I5RjNeUkzq/LydH+ScowPF8cKoijPFvtTs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=t67il+JvAqyQQrANw2bSse8W5MZxrp1JchT7zqnB1TOiTJN7mej0elymNCo7UfaBjTUekm4/N/diZP8LofjqFm+rz7AILjrzzviE7Cg+bgYDSiHh5mMdmVfPlIVD8wnYp/GpXvMggPxZnxg/GexuTBptA/7aKNd/rN4eaESDN6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UkARakR8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LNvWZC020413
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:41:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=IuNGrA3HI88
	okECNz5zskMA9+Az9f8glbFMv0KeN/Q8=; b=UkARakR8tLWgecWTopmsXfRqyOU
	AcRX/Ii9pn4SZ9LUbavx/4lNSMV84T3jZbxGGaErt1JMZ4UlZnLekxqGb6oP/8Vd
	960c4V/ccXkkAc3/M86tAZHklAvNlCz11e0M0Rxxtk4eCmS1GGq5V7CmdEShkExL
	pJ9y75Q3DcMRYoOs4x2Dcs8hvyVSpra4SFbyVpgvPXbs+TrcQfbiXVosHN1DFYJf
	gCw+5MLZXcttb12pqgELkjbSygfl4Idc8WRIzQut3KbNYQr6l9u6t+ki437shSK6
	W4vxlFFgsl7jess4TFtauGElCrEDxL8I6rb+AEE5DbFHw9ONap+lShzhryQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3443x8q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:41:15 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76e2eb787f2so5857302b3a.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 01:41:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761122475; x=1761727275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IuNGrA3HI88okECNz5zskMA9+Az9f8glbFMv0KeN/Q8=;
        b=o8H1oBys8k7IXQZs47yQiJIJ/vKB9rD89xh6Y9cWnh90jVSVCfTOxHnk7XbTsiLCCW
         g6qG5G81ymt6SsaUUIf3KmW8asOUbfADNztTFdJRRs5Fi7XRTBxAcmvdMXK32g2qMVw9
         N5uy6Wc1uZvtgzlNTqNMmVjkGzJ5Y3koPGLAzln0P8qx3e8ZwaijuQQs10yAfTo2wjja
         SGtJDPK0z8GP/VI6U85LARmmXYngVz22a+S6CoTs6mg6j8de6jFqGsv7aIPKOpY8Z/Vb
         SVS+v/aX8N2t0a5B/8/zOZ47vnFfNATJEi99u/lxqGBtELzrmXqt8FbnaB+bYCHAn3jp
         sxkA==
X-Forwarded-Encrypted: i=1; AJvYcCXhHhwNsIVG4/qzW3Jjc+pll0dL70xeJ1Cw+Y2eCgUQzGhLsI8nfGQe+h9pSq9SLjvIdLgLJHGqn/AW@vger.kernel.org
X-Gm-Message-State: AOJu0YznB/oAXdS6Qp9qS1cxrM5+hXohPIWWH9q1b7B03HxWAHtyw7ic
	sLxbZmmD6oXVVhXBG3zfo6N4H/NFXKRHu0gmoA1e0pveh0Q3QUiWquw3jYcB/JDkZ+7SI2z8s2L
	MMDrUnCChYV2Fjewc6VmdRMC5evdOx0sGVcfNvq8E+D/vX59o2KorfQ63wvd/w9JR
X-Gm-Gg: ASbGncuumX+II6qUSdyLPdpwsf8VDd+bx/0pNWWR1aoZzRbDVg0Z81+tDRaoVwdyro5
	z1xmkkqYxYcj2hXTGmzl4QOFUIpUpmtzl1tZd5i6kaYyOq7JPg3Ybzb50Cnedy0B5zyB3zFreCe
	nPDOA/cFVnauTjjXfz1aq3+nB9KUYdph5RZceJYMk3BQ6vijWmAgADYBQAp0GLr/RkeKOWNsCSB
	lG4Oe3yD+pBKMm4MWj1sK1o7mg1bvOPrtJhX/Xd1UBLC908urRfLEqnTSwmOAHW6gdzHWnING1O
	0axlRVLW0JeJfu0EkQvRtMENqWkNy7rTeFxY5U+b53S6GZakiQv9BcaQh4TKrvljNwB5SwyrEst
	lqploIxpVnJDfh92U5yOALy5cx0Ma/17cjQQS
X-Received: by 2002:a05:6a00:194b:b0:77f:2978:30b0 with SMTP id d2e1a72fcca58-7a220a3c2afmr23140924b3a.11.1761122474852;
        Wed, 22 Oct 2025 01:41:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnN1IY8wPgEpyEoCxS69d9eQBE5ErlRJaTLWYhusdXNBpDrH+C0lMN/8Q1OGqBvJrvECdv0A==
X-Received: by 2002:a05:6a00:194b:b0:77f:2978:30b0 with SMTP id d2e1a72fcca58-7a220a3c2afmr23140899b3a.11.1761122474409;
        Wed, 22 Oct 2025 01:41:14 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a25e9be9f3sm3740317b3a.71.2025.10.22.01.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 01:41:14 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v8 3/3] arm64: dts: qcom: sm8750: Add USB support for SM8750 QRD platform
Date: Wed, 22 Oct 2025 14:10:52 +0530
Message-Id: <20251022084052.218043-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251022084052.218043-1-krishna.kurapati@oss.qualcomm.com>
References: <20251022084052.218043-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: bLCwWAFaykosmewH8CL8IukwWYV1-S-y
X-Proofpoint-ORIG-GUID: bLCwWAFaykosmewH8CL8IukwWYV1-S-y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX6FOECwXjBtk5
 qKB/MENKacEz+TP3mlvXcFSVuWfvtEd/z3g1zGK2I4OQ9+M7bJ5PqHYp6ig4E/cEXdRdXIxzqdg
 0ItWx8cAnp0/8UKUWWdRKIrXnJaXAEi5gGpKRKPzSVFwI1UnAmV0Q63M8twkj8enz7aNDO13NuY
 uB2LGZJI/YZUPkcgnEKd+YCFPeEgnsBmRW1UV6OQjpjfPs5iYyrBYKouJt/R0Qcny4LAnhrVY6i
 0dUnyMcF8wgbTLlVnXcFd3UiTmwU9OWhTSxkxzgRo32Bn5UiGELGoBdppNYvC5OaOHHgxJNEbYm
 OyRGvcvxgcxMBIHsuaXaLtKCZvwYP4Wls0fSQkKrmQebVNPd4Xp/MrCmODor4BUa5iYUQhqQkbJ
 zP0pY5rWjRUuicP7AxGbb4occ9VvYw==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f898ab cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=EoOMd-xwxZjzz6zYUw0A:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Enable USB support on SM8750 QRD variant.  The current definition
will start the USB controller in peripheral mode by default until
dependencies are added, such as USB role detection.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
[Krishna: Flattened usb node QRD DTS]
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 13c7b9664c89..fc5d12bb41a5 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -1054,3 +1054,25 @@ &ufs_mem_hc {
 
 	status = "okay";
 };
+
+&usb_1 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l2d_0p88>;
+	vdda12-supply = <&vreg_l3g_1p2>;
+
+	phys = <&pmih0108_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3g_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p88>;
+
+	status = "okay";
+};
-- 
2.34.1


