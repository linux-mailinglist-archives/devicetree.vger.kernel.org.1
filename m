Return-Path: <devicetree+bounces-258180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GiZCr6HcWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-258180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:13:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF48460C40
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:13:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 418C6845730
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D8A37E313;
	Thu, 22 Jan 2026 02:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E5WLRRyN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gy77Xceg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219CE374167
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769047759; cv=none; b=TD+NmlB7p5+yi643Zxe9D8W9nqVMh8Rq3C44abejOrxyXoTQF1BTzNRp+ClwuZk7tKoNSkFAXG+snml9k9aq25UIn5o4i1jjlk1kluYFcf8exyB6Ne0jqL6JZWS7tKlymYcpCo/jOagfE9kLp7WFRLIHd1gsjI4mBeOGv569G0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769047759; c=relaxed/simple;
	bh=D10EnaHvzxc5IcCAThb9a/AzzqWooUS88J0GgYqXhUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cFE++yaR9AqEj4EzfwOo6OTvJb5HMAI0vTjOEfXuYXImUwGqlgrs2xazQ1XUKgzVsuF3xqU+DYnUFLAshXv56qVVSJE2yLN5ao1e5ZvoUYp13aWQWHbUpFSpPKDIvuUFGlfpuRSdZZAXYcJaNWjHV357DyzI9otcsxJiOGVnjq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E5WLRRyN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gy77Xceg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LNvJ2P3463165
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=; b=E5WLRRyNcki3om0y
	W+UWAkV7kgO0zhfb1tQkhrwV3Wb6mfiAheyRLqTFfE0m8icRRAVZmGQgDu/6by7B
	KZB4SlsOeqENd6Sp2Pz57SZWPZHmp4h/97/fJyV2oCPgfZXRxR6NOOCou6ijkuna
	U1eyi2O5YoYxthuyu7+2s3U6Gv873F+S/1ttytcYw3Y3YQ6zbfeyTifbjkIf5aON
	+oio1d3fedzzBTDThGeZaiJMVyxmX6i45K4vpDBe7CVqBhWaS9uqlc0t9bubXDwy
	kbAvjMfB1K0ORqtJSt8QkJ0V7eWWGheu4fMHXORWdM/xk5aoagn81zgyd9QTAxzs
	cnxDhw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu06523kc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:07 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7701b6328so9014915ad.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769047747; x=1769652547; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=;
        b=gy77XcegmpJPb3AVamwYE5XkWxz87z4etA0x2x6xTf0yknOo7zJIIx9zW80tLLJtCM
         p9TP47IsiaVTsNLmgZy7SSUyujrOmG9lshsMmWy9QwzrldOeITppyH9f28f+TS/p72JE
         RVyfe+N0ombDx3LOvVR4IsTFMQe05ZLyJT8+oNsXOr0POpDiSH5sYlh6CDzQ15+thkW3
         /SZ7/5cVuF7QpxyKtyLBBAZWPeESZKgb9VCJBC30P/dsxpb+gqHKdaYy4Jo+vyR89/VJ
         utrazp7jw6r9uuBTdw/w7OB+SFmx1wMKCVKhzXwZzKTFDBYpw/4TYiprgyDUYT1c01ZO
         QREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769047747; x=1769652547;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=;
        b=W/rTNetShU7xFHGMbcguZOTifqxrGzQd8VHDH/E9YrXkLqNVJXzffv4XqYSusH2mUZ
         UlepnwEuctN8kKBzBz7F4mHD9bqk0AaGpUzNv+rL5/LHgSsQjjIFt9/IYX5a9JZt+eCr
         eiyZGq++fIm5/3/1tHUTXxKYS+X997w0mVPopujnEiFsaV5Vp88DsPAigj5VH3bQ1Wde
         dHnicQ7WuuuEH8I7F8UsWNTygA3WJht0LDygAC8trb/7dyJKm9fEhy6lLVdtWUPpt9h3
         Jznkr9kNa8c1/7NYAIcyzXZjv1/H1CpcPjGamcd/aAN4w2nVB3cZo1KioF3zMkcPkExx
         X1lA==
X-Forwarded-Encrypted: i=1; AJvYcCWXL8PU0wbeV6v0LLcbfbZazoyoelBMM8nB8h6Haw5aBIO5Wvuveg5gei8X9HLP5gEmocIHL+KybWIo@vger.kernel.org
X-Gm-Message-State: AOJu0YzgFbo3v5ZDFQzsGxeZ04OKwngy050vrlRxUzQKTMoKiJOFPGN0
	u9HnE1mzGmMXe7rqGqq/cdDCfZMRDZJYqp4GDh/qWLoQ697Q2uL1ZpuTvPU48Wrlu0S17rbEUCr
	b5ZGpu0arPcEDcVTxxTGHH7I6xqPe982QUIP5fd6w9ItycaaRlQcxJ9blyR+K5EOI
