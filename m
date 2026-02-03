Return-Path: <devicetree+bounces-262049-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOF8BDGNgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262049-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:52:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 807E3D4D40
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:52:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1914A30406B9
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 05:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CB6A367F48;
	Tue,  3 Feb 2026 05:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="idSHbaOE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VZ8MW0t+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5DC207A0B
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 05:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770097940; cv=none; b=DcG0Pd4fz38pqkJm74tSLt3PWgIO/p3EP8JS4TPBaDEq1qr8FAEnLWf302RYyQ5Swts2EM8gk2eYQF3VzCR0DWfV8Q+u+YPcM/8O5ZCurqFXYgh7K+G9PXz4nyY0R5g32VqsUHlgAyXmuKuRxCsYIUuScZ2m9QTfPsQSNBFgtmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770097940; c=relaxed/simple;
	bh=D10EnaHvzxc5IcCAThb9a/AzzqWooUS88J0GgYqXhUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W06WMr54wRP1pAdGBGO4C6woxCkt9JUzZeIBMQ/ZFjwpr04fYSa/XoH5pfICNP00wdkH+NTIdG4OnEDG0pvWJfJIpi3hH63f15UGyrSueiasgLH80vZAbUuu14c0bazKnDsISDdkuanBoXHxS6RTdPVP49gHzRi66zOjgjoe6Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=idSHbaOE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VZ8MW0t+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6132NH7S3387803
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 05:52:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=; b=idSHbaOE98zccvVu
	mKnErx4Wvc2uhjCfw/iTivTthNMg+ccee/X+WyL9l+2sbkaxURqKs75SDOR1SIf6
	vnKfBz+qSLzqwwoGvjLKAqmoWM/gBnmI4r/IBWnD38akwEdIwibneTtwpdhBZx/F
	gnPE27Ia0tSsPYVVC1PdhY3lcCfZfOoXbbEMg9WMWHyM93DSsa/qeTMgjgNIpsHK
	gsjmulx5SL4yiZa06YcPzoS9msayFgeWBEXumDMFuGx6bwAaqty83qaWvHG52T/h
	b0LIFbiUGsqJ5mc8aF55gMeUb6NpDkMFn6fkYihUm71922wgl9wqNTn3TYBbkU3j
	vOpDfg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbt7wu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:52:18 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a90510a6d1so4666025ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 21:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770097937; x=1770702737; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=;
        b=VZ8MW0t+UKRFmnx97tDhGWUgjRbIkloyMe9spJL5tAKN9kWmj+B9yCJlzThqbEIHi4
         7kmyzSW4wuQlld+rI6bqy7TduuLxoGh4Ydkq2fA56jn1VCfVzVFwyf9LmmSbO0akhXsW
         BdE4IHBV98/ei7b+xX02Yh0jFHiWXhXwOL0j/DkIjf158KGYpO5d7dp0lnlPmkD+P6A7
         V9rgmkQukkc5qnu2fq/AOhXIceY9FhU6SEBGZ6JmvznKJ2jB2/5fHyleffAuRxq+Rk9C
         1pgA+EysTHeQ0GWaQJbOEjAy1boWyAZ6aT40UByY8p9J1ikA+Kfmm3779UVoUZ74x949
         HNnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770097937; x=1770702737;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=;
        b=WQLCy7pG7m+MFDBJWaWBU7qbYJXkalzFt0ebOaYHcW0i+L57/p19qkqtCd7riyGTF6
         MDFIM8OSDcTl+ZfTpIrMtFjEctwAIn4J317KqeuXm4KheshJ+Mgsil88fYkZSS3/MhvJ
         wTHXMEjhVJePfEKsSUQAtOpZpW1+DRTzXmG80cIqDCiLeaiLUubxiANBM9Nat8vdbWrg
         Uv+EKk7rF2VJIPZH8VG9eraHqqPOGprwlNZOFsiIaIiQHPZ8J6UXpLOOtS095gWvLKXi
         A83JQqpNcvPtfNnobtuzyjfbKArSikiwIKs4tcne147SyXTUIJCXpLOzMzL92lLzoPQ7
         FaNw==
