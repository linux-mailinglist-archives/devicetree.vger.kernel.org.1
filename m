Return-Path: <devicetree+bounces-261160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8E9OCPGLfGnuNgIAu9opvQ
	(envelope-from <devicetree+bounces-261160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:46:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9891AB979E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:46:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60643303E486
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F6036A03B;
	Fri, 30 Jan 2026 10:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oZWJMM/u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K9/1vo+I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E77D310782
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769769898; cv=none; b=TSLRpXcElKVkwNUJZumfcaJ7CndVjQE2Xl1swd9v3OtTJGfa3kM2Fjv7jHasfW707Dc69JzlQfYepitPPyVrWgHgOxY5THQjThdwUkfCn8lUyb840pkBVTdwtFZB0rHMVnXccYC0QacJeTQvrb6RTdlD85sTA+rW3GAKzYHTzJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769769898; c=relaxed/simple;
	bh=KxBK6OjZJkiPEZOzkNjaOpHTYNYoeONVokaK5mjjISo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DRqM3WYhn30iRvgMH46/HgIFcgnIKfbiI9rdLxgiv8wrNOIT8gdm5IyjoWqSf/9DL4OBKE3E93VasNPMAv3rdnbulmt1YvlnCWcsU4i7aBz2YhAMFnvYmT+J0xZJHAcXbUqDYbQoan1i/fdyOeICMwUuuO8IG8H0sSgKN7TQs+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oZWJMM/u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K9/1vo+I; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U3VgrJ2992856
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:44:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YtG6WPTcjzLihlfXarx3roIi0Prm8xlSM4EqqyOsOmU=; b=oZWJMM/umxwz+wpn
	QkAHd4EpQL/qKIFmAmRZ3Iiqb349MyajTyoYEWScmcCK/rUtfq31qvTaXw3T2+DQ
	ZZPc41UZdyem080CH4e/XzNXgtRMdAIh686z04L1XWIgX+l87kmI7yts1MIcfxNB
	MbSvOxoYLHbC9uyfN5iqgosiNhUuc52cmmLcSwGuj6gmriyQEpPA4oyInSWifpii
	mVRV5QjFs0OONMgr/Fq8Y3oGqlRoHfPAbTBcXhzXp+cW68iwMf2wGQSpfzAPR22r
	JNwCLvBpO5rFBIep5LvaE5LYbrp1c0eUatbLcqifcEKRSOUjddT9XYP9CjxHhex2
	QuiDpQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0db1jgab-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:44:52 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a13cd9a784so17968675ad.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:44:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769769892; x=1770374692; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YtG6WPTcjzLihlfXarx3roIi0Prm8xlSM4EqqyOsOmU=;
        b=K9/1vo+IBcWjl9XqkyXTpEYGRUEdPH/u/iZPErtF91rmInarW6Xv6sLnAI6JyS7uyP
         4AsN/hb4iz2OyN9wVWPHYf0JS9mPLXcn7ypnU9foVnzd56a6gD7Ei9q8u4u+uf5pnaM0
         ZauMVDq12/gmXxjf9XjuTKn6mzminlpQAhBdI+4LAGsXjrN9SfAUoAd+BfyNNVpTrm9h
         wz/wB80mdKs+ocN5NZfcy9zd4TN2l5KIu6QWgAI966Lxvr2urPXCt63BDGBhHKYIa/yL
         +q4zXaNrdkSobuV9xo8yDLtIzLxKcBR6qpzJcUNmwI3LrSmuvviROfQXf0FtjFyFxmFD
         dRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769769892; x=1770374692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YtG6WPTcjzLihlfXarx3roIi0Prm8xlSM4EqqyOsOmU=;
        b=AaM1AWZoI9FaVnHcKisfvQ3yQe69AMnDNK+fy92HuKos3+2r2XsmPt5FAUL1pqyhb+
         nPRbrpUqyYS72IguT+pHAVsXqWJxhhQtb1vqZooPsCrV4s53ojfbXmPkyCHGgE/LDo+p
         3u/fw51t8EciXxVCUG9oMlxL4yV/NLTjCwUSR2/Uq3WzScO3GikPHqtzd6KSnptu9PN7
         9DY0aPfeiWEMslfwBPTAxvs+XpuCAeRzOrgS9Gi/kx3MocQCSy605wEjD8SaM6UACJYp
         fdEzSolP7FlTMkhNwmFQ612qKOxFtm8aSVBhX3dani3d1HoOCkVKH1ysfpAcHExxWVA3
         Td7g==
X-Forwarded-Encrypted: i=1; AJvYcCVnolmIT9SpyloFctEF4JFH3SCkHFlFBnglrpyVs5kZJTkf26K61kUR3sMvf8Y8S57J0hxdBr0Ta74h@vger.kernel.org
X-Gm-Message-State: AOJu0YwejLJy034iOO+U4vx2ebKkRXLxZ5dsHfnvVMHYRFGPfegzdYrb
	iquOZI88KDK7/Y++iS68rP4fUjgRPtSvzSyLvScqZObudk6/IZ80jElN+rIvCVTFCvnx2xNIngD
	PVcUWgrq1+43D+eUwdwWQF4p8FRfoUuiSDT/rZ8mFenoyV5R0rJasQcbcNFAnApAP
X-Gm-Gg: AZuq6aL5hMeE1SQNw0wbe8ztI6d5ZtfPSQfO8Q5InyA+bOSAf9my0euNrtX8Omn3/aT
	UIMaVv6Qt5PxTIX8idAvcViLf8brm6k69NHemfPbK1evd77jip+04EMHXuKbdqyqlfJG/Vf/RDb
	yoHaMjevPWjC1By5VlVE+IqLwdzupOq/z6PhSusp6Egk9qIqpiPAA9hDvNbShkRWH97YpaUUiwS
	LwMvYoAAOGCn0+WEjIC00ZOUGqKQeSkRnymZVP4tFX3wq6ZG2Py6ceddQs8H7/bpf4K8kAl8PEB
	4pYI9KD6Fs9IQEuozJvLs1c8DHpHhyYmfZ3BCjku0P2sazc+Mr1n2J+cPXkOtC0iAkdNdVp+YEY
	DT0eMfFFSycvkMk7fNdFxcUidLbO8tpzkNZnZSrp8TXLgll8uIOCxF2Rt8JohVXhM7BA4CQY/Rw
	+gTugzpib7dtXLCaH0io9ygN/udAkRDJowCDITfUyZ8D/l
X-Received: by 2002:a17:903:3c6e:b0:2a7:aa9e:fb40 with SMTP id d9443c01a7336-2a8d9931888mr25169855ad.45.1769769892090;
        Fri, 30 Jan 2026 02:44:52 -0800 (PST)
X-Received: by 2002:a17:903:3c6e:b0:2a7:aa9e:fb40 with SMTP id d9443c01a7336-2a8d9931888mr25169495ad.45.1769769891609;
        Fri, 30 Jan 2026 02:44:51 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5d92a9sm71231465ad.69.2026.01.30.02.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 02:44:51 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 16:14:32 +0530
Subject: [PATCH v6 3/5] dt-bindings: watchdog: qcom-wdt: Document sram
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-wdt_reset_reason-v6-3-417ab789cd97@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769769874; l=1446;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=KxBK6OjZJkiPEZOzkNjaOpHTYNYoeONVokaK5mjjISo=;
 b=B5HpoQVIZqG36Y+r56qZZrKZM0ISsrtvif+5v5NInl7DrUJMiJD0Ay+baCRhibY6EMe9VQjk8
 fsqzAlGKGdlANYSz21JPvRJYVUJxEynGgo7traqKK4rpkZAdxDxcc9O
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: jaj-F7Nit4UYdtxVdDgiTD06qsPiPiRn
X-Proofpoint-GUID: jaj-F7Nit4UYdtxVdDgiTD06qsPiPiRn
X-Authority-Analysis: v=2.4 cv=VMTQXtPX c=1 sm=1 tr=0 ts=697c8ba4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bt_IPO6jKyPzq02bTywA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4NyBTYWx0ZWRfX2AVieTHLR4qO
 +4sTAMNsgU1F/dLcy/SwEyV4NtWYduGWUP3w03OpTZgzCfXuNscIMTNRtHcIM6GAGNA5RpsEWZV
 y1pONmuKoZRkopwQRVchhRoKckVk6k7rxA5AMRuhANDlEHod8OXmWQXTvhvPxYY7hk4fjw8xoop
 FB/4hcEFt5+CI86C5JV0bByAomGX0KbZlvdd9naH4gYnUO6sBa2YgeI9juqveSMQA9Wb2upC1lg
 EwU++JXMviip0va6FEcelh5w3P+PoczR7PzYIlt42IDLU/D5RbwCUlPvv7zmuD10mWnjcMWI0xh
 Y8BR7rbNBGpTNMHT1kRyan0Jw3EmVfWIiYPlZuO6cbT3eGJiHtmMKszAMwPWTpG6xHm/KOsAy76
 BKa60oWTO0I0dm33FWeR5wQf5yI17zb/TqHarg8/KTY4+Y9NQe3eqBckpkvozviSM0uISJiW0Ft
 tucMnq2fFsfk/QM4Q/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300087
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
	TAGGED_FROM(0.00)[bounces-261160-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: 9891AB979E
X-Rspamd-Action: no action

Document the "sram" property for the watchdog device on Qualcomm
IPQ platforms. Use this property to extract the restart reason from
IMEM, which is updated by XBL. Populate the watchdog's bootstatus sysFS
entry with this information, when the system reboots due to a watchdog
timeout.

Describe this property for the IPQ5424 watchdog device and extend support
to other targets subsequently.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
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