X-Gm-Gg: AZuq6aJzY3+njPYL0bmsFdFRo//bFVsSJ0Ld0PfR8tPVrk1n3dD3wQ2F+YzV0D7HaAA
	Jrl0TPGJmUoQ3E6vva+NfozsE8k2yW/WyT9v6jJv/u9Zwy2ZbeG+0lOf8LgkvY0GHmbPkI/lI2O
	0ctd9i4AxrHgNV5buonozL7BRjaAg5PWpVxHZPqFDBYJsRz0CKj9/EONPk/8hjDCeb2JpNDkijk
	aXMMmDb0EDsiRQifR3S6LA99JOkuy+/E+E6dooPJ4kz17oPVqgV3E/1huW8+YTXmchui6BHfidl
	OU7ZtRaKlJF3K2naaQxDfr5vPqil/2F8FWn4stNAwE+C0IhtJHUtsHrAsVjJ0ud5qkkWRdGnl5P
	m0h7JVYJyAvrpl01C2s7NXZpOgHamZ+6JGzt6qbgl8UKQzPpkDi6QIIAIDOIMLhwzxO+2qfJ5
X-Received: by 2002:a17:902:f688:b0:2a0:9ecc:694a with SMTP id d9443c01a7336-2a76ad5c3b2mr66689575ad.37.1769047746717;
        Wed, 21 Jan 2026 18:09:06 -0800 (PST)
X-Received: by 2002:a17:902:f688:b0:2a0:9ecc:694a with SMTP id d9443c01a7336-2a76ad5c3b2mr66689235ad.37.1769047746185;
        Wed, 21 Jan 2026 18:09:06 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a780a4631csm49710305ad.18.2026.01.21.18.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 18:09:05 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 10:08:18 +0800
Subject: [PATCH v10 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-enable-byte-cntr-for-ctcu-v10-5-22978e3c169f@oss.qualcomm.com>
References: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
In-Reply-To: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769047715; l=1751;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=D10EnaHvzxc5IcCAThb9a/AzzqWooUS88J0GgYqXhUw=;
 b=PWRV+OSxdyrgtlPlA/88c+zwxtpmLqdGmkgVUwG5GAA4FUiVev4B+usVORsZujvgNYb6XuyVN
 X743Pihp9HoBYSojQw1lDVFuTtCvvgoNzPqUQUjjgZhrXLAVA5GLOZw
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=HOHO14tv c=1 sm=1 tr=0 ts=697186c3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gSyxy6DGYGa4b6s9XCEA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: SViZRFAl2gizWYZuShkYu4kPioAJh-DH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDAxNSBTYWx0ZWRfXxxfU2XEF/w4F
 Ug27X3QON+92X6CyXYNaEFEqYOhq/N/CNOeMhqOhsfiSYM3pwijXphnPzlNYkFOXmAefH6iadju
 /2UvNxuMWCyT37XEfIFU2e8VCyqrLrz3p365K7wcNUz7uQKmG17qepIQbqLzZSYNF5J2vPL27jO
 ZOnWEP5go/gV6kOz4gw1PRYr6Z2ZDGleFhcDExXAanPXcnsXtOI2NDF0vTVfHBe5ttShQ6hbbhG
 POi5+vS0HGsCKLuvkxa6Gbj2U1Qy1NhIXcuXtkIW5Do+1wIXa0SSIWA3H6/2UwPzd7MIetjOL6x
 ABvDx+x7LwNMNUGkKGeGjiRvoxaGv2KKz8+cv7uy/gxj5ND7OT1m0MECxqq0Pyy2P0zVdSsj/fl
 XhSteSxI1dSsyWaVJAquz4gKmfwieWZKhAu7kZLyIg1Eha4QlICwQa8RDw0RUapZDqghtMCKhxC
 +WA5+bWQ3M2Zyp/92hA==
X-Proofpoint-GUID: SViZRFAl2gizWYZuShkYu4kPioAJh-DH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220015
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-258180-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,0.15.70.40:email,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CF48460C40
X-Rspamd-Action: no action

Add an interrupt property to CTCU device. The interrupt will be triggered
when the data size in the ETR buffer exceeds the threshold of the
BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
of CTCU device will enable the interrupt.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index c969c16c21ef..ac27a8b89085 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -39,6 +39,11 @@ properties:
     items:
       - const: apb
 
+  interrupts:
+    items:
+      - description: Interrupt for the ETR device connected to in-port0.
+      - description: Interrupt for the ETR device connected to in-port1.
+
   label:
     description:
       Description of a coresight device.
@@ -60,6 +65,8 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     ctcu@1001000 {
         compatible = "qcom,sa8775p-ctcu";
         reg = <0x1001000 0x1000>;
@@ -67,6 +74,9 @@ examples:
         clocks = <&aoss_qmp>;
         clock-names = "apb";
 
+        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
         in-ports {
             #address-cells = <1>;
             #size-cells = <0>;

-- 
2.34.1


