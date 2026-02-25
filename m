Return-Path: <devicetree+bounces-268146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJJ0FO6anmkSWgQAu9opvQ
	(envelope-from <devicetree+bounces-268146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:47:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE601927FF
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C7613101602
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 074E13019C5;
	Wed, 25 Feb 2026 06:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XUJ2V+9J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WIKZBcUK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C12E2FFF99
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772001827; cv=none; b=h9DTsQhxYH3+fa0+6XVAqS0jCF7ZbbAn4KSPlMGDtG+Biwc68U+cvzrJrgLKX79PWk5S5fHzVwRCBSqJ0krISAcLqqLLb4KQbrKMRSgNqjiv+XJnLQPFkiLtGcY0knuh0W3rHi4IJuQ5HLQNa+XNKPKSn2/zsCJAnAOVlGwl8Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772001827; c=relaxed/simple;
	bh=UPljPnwGN02FV4whxe153HvivXYHL2hbqv3xEdBMCks=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jOJelhXrX3GZ6RicFgue7qb8cVFxl1Cz3M84oq6GdjAa7JUGS73NQrzm6AWTiqi1R04U13kFIKcXbhKo/hccgmIahPRQJLNcoVg/KN39SoH6jkr/fGHRpCzYiMe0r+xiEPwrsjpP5RpccOXLhYHm8zK3972WUcmr9ODiQlNmRu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XUJ2V+9J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WIKZBcUK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P20R5d3660279
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OJigwPyGJ8dCjHF+mFF/TMsitlZdF2vQIcs9383ED/U=; b=XUJ2V+9JWJCaXutu
	RD7C70c8ALztZJxV1QzuHe4Bv5j58MtMvRd8J6gbGCzAJxF3xxHuVZ5o4JBXFcRd
	nvjI4LrK13P9yYRamR65+RJAO3WKmNqjKRBHMkQQ1IqpLv5DIsRc9HkL01wuYqI/
	3zsnvDgXliE6vHFxVjYM3l3xMmmOyx+36DPZ0LCMXXPMBDdp0hQz9Ev/LRtjIulS
	21jLazIH1LNmL6l5amb/t9MKwjDgXsZgjNSZQXqIQJ17wcfMYnS7QQxI8f08fCff
	OvLd8Gpfa5wdcwbWWF0yYqy0RzEq4e3ssXEcb7DlyhKSdre4MjjE+yU4hqBwdlbB
	fvQ7yw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg1sa7nf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:45 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c6dde310601so3852461a12.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772001825; x=1772606625; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OJigwPyGJ8dCjHF+mFF/TMsitlZdF2vQIcs9383ED/U=;
        b=WIKZBcUKIt4eqIaOv0nWj5bpr3GKUeBh+ADyKOMQn710OevgcGTfLoNxX1D5PTgp7c
         wht41cuBWCQYuE1vR09EwwUIC2q5H2iZ8BzWEnnHhSu34XHbRcWb4IPIz6/tvQ/eWRJQ
         nlDpOmq0evWeOWmTr3DVP6ey7EvhAAIRuLQH1GVQ5ejaZEN8EpI7ME3L1aXp7q5zPfIH
         xmrhWJTgTlRbKAi9VDzfpJyPXhw1vD9TMYJq4p+7bSi466+Vhdg/uHaygZil/8tyHO3j
         eJI+X7IfrIFtqnbw1ghbPCkmZDLMATeaZWOaXfw8XtCyT5AcHG5eldJP6BZbtEf00uX1
         RZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772001825; x=1772606625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OJigwPyGJ8dCjHF+mFF/TMsitlZdF2vQIcs9383ED/U=;
        b=O09VZJ6Ctdj7wNvfb5Bc5qly62kUlXEBTW7pywShI2uNt5SvbKSiZdxSDXBD46lg18
         9QYvo3DXCoU8HphzfMTTY17BAbKtTHiU6Xprcx8D7sgNWjbF1vUa6jeeUCjnsxLzfIuj
         pRrEjFDAC4l0VvpEiOqO5/RXYbxeU4HHeDWg6MPnZoxHzWeVYqiGsqZmtMh8dsQVE5ZL
         vhVa3+T6Cj0Lkp0ebA5nuv/xH1XY75TRmlnKIAHzJLM9hmCAziD045m0/es2xKY1aE4E
         56Wy5dXE6bmjVc7ImC/mFje+WqS90yRfTtYBDGCGITnadUuRBZBPSkpzST1RjBbb+QbR
         KrZA==
X-Forwarded-Encrypted: i=1; AJvYcCXU+lHkKQP8z7pp0FALXhsS4+jsRNJXy7zkk4lZnC3L4WL2tPtj0HZdj8z9yTY+tZ2pnpzXjWl78mS+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6K0vo52wy99HR40xMRZglyWq/9TVMuA0Xj0P02mRABAe+fris
	xg4s3QRVwXGryaM6oAZg0zF1if796EU1863OGDbGMfbpN8SklD3Z9poA2c23MnfmxT+h520CtYZ
	3WtdyU/TsRcu/TXfaGi9Yl8Djc5EHLV1kHYzlkxzB5bTGTm9xnZUgNCGo+rUSUuWU
X-Gm-Gg: ATEYQzzyjh2zuMu4/iLYMEhevDw4Yr0IS+T/hhLT+aaBcOoT3v/YPjdAv7uGV8K2aGp
	SSy/njoD3ZlqVeCrHlsW/k85KdQ7LXawSPmlKD8ZKUsaaK6wgrQytThUp/8A0+MfXBTvIShmHSO
	rmOZPDbqCdjg4vsKg3sjMBcLDvzI0FnivLlAIgT2soqGhGd2FV86KIaW4AjE/hEDwxAH5N0rjZ/
	zZNx1dUE0UuFokBmfmw6Jq4+uq4L8nPanOXIGgsb1COCLUOpLvhtFjE+Y/NJRFzb08RHBr6MBSe
	H4xx4h2HBtvKsNY64ioL/lcCDco2ujHzF8H5wo07QfE3U3GNt/Tt/BqMqorsI29REcnfPpgHTyh
	Up5Czc7x8BQQ1dYld+Ls21RI4wf9z2Id6Z1LKzlDm+JrXysaaabnbl/4NW1FLSmHRmVMcmITXJs
	joH/roU5MmpwE7No/8kv0ibVTiP9jwAwX+32dXVhI+tWL790mLxQN7P2/U
X-Received: by 2002:a05:6a00:6d5a:10b0:827:28db:7a78 with SMTP id d2e1a72fcca58-82728db7ea0mr560413b3a.17.1772001825059;
        Tue, 24 Feb 2026 22:43:45 -0800 (PST)
X-Received: by 2002:a05:6a00:6d5a:10b0:827:28db:7a78 with SMTP id d2e1a72fcca58-82728db7ea0mr560374b3a.17.1772001823766;
        Tue, 24 Feb 2026 22:43:43 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd692b99sm12856570b3a.24.2026.02.24.22.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 22:43:43 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 12:13:12 +0530
Subject: [PATCH v7 3/5] dt-bindings: watchdog: qcom-wdt: Document sram
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-wdt_reset_reason-v7-3-65d5b7e3e1eb@oss.qualcomm.com>
References: <20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com>
In-Reply-To: <20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772001806; l=1538;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=UPljPnwGN02FV4whxe153HvivXYHL2hbqv3xEdBMCks=;
 b=ZzhsYL4PV10DnVy/EvE4tum4Z897c5DcHgfmu6cWmuAzRpoiWnKg3+FEkkcMDYPmMcF90b0r2
 ZZR4Qtn4KKEDnHpVlD9SZTuBj2cElCwkvWMyQwOGN2nSsxYxlnLg4E1
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=ZKvaWH7b c=1 sm=1 tr=0 ts=699e9a21 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bt_IPO6jKyPzq02bTywA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: A0A3pvotvnMDqT98L2WHHhjNXdR9T4SP
X-Proofpoint-ORIG-GUID: A0A3pvotvnMDqT98L2WHHhjNXdR9T4SP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA2MiBTYWx0ZWRfX+IXF1RuIzKBE
 Ah9UR2FnVnw8wf26gSeJy2jB+IbkZgQqbFp556HnaD2v67SKgQtKM2+081KZp2in9oY3eo18iAE
 bFuZhL6J3C4XXYHELur8WsTXgAI0oAgG0XjXb/Qtblb220mVx/xlaJsoE2Kwyde3/O1hfUtKYxW
 tXBvqjGc2yvwKQtLa6zn8adss98i6S99P6QZYAYEvbfEJoqccHh6nOSGaDb99EO4Na4wbORoVLy
 RwxocAkilGJYzzcGwoWN+DocZ++n2/dEqEX/TTgRPrWg48ElPMjPTUv8gEihFJbBe8TcprzE0uR
 qXzFxZO2h9RucprKaYkDx/mr+phyRos7deGC2pk2MG8uLh5pIKfcCHVqjQnytapfjmDPsVOPJnc
 QibWcbUbor3mldosEjJvJXukPYYwSSRb+60TKX6/64verPgWQMLGi1YHO7eYrGcBPD/COHP11xh
 SqyOUyRO0OYO4pJxI0w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268146-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EFE601927FF
X-Rspamd-Action: no action

Document the "sram" property for the watchdog device on Qualcomm
IPQ platforms. Use this property to extract the restart reason from
IMEM, which is updated by XBL. Populate the watchdog's bootstatus sysFS
entry with this information, when the system reboots due to a watchdog
timeout.

Describe this property for the IPQ5424 watchdog device and extend support
to other targets subsequently.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v7:
	- Picked up the R-b tag
Changes in v6:
	- Update the 'sram' property to point to the SRAM region
Changes in v5:
	- Rename the property 'qcom,imem' to 'sram'
Changes in v4:
	- New patch
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 9f861045b71e8316ae88f8078a86043a6d04def8..3ead00da3cd6ffa0f6102179565723d4ab6c2929 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -84,6 +84,12 @@ properties:
     minItems: 1
     maxItems: 5
 
+  sram:
+    maxItems: 1
+    description:
+      A reference to an region residing in IMEM(on-chip SRAM), which contains
+      the system restart reason value populated by the bootloader.
+
 required:
   - compatible
   - reg

-- 
2.34.1


