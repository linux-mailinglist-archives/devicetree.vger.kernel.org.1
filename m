Return-Path: <devicetree+bounces-256897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C2FD3AB0C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0E5973000B18
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9711368294;
	Mon, 19 Jan 2026 14:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k+B8GWtf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T87riYLW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060F536C598
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768831372; cv=none; b=ePMLNQe7A4K/xDIyGYEdm1TItOGULBxaThYDZp/pTNN2lADaVB8ENOSzpqe0Fyp3LRAAzXk9hUKwCwIJSAVuBi1RJ1PdMdjRmqvpPPF8UnjKtqFaFl08RRMfRUJGzjg7jdYQMLLUlKBeCjSDPWP9k1yrhNYX4Y3DjWOMUFchrGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768831372; c=relaxed/simple;
	bh=E7fHKTwM5kQWA24lxy1RNzMv9gSOpyB9Vk3+2q6FLHs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KZi6ogRNXd6X0YOW6Fj46P6PleB7W4R9rtWHqTg5dZU20H8XQaa9xQoatrbUUt8FYnL4tacnL4T7ZfZLa2r+3ReHkek/q512uXf/excKTEVkkZtSTQ+kf1ItCPFoctrRQwm+ur/KLzZqII6s0gVOah9ZheQ11BifuXjMNcHyqYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k+B8GWtf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T87riYLW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JDdDgv1347458
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=fGhqupyolB5uH9UFQOHKkgJ43muW2xQ3TpC
	9A+8sGfY=; b=k+B8GWtfXi/Dw0gvpD0r0AyT1KUcu7tZb3u9W/XBqYt0Dg4PKjR
	oMSIMAcAq9zfEfHdkcgAiFWlDYhbwjAA0G91+96QXnMfLE+Nbj0Y9TkctgqEgy/c
	zOoRGAYTSE5JZixc/yUAYSmT6tfEGcKp/QbMgfqJuTFtSL9KPAWtrqJZpwJ3jxZZ
	X65OW8lY6R3jkTmsBjMBMc9BaPMUjXlksTKuzBNhGJ8Nnnl+Q9ok0KbGBKu8vTvo
	q2CmuMiISmKcxRltJJKNHcU5HiZm+n3UGpCGXz1+6VXLsyAyXz007SHk1r9bnKkS
	yxIehqgb/jSxEG1V868VuNVg2y/5tpX3Apw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdg1v9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:48 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f1f69eec6so41888025ad.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768831368; x=1769436168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fGhqupyolB5uH9UFQOHKkgJ43muW2xQ3TpC9A+8sGfY=;
        b=T87riYLWlcvz3+WWqE12lRzyGuTdu6iYLvODwBy1/ZyzfTgUIQyJ9AjNqAWVVRra9o
         G03I3DLEdTA/icjCoEMimrytsxdyA6BvuPS2HE32JPf33xVB9ImGfnRskYJQ87mcg5Ay
         OPYgqHFQBxaZa0jA6dGaAcl8wjHUDsFKYGLR7hMJTYEWM8whUusvN1BFtpXdbL7vgKPd
         CKU2pJeQLyG01mzwyYsUtWyRnEfIFxja7QIUyBC5r/DKdAI4XeQeKNapVmITVtluDt15
         jqAOEYS3IS/FYoYi7tnbC9rnMsBLgIi3m+d5pb+AWqwHCoMXi5CYAyT4meykEM+GswZL
         4GSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768831368; x=1769436168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fGhqupyolB5uH9UFQOHKkgJ43muW2xQ3TpC9A+8sGfY=;
        b=q+lStgnPA8GV9Ev/RbHkpZf7GIlJ/5z7WwGQZDbI1giP1E5kImiMDMmsg1cITJPovT
         o0fuEK8JkM8CfcUudXTw+q/EW7A4io2lpqc4cZ1a0jXVSSGPAZIlsgumW2UdTDAyFZqO
         lRLrvlve75cIx0C8c6NRVAeu3QoPVIzO+H/8u9bvaezWYoGyF0VicOq2+KpSjEl1lend
         kGj6mFoX2tRMAztkX1L1DOwkM9UUfrB9IQTyobbL0oTQWxtJKf9qeOQtgLZxOUqNhHZa
         9dDxfJYPJdhf26jvVInecnAdLIrokcSM7qXL5cux0gT5yiOhwtr6WLHbK6FZvQkCUpjC
         +oUA==
X-Forwarded-Encrypted: i=1; AJvYcCUhiV5a2AoUN7EBFn+cwDXoukLUqe13ZrYolMjj6wMilWJZDg75pkUBYiP491WivCfymGPVQG3dYwcA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx86NFj6Z0/SqQjoXDS6exnUkdQTtqn4A6GpgO7+kfRqHPXOylW
	edaMWmNl7ERq0YtfwIVvyX7abnMT/J2DSBYf6Z+BIoTcM6k8zZiyf6oxJ83ZMiGvabaoknEMsud
	WUPc8jtcD8K09POXxyY47uDYYKWHyyNlkB0DtKMvhnFIiROhO2A9ZWn1bmlod0rvq