X-Forwarded-Encrypted: i=1; AJvYcCVCAdOSpIwOC5gB1iNCFkhsK3hew+NSNX8yq7qUifVoFzukI9L+IStkkGqIcxw/IRKr/mTjFA7peVwq@vger.kernel.org
X-Gm-Message-State: AOJu0YzjzYyVtQdAMNDi4SAD7ZBDRy943RANXeSC/dw9D2jQuw7vo3GT
	roG8E8N1ayah3Aav24pZUellYDzmte2M6z4yqIbWXLNL143bnZlRcTfJQ1TBuZ8nlEeu9mef+9W
	ohXLP04iuZayhoAnjgubmzXirGYsIXuL/aOjr1Zronp3mxuI1L68I4TPZoGjVyHlq
X-Gm-Gg: AZuq6aIjJCrch/3dvw+K0u8RguZK+b53WV9Ia9aI0v88G17Q3B/tD/h4BtGINjycmZy
	yELEZKTbvKzjedwkX99VhPbhxUYDo5W++KDDtei2fOJSuv/FBu0x6jNifRMyPWMmx8XlkHxrvGZ
	amb/Dstouz+mklE4sKOz+Gb1VslGEZ/H15HsrAZ1G+V8BOGogwscnBLeE7dcbdz/NYsWPvMgPLI
	hJ/4fmUCyAF7iaQL0vHMCkqfrEETQF3NMVPIiM0+5rBKVplJpbIhlB79QtHEM5+AGIVBNiuGqUb
	amj56uDeRHccA5Le2jqrUcbvBYt940PACzivVmuD/sxGWqeeP1OZ75zChGqPa2e0TwCsZgDO8i6
	FkzWSieDL483paI+9tgOw0Upp9KIfHTTG4iymVlyi9thRQkRcctDGY+tckec9byiOjMzTBRe4
X-Received: by 2002:a17:903:8cd:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a9246611e3mr19726135ad.28.1770097937119;
        Mon, 02 Feb 2026 21:52:17 -0800 (PST)
X-Received: by 2002:a17:903:8cd:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a9246611e3mr19725725ad.28.1770097936638;
        Mon, 02 Feb 2026 21:52:16 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b6e4189sm157424735ad.83.2026.02.02.21.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 21:52:16 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Tue, 03 Feb 2026 13:51:21 +0800
Subject: [PATCH v12 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260203-enable-byte-cntr-for-ctcu-v12-5-7bf81b86b70e@oss.qualcomm.com>
References: <20260203-enable-byte-cntr-for-ctcu-v12-0-7bf81b86b70e@oss.qualcomm.com>
In-Reply-To: <20260203-enable-byte-cntr-for-ctcu-v12-0-7bf81b86b70e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770097896; l=1751;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=D10EnaHvzxc5IcCAThb9a/AzzqWooUS88J0GgYqXhUw=;
 b=QjGEOOMg56eJBct8Kwsk+5m4YtQDj1HjvjzbLb9nksZDFfwoEo8hvfykF6PE/wRYbcmXJQ0Hn
 eMv0nFedomqCmqJV1q/ImNOWc7BRvXpsBHi3OcrmEngQMS1+9V2ELOw
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: gpzhrajfeJC5gJH9jBdeeVn0yMRmmOlk
X-Proofpoint-ORIG-GUID: gpzhrajfeJC5gJH9jBdeeVn0yMRmmOlk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NCBTYWx0ZWRfX9D/dTRgPEIz2
 Mdx/BALNRhq+fKwHgFqnOroxlDpX2+kNcdD8KlRbejAYfEFmDa3vBuJy/F2xuBdZXpT4JmH+PwY
 xjBMZWUyZknsw64CZPCw6ZToL5KWcitNEn3DtPYqwnlqv3HoH9W/W3YJ04J72t9IcwJL53PgRV6
 CPIjObUj8dMlsNbuowEaHyClzUxPgZxnfOIutUIU9wTeivcfubxd9bzyB9AhOI/+gMmUyazyOMj
 L8yinfV4yKxnqNHvk9BkuBxSZovopytKlfnaPj6O6U1+XHs1xzRKBoZyjxHK1PHUd/afiHzERAj
 igSZA4Ygc+FoWC0xG2vi/a/wa4mSrNPO3GFgNwaTXTUCCN/3juK1FclDL5hf05rPJTBT0VLzwzN
 0xRE/UbiRc0fV7e8mFmwHE8CWqI/Y9ofkst5KxBs0uQXTAJSKxMkTJzlq+xJEHmNGECvmatC/ID
 G3wpYih8gqJAbMu3D/Q==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=69818d12 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gSyxy6DGYGa4b6s9XCEA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262049-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.15.70.40:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 807E3D4D40
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


