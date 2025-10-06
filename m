Return-Path: <devicetree+bounces-223962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3331FBBFAE3
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 00:22:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 13A234F2936
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 22:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB8420F08D;
	Mon,  6 Oct 2025 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bEZcXWu8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4840E20CCE4
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 22:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789233; cv=none; b=XIdDOD1P0xtx4Q3l204EAn7u7zaWoBEmRwdXbc/U218RBwKbHdj0fwwOCKLUpExsZjQ1IFVHmDEEnd4S8YksEFmcFo8hyC19AQT/8fGcgNrJ+mJuVbJjEeVE1B3m9IvOOKxhVTPaov11F0+un2I435Gu3NjiXPP9ATDe4Z92lKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789233; c=relaxed/simple;
	bh=KRfbO68RqNXGYUxEscJ9pAB4g2zVH9KTs2sCuSCOkhg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IayFhZjy+Jxl2cKad9mm6AavJSSp3PAdckiDRUtdXc1K6Ymc/kjpXYHaPc8XztA/511ewwrZrnktiV1Sq4kY0vw+alOSkwJyLEl7qCSLrAwvXX/zDI4xDa4WfErBRXVko6QWqNbsJ+gQ5zdMoKbWxVquVUpThYyAwTQTDBs71gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bEZcXWu8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FSEZL005144
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 22:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NVYsIQDhA8R
	ySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=; b=bEZcXWu8NYn46iYEKSdylzHMVZy
	gooOnhtZQeHCkoXjGF/y0SKEH7q34nM08Ra7APR3HaFpGpUfSRnymRLhRyRsd5HS
	utkBW1Wvn10t51JG9uRC7wrN66j9X7nRK3RRlf7CB5GDWH9hLW0wdDKRqu2Iv1Ap
	zSSVk3Cpom/EAnpcJWyMYo6XNTHm454L4Ab93HbU7OagYHNByUwYFypcu+/6Mfpy
	EEl8724bZapd/NQKFvUMpcfEfZaBTT02iuaxcKfnACJsEg1DxtQoLZh3C6wi4tu1
	enmxOhzdg7rtPBqZWcDR+P7FiUizwnSLDgrL2rVCfZKZdaIX+84nShcPcNw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxn5mee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:20:31 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-780f914b5a4so4779133b3a.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 15:20:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789221; x=1760394021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVYsIQDhA8RySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=;
        b=R3UbmS0wqFyYhQrU+74VtVVXcOYk4exQppe05L6KdrQuIoTZRfeLCk0sKlizj22bDo
         M5ANcLo16NpHxQlCWbyhhu0l3HU4bHo3DrX8W5hZMvG24dPfUsDxJQTcy8CeCzZtoqy4
         2/vnnekLMjICpuSzEH7TNda6h5VzMDzndlNRTtZu8MXao17iXYsRXqzsMPK9Kd8DoTVq
         a4djbl77gL2J+7ohyPvJOjIdw96TVwXku30J/1nIk4QXX0N6vHCxPLye/1I0j7KkynuV
         Mqw7gaAEdjgwgNaolg7ZadwwPH7H5Ax/SnBRMuAWs9GZ6NIzfoHglOpSERq0OGnAs8Ul
         xQJA==
X-Forwarded-Encrypted: i=1; AJvYcCUc+wjajOhaxR+5QLAbGyl+IJ4KzfTifHtPj2rnTJ/vIxN65x2d+G7r7Idv9mlhRvixASAlmZTLPCT3@vger.kernel.org
X-Gm-Message-State: AOJu0YxPA9k1PY8605wBrwY3p5q39NRWf0R0vKkLtI/+TuDZN+Leaot6
	EQDyrf6oVnTITVrnvJXMh80JOwcEAEJBBLEaK8ncIq/hvl4TT9LBmE/qHyUwmwYOzaF5uJIkrku
	ahxLNQID+aNxVgXBO68vS0oJyiFuO91vrm+4i8FkunCRyeEJYHd73HAIjNM614cQ7
