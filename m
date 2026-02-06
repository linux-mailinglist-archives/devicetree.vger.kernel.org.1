Return-Path: <devicetree+bounces-263467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNEcK5AohmmSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:44:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 282E21014DA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 63913306AEF5
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAAC24219EA;
	Fri,  6 Feb 2026 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o1kqzbJL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CsFbvJOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884363EDAA5
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399743; cv=none; b=IPf2vR+8vB7VYuiV+q/nZ3RVBbkBg8+bzmKnDn29UU4ztZtHlkMHKZkLEvioo9Xoaxj2FUzgMnqm27MBQsbOrrNzPPobQpym3wXJDL4WW87ee+5poVFW5nkm8WmGkc6UXHN7Jy5sWu7c8gCOSeodnRQab3PmnFftFQfDIYhcg5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399743; c=relaxed/simple;
	bh=fLcHXdKV5/hDu2wr6i98ZasPwufFwNkdfF36wyuIx94=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dcT1rY/UU4OnLPRiWRQaitcon7XRgyxUV1x05hzXlyCmyV1qTUd9PRCh59uXMgvEsJq7RWqoR1rT4dEoJNOAo09zLMewGBzpjUzYiDD/Df17aiPo5LhCNJ02LVJgJAwKPNw97UzUpk/Pg3v3nz7+o5kfeDjs1ImmBkyy6mCtyPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o1kqzbJL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CsFbvJOK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616FRqEW4041874
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cbpTgWXazdO
	AfAdL49uExcjxZu696DCuIHbDLPHFMMY=; b=o1kqzbJLc04defYumiA4PLD9h1S
	d4ri8ROZjCkoh/xtpB6J0aMbwN71MJcZ6nEhSiaqxwkaAcpOfb8zc4k27cvQ7jhF
	7UIZOh7Hbr/hc+TzfkjpSahcj0t5f8Th/QLUxOut3R54RWApCXSAbFty3rmJLeWu
	Ze1Civy32XpHEolUlZrPKS1KA8v+u5wMOK0Zm/LVUteENe9HhKdR1W5Y3aoNzCPt
	RV3268fKsTkqWGkMv8XxbaQK6uhR9+NiYxL4RtP8oV9BX9qVelXGDhnCqC3zwdZL
	jsvHeoo0UMGU5BIgphKHmMckhTYrrqbb75REElzPbgPHDelcY94P5YwoYHQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w1u4s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:42:22 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c634b862fcfso1488355a12.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399742; x=1771004542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbpTgWXazdOAfAdL49uExcjxZu696DCuIHbDLPHFMMY=;
        b=CsFbvJOKo2uS3hZnPFdryrNe+TypWH+5w9PaqaXQgPylPSMHqTB7Hql1XbtLyfXNOa
         fGkVT6l3Gr/CndFnQLmQ/XNWQfN5KizHwz/1CC+gEwrxrT+vgoY1R8jVSiA+uQNuJ7zv
         JWsSijC0cEEzBBMQmSn9TCbxNi/Wod/UnE9nRFQVKbBZBOO1BzB5Z+ciBOg+azx7rIxu
         yaGW54d/j6IQuAlAuAWnFZ3QDTO7BgaMV1CtfH+OyYQ0SJBgQ5sHQYUdI30hUuROxPSf
         4IUYBAHxG4+r3zwTPGKOxuMHERJ/QSrZv0+WLRj9KEUNgrcalPHLGrLFPrm/3mF9OwQ2
         c4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399742; x=1771004542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cbpTgWXazdOAfAdL49uExcjxZu696DCuIHbDLPHFMMY=;
        b=aqYC0B9hqolHWIBHiWHVxoFFb5px7fl4TD44kOZMhgnFCnqQwwKF9zNVMx5lH2XVRL
         pm00U3iMES54DBZAMi5JaikjLSZFNetqWPhMDELZjMCq5KWU4/Fau5xrSvBkmDJfn5WZ
         H1HkZSKtSHkpmyH5nSP8mnur9pwLg2NUZw04W4asemi1ipJavdaGr33gJELrJU5Vaydt
         lxQG2wK1x0BQ+TunZd193EW9qlgLdH3js7ZOfpx4yEi2nQrdroru6EpI+AEVfCAVGb0u
         Dmr7w5s5R0Ck4l4IWv1Tq1Cin+dPUaWKdoDosMbyJC5mQAydZDvbzxBCyYwdUqnO2BRI
         W0Dw==
X-Forwarded-Encrypted: i=1; AJvYcCXHlvUcqx2SuaHoFDV9vauLTW0pBoT/66DUniij5rASG4xS+5E1ajtFlttaLAwpedyrop5ugQ7K2qGV@vger.kernel.org
X-Gm-Message-State: AOJu0YyhT3qb5u0mfSWyVU4KkxH5vcHAW/OsbM2ns5AoXQdp4qiYeT4U
	Wvu1Zr/IGb5ICSxfXnJBtTsS6oWGi+thJfw0d6zESMdBv2fMOVDD4/tl5cghbvcrvA65+DAdxhz
	Gx3hp/3CkP+nGZwU3JI0zS75FjWLGHZEvvwUBo0VcTZXJIsVR07fJSHiaTsFqX0zC
