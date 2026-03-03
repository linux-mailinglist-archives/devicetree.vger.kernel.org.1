Return-Path: <devicetree+bounces-270653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DyjHFURp2k0cwAAu9opvQ
	(envelope-from <devicetree+bounces-270653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:50:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6901F4200
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:50:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A155230D4A1D
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 16:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8295C3264E7;
	Tue,  3 Mar 2026 16:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VWjBIwnI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fv9L4gs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9D63264F2
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 16:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772556244; cv=none; b=HdWFVOR6ziCttQNgLgtsqv1v6ytk1xJLjVBpSZ8LHbap91m7BmhBXEkQWyumW8u9ykdSLI6KnlKVSYRaos5TgGw36eIknnCZ8bqiowwKb0VaBAouD+I8Z5+TL+iEryvRMG33vVtJIL5yXwexDqYcxURVYZL5cmBR+PPBAc3mtMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772556244; c=relaxed/simple;
	bh=FTl1VHbro06Cq7dDNE2H+m42V/aparGWxyJQbf6/hAY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=riWw6ocSSK4BrRFLo6RJRUAIKqVDiQcyEsCv0a0XzQrgyBtPk3ca//fITJBcgloFJC6UaAyfXYvmYfkCOh1EtheYWfQL64xAE1joZ0cffx3dKObhZ/qGaVk5PzGVzHY+oJVu2hEbqS4rioHtq92xItRXY4fpwCnoP4QcJAqfm80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VWjBIwnI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fv9L4gs3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n6G61838296
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 16:44:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PMCXaLhX75BG1K4O5PlDSW8Z8GT33a6ZU42uHz3nIaw=; b=VWjBIwnIpN9xPezt
	lKkTdTDYBiBBIQbCLUyqS1ONcVy/jq5wZKPuQyyiSyL3KDjjFRdjTo9ygGV8M17a
	FFwP0S9KCb2DFYmsWX67QyfPc1DUBFQX2zHv3CrxcTrUdh8Kfd2budXiiDw5fmK+
	j5DTR02i3UQYF5rNcvqHFRX6/mxLqRQeJdtuyO1k95XoifO07Xu1dcYCMj9o62CO
	uIs2supYpmRNfvMI9t9qY1038aT9IMR7lUYSe3KkKcZNl8CyVS8WsFgLTiU1p4Kp
	2x9KQYXXqwBOurQmcNI+uMLzOSzykNVUzIwOKmVDPpdbToRRVT5DEFK9PEuna1Ur
	y995Jw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnnggb0mb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 16:44:02 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2be2592f6c8so67748eec.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772556241; x=1773161041; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PMCXaLhX75BG1K4O5PlDSW8Z8GT33a6ZU42uHz3nIaw=;
        b=Fv9L4gs3Ny7B5Ft9KRxeYUlgKddduDY30vOwTZazU0kC3p2yJPZuiSco3rJvKi9B2k
         74Ayt/LhxF2D7pbpQ9FKe7DaKs6zE9dBzpOS02z8P15u4J116l1bNFuRms/T28VTmTiF
         sSOCQYJEWZG7E/52RDD6N7W3FbwURrIR4FxySMJNQBa9FOP2qXLfesVOCGbKNP5F/F3a
         ESzUCyLRzGymXz94QRnNhw52xRLGmh5XCg+GvaYNfxga0JYunN3kNlFhVlrG4ptXE1F2
         i0CQtN1qO+ehWYBtqXuKR95U4wkTurWRbbkhZ0CPurP/Bifeb42thf535a5iVezjqJJW
         DZ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772556241; x=1773161041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PMCXaLhX75BG1K4O5PlDSW8Z8GT33a6ZU42uHz3nIaw=;
        b=axVYAVu+7aclKyA86tgGZ7VaJISlylPA3PmbyHHu0X9VWJbj18aR6zg5vFXwwkIN/7
         la6kO4Gya5HQhxCtSznrIU5kYEhsQMCwj04sa0xm1V85H4AZp4ZqQThmAXbPQ5HNmALf
         Ux6NI13TUXPQL8JV817ogXbZEJAjGFm8rxiK/UiksXDwo5sUdF3fu5iEfkfDXvHg8YM7
         sp/q9VBIeS2hEWlAFQZ46mdB9NLHzV8n4EpkyknjI2AvVI2HjydxQnhHMrF1tvLNmZ6d
         FHt8d9GxaCnvMWAPKWtHVK3fGlveEQ24+163s2R6e1FXQrBDNqGx5k/1CBoybNF3/nXG
         0QPg==
X-Forwarded-Encrypted: i=1; AJvYcCW2k7Jey3OurpufsaRLHn4JXh5+4FZxcIK5ULupdERNOmC7bfDHmPYP32wSDiq8SXloCGtRU5J50f9N@vger.kernel.org
X-Gm-Message-State: AOJu0YzeziVlUv/Yi+OWdVI4sy7ddyiQteYd43jOzCiFohWzj21vGsRF
	BDoMqH0x+lkJIgKbjbUCFokSPq6qXWsfeW541kmZpoHYL4zdsjx0615avHTVGxDxkvUFfjBynBW
	2TJBPCbfSyI0oDg2rmp4CgRrCCMOBbCWt/16vsW6+29ckYC/NKC/wNawTZhUohXbj
X-Gm-Gg: ATEYQzylBDHZpkYz0kw/KnRCI7vmA1n1idl8hfO2+OOGuAWZdkqZZx8taaqmoi+RqZW
	ZEhpuNwMauLr7olCI9fZsDJjpmQCbA8WEHgC8zsvsIwX+Yqo8Uuq11Aopzc6jQDLges5xntcha5
	ID1KBZpemA8nt0shUBxHdw1f6vomnHsKvFTsIAjKrwlqSK/hJgvl/O/U+9WegKMFb+EXqr4GmcA
	P3mIwFRIrtpYcT+cKQ8AO3yEWavAdwfvO5qkukWj8zSQw1UURBXi/jMtc3PJaUZ82Z4OxmVNmWN
	z/CBRDGW9HxVP6Io6wcFpzCugqpRUwXVxiSG/Tv/yLohJUD1GpHTXKNgEH+f+OpHZl+lkrbFxzV
	dn3BmOFVBgHGCkeo1TIa1Okftr+tbZrK1WF9OeHAKf0v59/hby+bPwHuveYRR2l4FqIZ04UA8kk
	F00FC2mBRCibXxhHcFEvR4uO/MicgiqHgdIpIElgW7kQ==
X-Received: by 2002:a05:7301:678f:b0:2be:6e6:e47a with SMTP id 5a478bee46e88-2be06e6e93bmr1552263eec.0.1772556241213;
        Tue, 03 Mar 2026 08:44:01 -0800 (PST)
X-Received: by 2002:a05:7301:678f:b0:2be:6e6:e47a with SMTP id 5a478bee46e88-2be06e6e93bmr1552246eec.0.1772556240519;
        Tue, 03 Mar 2026 08:44:00 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be002ee839sm8823286eec.8.2026.03.03.08.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 08:44:00 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 22:13:35 +0530
Subject: [PATCH v5 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-lt8713sx-bridge-driver-v5-1-6cc2a855aafa@oss.qualcomm.com>
References: <20260303-lt8713sx-bridge-driver-v5-0-6cc2a855aafa@oss.qualcomm.com>
In-Reply-To: <20260303-lt8713sx-bridge-driver-v5-0-6cc2a855aafa@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Simon Zhu <xmzhu@lontium.corp-partner.google.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772556225; l=3852;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=FTl1VHbro06Cq7dDNE2H+m42V/aparGWxyJQbf6/hAY=;
 b=4DlJUGfg7OTvxMcsFAxYYFK8fsr4HHxZr1GthVvOPc/A9Fu8Cyd6/jUVYyURPtVQG0BBDkfK1
 m8xlAKqZKOICysR2J2X8PehX4PXQqp8pj9Qp7kZtJyF7lXFyrMDWXu0
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Authority-Analysis: v=2.4 cv=P7E3RyAu c=1 sm=1 tr=0 ts=69a70fd2 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=1XWaLZrsAAAA:8 a=u03R5FaqcccxyDpVlScA:9
 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: 35HfSRbQ0fmnsbtpcvdglhbI_ZMC77DX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEzMyBTYWx0ZWRfXzZFYmHUk+mJw
 6QEMHu81r6EoPgEBiZTjAseMFSlkFEWWbYmvhGLEIP/zgvwJqGXz6CnBvuDe//sBYmA/KTlqEmh
 y+eVygJZiHuYHV5SsRbrckrSOLUrTeCKpHJADiN/KX4D9dKX/D+c0UOWGBF74u+/GlzpKE3F6f5
 S2OXDJY4ppz99vxieWHB1LuGh3Urb++SR0zgUR6ybygYVPABpjaF6Levp2hfqXeaK0eqbG4kH26
 b8b1Zfk6xSgv2OesVEeiJnIEdt8ZT4qb2A12K3siEB8rvAKokonE/nq+igRmEzbDylHDX7YtEVx
 JDF8D5Lpm0xu5fTJkIFXfY0rREDccGO7s7uIjkABx2XZ/bmGTsAcSDhXo58QTOSjJxk4S+QdwVj
 D/pOGaZiU8s7YMNwbg1F80SnZgIsnDnKJDk4Kak4K4dzaWJD2o9xo0kKRMsdrZ63lid0fvLX5kE
 5UHSOWals05STJaiCCA==
X-Proofpoint-ORIG-GUID: 35HfSRbQ0fmnsbtpcvdglhbI_ZMC77DX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030133
X-Rspamd-Queue-Id: DC6901F4200
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270653-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.3:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,4f:email];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add bindings for lt8713sx.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Simon Zhu <xmzhu@lontium.corp-partner.google.com>
---
 .../bindings/display/bridge/lontium,lt8713sx.yaml  | 113 +++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
new file mode 100644
index 000000000000..a5ba4db11a7c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/lontium,lt8713sx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lontium LT8713SX Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0/DP++ bridge-hub
+
+maintainers:
+  - Vishnu Saini <vishnu.saini@oss.qualcomm.com>
+
+description:
+  The Lontium LT8713SX is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter
+  that integrates one DP input and up to three configurable output interfaces
+  (DP1.4 / HDMI2.0 / DP++), with SST/MST functionality and audio support.
+
+properties:
+  compatible:
+    enum:
+      - lontium,lt8713sx
+
+  reg:
+    maxItems: 1
+
+  vcc-supply:
+    description: Regulator for 3.3V vcc.
+
+  vdd-supply:
+    description: Regulator for 1.1V vdd.
+
+  reset-gpios:
+    description: GPIO connected to active low RESET pin.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DP port for DP input from soc to bridge chip
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DP port for DP output from bridge
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Additional DP port for DP output from bridge
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Additional DP port for DP output from bridge
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        bridge@4f {
+            compatible = "lontium,lt8713sx";
+            reg = <0x4f>;
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    lt8713sx_dp_in: endpoint {
+                        remote-endpoint = <&mdss_dp0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    lt8713sx_dp0_out: endpoint {
+                        remote-endpoint = <&dp0_connector_in>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+                    lt8713sx_dp1_out: endpoint {
+                        remote-endpoint = <&dp1_connector_in>;
+                    };
+                };
+
+                port@3 {
+                    reg = <3>;
+                    lt8713sx_dp2_out: endpoint {
+                        remote-endpoint = <&dp2_connector_in>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


