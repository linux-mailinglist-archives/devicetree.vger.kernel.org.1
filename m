Return-Path: <devicetree+bounces-260021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJEHE93heGkGtwEAu9opvQ
	(envelope-from <devicetree+bounces-260021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:03:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B989754D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B33830E1A49
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DFA135E546;
	Tue, 27 Jan 2026 15:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fL9k6hEY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jrWPTAeh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A405635EDD9
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529474; cv=none; b=sqDcrugxAYj214teMmtXQRqtnerguegbIHN2d3vrUPgrkpYOOZfz+fVUR6T+K+R3NcsK6fRynYBxMxTwcjv2IxUh7y/pXNDU4YMeRM4M+leT3/GpPWOcThCuYVJ6mj/XfeOaUz6oNKs7NgQoZ2bQkCzwJuV2oAbjSq8krBImdf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529474; c=relaxed/simple;
	bh=rBN9H4kI0rq1cyFsHjZZ/dN5fz5IcTQM2qjaff5Xugc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Y0DOsOUmPNBkuDGZaxaiBAp8OuYllFFE1n/L8D87jQcGbP73HSjzvgUwoPcGJ47mT8B5sEUfQvm+QgBj2yEFuCPcQEvXCpnnVgLHCL9cYu7IR163M8fLahkV6M6Q+Y0+QTtFzOFaF/pl4jlH3ZWLJcf5Pswdw5JjZZgNaPrRt18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fL9k6hEY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jrWPTAeh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA9dXt3857577
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bDw6El/I8Qn
	/jmYF9BqPfB+N3QPvQqvwh4YJYPYnhVY=; b=fL9k6hEYKTFawRZHDjOqgkg2osb
	01SZT+oRp0kwCiznuEtDE9dFFWfbr9e2wt17XPhJaxvkY29ZBDJxqdqam8MI2zD+
	0RbbAD4YOoVZY40X0iJkfu1EHuPwK05bbz+DChU/9MNv09KJGCg+nnuL6KX0vnis
	iOxxgpbldoGvhbZOuEz+gga2xMv2382wYRulPBs8ur9Mb1xXdsKQcFAlQO47oiYa
	qkI6LqVcBqtbcrQkp5pXB60xbRwPCI9NzyIL+ttxsggjFkJJhFGzELtQgYum7WSp
	EaetbOCMvihl+1XRfsA4KrCoP22YPHjBAnn8yegQ41nRNJT/ln+j3Uak9rA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxffs3acc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:51 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a7d7b87977so49134315ad.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769529470; x=1770134270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDw6El/I8Qn/jmYF9BqPfB+N3QPvQqvwh4YJYPYnhVY=;
        b=jrWPTAehauc4YN9wLtO1PZu1du4HNRPH7pbU2cX78EdJePTyKGBtvTAwg+jjfj4Ysk
         AoCwL+xfrbMbgbWJ86+2c63sIhdPg8TzUcDYfxsQx5JTBnntsRZkVnykm+Ds7WycuUFd
         XSNhvGaNot2WIQMahkEHUtt3tcCpansTJcec26kN+rGzFO6ndnBzkTlRN19c/DQIaz6D
         IIjeTGJ523vElSgnV+FRgM/MStBLM0KTHbmuhm2Bk6zA9jWvILpCU5ouz34JzHOiNl7D
         NKfp2x470MGv8Si+G9mkb3Con6Qmseyjn6FBFaGan0mxdaLCaEqMrSKWD0wE0WxekJRh
         A5XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769529470; x=1770134270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bDw6El/I8Qn/jmYF9BqPfB+N3QPvQqvwh4YJYPYnhVY=;
        b=lkDcDEy7N+LYvGR8TNmL+y3uKWdkytFTMW6lnMq/fejahKf8T+X0yIjLkNPaM6N72t
         KtqdU81LkR1cTDhkrHGx7Z6zhIiZg8Mkc+1vE8xiCGg+fPrJotYL7ug4jL6mI31iPpEM
         LutDVT6ltZQw86ZmIw/wlyEZEknuI2seno1YeCiZfgKLdNQQIxLBJVdvSRMugXZ4aUM7
         U3lmD0B0cVuW2jxQ0B/ZaH0XaIMA6r4qCBa1LZ6pw5S0irCuFyfVYgYGm5/T4fBfzljb
         InSe9lkwzncdUHbcso0Gd9J9KCYxGjRA//loFXRlS8irGQAxAkIRnSNYHDMmfgf0xlpE
         b9Bw==
X-Forwarded-Encrypted: i=1; AJvYcCWOLibHzu1Lqz641sHSEh22gIlNZcWWYZPDqmadoDhQ38E7+c9qjCwYy/DIzj797oAQzLqIm/AByW9U@vger.kernel.org
X-Gm-Message-State: AOJu0YzkXhUS5ESFl311BZ0Xx3BW9DmSVGO3W8j4mNTMThivqXg0QCmR
	p+RTFXUAYp5BS7IH6d2I2rRp/iO11UZqgxsHGeR36GV/ntDFAkLUC0LQAL9AJ+mbOiKgxJisGzm
	eWB8yZOoGyLMEwTIuv0XI3Uh8Tlr6TiuypmTjjmWccsO42T2lJE/F4CqWDO8uFOuo
X-Gm-Gg: AZuq6aL4IKHEllmLxB3EpFGujBrzyfI8CJLL4AHxw3+lzMBhrC7SGmLBlArHWVwoy0d
	DOikRpftoBvFce6iq366ZQZVdSj2JMuKDH2Hhl+fvXP9H60hAnAArlJRcVwsSnov9aCXIiwWF4j
	+GcT9KbDszAsb6MPGkHraX+fJxm7sfJal7FM+iwfxRaR6u/zYy2i4mmCi387AX3OisN/uXkKuUT
	7Pjrd+a2OMG4JuwMr/s8rb9vt4y3aawBnMf/aJaW/u5+fsQcZqELwJIdH8IZh7DKGr7k7kTtHFQ
	eD3QdNrfV/lBiCTmgzQqowiz92S5tjqsVBzdblNtuuMuunJ8XCcqJbE7xmF3Wv5+mfYC5ANh5/C
	Y2bN8t3gkynPVI06UxxK6ojMtGwSxaHydgFeZ10w=
X-Received: by 2002:a17:903:3583:b0:29f:cb81:8bd1 with SMTP id d9443c01a7336-2a870e0ad2emr22212555ad.55.1769529470348;
        Tue, 27 Jan 2026 07:57:50 -0800 (PST)
X-Received: by 2002:a17:903:3583:b0:29f:cb81:8bd1 with SMTP id d9443c01a7336-2a870e0ad2emr22212325ad.55.1769529469807;
        Tue, 27 Jan 2026 07:57:49 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802ede745sm120577465ad.44.2026.01.27.07.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:57:49 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        gaurav.kohli@oss.qualcomm.com, manaf.pallikunhi@oss.qualcomm.com
Subject: [PATCH v2 2/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
Date: Tue, 27 Jan 2026 21:27:16 +0530
Message-Id: <20260127155722.2797783-3-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: W_0dWvh-Z_2f-IwYpXSjs6-2vYfIcBZU
X-Authority-Analysis: v=2.4 cv=YpcChoYX c=1 sm=1 tr=0 ts=6978e07f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=sYNnw0LgJqtDHXS-OV0A:9
 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: W_0dWvh-Z_2f-IwYpXSjs6-2vYfIcBZU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMCBTYWx0ZWRfX1/git8Q62sPX
 EpklDSolmQ4KPHzh8Yj55sfwPr5W8MCPd4XP+9VGVeZ2n8Nki+wmB7cRgDg1+80FWOGy6798BLf
 D5Zxjyl3+kUgOVDVgYMiyiqxj/AJVJ9lzcAQuuKG1R6MJd1aR1SoxvaAExnNV212dGLGzOmkDJs
 NhPxhjQLPnbIqexk/e0uqGBk/wcLiJykP8q8G9txJLPr3c/Fqh3bNMWBtzJ+p46uPyc9zFNKDm5
 B6zeFIootgP+i3rcNStFL/wdqV861JDPuL+jCAWdWtRhEeJmS908idPTNAi2H80680SiGTFa/Ab
 uZZF/L731plkynepnbVGM6vMA0Gl3SelRkVJEPVwtFSeXbwaZ6ZqouOwv98UQRO7K3oVud8OKHr
 kSp9YhHY6fPSC1ghTymLXQlDiJJwNzGNRcVrPftLIsVQSDKGGIHfSE4xo9QtQyUKQh/ftMHj+p8
 sJbNhH/VO8EYY4kOhug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260021-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B8B989754D
X-Rspamd-Action: no action

The cooling subnode of a remoteproc represents a client of the Thermal
Mitigation Device QMI service running on it. Each subnode of the cooling
node represents a single control exposed by the service.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 .../bindings/remoteproc/qcom,pas-common.yaml  |  6 ++
 .../bindings/thermal/qcom,qmi-cooling.yaml    | 72 +++++++++++++++++++
 2 files changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
index 68c17bf18987..6a736161d5ae 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
@@ -80,6 +80,12 @@ properties:
       and devices related to the ADSP.
     unevaluatedProperties: false
 
+  cooling:
+    $ref: /schemas/thermal/qcom,qmi-cooling.yaml#
+    description:
+      Cooling subnode which represents the cooling devices exposed by the Modem.
+    unevaluatedProperties: false
+
 required:
   - clocks
   - clock-names
diff --git a/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
new file mode 100644
index 000000000000..0dd3bd84c176
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/qcom,qmi-cooling.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMI based thermal mitigation (TMD) cooling devices
+
+maintainers:
+  - Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
+
+description:
+  Qualcomm QMI-based TMD cooling devices are used to mitigate thermal conditions
+  across multiple remote subsystems. These devices operate based on junction
+  temperature sensors (TSENS) associated with thermal zones for each subsystem.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qmi-cooling-cdsp
+      - qcom,qmi-cooling-cdsp1
+
+patternProperties:
+  "cdsp-tmd[0-9]*$":
+    type: object
+
+    description:
+      Each subnode which represents qmi communication to CDSP.
+
+    properties:
+      label:
+        maxItems: 1
+
+      "#cooling-cells":
+        $ref: /schemas/thermal/thermal-cooling-devices.yaml#/properties/#cooling-cells
+
+    required:
+      - label
+      - "#cooling-cells"
+
+    additionalProperties: false
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    remoteproc-cdsp {
+        cooling {
+            compatible = "qcom,qmi-cooling-cdsp";
+
+            cdsp_tmd0: cdsp-tmd0 {
+              label = "cdsp_sw";
+              #cooling-cells = <2>;
+            };
+        };
+    };
+
+  - |
+    remoteproc-cdsp1 {
+        cooling {
+            compatible = "qcom,qmi-cooling-cdsp1";
+
+            cdsp_tmd1: cdsp-tmd1 {
+              label = "cdsp_sw";
+              #cooling-cells = <2>;
+            };
+        };
+    };
-- 
2.34.1


