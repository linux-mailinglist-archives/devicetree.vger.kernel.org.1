Return-Path: <devicetree+bounces-261158-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFFYHLKLfGnvNgIAu9opvQ
	(envelope-from <devicetree+bounces-261158-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:45:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 117A2B975A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:45:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BB6E301D058
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135FF37475C;
	Fri, 30 Jan 2026 10:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WoRBOyTH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MIZbkIIg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B277A2F0C7F
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769769887; cv=none; b=BEZZ2giRPwthbON5RoKCgVz3c6YtW312E4D1qEmqoZZ8+/HTPHYqISZlw6S+HB8ONCKMBWGJEEnfqQXcaycPVvcj1Bnx5S/JCcQg7lTZj7qGLJN+Km6JAytiCqPBIuLqjc8n/OBcknboo15lkKcGXGuplcaPn0XUfkMA5NVm70c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769769887; c=relaxed/simple;
	bh=1/tlWyaBm1LL+MIjYbt90/qHq9VAdMBrGxS+MfzLnTI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oab4v8s9qj+rHFNI5WFfAHjhRaXN+6kbsaKCJlDpb1PsRWDzB34mYFKp5OzBkcS84cIBXVyZD93CWp4dqNZeqGhkAKIqWj955WiECJmqP0pAJxgsGynEaccvmgG5KTp/Qkr311ETNeUAr0dTNqrodD+UUjHMuuOH6xIWErK7GG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WoRBOyTH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MIZbkIIg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UAhIZm1826292
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:44:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	12qV8rSZThwrI4RrBfMUZj7JPmyTo6MCq7R8VL3OrK0=; b=WoRBOyTHvhMgl4hO
	GGAFffZljgejpk1+ICFRJOpDwdumaUOIK7dPq3ZOBoKYvhWiyRVRNUjzmGKJwe7v
	DIwkirmGeCfdpd+tSh5KqhvUsYFKyKst44rv3lMk7jZMellOZBNKpsSpQMzcBeAu
	taFKp3d5dwhEvXZtH986CELKLVch4eyPyUoRkkXbbjBQPfD/Vbjh8azYW3fmHpbI
	eeYeBp64LfuxHkKWrxnXWHwfXcRAxVeXMy9RcIb9dDQYCDnyfN3Ht1aVpigacbiB
	eS6Rzf1iseKUEYs0MdBp94veiiZfxwBU+qreQmQ/0uttp+dU7DnknGYeH0NnTanH
	p/xHow==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsms1pp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:44:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a871c32cdbso20778245ad.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769769883; x=1770374683; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=12qV8rSZThwrI4RrBfMUZj7JPmyTo6MCq7R8VL3OrK0=;
        b=MIZbkIIgv8+K/EgcngWcQm+FifBWOsbhZ2s43g2wIkwCAZzg1acAzzo6WBkT/DNSlK
         aXJl3fKf7VTILat8nBuP8gyhLWX0w+NOyKa8/5LprJGj0c+OGGOChVIbIQpFRnXZIgXY
         68R9rihZfeg5R5hleCFKmXBUwCIdfqXp6JAmwjuRHhzWZKgiNNbubs16jm3MnicacNwd
         UtLy/21070gLYwsFnE4VxR45MR9pY9LJSNnRsLOE3GJ5zcPyrc26saRdSjqV+gx+301k
         n3WdQPaP8bMsvlCcUsoY9yPQIZj/v2CXV0hyDnHl87bwqSDG4kW35lYKiHAOYZhw7dLh
         IbyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769769883; x=1770374683;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=12qV8rSZThwrI4RrBfMUZj7JPmyTo6MCq7R8VL3OrK0=;
        b=tqz701klGaSzgUM2a/Wdl1lB/+nBMHLZeR03Je71JoBvtpq7CiQ6scd6hGgg1kHvjr
         Q0CZsvn65en7fK+cOkPT/LOkSVuCcDdxsi8FvlcQHVMV8hNq6R90BKXat5qEy8ynHwGs
         0CQnuUXxc/Hs9rSv5xZ34Gpv0yHkIp89QF9nLROgGo/+xCLnfEaOwkPktIEz/Llib4x0
         wk4mdslJbrbqA2/UX9H44wN03qEbgohMZ1xekjmJwXCTb33mtMnDHIkvUEgkGqZL4E04
         LIKdNWxbzb1jen7j/MRa7kyRoAXnxD7M5o8x1vr3QOm75PU/C4dVEe1T1pVI2rYRfulI
         0BEg==
X-Forwarded-Encrypted: i=1; AJvYcCX9NiCQ2q0nqX7Pe1N6UITcuEMe5i9NzUSOi0f8wp9mM9++zyhdENX3IRNhQ9PcGQ1V60Ztg+SJQR9E@vger.kernel.org
X-Gm-Message-State: AOJu0YxDCbapvXFUdJ8HyXtcUGPjRE9lztlzo1L7wtByXhaJG05+eZD6
	H2Mjw94qHlqXSrYdQO3818jaZy2awZ0ofkj81yHdVTnyf747R9k/X5GMG2TA2xdE5ol2J57dV80
	bhs4Vhy/M4ODlSEzDilbbzBZvJa3C4NBW8O+t/wPMO9Y1yIUyoDZ6riInQaia13I5
X-Gm-Gg: AZuq6aKgJHN2xv0xdtFS8ApgnfntzcSX8nJ66QN4LIcqZPpwfPckClxCP9PspTvpvIU
	edWAES3ldxdQUQJZ3U8UfWo1vGrlct2iqKkXwLIMiOAiiNY5cjgIu0uHabs4TPHQ8Oc6oXH1JRM
	ddEXyUcvEkBNolHpGOtfuxrRQJeiQJ2esR/rNMzzgKOsclXKzFChvhlnq1D6yxqijnzt5zaNEwi
	C9B2Apc7+LxlCvJSwaXkYIqZtq9aXSHyWh7Eavvdzq1DPeF0TSnsdBSNyp6RT1vKByNvjzi+ciM
	1QHyp0+Ekbyt5WpldYwWGCy+EpTAewG9y5bzl0DWqRkZ9felOvWp9RRHY41BFv4F3j30c0SCDSO
	oVGKHUrMHeaKpB/dIFjTAPHetRQ6pLMHP31pZv2F3KWkMa2HJ8RK6fsyD6qejUaFkvrwR/oqCD/
	sTg3Tm0TGoMq0ujyMKrZ8qQtviiTqFbrlAuxwct/3XYMGp
X-Received: by 2002:a17:902:e84a:b0:2a0:d4e3:7181 with SMTP id d9443c01a7336-2a8d818b7a5mr28035875ad.49.1769769883499;
        Fri, 30 Jan 2026 02:44:43 -0800 (PST)
X-Received: by 2002:a17:902:e84a:b0:2a0:d4e3:7181 with SMTP id d9443c01a7336-2a8d818b7a5mr28035515ad.49.1769769883013;
        Fri, 30 Jan 2026 02:44:43 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5d92a9sm71231465ad.69.2026.01.30.02.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 02:44:42 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 16:14:30 +0530
Subject: [PATCH v6 1/5] dt-bindings: sram: describe the IPQ5424 IMEM as
 mmio-sram
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-wdt_reset_reason-v6-1-417ab789cd97@oss.qualcomm.com>
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
In-Reply-To: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769769874; l=1672;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=1/tlWyaBm1LL+MIjYbt90/qHq9VAdMBrGxS+MfzLnTI=;
 b=H8IDM5WqB8c5eQfensVcaUehXaAjqNnaYzWs8ng3RBTX3MQ4njQrk++ko+O1giDJGjY7Lzqcj
 ce6afgfBseOBi6Bmy3OYcv4gBEKSJJx6DeVRrTi7mK1bjMshotQqSHf
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4NyBTYWx0ZWRfX3fa9Rr40FqrL
 3jL9fotKGx2nIJCbdgvjdJUmZANr7YkXiTIPw74xDYcVzYy5NzZea+gHXBtichytrJFAGJflWB/
 FxOHMXm5iJuRA4/+Y+LKvObRL1cBMW0mTvr+v66uqsmB82jx14ydgdH5Rm/ol99cNvF9id5HGV0
 RTfSWOMUTe5C9wTihVJBf7xypbLJGQHxt6IVS0Nc3vSvXdkG87u3k5OdEZq7CeqmcQ0ri1m8YMZ
 sYmEPJqDfTW5G5EWOiHhAvl6tBL+Ru3+dBujJLzHEJsM2sILct0VU9jDcDm8TdmxVGPxLud+191
 lTRbVNOYQZTIFiil+aYU/FsJFYYcylway50qAHCMinO+lDQgRElocWeqjeyTt0q2jxzB3qL4WOm
 8UjroNg3iL5pERXXBTx5i+tBXoQMcdd0mfXTAVI6QdLUA74JNow8wbma/f0U+9gE6lcbJ7OqAXy
 dqKDCWuZTeekZ/3pMXQ==
X-Proofpoint-GUID: SO87CVL6XYa8t9CiRE6bdY4X5v6Eap6_
X-Proofpoint-ORIG-GUID: SO87CVL6XYa8t9CiRE6bdY4X5v6Eap6_
X-Authority-Analysis: v=2.4 cv=HMbO14tv c=1 sm=1 tr=0 ts=697c8b9c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=e_-3XkEp85WdVaS5J-sA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300087
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
	TAGGED_FROM(0.00)[bounces-261158-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 117A2B975A
X-Rspamd-Action: no action

Based on the discussion in the linux-arm-msm list, it is not
appropriate to define the IMEM (On-Chip SRAM) as syscon or MFD.

So drop the compatible from qcom,imem.yaml and add it in sram.yaml
binding.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v6:
	* New patch
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 -
 Documentation/devicetree/bindings/sram/sram.yaml      | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 6a627c57ae2fecdbb81cae710f6fb5e48156b1f5..72d35e30c439ccf4901d937f838fe7c7a81f33b1 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,7 +18,6 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
-          - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index c451140962c86f4e8f98437a2830cb2c6a697e63..7bd24305a8c7d98dc6efad81e72dc8d86d8b212b 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -34,6 +34,7 @@ properties:
         - nvidia,tegra186-sysram
         - nvidia,tegra194-sysram
         - nvidia,tegra234-sysram
+        - qcom,ipq5424-imem
         - qcom,kaanapali-imem
         - qcom,rpm-msg-ram
         - rockchip,rk3288-pmu-sram

-- 
2.34.1


