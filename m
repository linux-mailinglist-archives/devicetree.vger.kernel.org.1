Return-Path: <devicetree+bounces-200335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAC2B145CC
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 03:33:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F2FF7AC9B7
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 01:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6960E1FE44D;
	Tue, 29 Jul 2025 01:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DHsDonNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12FC1F78F2
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753752760; cv=none; b=iD7jrEOA+8sKkyMdO56hJncnr0/sOhJmVrlKbSHmW6odjNgridgg0Ra9kYP4uH7o0IelYz3nmh0OXKAyIsi+Nfr4CiWuqzCBBmQ5aFTYIOhIjEGFV1WeZ/Xjyrg3kiim3ryfV11g89hJ1Wuv8OqJ1vn/MzrbXJU7oNxlms6eoS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753752760; c=relaxed/simple;
	bh=dpxW8aShh2RYLX9CjF0k/XEH2duG8LnixEBwdfov9eo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lO4iqtxQRPcUeSYELjN1aRjMwU37yscPQle3Nq9VkCCMSJsFKejhLuPo0QvOEzMhmm/du0p3iJiTXxgL+uDOG+B2Dc84XSUKTLGXxtiMe4WwQZczU93aznSwkYb/Jdu50Zjml8UzlvbNTzG8CQmIWoc1MCTy/jtBAoLTGY6dMwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DHsDonNy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SLq1ES012152
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+WbtO0JaeN1fhr4oYLduWJfFLHLQ9helHJAYmSQJKos=; b=DHsDonNyDMW1/nJL
	H0QD1zPT/Wr2sOoN+J2WSnmeN1MDNfkiyU50Vjf9GrplMkmMrHHtfOiI1IFPxwFV
	mubLeiF4KD9lm36BRGUvkFjxxgbi5EMlax+19bG9O39QgJIaFfpJXchMK7A1+rAJ
	itSxJHFndtpTB9Ln4bCGTiZwOzJek4wzbTcNEHZjlzGn6SKECPohgXMt74av4CCD
	7IpIXNgfOkoGLwS2Aoi+srRaBSp0CQoImISiEns1qSK7e6Euq7cPlg7+xeIajMY/
	/vsw9gejnqeRmc6MoBwj07FQTf1zRgu64qfDV63X8D/nP/oInbveb/el2CD9cTn3
	tP+BMg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qsk6bcv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:32:38 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b1ffc678adfso3579655a12.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 18:32:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753752757; x=1754357557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+WbtO0JaeN1fhr4oYLduWJfFLHLQ9helHJAYmSQJKos=;
        b=M7c0g/Ut4RXWBWdAiNyE7dm9SVG7wLeu+SwtaNCqsSuH4WiGeoxfnSHCoAFlTuIfnF
         igoXNbRzo62jOnPt5ZNvKioFpPGieeYDgUjpZxV66nVvizyRTYGic7ReicYTD6RQzlPR
         T9O1srksMQSABJZ8Jc9ACgQr0i6mJWS8b1rrPSy98Nn2JBi8HzY69apRKi8IA00H8wef
         jEUyhwSLrDPShnqM6evc6M94isdMFH7hAqdStGnEiPpP43HdXQz6rUceuArfjfUUnOLI
         KkAcpTG5vP3+EBm1cgqcJq1OTpkp/uDjAzTKRYfEGSqG2k3EKEK7FNgPGSOut1T/d6bJ
         nbmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRNLoqRcg/LmRFL+xJfN1/CA0fAREhL0AardZ1JMU7usmD5tMadS7WBGkbjv7eJgHCsKDuUCaSolvp@vger.kernel.org
X-Gm-Message-State: AOJu0YwJZjGRRSIpBsKq3eGsyJx3EZ3xJx3afa1/FoZlTJzkuW4kRR40
	nNuHVUkT+EJTEZWBgNyotK6Nq6fkr6UhpkfdXnKEM3C3CDSE7KBZScwhkJnFG+1OlxqIjfGgwJ1
	6BbhstmdwrOm6mC43BPpiyJsB5gMozWnqmKPScbE0BakpLd57kwZgOOaCB9Y6MP93
