Return-Path: <devicetree+bounces-265969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CQZCh0BlGnH+QEAu9opvQ
	(envelope-from <devicetree+bounces-265969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:48:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C4C148DE9
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 36BEC3004D15
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 05:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3E0290D81;
	Tue, 17 Feb 2026 05:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZvoQW4CQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="folc8mpL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517DA2C028F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771307269; cv=none; b=Jmc/77IZG1vbIagptCxWhQOx6ll8RTqgraIR9qA3B8vALVYBlFB5hnUDrG4D4iiL6gG4pOhY3FCplFX9TLG9dR14y2r2sHsDdFJZMYC4hrZgg4OtK7gM4SUoea+/EzWO2mH4XTJMF+BiDFiyvu9BZcT8VfODgb6fvQbaQcPCiDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771307269; c=relaxed/simple;
	bh=CGxDn2wQGy831CaAEyhJM4BBDVYLMNZTKDTlem8uIQg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=COhfBbJEMkauJW7snj+7uWjKw20P4ZjqyV0nF1c9BBKWNkYyuaCbVuc6MMZKaetqxJVOtIkVG9xkS2DWX/KM3vKZbWiaS/9ASTSVt+xv4Dxz+KWWCh2tOXComRMAALr+V1AE70QOVxd2GfjNfbENJ+OxPIK3KSe1xKYt4nNr+YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZvoQW4CQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=folc8mpL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H4ENSS2960656
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:47:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=t4LI1Fry9CJ
	vHO5MYeXpEHSkT1JzvPFcJjjRx2mFKr0=; b=ZvoQW4CQRgtdrlnRyB/xnQRzjJM
	np+0nH0tNzzBFaskO3XHCaLrAVdZlq6OpZzTGbSAS07Pvq3F9q5zSlA8qsCDtSoK
	hQaR4RguTEzgece33lyG4NUw6g3EwdiqGkKbbgq9qPzLOULImh7sqIyVP9EgLHaU
	xdv5JI0od60v1Hf2Vl28Xz3NOBSxt/9hKYne78oB1Tx//MwDe2ctnx8Do9v9jAUJ
	kEUGUsYqRGwN24rO0efZygcbf8r4g9DE1wZ6sZqn+RDfXjNdgZf4ZMy9+PHmB8ed
	D9D9zh5bhw3x4UIV8q+rHI+lVjmUjVxGbHvv0+61FrZpqikeNR7P56XMFDw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tm97we-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:47:47 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-354c7a38429so4387488a91.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 21:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771307266; x=1771912066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4LI1Fry9CJvHO5MYeXpEHSkT1JzvPFcJjjRx2mFKr0=;
        b=folc8mpL5hBVE6ZZzgBVkj1jqkrWT2rZVKulTy9k2OfXRAcu6/G+erCNFln2bj0M1o
         sQCJcJSONnU2kPC4NlGJwk15LE4Wy283ubmdPcDRpyMnu9gAZLDM6EhzAwaW73MO8Jtw
         CP/vdx4jCVwd+m0kE27ERnCCiTLzuQDPbELYtY9CDaf8aXT+UDQIBsd18Kd/uFGrKDby
         PZTh+0GzinT5muGaltbU8M+vE/knb/91OTaaVf18T/4/P6se8xZk2IkY4D8MUPanm8EH
         miKbLes8590OC95e2SnN6wmBN/GHUT4lKKjJnjU8nVjgcpBqXRV+ptaUuiUa0FDOpPkZ
         uEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771307266; x=1771912066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t4LI1Fry9CJvHO5MYeXpEHSkT1JzvPFcJjjRx2mFKr0=;
        b=EO5wFLFlV+rfhy92nL1iiUII5A6R99TfcAaIuNJUWDORSraMKTyDNyvsApGh+DaEEX
         /uQwO8WpxfMuVslGDTHbqps+ARzm/Usl1DOlkdHqJL6H7aKZnHPcR+CV0a0eJKi+KBqF
         +KH8x0BFcUuUvgQaUrdkFvganrf4VS77ocICN8uWrF4wiB50R7x/H9cDV7topMPoaYhK
         6o0lyF23jXdLT5ZEq60lbxnJHMQv2xnmXH9lS+om+k2WkEt2UyKIJOVT+hcbK8ZGpEso
         sCwL0VyQboWMRW9fitcSFYlEw0G5hPs7qGnwBg5VKoGEe//PSe+ppIXRz6sS7wVZ/2UM
         paKg==
X-Forwarded-Encrypted: i=1; AJvYcCVcftltIdBQWU4ySGLV+NWOsDmmsKElHHQlPC1rHxIlJ9RbfspsVyNbOn3TGVy4UJ4z9h0Mqxfvz/7/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2dCIun3s3yFkX2Oy9ZQwl8ly65rT3EdN5Ny8DKH6j57Xy+VVO
	xhPBlMNMHF+CaFR5VmsabADzuyKTjCSOtPE0GmXZavNmz8P3dmVc6a09QSaNCIo6m9ino3aON3n
	UeMl4jV/h8eQvYSinRFU7L70XqBW65OqSYlcOgm0DA5nQ3FAeUhyNjKxim83V/TRI
X-Gm-Gg: AZuq6aJRLhBnGcrxXgJ8wh0L0tglX+88ThkpkXjpXA7lqVGLPAAY4whcnPk2GGpuKe7
	9NA2Pfqjl+wUwCgyrBZhJrjayU1Pmu6bSFN9gLJqq51FJkfgM/ltv786k2fouXYMiM4TE/ujBt0
	UmHPVM3lK6nNGkexSoUEEgqTQI0f136FnecLNRAupEKxkrMBdq3j1bg3wzPUK7yvcxssIVE7OfK
	IXjr/zQQDmFYP1qmIdRtu4s7oTS2Preoysq54QlOnYBmOMd5wW7Mtb600Cdsp0CVekiCzF5naQc
	/4jX+/XngoEFBSAEZlgkkXjjMLsh3VwFeO5NCMuvAtgdmAilfXtfM/NcwS5cnIUtJGEbApY6Ere
	+hMloK40rYopPA9/FHfQbE+J+BEuME58fcqyocE7KGP8SFrHx57Y=
X-Received: by 2002:a17:90b:3e48:b0:353:2972:74a4 with SMTP id 98e67ed59e1d1-357b51ad1c2mr9070758a91.13.1771307266214;
        Mon, 16 Feb 2026 21:47:46 -0800 (PST)
X-Received: by 2002:a17:90b:3e48:b0:353:2972:74a4 with SMTP id 98e67ed59e1d1-357b51ad1c2mr9070742a91.13.1771307265762;
        Mon, 16 Feb 2026 21:47:45 -0800 (PST)
Received: from hu-vivesahu-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35662fac3c1sm21429775a91.17.2026.02.16.21.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 21:47:45 -0800 (PST)
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        janaki.thota@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: bluetooth: qcom,qcc2072-bt: Split to separate schema
Date: Tue, 17 Feb 2026 11:17:30 +0530
Message-Id: <20260217054731.3058567-2-vivek.sahu@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260217054731.3058567-1-vivek.sahu@oss.qualcomm.com>
References: <20260217054731.3058567-1-vivek.sahu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: SnYdU4vhEFAIwNDf11J8CM86T0D2VkBf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA0NiBTYWx0ZWRfX0fE5FkL+Pxlb
 2/k94dVTvJGENjPVn9cyUmNrSm0ZWi0cm5xa1aMW+0ZFOuVKshTsfsaj/rKgoy1qvs6p7AOtM6v
 Xj1yjAaUXy6sbUgaEVZNlBbLGrPGFt3xUZoLLcm3kzg18pyKug7TINIRB7lFm4rcOVzau1WhP1Q
 sCgrG7fK1E09XxLJCzLPokfykykTcl3HkHl7BCLvg5WUxmnAJ9/xw/wrlpD3Zk+nb+aG7EIaPXc
 gpxhd4EHFwWDCvM2+oPmMaN4TjvimHlV3RvkXxn3GCOWzZ5FhIBr8pU965o/KeV1pH1SyFhGaGd
 KPBRGuk2eVCLQphzynJ2gvTUHJKITfa1jVrC2H9nEcLugP97+WmDWSltBwV6Q/Ss5WsSl5Kodw7
 fto/n+I0Czta82duDW0xPOJUu8Ud/htr33+wb/UZy5rVFlKyne6cdXYk6UircSxmqVsFvzJ4OiA
 Q64Eo900jvwqwhjuCow==
X-Proofpoint-ORIG-GUID: SnYdU4vhEFAIwNDf11J8CM86T0D2VkBf
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=69940103 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=n3wo9_ZgQVSFQRmRku0A:9
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_08,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170046
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265969-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com,oss.qualcomm.com];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,devicetree.org:url,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 44C4C148DE9
X-Rspamd-Action: no action

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,qcc2072-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
---
 .../net/bluetooth/qcom,qcc2072-bt.yaml        | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml
new file mode 100644
index 000000000000..48936bb8e91c
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,qcc2072-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCC2072 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+  - Vivek Sahu <vivek.sahu@oss.qualcomm.com>
+
+description:
+  Qualcomm QCC2072 is a UART-based Bluetooth controller.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qcc2072-bt
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO specifier for the chip interrupt.
+
+required:
+  - compatible
+  - enable-gpios
+
+allOf:
+  - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    serial {
+        bluetooth {
+            compatible = "qcom,qcc2072-bt";
+            enable-gpios = <&tlmm 19 IRQ_TYPE_EDGE_FALLING>;
+            max-speed = <3200000>;
+        };
+    };
-- 
2.34.1