X-Gm-Gg: AZuq6aKAepY94yvbNKZm566EntBRuGcOtenIqO+rf5ffG6pTLGECrc//ktYYCtfN9O+
	RX24PMW9cFSjKtFP+OgzKAAEeZgkbfP45l8ij/1qONvoblJke6KcJAXZKEDeQZ+yPbHZI+dYxtz
	7pjSI1ZffrSTFNdYxoQm+XINCczFseZpMAaivYz7j9xwRLFsvjS0/FbDOwFQI2qtkSGulE/fWz5
	gq8oqKB5rWkOCvjQXil4SgKicywKgXzMzkvZK74uSGrL+qtyAx3audCzXUV10Jhht7Z1IdMOwJh
	O6HZRytG0HpQEmD6FkPoViJqQjmDQO/Lz1cU3Aj3PVrtdpq3z2aafI2jUc5xL+i2lHmcRQ+48Kx
	2b78sPysj6QhLKJG4RAGjCU4xvrCGdjbGT/8h0Wm0KMLDUgoQpBp3kPBnMul2id3kFZ68
X-Received: by 2002:a17:903:3d0f:b0:298:33c9:eda1 with SMTP id d9443c01a7336-2a7177cea20mr112457455ad.43.1768831367482;
        Mon, 19 Jan 2026 06:02:47 -0800 (PST)
X-Received: by 2002:a17:903:3d0f:b0:298:33c9:eda1 with SMTP id d9443c01a7336-2a7177cea20mr112456915ad.43.1768831366809;
        Mon, 19 Jan 2026 06:02:46 -0800 (PST)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a71941b915sm97416715ad.90.2026.01.19.06.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 06:02:46 -0800 (PST)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzk@kernel.org, Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH v3 ath-current 0/2] wifi: ath11k: add usecase firmware handling based on device compatible
Date: Mon, 19 Jan 2026 22:02:36 +0800
Message-Id: <20260119140238.3360658-1-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696e3988 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=AnkVv3gU2zmn-KRWxgsA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: LcS1Q_QbS1UuzDxhcTP3i0B569nl7ViI
X-Proofpoint-ORIG-GUID: LcS1Q_QbS1UuzDxhcTP3i0B569nl7ViI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDExNyBTYWx0ZWRfX4RSAT5SbzOw4
 OoF3dsldGKC8Ij14/1xIhx6z96hYwI3Gv/PjGVptOVlBT+lg7a38xHmRUWLNEJEj0mmSZKCgKga
 QwNLErdJKqVfiOXqfPlu1BXuz/TLj9tGw+NCW/h5hGPYzDhFJqBPUp8bYQRIt3gFw4p8BgLvpkG
 sR3iZ21+yl7hsXV748rwod2RffbY6c5cSsZbA0LdfDaiid6Xy8LN+qPwN/8VdSL6cm3WQjvVOGE
 OATI9hCIvsr7xsON0Xbqkn4IP19zxMtfL/KKHpOJ97D3/uynNdc/5HttHwtllVof4IxEa2G8iWG
 d61vJhUoDl1LvNB1lzcdwOJ4b6fCv1DrtJHPo/4MZWHDK0f9SORADGqEuTAFHDfqgiZexFEYe0P
 agX6smE5/Jk0P7Zx+SyjW/pvO4y99O8ovKtbbPztJjx0i3yn3sBeTkauGwzcaX5tEAaTYyQp305
 3LzlIDFxwiF7f/vLhvg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190117

The 'firmware-name' property was introduced to allow end-users and
integrators to select use-case-specific firmware for the WCN6855.
But for M.2 WLAN chips, there is no suitable DTS node to specify
the 'firmware-name' property. In addition, assigning firmware for
the M.2 PCIe interface causes chips that do not use use-case-specific
firmware to fail. Therefore, abandoning the approach of specifying
firmware in DTS. As an alternative, propose a static lookup table
mapping device compatible to firmware names.

---
v2:
- Drops `firmware-name` from completely.
- Updates the commit message to clearly state that the property is
  obsolete and the change is ABI-breaking but safe for upstream.
v3:
 - Deprecate 'firmware-name' property instead of obsolete.
 - Keep the ABI backwards compatible.
---

Miaoqing Pan (2):
  wifi: ath11k: add usecase firmware handling based on device compatible
  dt-bindings: net: wireless: ath11k-pci: deprecate 'firmware-name'
    property

 .../net/wireless/qcom,ath11k-pci.yaml         |  1 +
 drivers/net/wireless/ath/ath11k/core.c        | 36 +++++++++++++++++++
 drivers/net/wireless/ath/ath11k/core.h        |  4 +++
 3 files changed, 41 insertions(+)


base-commit: d8e1f4a193101a72235416f189b01131a57e26e9
-- 
2.34.1