X-Gm-Gg: AZuq6aL/ZB0RRRuAlcfWbfkebRB4Rs6Mm6DeEuxNtB03rUabOb0oLTyfygsKrEBkhN5
	SpajURl6MsqM/Vp1/SzLjkTggl+hNeB0oHtJKrhnQeSX5mbLGP+Ad9XGfwQqL6Q841BccQ61xmx
	5ksTBoXC0UdTKjGiykgNYpGRaKf7Eedt9Su/RxuwSK5ummvb0+lWUz94QYXTaZP0fr9G2dzl7vH
	CA+gK9+eoEzm/dVhaFejsV0KKtPRb3NHP+TmW3hsvcvsNKdTFIk+B4F7GKrtuQBKHhdlUIMQBPD
	mj5S4e1ZxzPQTiV2lq/tUO2U/zo4bDq2cBFzGCLBbsX2G/NYXbGYuXPLlhGNkVDEV/8dhQU1HMa
	oYkzQA2H3njcXIjoTlqIRur9hgCpE17+Jp33LzwQSab8=
X-Received: by 2002:a05:6a21:6d85:b0:34e:be9b:b67f with SMTP id adf61e73a8af0-393af0c8639mr3577359637.49.1770399742199;
        Fri, 06 Feb 2026 09:42:22 -0800 (PST)
X-Received: by 2002:a05:6a21:6d85:b0:34e:be9b:b67f with SMTP id adf61e73a8af0-393af0c8639mr3577330637.49.1770399741631;
        Fri, 06 Feb 2026 09:42:21 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:42:21 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Nikunj Kela <quic_nkela@quicinc.com>
Subject: [PATCH v5 08/13] dt-bindings: i2c: Describe SA8255p
Date: Fri,  6 Feb 2026 23:11:07 +0530
Message-Id: <20260206174112.4149893-9-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfX+UKcZZpWFDtT
 Lwb5/pmdR29NcX4FS1pa/0y02PcGbuwhwl6/WP1H1J9NFtDw/J6WmD28z3T1DkJ66lOIgCQOayD
 UnzqyIwp3qj7cvTtdNQIVZQw7+ZIo1Ppivzm9CWG376gYprd1+hcLjBbmpxEdP1BcOEz49XaG1A
 ox66PE9Nja/c4yMWS97rosniwLAyZ97A/55HfIjMXCAZvzBTFKn+y13nlYTUNl7KvUR2KBExRwF
 Ysyb0zkSj/jn9f2GCGuY+fcckruC3/IHLmWnMXFKHYH+mkEnHU65FtXYD6eUiPSszv+tM0CLa71
 mMCvOviNMkOsIM/30aaq8w9ji5Ax7sdoVWLx5M2ZV6S84BGR8ynsi27xLlpg4vCj2AbJLWi6Drj
 Q+HjVjo4n4I3INgEoncAwmueMfAaJY6KlfTxjCAUykssdshSZT0HzeJYFHtnUy8gnZ7IyOnhgYP
 aIKmHWOjn9UR39iim4w==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=698627fe cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=apMzWF-kzHp83YoYYzAA:9
 a=3WC7DwWrALyhR5TkjVHa:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: YNHojiZOhOqx7bwJC1VknN-v2DNkQZhQ
X-Proofpoint-ORIG-GUID: YNHojiZOhOqx7bwJC1VknN-v2DNkQZhQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263467-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,quicinc.com:email];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 282E21014DA
X-Rspamd-Action: no action

Add DT bindings for the QUP GENI I2C controller on sa8255p platforms.

SA8255p platform abstracts resources such as clocks, interconnect and
GPIO pins configuration in Firmware. SCMI power and perf protocol
are utilized to request resource configurations.

SA8255p platform does not require the Serial Engine (SE) common properties
as the SE firmware is loaded and managed by the TrustZone (TZ) secure
environment.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Co-developed-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v2->v3:
- Added Reviewed-by tag

v1->v2:
Krzysztof:
- Added dma properties in example node
- Removed minItems from power-domains property
- Added in commit text about common property
---
 .../bindings/i2c/qcom,sa8255p-geni-i2c.yaml   | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml b/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml
new file mode 100644
index 000000000000..a61e40b5cbc1
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/qcom,sa8255p-geni-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8255p QUP GENI I2C Controller
+
+maintainers:
+  - Praveen Talari <praveen.talari@oss.qualcomm.com>
+
+properties:
+  compatible:
+    const: qcom,sa8255p-geni-i2c
+
+  reg:
+    maxItems: 1
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 2
+
+  power-domain-names:
+    items:
+      - const: power
+      - const: perf
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - power-domains
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/dma/qcom-gpi.h>
+
+    i2c@a90000 {
+        compatible = "qcom,sa8255p-geni-i2c";
+        reg = <0xa90000 0x4000>;
+        interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&gpi_dma0 0 0 QCOM_GPI_I2C>,
+               <&gpi_dma0 1 0 QCOM_GPI_I2C>;
+        dma-names = "tx", "rx";
+        power-domains = <&scmi0_pd 0>, <&scmi0_dvfs 0>;
+        power-domain-names = "power", "perf";
+    };
+...
-- 
2.34.1


