Return-Path: <devicetree+bounces-266398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KN+rAY6nlWlVTAIAu9opvQ
	(envelope-from <devicetree+bounces-266398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:50:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7237D156182
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:50:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C7743054230
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99F430F551;
	Wed, 18 Feb 2026 11:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n0abLZVi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c8vPo9Up"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAA22FE593
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 11:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771415412; cv=none; b=u75qmU33WdebzCKsKhfqm7YGKLiPGaZo2WtGFZ2Ebgp8M2TKIjtlpDHjukACwtOei20zrk3mTphCgDKUhN3sPA/CSyLB6c4wyQVvtIoalhrpgqTeK2lUcqjd29P+O+ZUccEE1DUsPOT92LsSxXWvcaeGbKPwkiAvF4XK3HMB6LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771415412; c=relaxed/simple;
	bh=pfnWtCP2SqzSh5qaOJ8CDGEV9I8xwYdhCVnMofQVpfQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=R06Nw+dIoIJXurNfnB43IQ5arSsIR/tXAHeAucdovrC+aplW/Y1GI5poiiJ8ixTTHiW17IOx7FaZl67Y5ANoL34AJfPxpyE04pWk4+FEzLDWhWvzIuIB1vF5HtcfTXGuNnyuWu0ulymtGm+sJhP+OSVE3N64PIQfcHqpJbSs+hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n0abLZVi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c8vPo9Up; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61I0tmL21168070
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 11:50:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=byRIuO7+4qA
	T7Vljc7NYIoqed3IcWmvzJYq+ybzKxwM=; b=n0abLZViAjWRtOWkU92bzni0A8/
	YUQtspLyPNVUVYBE/gHhuqNHMf/ZWMCTQbQrE/yfmQUCt0aB+hSNCmq7l9kjDDU4
	/LcEjU1Blua6HykhSgEbqbnSybr712MW2fzCH21nkY2dyMUbfLuWw9zu+iCjTAzG
	XiVEmFn2bEU8SujdxF+EzCc8R5wOS/KtGWiTsDl2snRS9YAbHHS2l5IfiPnNmkTs
	tm+nte/3piWVS2lTqaW6YwsaDh9GNaf4mARQ2Hfui5arLeezIUTeRPDkhbJl5frt
	JkxI5t57W6wEv2x8E6HPx9kBlneIDCaWEbXjVcRdM91VpLQsqfWgkDzWAFg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd3ah9d0r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 11:50:10 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ab0b2e804cso69742975ad.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 03:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771415410; x=1772020210; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=byRIuO7+4qAT7Vljc7NYIoqed3IcWmvzJYq+ybzKxwM=;
        b=c8vPo9UpxSYL2ZJhoQeg+0DNrw2Stjxst83xVAe9ZW7icS5O755XPjOvwo2FHFZ1Go
         veaJ84TPlj14XhsGRPeON/8R6WVgPBIJHSRTvwL5nYZqUlk8JYrDRuIMrL9pV1ly/uKn
         6XeqY7ia8KlLN9s9gWJ1bjCe0ufd50dgy7+aIqACYRNSspuDCp0s/iD3v4L8ylhNaCpn
         w+078B37k9ufuLyiO5725xHY6IZCBeWq9G7aOXCiVoZaCGUCijxXS+N1s9S6+Xircw+G
         y1CdDtfoGhcj7qKvHXtyk6ll8qIqnfasobsejDEBIviGkVxVGiBL0qcB6L7ky8lQIV8H
         knGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771415410; x=1772020210;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=byRIuO7+4qAT7Vljc7NYIoqed3IcWmvzJYq+ybzKxwM=;
        b=ObLMl7xPSTqzD2bX7Ino+h+Mq8aVyJ5/Rptw4Zco+j+YqcQEmHma6KwRBOkCX/Jo1j
         FT2/MXfxEQP9WctjBpJinGv45UdVuVLabbQyjeah78LWTgCl4NJbCLKWhvo9B/77++0V
         +ywWkbTWfRMcoLwZqWLYaO4MH8q+WieqGE57tkxLQRmbO+0o+EE+W8Su/ScBWSVv54CL
         PHL8ueM0EWGv5naW4idsZyz0Nd62c+/+wPnT/AOKrSvO2NCWTxadJKswm/rq6VdQkSPZ
         j5EiQmF8Jbqwnn6v1Zt4GYhZF4qx+Dr1acJgVMCFT1eek3meGnMth/VGarmBjiPaQrRB
         NSBg==
X-Forwarded-Encrypted: i=1; AJvYcCU5yieVZfSMV2FMV+9/oktznuBwPJyeZLBRMMNnc2aP3UJN2JTSLRv4TMiP/sRsnuPI1r/buRZyGVlG@vger.kernel.org
X-Gm-Message-State: AOJu0YwX1QFnHh+LmKEIGJMBG5EVkdMK4aCe+8tEOtB5K+wwHb4R+odJ
	XlhVD7e4i50HDaZRUNebL6rCLbeeYK/3C+zkqXsoPRIx4J1064hEZTZo0IRT9cL5DqqKkd8IqO/
	0yoCiOLDjkxhWsGHayWKybWRs/YcHtjxaWGFQYpFhqWieJdKlZgfPGfQSO0Te3RqM
X-Gm-Gg: AZuq6aKkf2cPwZpzNc36aXb6Ws6nqMGK/6JkVYV6gCLpZVnSuCiiJNfqr5bgev0qzZV
	xtYDr5y9545dH1KG6g4wonPseRJAuWuan9+QzJBII7Sxg3sPs56molKcuISON/YxKxktbzBWvSz
	ynLK+JwTd5g9I8oRz6ytkkv0699/UnSa5ebDbb/ji8SwCS7oLdLdjz6qtg8UeH7ovT1OmA5fwHI
	z913P0VVdCp3iU70mPgzG72TYGUUj6+jrlUzlbPysGE8PVDNVjCef2bShOdZ+976DtunP4XOgzT
	2LNem+cd4+VXBAK3x1mD2cxEfg/CZIZ1dfDC0FUKQOH1CzBiowEeBkm0bToR9m+2SJ/8PmgMoGm
	f73zRO9MDmHMgTR33NKYvj03Co4zlvhgvlMayfU8sz1yhA6Mm+YM=
X-Received: by 2002:a05:6a20:2587:b0:38d:f405:709e with SMTP id adf61e73a8af0-394fc2f2adamr1408021637.48.1771415410023;
        Wed, 18 Feb 2026 03:50:10 -0800 (PST)
X-Received: by 2002:a05:6a20:2587:b0:38d:f405:709e with SMTP id adf61e73a8af0-394fc2f2adamr1407998637.48.1771415409576;
        Wed, 18 Feb 2026 03:50:09 -0800 (PST)
Received: from hu-vivesahu-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e52fd08fdsm12459222a12.6.2026.02.18.03.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 03:50:09 -0800 (PST)
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        janaki.thota@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Subject: [PATCH v5 1/2] dt-bindings: bluetooth: qcom,qcc2072-bt: add bindings for QCC2072
Date: Wed, 18 Feb 2026 17:19:54 +0530
Message-Id: <20260218114955.3970974-2-vivek.sahu@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260218114955.3970974-1-vivek.sahu@oss.qualcomm.com>
References: <20260218114955.3970974-1-vivek.sahu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Zo3g6t7G c=1 sm=1 tr=0 ts=6995a772 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=0QCEEdivNueWlpcsm30A:9
 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDEwMyBTYWx0ZWRfX9xy90EkYQ5nB
 f4PIQEObTNxoR4sJmtgNrl8vdG3cOeVmtx/S0UUjA8SJw4FVI99ASmlNyzy9xXnv/B22zXy3pok
 LQVA86Vzto6A6AAPCbt1Krv/1JLKpxA/KtHjxwvOyuXQIatJQXPxVwDYhxDuyZC0IAnQ57BR5AK
 glULWp9+B0p9A7o+v+jUcoGJ8AGfIqRf4VXTlAPyRsBibH4/axvnWf1X/bxLmWGvjWW7I5ySUMC
 TO6BThiPuFfoJwMTYkajTF2Idz3FVunipQAjc49k3VzoP+MQfMlBQiKQrDhJeKadnuFvRsvfAz3
 Npn0NCBo57lkKAN77E4T+N4cJcNa3me8s2L/e3a5myXGWNPnKIEqwaFb5EVNQJ+ip62vs5XIZJf
 87MkcM8alQLw4bP2LjcGnIioF/MmJF1FSlVY0jaflEy3lwhZ2Uh6cIYuy0ELhkhkEi7m9QginKJ
 oKiTJn7WfJHYlJSlmUw==
X-Proofpoint-ORIG-GUID: fpewickDoufddHiB2_ShBuRmdDcdRcu1
X-Proofpoint-GUID: fpewickDoufddHiB2_ShBuRmdDcdRcu1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0 clxscore=1015
 adultscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266398-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,quicinc.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7237D156182
X-Rspamd-Action: no action

QCC2072 is a WiFi/BT connectivity radios which exposes
UART as an interface for Bluetooth part.
It requires different configuartions and firmware, so
document it as a new compatible string.

Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
---
 .../net/bluetooth/qcom,qcc2072-bt.yaml        | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml
new file mode 100644
index 000000000000..7b27c2c651fa
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml
@@ -0,0 +1,47 @@
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