X-Gm-Gg: ASbGnctJnK0tzFI36hY2Kwdd6xBdxoPNKQv7fwyc40CTflvPylKI0rUCp9lL+fEiXhx
	wIpa6NFQKIPbM6e03NlrTZglwDilM8UcsgBOZR3U/SoYyycprwLxRLzq6knkwbH9XzNVzP8ggMP
	a3OWVzvGgz0fg8eN8duu5XbC3bMzcTJ+6sn1+jvHXycjLHkczeLwR7w0sIFnZn3SyNMbnKoF7Hx
	cyFifg2EuJaWogKuUgcLbypR5mkxcxcQHI9A3zVCiTJ05e7gL8AmmeYhk+7V/lZHf8FIvHDPGHO
	DWFf6OWpRHY0VB4ypVTbKG2hmupl7ZZeNwCdx7FHd0QUoDuCjclIEDrBf5XCP4OFXVPqyVlMfKf
	l/6i4aOOZHoXKs/K9IMFnxsrqFsPMdw1cGw==
X-Received: by 2002:a17:903:1c5:b0:234:986c:66bf with SMTP id d9443c01a7336-23fb2fef327mr178450965ad.11.1753752757365;
        Mon, 28 Jul 2025 18:32:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa3hRcc8uYaZE3mUBUkpRF0ee2DHpWPplGSLAHNpWv/FMvjfBEx8xAapx8JkFCzhryUd99CA==
X-Received: by 2002:a17:903:1c5:b0:234:986c:66bf with SMTP id d9443c01a7336-23fb2fef327mr178450575ad.11.1753752756809;
        Mon, 28 Jul 2025 18:32:36 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2405bca90ebsm11210625ad.6.2025.07.28.18.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 18:32:36 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 09:31:58 +0800
Subject: [PATCH v3 2/4] firmware: qcom: scm: Allow QSEECOM on HAMOA-IOT-EVK
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-hamoa_initial-v3-2-806e092789dc@oss.qualcomm.com>
References: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
In-Reply-To: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753752746; l=902;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=dpxW8aShh2RYLX9CjF0k/XEH2duG8LnixEBwdfov9eo=;
 b=8Q7Q8nlyZKIFvBTCy9gXYcFEMWitIr6B5ietc72n5mFzetjwBg2rFJQ5W3k/hSmyXKfS6x0PR
 Tesb7L2qmL2DsNEwx3u0OjoadRF4KZTJwef+H1OCiDK9yJQXTWYTDjg
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Authority-Analysis: v=2.4 cv=KdDSsRYD c=1 sm=1 tr=0 ts=688824b6 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=h7II6S6JRGbW-U2bcKQA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: Mb7tAPM-z_m9wFYPV80FHT-afqpTnc7U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDAwOCBTYWx0ZWRfX61zGyw2rTffx
 MPmVZvSYbAOcROtLjBUnLrvRf9Ml8tSwEVAQWn6H9gTwjqFhaD2EaLZDkeDME+v6lcUyoZQdYD9
 T9Q56rXzGTc3tt5t2Tyc8zu2e8k+lC9g4FtUfy0gzepc+jg/lYWvWzovQPQQ9N06jDYa/VyNhK5
 HsLyJRLLjCOERlu053I52kTUavEbJPeAZGUlwhuuybkFqgvug19lBi9u0+3Yq8F3RV3eNfAWGbm
 65Aw0qbSJzmW9N6ABtIao2zXfv4PxQR6+v8I6pwr6k5GyUdNxcGW/akG/O5jtcm7MjFVHgqt5cU
 W9Hqw3F49fC0gfJO/YST8oTE6mGDgYrPJPlvQq3pcEUgTclMD2c+Y5lhFOYvqb3KpYKxMohj+kL
 UaMm7oh5AnqeWvVzOSDSNfd4eZJMRFJJQb2SIPiL8Rz6waw6ehsnjPAWpMCn9mwoqKpsmNgJ
X-Proofpoint-ORIG-GUID: Mb7tAPM-z_m9wFYPV80FHT-afqpTnc7U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_05,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 mlxscore=0 spamscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290008

Add the Hamoa-IoT-EVK board to the list to enable access to EFI variables.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 26cd0458aacd67dcd36f065675e969cea97eb465..27c9d4a0912646415efac2df089ddedaf971fcb1 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2006,6 +2006,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,blackrock" },
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
+	{ .compatible = "qcom,hamoa-iot-evk" },
 	{ .compatible = "qcom,sc8180x-primus" },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },

-- 
2.34.1


