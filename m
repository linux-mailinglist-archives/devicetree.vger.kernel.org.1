Return-Path: <devicetree+bounces-267264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uD76CbL3m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:46:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EEE1724F5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 046903021429
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF5434B1B0;
	Mon, 23 Feb 2026 06:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ix8DF9Lm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P1Jd+C/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD2B349B17
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829128; cv=none; b=umBJ5c9gJvZjXDBp6gA32CWtNPdImKVXBqXjFHblST4I/qRlq3xMW3I01JdhRIIhPyHZxd/8PQqqVrMJB4BrBeBTXkxmt/oz3UwzLHNZgirjD5J6SSszSB43pSy3hf9Dx/ZWNyMK6xeEGJEjjx/FKP48BrxsZRgdB8jFnB98xfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829128; c=relaxed/simple;
	bh=DsL6kcYT3hY1q2jvZSOp/rxfO6RBNAUHqHA9yEMzJAk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QR/1HDM4Gm+kVucygl2OrmX717Yo41ZL0ff7w4wW9qhVhq6dh3Zvsl3ZD8Tweyg0/pCQJ5thwGpxHVFG0uk2YbDfENhf58UCLv0G1WT+oIbHU109p7OIeE848ACXp37G+n6e3araR/diXv10HTuroM/7WGWNp3K3soIdiPC1Pm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ix8DF9Lm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P1Jd+C/r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MKjJJL949633
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5AiUjeizRXgIt0pWaEk9wGXXVAIJo5RCeKWJBfIhvcE=; b=ix8DF9LmUni4de00
	khCA1SoUKSQzji7xApq2vVKqZnzWhrhtMazw81w9FkUu0cWCoNvAwDL6f0XJ1TIg
	nlt9VBJ5ttdURFiZREuaK6PrQNBDMpo19k/lDPAZnzZ+pMTPUDC+yoig/ARe+/ea
	2q/pDn/C9J8iZPQLC5y7jyBEMTYJi9kHRoMb7ro6P9NHrHmT53m6NlfqB4NxI9Pm
	0/qVjWyIhrPHXC2p75hPxkEOGT5tVSxLrycYuCXTQ7RBtjH+qBYIuaem4wLknEir
	l+5KK345ulUFbZD+40LH9y0qC8q/ZmMOdHHhKDYiMXjeIdHzLbrhTPTFMb2B9PXb
	e+X6FQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf603kp3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:27 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso3639304a12.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829127; x=1772433927; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5AiUjeizRXgIt0pWaEk9wGXXVAIJo5RCeKWJBfIhvcE=;
        b=P1Jd+C/rDCqOzWoYidZllU2/p98XtWT1rWzMGkH8ifMgHzWh0s1AyxIAdQ4lZs1g4e
         7Zil+9RWCEi/G+DoKutH2AGp2MW0/O82g5l++QEu4IJclsBuTbh8WHCJM2LRGfS9RFqO
         Tkmp/+931DyaEIrfpd4lyQnSeXceU7E8OVOIa3wrIg2yYfqVZi0J3UvEjDlXUNPyuWNW
         Qp+dsD2LwhdJl+H3cYKn3HBi8TTRVf2hEQ2CEhAWiCr0LOff+CJwCMr01Vu1/EyTKi5d
         DzJKGDTqqhej+oPA9AW4B8vZ1Idhvp5XlgJ4H1rV7jtEeVlCNG44zRuYkZnT4+J5quL0
         bTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829127; x=1772433927;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5AiUjeizRXgIt0pWaEk9wGXXVAIJo5RCeKWJBfIhvcE=;
        b=u71uNOR8OHyU+0+S7Fuvipm7ECmy3UYGKy0EjgY4sOBqPcAj2IHGVou6qwf0MgXWXt
         wwvx5SzGm2F2NbMO4QxnWt2AwjPc7a6BR7MNt7J7DLPri2kt1d8HKliQKwqNv24bi3N7
         iT4JeGFre9rcQ32eDXOirIN7QWU8PNYGxJY3d0ETnW7xmQPfzyZ8JIAsb6nD0Mo0Nond
         bBgfr+M5+LYseiIf9O+Q6+QEbh+HPS/Fp9tjVGHOrE1V1TSQVX8OysLlkIE0WxaseGRk
         PeDqt48du5ehnYaMLByy+N18t8wVHMgFIxNcBpTfiaBbl97Ra8egsayXQzr8GF3Jhxht
         aEdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJAUtaY2GS7R6VhkZZCvT8Yh6LJ4yfRILkFchJc+amALyLc1EMint3DIOJDUCWorFJPjvBrCCqAPd8@vger.kernel.org
