Return-Path: <devicetree+bounces-315349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id swTjHU8rPGpskwgAu9opvQ
	(envelope-from <devicetree+bounces-315349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:09:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E357E6C0E0F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:09:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=GuG4wush;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="G/OvH4vu";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315349-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315349-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 22A39302F6A2
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 19:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D062B339861;
	Wed, 24 Jun 2026 19:08:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93381201113
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 19:08:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782328129; cv=none; b=V5ZaO2x4foZNEDoUj+kFZNLn+yCJH1EmBZit1UAYk3puL+To02qvoq2Vrk3U0waOq7MaP2BbAxnfFNcpTR7jRhSZ78bo8QdHT1fADk8NhYsFLpoAXE/KfjDW2DD9jb3FZPJAtYAOIrITni88Rd5GaJtNKpLGmLBsn6rg23VCjtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782328129; c=relaxed/simple;
	bh=6w/k2iZsk3MHudpmix28SmiBhWovkM+5Ozoexf0PRds=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pCcdmJefns25Y+T5b4QBl5kssEWU1xb9thfiaiRurH70zc0+V+3mBK7mI6XrsloGes3adECLvr+/34ThVg2plaV3WR6hd/h2FnxAt9+odQtrgVxSmG6kLud/DYqUTHsPyIZd7TlHzF/JxzMGQL6gbKatIRxYI7eDUkXiaUV27Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GuG4wush; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G/OvH4vu; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OHj3vi3580585
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 19:08:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=altI44UPf5A
	n4jjMofr32B/jFu/GgoEljN19CjyDurM=; b=GuG4wushMiAea4Rvc4OLKxvUhhC
	jde3yODfVtYiO7oLyxkzuL1ku56RfceROXtlqWu2BmQPT6BbrUYSFYsjvF+dcGHL
	EDwNMwAR0qK/2Vnd8pJwv22xYwqd/0Q5gg6a30k6B5OUutTrNhOb2vGYUtlNBqRE
	3TEVAJ8EY5ov/vy8IsQBTCNUutSPOD4+7JYlxk/7F3KjSO0iPx4paPtgO8wRGIXM
	RBqwc4gXGgA0GCLrzI6MxVslREEsO5huKIPl5HW8qsA2reWD7r0lDiUijqeAYkIf
	dn2sjmusXT+3Nv5nQDHhOGASzUB6vl4lK8PDk6o+VbSuAdYg1y3nzH8Ykkg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f05aqbvwy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 19:08:48 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8454912a507so2355666b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 12:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782328128; x=1782932928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=altI44UPf5An4jjMofr32B/jFu/GgoEljN19CjyDurM=;
        b=G/OvH4vuRowZQgEJfHJ1ZolHF+OxMN79KQUM/K/LQCH+Cgg3wQDzUs55FKFYmHPKln
         vPeCO1q/7h5OcNPjQUzTvcDSl/HYgCygsd75MoFdP77uAg3Zez2RUFMlMX4LSN2WFaBp
         YIiAifYNHRbSoF/RHiy249plyvgEHEcywC8J9g4ehZPE1JE94K2zGw3zGlDh2pRLJyBY
         ROGx7UUfOmoirTFEqjiK/79psvF9cWvxkL1NWNab6k/oPs3AI+1in/n9BvWRh1PfGror
         aGo4TZcLJ0OH0eiGARICRsQ6hl74GJRVckBnYR6oT28trUuf0TI9KXjt+SN0DCkHtTfn
         UgAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782328128; x=1782932928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=altI44UPf5An4jjMofr32B/jFu/GgoEljN19CjyDurM=;
        b=SSlVlfHp1z31E1ZkLnCtpqSnREJ/8j5jaHfI5Pzz0hWRzchzzOAE3HC6ly24RDygZ3
         iIENmcIvL8qQZis2EjTSilKrKjcSpqnmqpGhz5yy85FCa5ZmLw06MEfyK6YN6BACmV1N
         +TYrZvjG0/gFxo960bAAOdZAtaZh1FPCqK8EbVp3+tO4kB0E2vK7EpAPITa3xvGcpiwv
         Mi2GnFZvMrPBn0xJMJDsBUCc5TU0hX/ylhe5hbFLL7QgEIUYCrnvjImr2BcEBXt7BpX/
         7mxMAbsPum4NC+l2ia1ijmRDxC2T5WihIWiSqDRfOli66mock0RkeJPkWMTeL2LTlPT9
         W8QQ==
X-Forwarded-Encrypted: i=1; AFNElJ+PCh0f3VxeR5z9Wvtckc/JNoE/HN1ZaAEM1KiJzwySMvNSX6DY5DmPKVMeIb12UqUbK6VIWrOSQrTq@vger.kernel.org
X-Gm-Message-State: AOJu0YwWZlOIy4KUyCT+ZQ+oaWS+RJaZOFDSQvJG2kaZQQqhDWHsehGn
	4d/IzO7JObK+GMHtYnPJIOT9p8+Yar/t5ADQP7iUoTESn2Zp50ENWbe9NqMBRHe66RUQEo4e82n
	MeQ4gFIE049Bao0OPlcRIZYmvaGX7Ckl54TOwYTyDamBhZsstQ+k2GHNy4xOrqLmV
X-Gm-Gg: AfdE7cm9Fobeu5pwk9RPbnQvnvaXAPzpG4B8az+ANRcZnxBmiVB8UW+S6QraerL5rKW
	Tm2Wpu8w3TQo21LfhFaRBOUCVznzBQzZLEEOsyuw3Im1bISflLF5PbvhcrDZrw88t7LfE1uaNu3
	f+FYX2TMeTyrU+KL9cGuKgmAxcqAmfM/KV9sxiasJYW6cuzEzo89SD30/EExDQHsneS2OXkK2Z0
	2lPqbpAnxqyCs7mIrEgMtcR4NjnJm74GvLvhMIAbSdoXD35vcrYNYvz7bt7rOlDSg6Gu9kR3iio
	vMfRQBq3yXymTMr/QnQh1SckOnTqbpJi5ZvrJvr7uj42mKJPGSy+fmUHUH9vk9Vaxf5cKiBHwTY
	PyZqQzfHURm7UM9TSWYXmepvOr06pwMgBTm3h7w==
X-Received: by 2002:a05:6a00:1f05:b0:83e:d427:9817 with SMTP id d2e1a72fcca58-845a2ae1b29mr5333908b3a.11.1782328127409;
        Wed, 24 Jun 2026 12:08:47 -0700 (PDT)
X-Received: by 2002:a05:6a00:1f05:b0:83e:d427:9817 with SMTP id d2e1a72fcca58-845a2ae1b29mr5333866b3a.11.1782328126825;
        Wed, 24 Jun 2026 12:08:46 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a412e5e9sm2932120b3a.54.2026.06.24.12.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 12:08:46 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v4 02/19] dt-bindings: sram: qcom,imem: Add minidump-sram pattern property