X-Gm-Gg: ASbGncuyDsyyx5tWU1gJSL2vpqgg0fQvlKfUACeP4rHui9U1cO+A/v917XDEvGuTwFC
	F5BjO8OHE4MP0z5poFkuEP6fXYxQYz0I0JjkLMG8E35eLdJp9Xb0xJL/hXW3QMToVbNakxQzG8b
	RqM/mpLaTgsoheBfHloWRz9ZbfVzkAKbXiXe7Y2Wma+F9sG3AGJygDm4P5+stbSPHa3DTEMlhiX
	DoalsVabcSVD4/6lDMuI5nqgd3JGepBay0FtRX3/fbNAoJv5NNPVfhEzYqssPd2J0YEWyWgmDC5
	gD7IvJ+AvTFv9o4GdVoHhTcZ7+tgrFmSvyhl9WJYWjFoTX+Cf1UGDTIBcODOzXAPV1JKrY+tmMB
	Oa1U63K/4HKasrlkGAQpWIQ==
X-Received: by 2002:a05:6a00:2ea7:b0:781:24ec:c8f4 with SMTP id d2e1a72fcca58-78c98d3303amr13937020b3a.3.1759789221382;
        Mon, 06 Oct 2025 15:20:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmbjvu8YGs2epcEfo1RGDSZj+PsWdieVwkMJHJiW2v7Dd75B2hyrpkavb8BTk22/5l9Ds/9Q==
X-Received: by 2002:a05:6a00:2ea7:b0:781:24ec:c8f4 with SMTP id d2e1a72fcca58-78c98d3303amr13936990b3a.3.1759789220852;
        Mon, 06 Oct 2025 15:20:20 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:20 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Mon,  6 Oct 2025 15:20:02 -0700
Message-Id: <20251006222002.2182777-11-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfX7mD3S3DkgaD4
 AA9j/9Jay7VPuuSC3F4IwWGDfASLU0VEj0WS7+DUBmXxrNn7FGa877/ThwDvL/SyqBjzp9v8OTd
 z2JXhVbKRArKh4mcKegGSegetWukq7DHulEMfSTkgCaIIJEA8CVfjk60VRlH+HyTLrcIRFCLlng
 kT2Zp1tsPyYvs+p8It9mGdXriyHRWfCRiLULenE9QEPR8QkLRUaZjY6zRYLA98w7CW/iIMQEvu3
 txiCUn90ViQxR/w481fyJPXZsNBNlHI/BldDeEZ0Nn6Pdp9wL4VZnMb5McvEjPGBtauBBywwg5Q
 tgCSOYe4EfRjoId9rJ3sOmPqBx8ldqUXjNW/5cOvAtgHtsyaS9Y6QpoDB9THP4R+82zx3UJZGk/
 xV+FD0yvFx+ozPORNFNunUoVkJnQsQ==
X-Proofpoint-GUID: e6W-Xo4W1Z47yBfaskVR8U9_pqHCL3PF
X-Proofpoint-ORIG-GUID: e6W-Xo4W1Z47yBfaskVR8U9_pqHCL3PF
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e440af cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001

Introduce support for the SMB2370 based eUSB2 repeater.  Configure the
proper repeater tuning settings, as if this is not done correctly, it
can lead to instability on the USB2 link, which leads to USB2
enumeration failures, or random disconnects.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..441996480a67 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -75,6 +75,13 @@ static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
 	{ EUSB2_TUNE_USB2_PREEM, 0x2 },
 };
 
+static const struct eusb2_repeater_init_tbl_reg smb2370_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x4 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_SLEW, 0x7 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x0 },
+};
+
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.init_tbl	= pm8550b_init_tbl,
 	.init_tbl_num	= ARRAY_SIZE(pm8550b_init_tbl),
@@ -97,6 +104,13 @@ static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static const struct eusb2_repeater_cfg smb2370_eusb2_cfg = {
+	.init_tbl	= smb2370_init_tbl,
+	.init_tbl_num	= ARRAY_SIZE(smb2370_init_tbl),
+	.vreg_list	= pm8550b_vreg_l,
+	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
+};
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -278,6 +292,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
 		.compatible = "qcom,smb2360-eusb2-repeater",
 		.data = &smb2360_eusb2_cfg,
 	},
+	{
+		.compatible = "qcom,smb2370-eusb2-repeater",
+		.data = &smb2370_eusb2_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);

