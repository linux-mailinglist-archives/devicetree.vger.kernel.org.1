Return-Path: <devicetree+bounces-261100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLmNDkpefGkYMAIAu9opvQ
	(envelope-from <devicetree+bounces-261100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:31:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C79B7EF9
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:31:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 242C130115BF
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0723930DED8;
	Fri, 30 Jan 2026 07:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o9azm+H1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aYRqOY5C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6462DAFDF
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769758278; cv=none; b=XjGGOveKd+GJkam0StiPvnnIbYdQ6oRYrzSw1iLhnp3gTQIYC08RuL2lGGbnhNeH8aLstCML4xX8Y0ydhaCyG/pEV6Xlzf33Jw04VwGX4Tv2GO0EthIrDOCp4LHq7+HAREpeaCDJnL89xKOyNwExo0JL2fgv+6TLJd9QxKx3xhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769758278; c=relaxed/simple;
	bh=K9o4+8dL4DAs6FnCTOf0dkAwq+TDIYPUZlFlla0eTDM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VyjSAmGUx1eW9Synh8JWQIGlkqZwx5Ageheccg+RMhVRYM+RID82O+/Zyztpr+e1oG18Jw02LSK0r1mRwBXa32YSJ0EamiUlNXD3eZTgHl1DD3SXxesxlaBzZv1eov5zmBcp3gGDTIxTc86OeXNsxAnBfRkwjwb1InymgEVs5FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o9azm+H1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aYRqOY5C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U4tg7V2295204
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:31:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=msnY9GJTIxur6oPtc9V4Y8nN9Xbi0+qaamT
	0oROp0MA=; b=o9azm+H19zuO87v9CERHRZoPf8lYMuEIS9Xdbt5bVkIcmpAGDrU
	XCt86zfpKgo3LKtXRUlebRYxmZuCHAauPJMkG36wy2+c8ebjEGZQ8ryV6Z4isy5/
	0er+h8oLFqhYhkscUKcAU4IqZGWYxge5mPlJcX3ZHuPF/f96Kb1ldpVLM7xQfapT
	rCX25M58kiiDGJZ48g0doq0aiKky6TZvcZ+6/6kzZ46IWfNs7w8QY4H39zmC99GV
	8Fd/dpu4FUV+rh/tKAKLDoMf+HY0JfQjCWwBinC073ZQ5SJ/KbAfz4kJfFX5slYu
	/eRPAP7xeCOV1I/+xepdA7NdaIJNaNAtLKw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0p1x8d3n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:31:16 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b6b9c1249fso2975522eec.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 23:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769758275; x=1770363075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=msnY9GJTIxur6oPtc9V4Y8nN9Xbi0+qaamT0oROp0MA=;
        b=aYRqOY5CKjTYAcLMcxBy+OJJoTQfAkeHoQtgrFr/jWJsHFq8ifOjQM9z8V7iWflohT
         xePz3afT00uxJ9tWayWY5wurF/sdDp5VFGohqMPFEXWkIanmvODwx4OLtz+NpytMlLAy
         yYalwuX9E6bubl5mq2XXQsOL5j7S3k7p76bwnz1ztkwGzFzddyBY1OfDsRqCM/3WWn6p
         4pq3TV3+iu+0wHFpbYrsMdjCUlypOkMslA36qL3AeiyfEbenUYtZ8IUJ96BHepziQrRj
         835QfuQFzb0hO8QGDWfZjZI7UxrWwJAITomZXzSryuLR3XlTrPJwJ6hie/WT1waxUQkH
         IUsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769758275; x=1770363075;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=msnY9GJTIxur6oPtc9V4Y8nN9Xbi0+qaamT0oROp0MA=;
        b=upcHzlqrbHiI2TSxDWEtqrSFMmA3xLJq7EBqbTAJtgi5102ukV9+G1hjAG9ak4g0Qi
         83nBu+VIOESSbNEDSREF8LnzbKMtxUyDE6o3NTRv0rMwKbdKZIH3MoLP7BpcDm19tseM
         +gq4k0IqJfhtY1IADU58H4a1/ZYBx26SMnQYdfTNDsSZMvPwpdDFWOkulrWW1bNnO1VM
         qby+T64+H6AZobxwv7F3v1wQjtTek9D0p/klGAwsvZF5fslPrheze7xOgls8nWAQrWSB
         ecvT3paxDTpPieOt4/fXuzp2nt/9D7VLd6JE7dj7eGO/kUDj7zC+BOH/Rr7BUthBBVBl
         c2TA==
X-Forwarded-Encrypted: i=1; AJvYcCVm8azlD1iFLEkWi7z+1nveNlocJiebS4KXy/k/ntUlSGMjW1GG3bMk6Edx+viqgzSTBBVbA3iPlZnt@vger.kernel.org
X-Gm-Message-State: AOJu0YzBvZAFSKrenqMiDurHgSeIHfNkxNyske/OB9JMmJk5vLy/L8qX
	NRyrJr+jtKkNSE7U1DUgw1Ui4bGh1fVDL0A9hoT7wp2EIj/IB9JcdZP/msuS1vDU7wu8GK/QG+V
	utEN4hVu8k346p1TcLEwjHt8N7XdSNIsC7/AngEzjijB9/tsXXf820jJttf8GCkw0
X-Gm-Gg: AZuq6aJvYPSyAOxBvwlPaV/TcsXQNiSyAc2Z5odhTzggDIdErAZvq1TLksNVwVDYJh2
	UMKfhkU6a3R5UFJLC4BR6Msu1RbpDq6mmT6tNltvPvmopqirvDN45CRWCziqhPlxrgOMQyUxbkC
	VNGbEqsOL2XJz9dJoAaIfx3D0259v9U5ViZ6sGvzK2ympZC9yxLbKLQ5Yv7lL4wLMIVvKOZ7o+z
	zI7yriddE3zV2q2thMLvdSoFhqlkRxJBI5Hf9pOFvF5wgWARWW4uyFT6WMuqlK184r6rxNQ/QkO
	P8U4YDAzSspBg5WBZzg3x3Ofs3cAJNZeIoNTew0zxWh1Rx1MEnhtZA4RtU3sHN7ylX3umGa51hQ
	ZVQlWYSNlyWSffeivkESE+0ZW3SUgM2H0i+yUeTIb+bL+havlY79DaDU=
X-Received: by 2002:a05:7301:1f0b:b0:2b7:1c58:dc97 with SMTP id 5a478bee46e88-2b7c8634916mr930200eec.6.1769758275321;
        Thu, 29 Jan 2026 23:31:15 -0800 (PST)
X-Received: by 2002:a05:7301:1f0b:b0:2b7:1c58:dc97 with SMTP id 5a478bee46e88-2b7c8634916mr930187eec.6.1769758274786;
        Thu, 29 Jan 2026 23:31:14 -0800 (PST)
Received: from hu-liuxin-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a16cf8f2sm11197535eec.7.2026.01.29.23.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 23:31:14 -0800 (PST)
From: Xin Liu <xin.liu@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com
Subject: [PATCH] arm64: dts: qcom: hamoa: Add remoteproc in EL2 device trees
Date: Thu, 29 Jan 2026 23:31:13 -0800
Message-ID: <20260130073113.3091884-1-xin.liu@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: h4zIEMIlw5tR3k24Kw6pOSrFgmFrzpuB
X-Proofpoint-ORIG-GUID: h4zIEMIlw5tR3k24Kw6pOSrFgmFrzpuB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA1NyBTYWx0ZWRfX4gHxrBGo82gv
 /0z6bucBzU6efCWr2mbsJnt0an5qbEKMMYh0fHgvTT/kSLXoGfWPIqrIe17vwpUp3GcQ6rxi8jQ
 WMqvg7965kIIM+WWnCpyrKheuRDWUMc8384P08uTUmfgOGrg7cKt4fA+OTXAEHFiC5LUipK+RPH
 T6SzyOS4xh/M/cen5lTBCk9ROtW/LamP5Ojow7doQ0iLvjdLlXNwbHqQXvJZQYdE0og/q9NhUzi
 N9rYZbtj/YsA+M9OHqWYdh0c9lQRO9SLQkyFIbYDG0l/Y9H7zDwut9EeYn4ckvGHhKpVeNX8CXc
 nFZNdhNjk44dFCFw0bBp4oL84JE7qMh8JqCvWJ9AADQ6F4+06UA2q9AFFAy9/pby2a6FIFUY4IU
 VrW800goKYOKuiYGW4DwfrOaM8vTM6X6p4FS7WBBL9eSncsgVaK3JHO41jkXyGdbYa/rTghKiKc
 0aqSmCoH9Hwgw6aQ/SA==
X-Authority-Analysis: v=2.4 cv=G5cR0tk5 c=1 sm=1 tr=0 ts=697c5e44 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=oz4SV0ID14j8E3haEeIA:9 a=eSe6kog-UzkA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300057
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-261100-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xin.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A5C79B7EF9
X-Rspamd-Action: no action

All the existing variants Talos boards are using Gunyah hypervisor
which means that, so far, Linux-based OS could only boot in EL1 on
those devices.  However, it is possible for us to boot Linux at EL2
on these devices [1].

When running under Gunyah, the remote processor firmware IOMMU streams
are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
by the consumer of this DeviceTree. Therefore, describe the firmware
streams for each remote processor.

Add remoteproc to the EL2 device trees to generate the corresponding
-el2.dtb files.

[1]
https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi

Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1-el2.dtso | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-el2.dtso b/arch/arm64/boot/dts/qcom/x1-el2.dtso
index 175679be01eb..8279854fd73c 100644
--- a/arch/arm64/boot/dts/qcom/x1-el2.dtso
+++ b/arch/arm64/boot/dts/qcom/x1-el2.dtso
@@ -52,6 +52,14 @@ &pcie_smmu {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	iommus = <&apps_smmu 0x1000 0x0>;
+};
+
+&remoteproc_cdsp {
+	iommus = <&apps_smmu 0x0c00 0x0>;
+};
+
 /*
  * The "SBSA watchdog" is implemented in software in Gunyah
  * and can't be used when running in EL2.
-- 
2.43.0


