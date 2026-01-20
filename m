Return-Path: <devicetree+bounces-257526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bz9eEhXKb2nVMQAAu9opvQ
	(envelope-from <devicetree+bounces-257526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:31:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 76456497FD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2BF9578E5DD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBC13EFD28;
	Tue, 20 Jan 2026 17:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P1BaEcfx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MMGeW3WH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E793E8C6C
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768929827; cv=none; b=oZeY9UuIG4a0uOYm01sQpsaRqTJfJOoP663edwqvFNvl8CcgW9wD2am4lwmSHt6D5REju5hTZw/xrDnKavBe4IlK+954mz4TQGV7Y+nr6CL2R6cD9C1LEHJu4WIyW+AXPoxiLyTy1NlM9K9IrFQUeYUQ63GgLDP2unRQ+JPvfKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768929827; c=relaxed/simple;
	bh=U9guPNubp3pjZxkbwEiIBcV7mdq7QuDn1LJeqIkMOQ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qkRIT6tkVpDkXDO3ItWfMhVcXc6udtxicUpu/GvMqeoGJYPRWdjocOWJumx3JmxCawpC0VFLbUtqUeuq50DPCfI/Iv7nCf4DA6J3RsUsRtDWPy9I7Tk7A61u/E80G2eqeH7JqWsqUywdaAXxOrZ068i0Wuoc2tn/0gyIJ/UMFGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P1BaEcfx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MMGeW3WH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KD23x6390165
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s4aVBB4HkX2CrfOwttft2H+HRgIm5K4NSGBIMJ53yAY=; b=P1BaEcfxU9fAjIsB
	GixtlbWi9IzCUg+oYd8B3846um5QPdKFdsiLL0IjRQQHg9Lu2KTHIXzVICIpMl2N
	OnD3I9p/PsLFv5GoMQnm+d1quEeC/+iqi4Vgwrq3qFYDhXfl4QZBthciWu3KvQ3b
	Pc3tllZh9+SP+WfgPeHdIo5/KV0PMOPwMuFJHmW/eooIH5mv0/azm0tIuHiDoVuu
	4E3VNMQ7GNgDeJbclG1fL4KfLn44b7GQkWR7afLpe/0J5tD6q8CRR9noQbSAIXQd
	H4/Z3MWql3vspwA7+BAaeiAfvdzOCENPGkFfiMaTbEjOloXPkqGexiaauvHUZe6C
	C90BTQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bta7q8wh9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:44 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-12339e20a86so6043813c88.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768929824; x=1769534624; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s4aVBB4HkX2CrfOwttft2H+HRgIm5K4NSGBIMJ53yAY=;
        b=MMGeW3WHhHzXkqrcgYs7IdaGQlh66vA+w9+GbizgxGJhQ38H1JDpJdHsek/WJpjJf4
         ycR6FXzLdAJ8R4aV3wqNQ4+xTaBMH23qZRiR8+ja2Gg8YgZtIYGxqcEeFtIinQshgejf
         /xp5dFGHE9pUXeLlUwH8PdBn9b6a/bnxKuqTfl72iNfOrB2TtLhV65hqr0I6NlGWsEyP
         YjcWBeEDj7wGH9AsHX6VuW9zHulx1LNFrGeWoExREL0ITg6ba0uSiRUZUUVfzXvwz3gh
         m+IU9Ty33Fk647fPI7+L00CmF0v6mFEa61JIM7MGNg38MgNgGXyD5xjTrKtcsbDnbOax
         bF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768929824; x=1769534624;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s4aVBB4HkX2CrfOwttft2H+HRgIm5K4NSGBIMJ53yAY=;
        b=l+wmJcrk1aNnmFnmdIO/xPU8Qv+8Nfyf5OdjObxfgiu9Cgot72ijZ5JtMApKaxKLBL
         mjxmIIlZeDuSRfEc0ZedCWGkLGdwmgwCzbWlVMjzeV9OczrtzHz7tFtNcwAGveOhh0tg
         gmiHMv38Gr7qNybIO2cOyBN4JlAVkWcPyMnjuSI8vcp2+KQvbstpV3o5/Gqz4bAfIrPa
         gTLksuAYBD3q9QxvxH2Zign90yzKs9vxaECFIOPsmM/YrUZ8qH32fbao6DeSR/VNaFlf
         aPiZsLN0TI3kM6VojG4BlT2qjKh5MmUMMLJHjZ1A5D7S23K3SkWz/741BF2UaL6kPLrn
         wtJg==
X-Forwarded-Encrypted: i=1; AJvYcCWG9mqdbcoxVd9ug/mmvg3+c+lbM+bxdXaKaZw4ZaGH+f7j8T4v74cSSag1baeB+0+35u7vA+WNcIDm@vger.kernel.org
X-Gm-Message-State: AOJu0YyUB7jbOgwUz8RnecHy6xwYvHvrzBUsavLIEkNLcU8kpzDp7STA
	vsu9dqEEffZbIZa6+m1PjPNKyKOFZKbBxVy9i+Zoz+j2iB1TqSlmM1JlD/MJfITfOkNZjeTcfpd
	WSGJimYmjGMfUFtRTyhjmyU1hB5PmlJ91XzOrwvRH62ihJ3LptplxG0cVIz3HtkPf
X-Gm-Gg: AY/fxX64+mp2ja+HM2ppSO3Ju22HrPllodk8ULCp9mU4mjggWO4HrteCS0BhSLeGNCC
	oUsL5LLbj56QTJFt1gRJst5XlSCPM5o2uCmTb7D4ztblwzmEuzJ9F4pdC/ourN+GEGFe0psCUHV
	ewGPnVU0hC5d0h01wo+qAqpPiZMxQ3xySxmi1XSj+zvBN6a7sxdVab/2LK5s8enwRFEHxDMFjHk
	S8JXOjXTfEQVadQtkMcJ63cOMWXVG10yEQaWBZ3/LcmsGMRKkdmXD3DmL6OSKxKiV7aWmKkKb8T
	D8pb8DcwDWobYeUlz21vATtskzgqUqTQEod7W5gn0ctu/+wBmFYpN0WJ2mhySIihxnn8OFygBgj
	QYTOYQMt62C4gP90/eDbQPrjR/jn8sqpV+hlLKzLPxsyC4JoB0gWxPx7CBK89pxjyhW9Yqu3uRQ
	==
X-Received: by 2002:a05:7022:394:b0:11b:923d:7735 with SMTP id a92af1059eb24-1246a9583ecmr1721517c88.1.1768929824291;
        Tue, 20 Jan 2026 09:23:44 -0800 (PST)
X-Received: by 2002:a05:7022:394:b0:11b:923d:7735 with SMTP id a92af1059eb24-1246a9583ecmr1721480c88.1.1768929823571;
        Tue, 20 Jan 2026 09:23:43 -0800 (PST)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af22aaasm18714842c88.17.2026.01.20.09.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 09:23:43 -0800 (PST)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 09:22:50 -0800
Subject: [PATCH v3 1/2] dt-bindings: pinctrl: qcom,glymur-tlmm: Document
 Mahua TLMM block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-pinctrl-qcom-mahua-tlmm-v3-1-8809a09dc628@oss.qualcomm.com>
References: <20260120-pinctrl-qcom-mahua-tlmm-v3-0-8809a09dc628@oss.qualcomm.com>
In-Reply-To: <20260120-pinctrl-qcom-mahua-tlmm-v3-0-8809a09dc628@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768929822; l=1230;
 i=gopikrishna.garmidi@oss.qualcomm.com; s=20260102;
 h=from:subject:message-id; bh=U9guPNubp3pjZxkbwEiIBcV7mdq7QuDn1LJeqIkMOQ0=;
 b=3b3h+e0CRgHdu92gZr2IUdVPdpvviVcHJ1B1pOdlsKKRNAx0mhyGyYfxpPbUROrD9fY7gnXfs
 a+DdAv25YbZC/rQ8NQ6nAxGOtrjlQfyW0PIOd6qQQwMiQ6CunE52Aik
X-Developer-Key: i=gopikrishna.garmidi@oss.qualcomm.com; a=ed25519;
 pk=TkSjNEhrfsj90i3wkABTZtAjLNr2cfYsujaTvyOIDsE=
X-Proofpoint-GUID: DNMQgXYCZEUG9m9Pt9n5k07WiK7H7tFn
X-Proofpoint-ORIG-GUID: DNMQgXYCZEUG9m9Pt9n5k07WiK7H7tFn
X-Authority-Analysis: v=2.4 cv=LPBrgZW9 c=1 sm=1 tr=0 ts=696fba20 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_GxIMNjxlj-suDvTKbUA:9
 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE0NSBTYWx0ZWRfXyFdGip/9ci8U
 61zJWdIfLf2Dv2/31kRTwuk8pJfLdms8Mbh65vt2JsjOTO8HLvqKA/qJGdeu0EKSbgJpjTQgVtJ
 wGbNE0hZ1ng/CAF54mlx/mAbKuHFL0zVBQ++gFJhJ/tHebz9YVshmKI9YlyBKfB+vWk1Hzxgz/p
 8LvyOKAXAEUmnwYvwXQepBYPC77GdIdt0xz3Fk6bOasQUVnSsseAUCvGzGjADbidSSAjh3zWihG
 7O2v0gYZKmOQ/ODz733ISYvAYNcRflKH5PsaEjsgypjdWziPOqlm2S1/1Yx82tFx0dKpWj5TwYy
 TYJwYdy2wucH6CWQiq/GU52ntvzycVow9T9+mmjBkvex6cxcry6xoNcGj2YyW6JQG41KxRCXRdv
 uGQ+aanNIgS44jy53SN7VQG2/l0F4TMDmMz7LmrAe9Z2JsEhizwV+LJtzZvgT8c27uLk03bdWsa
 JFbMHYNYuZR8X1kQRng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200145
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257526-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 76456497FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the pinctrl compatible for the Mahua SoC, a 12-core variant
of Glymur. The PDC wake IRQ map differs since PDC handles the interrupt
for GPIO 155 instead of GPIO 143 as seen on Glymur.

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
index d2b0cfeffb50..2836a1a10579 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
@@ -10,14 +10,16 @@ maintainers:
   - Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
 
 description:
-  Top Level Mode Multiplexer pin controller in Qualcomm Glymur SoC.
+  Top Level Mode Multiplexer pin controller in Qualcomm Glymur and Mahua SoC.
 
 allOf:
   - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 properties:
   compatible:
-    const: qcom,glymur-tlmm
+    enum:
+      - qcom,glymur-tlmm
+      - qcom,mahua-tlmm
 
   reg:
     maxItems: 1

-- 
2.34.1