X-Gm-Message-State: AOJu0YxDm7bwdCBdO1/pzwSo4jlKHOOzup3Ubf2uWogeqV7zC7Y4jNT3
	Y/U5kHSrhaD/9c64kqdoO8WdBUdGrIVs3m6u3+7LfIO2ocSlWpvHsiQJ1h2NLu9t85UhIMu+qdt
	L3EccU/oBKRhjwxw07T3QfSCb+4MigO0Vbc4MyAs6b8NZtGs+JKcQIBwjsgX/17Y6
X-Gm-Gg: AZuq6aIxJAWYN1M6cz8JqKF5c9Pl+ye+dC6UvHHD55YOqlyTRSTlPie/mwydx9YaVZ8
	sEt4mrWajdDSg9sCNBV70yVZAcuXyfUT5xrg2Xp8WsaxKGbM47y1ASRkwxjJeMVTEf4DMKTzTbU
	jbH/kXXr03lerK1dBirCTU3s1VHiS4I3KxiTegf0CA4f1jNchGEqDvDsdviPs+9jl9568ov3IBa
	L+N5T58Oq8avuoeB1TAV+FvdZ5dHRSmKl7ZCyzzfkiyrQ/sm4FROX4TpxcB+sIC0mxLtmO08Hc+
	vkyrdILedrf2Q4TLhrjhdWi7wEFP+YdxEFKmXAj4bM2F0t6iqTmzARlOu0J2MegK006zRAf5KAi
	7Ck5F9UKyZ4plr/w+Kz1w6ejc5FgSG3VDTEBxiHW4RbunW1pRg1OK8GLk/2445Rojbr/b+ucyiU
	6vo+Ns6gXaGPb2
X-Received: by 2002:a05:6a20:258d:b0:38b:ea89:700a with SMTP id adf61e73a8af0-39545f55426mr6544363637.34.1771829126524;
        Sun, 22 Feb 2026 22:45:26 -0800 (PST)
X-Received: by 2002:a05:6a20:258d:b0:38b:ea89:700a with SMTP id adf61e73a8af0-39545f55426mr6544342637.34.1771829125924;
        Sun, 22 Feb 2026 22:45:25 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71839d6sm6483993a12.6.2026.02.22.22.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:45:25 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:44:41 +0800
Subject: [PATCH 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v1-5-042fb35bd37e@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <Mike.Leach@arm.com>,
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
        Mike Leach <mike.leach@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829096; l=1751;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=DsL6kcYT3hY1q2jvZSOp/rxfO6RBNAUHqHA9yEMzJAk=;
 b=dKirz3jBPCDSlBfWyW2kjkYiVvnjbcuEABUq5s5D1lABgfXVMfeJ6WvofATkXja4IF8NUrRI8
 mJYR53CJLf/AIv70geMxfmLFBU3Su1cx91BAhNV81HGkH4DOotQqnOF
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=XbWEDY55 c=1 sm=1 tr=0 ts=699bf787 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=gSyxy6DGYGa4b6s9XCEA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OCBTYWx0ZWRfX1tKz2HEGqTEg
 ZL1ZnLIvE6q8rhjqjtP8QNw5ODDhq8DguAPocYx86Cf3EOJso/cItmKJsgiUPF/U0lzA+p/5dSz
 y8jn6wJACXg7xB8s41RllrYSUevsHBwWzm95upz3KYubegXypB81pj6UE4eceKBSevRx0HE5f2R
 pJJU3yFahk+7wWxErSllO3IUO+0l2y+AYSgsNcdkN0lWT7X1EpkBq4BMVUGF6MK7e0l4KcbNaFr
 vlVn+syaVwkVxjLxh5cxCezO59eKBrHO2ZWWlgKidpTP5mFD3tv2UsQH9yy0GVV1WGf3Ut8FbTm
 UT2ZsuEhTIN9yAbIhuijnK7ajNh0QHipghgzclId1JzPcL+13ffz9Ichjjzvi5LsIAhjTwpI4GF
 SxTXCB7AzVbqcK+cXByFCSv6ZYPKdhH88cc+G0nm2X7e3U3HdKGSkpvIaXgyEMQjF3jGdRfZ5DU
 1wrAQvvsf6t8WbtHtEQ==
X-Proofpoint-ORIG-GUID: qD2XIkZhnFSfSHLj0AxnmFjBtdYzFmfg
X-Proofpoint-GUID: qD2XIkZhnFSfSHLj0AxnmFjBtdYzFmfg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230058
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267264-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,0.15.70.40:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B8EEE1724F5
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
index e002f87361ad..2981001a7d7f 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -44,6 +44,11 @@ properties:
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
@@ -65,6 +70,8 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     ctcu@1001000 {
         compatible = "qcom,sa8775p-ctcu";
         reg = <0x1001000 0x1000>;
@@ -72,6 +79,9 @@ examples:
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