Date: Thu, 25 Jun 2026 00:38:13 +0530
Message-ID: <20260624190830.3131112-3-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260624190830.3131112-1-mukesh.ojha@oss.qualcomm.com>
References: <20260624190830.3131112-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDE2MCBTYWx0ZWRfX3XLur3/yw5px
 Lph79PTtk+K4aVs+NK+jwxYetQIx539E2JzxDHyAD2Aa6hseXfh+nN+Qmg+sQFrtXN3wBbvb7GX
 1dIVdPtI9+M3OdGQ3o8DBHptbGqc2M8=
X-Proofpoint-GUID: EIw9Vakvbkpf4_y-NwhOi27PSP7dByPK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDE2MCBTYWx0ZWRfXy4H+bvlD+C5k
 /VmyHBd1FuSVuTkpOdjtnaAF99vHWKDmPX516rgTYLOU/QJSwPeO0suSWty/sLcO6jAftyonBLc
 kF/c3fMcTTl2uhPir3aAf8omBKgb3hB9xOrHmR02as0NAo40+F7CpL9On833zyAbDeopnJ2Gx26
 mnLdhplZPuae+QKYR9h+DInxAUoB6FZVFWL3K7oewAxhZBeRhPMbGlblTvi3g56Kq/S0NljE3I0
 m0f/AmguQ8wl75FSQ71XxyzpD8Y8CjcJhzL1OoxQOilAN1N2klxzgbZp/gHVdbtAVRcH9KGpZnS
 vrh4SPEuw+P8Az2CeUpANt4AGZncLFxHCAKC30ZwZWnnHWCmD9vFnm7z9hIM5JDrNH08EVnoVWn
 43m4Q/h4tg4wipvGM/RnOqMlqUSpcg==
X-Authority-Analysis: v=2.4 cv=UphT8ewB c=1 sm=1 tr=0 ts=6a3c2b40 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=CxA_GxxwRcnTusB8hbgA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: EIw9Vakvbkpf4_y-NwhOi27PSP7dByPK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606240160
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-315349-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,gurudas.dev];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:robimarko@gmail.com,m:linux@gurudas.dev,m:cros-qcom-dts-watchers@chromium.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mukesh.ojha@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E357E6C0E0F

The qcom,imem binding describes a single word in always-on SRAM shared
between the operating system (OS) and boot firmware. Before DDR is
initialized on the warm reset following a crash, firmware reads this
word to decide where to deliver the minidump, and the OS is expected to
select one of the destinations: either USB upload to a host PC or save
to on-device storage. If nothing is selected by the OS, USB is the
default.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 .../devicetree/bindings/sram/qcom,imem.yaml      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index c63026904061..17adced6d3a4 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -67,6 +67,22 @@ properties:
     $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
 
 patternProperties:
+  "^minidump-sram@[0-9a-f]+$":
+    type: object
+    description:
+      A word in always-on SRAM shared between the kernel and boot firmware.
+      Before DDR is initialised on the warm reset following a crash, firmware
+      reads this word to decide where to deliver the minidump (USB or storage).
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+    additionalProperties: false
+
   "^modem-tables@[0-9a-f]+$":
     type: object
     description:
-- 
2.53.0


