Return-Path: <devicetree+bounces-262478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNbHLL+tgmliYAMAu9opvQ
	(envelope-from <devicetree+bounces-262478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:23:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7CEE0CD6
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:23:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 549D33015EE1
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5842D248B;
	Wed,  4 Feb 2026 02:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fIBuDiUp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BErvla69"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2112C21F4
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 02:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770171770; cv=none; b=WXUxWzMmhJyiX28h5iohEEPFRc9wSM4GlvQvNTLZazDcRq9PySr5NzNOBPYRQd6s/IzX509YIic3YoN5EEY4vW/aQkt7qbt7F121N+BfPBJPqvSx6ihFVBXQElZ6apv5CM0pbs2bgbC3B84NwTT/vf/dS1qTNjkjAykT/kqtyi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770171770; c=relaxed/simple;
	bh=001o5XY3+w2paDpYRNSmK49wmzg7ECB60KxXLrmgSlk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e8MzyuCF7Q6wQhb8wo4mFz1jgtAf0e+DyG2ZQjbxJsyNv76X2pZ10heXzAxEMDFFMBB/Slz9ucpUgZ1DUOatywD02dqIw0N3a1JS4iEB3633The7v5/5YwI48xP1ysQd9il45adp8mvzuV8eWSExjOgXbm92qp6XwBm6YPHV6LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fIBuDiUp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BErvla69; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Im2ld2055095
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 02:22:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4D/Pyik39IZpQuC0TtLzzBzYfy21GJ9iHitYHpNajzQ=; b=fIBuDiUpHxybXRkh
	txqyh6SigEhX+B/b+RK/9a35brTWwFFWs0R0opeFZ533JrsHwRagWVA6xXBuKUK3
	oHYEP/Y1M0dzn/QmaNY0K94Nhb3V4RpW8cllWbISg2+R5SIPdbONMnzR7YQcxZy9
	AghXCE6K3ZncTazImtA8k1lCASyJ8lwXnNVGm4FEO8NsFYwwP6cZ1l0mzvDZRp6s
	7oQpYDSXIDPhuNau1Y1JrCLcL0URBsNIEJy4SYy9yPXJR5DGe7dBi2GeElojQe+f
	FuCxug71YVF+jHqivWyQO+32ZG5JSsiKoFHd/zImqCJVXJBteb6HBqjSm+ppOtE3
	ZpOd+g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3exkb0nn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:22:48 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8216fece04cso371685b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 18:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770171768; x=1770776568; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4D/Pyik39IZpQuC0TtLzzBzYfy21GJ9iHitYHpNajzQ=;
        b=BErvla69lPaTfIrTigEcHwNWpkF+DlqDb/q6FgUWQWSiUSpmcb7QxqUIfRbFJQuEbl
         WRnRAID7pDj9zthv41fol7w8pGQWze0nudqRQxH92xird73lr82n4DMZZaWxh/B3GaMH
         bAmyyKC2nM2PKyVvhe65MSKz/rh2svLtYkMHzK9+49ES+chugHMcNqKkaned2iNqb8kt
         g6G7OLGCiuoR3kHEUIZFtANpgdNdu99pm83+66LrRFC90bnGiwPtSjw305EiTfWdIsx2
         vECc1II+Pk1XbKUTQztcH2d9wR1z6xLdR650kgtlImIM1XqHD7lR5ijnlzznTrNqBV2V
         RJxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770171768; x=1770776568;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4D/Pyik39IZpQuC0TtLzzBzYfy21GJ9iHitYHpNajzQ=;
        b=ehpd7jXz5+wTHsPj5M+DzkPHTJ1PyhA4I+kB6MX0coqfeO3Ho3IT/I7aQFYlkr1Dqm
         NTzEh8j8A93C/NWOvjk2xh7wF/4nAU2qLjl+nZi5zuqne135cZv9JltKD/kq237zdKGD
         VYOoXeELtf/JZZAyMFLXDkzncOGS3KG1FLvOEMpvrziYYKHaU1SbLCoRG87g0DDCDxak
         QaH5DMFVtCuF5s8BK+0r+/bikhiBHnRGP+B/P3is9INC1APnwtJh/QLbfGIXhIYydcBR
         fdamviBHFDO4HLKEPCjwUBAzvqW4MvgZF9+pYZHDupLS7lK37Seug6kLgMISwF3vsVqD
         w1ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXnWm4yl/2FsvBuIeGsng//P1Q03sxunXgAyh1XWEPTtg0iM4SBpISXaNpb8Pg/ybH05ZeideHFwbjJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2eG1gos/wzptKY0ZJTXzSvVMgEPuzswIm2xYgR0C+V+yaEymt
	YYKVyV9LGqujI/LbsDYvS4vP2W4kQfn3cfTmrGswbZTM7TBYY038aNNrIay5ss8uTfCF+E+rh3k
	nJ+OKVkuaOQOplFpC7Whx2Ie+4aRFGoXhqz9u2K/ppt+cyPrxnNJslOSEFKdNJCWQ
X-Gm-Gg: AZuq6aIPYi6xuWUCiHIOz5yx1yIxFMCWGrgF1jvnZjyqPdXUy1x5T7j7q2aMJ1Dk90+
	FPmOSMM41heXpGJaRYkUgBex1k19qICWn5Dc/N0tQTssI8FP+Q88WhMp9Nb+V0wtfsgDXLlkJov
	/vgo8qUA6sIs6RGK4/TsGB1ehKAOfA3Kc3XUvB6oOKjpBtRM2T7HB2Trzb1p0U2bDoEZ4vnSihg
	uVUX6Q+dtVoZ6ndZ6hBMe+zcuVVC8jNc8SoTn38qop/S4SPA6CeGlq0JIC7drtuIiBVwR6Cursi
	t1/363KgULlQfSwLfbtPjaQAQTFFrHkHSF6IYRexLmoA0+6fiTprwMcu4gBcKtS7GWLPZwbds/W
	ixqocVj/NkS8dix3X087LH5UP9GQ1GKowHAgxkKDf8eQw9sQyGPpsm6V7PWOATnefTkPKAVje
X-Received: by 2002:a05:6a00:3c84:b0:81e:8e66:38dd with SMTP id d2e1a72fcca58-8241c79d696mr1600592b3a.33.1770171768179;
        Tue, 03 Feb 2026 18:22:48 -0800 (PST)
X-Received: by 2002:a05:6a00:3c84:b0:81e:8e66:38dd with SMTP id d2e1a72fcca58-8241c79d696mr1600570b3a.33.1770171767656;
        Tue, 03 Feb 2026 18:22:47 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d4a5c28sm695598b3a.62.2026.02.03.18.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:22:47 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Wed, 04 Feb 2026 10:22:03 +0800
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm8750: enable ETR and CTCU
 devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-enable-ctcu-and-etr-v3-3-0bb95c590ae1@oss.qualcomm.com>
References: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
In-Reply-To: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770171750; l=4485;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=001o5XY3+w2paDpYRNSmK49wmzg7ECB60KxXLrmgSlk=;
 b=LRSAYL0rhvhIu47BE21bf2cZ137WV7u+QOHDidV1GRooXE9nQAvJRCPymhmWbJF97qfJ9oeVQ
 sdVNwbIW7oQBmzFUGCdUGpZDbVNe3RgYGpbF7B11EWxYVY0wkAB+MMt
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAxNCBTYWx0ZWRfXyE0kt8qDXXYL
 x8T326fbKDvJHs8rbw/apA6eExLRvYO22ewg/c/D2o8jNR5P7S08NcKk62wqE5sovzCMzljNzvS
 t6zZTcbyuJuLRuzeX15q9UKOHCaKyN8RQVNXMoRXd6h6fb/zheLq+HsFLUieHQOL8HlnvSa7NpF
 d+PDTtZfqwwkl8qvo/RGFmk7mgRMD45qwg9lRz/BUFy0VUrcKN1otuePk6ORot99YeY1KhkGg2x
 wLAMXOjnX6mQ3xb0nhpffKp1c9ZxLxovwKX6i0HAvks1GporWrkDz8Ywly+Tn6BWR/CBuBuISQ+
 WP7LVjHOXznEHpm/JsILbmweAuQmLjccJFD12sOC6Y5ejUCfXI21B89kagehOR/zhQ42CzC/qm2
 OnGGLF7O8ltmkHBRojamhIO8MqkrvwzSdPS8MmW97e2ycTKe/R4+fQEepKI9hEODx/G7FWYqPqr
 txAu3KekG8QxFqh540w==
X-Authority-Analysis: v=2.4 cv=XfOEDY55 c=1 sm=1 tr=0 ts=6982ad78 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=kFQAvpsttJVeTngcj60A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: _og3aYcZHx79KYnuDqnJKGTn3cu1rveK
X-Proofpoint-GUID: _og3aYcZHx79KYnuDqnJKGTn3cu1rveK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040014
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262478-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,0.153.74.48:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,10b06000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.164.203.128:email,0.0.0.1:email,0.153.82.0:email,0.152.154.104:email,0.152.158.80:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DA7CEE0CD6
X-Rspamd-Action: no action

Embedded Trace Router(ETR) is working as a DDR memory sink to collect
tracing data from source device and the CTCU device serves as the
control unit for the ETR device.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 177 +++++++++++++++++++++++++++++++++++
 1 file changed, 177 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index f56b1f889b85..1781ec95283f 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -3574,6 +3574,35 @@ tcsrcc: clock-controller@f204008 {
 			#reset-cells = <1>;
 		};
 
+		ctcu@10001000 {
+			compatible = "qcom,sm8750-ctcu", "qcom,sa8775p-ctcu";
+			reg = <0x0 0x10001000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ctcu_in0: endpoint {
+						remote-endpoint = <&etr0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					ctcu_in1: endpoint {
+						remote-endpoint = <&etr1_out>;
+					};
+				};
+			};
+		};
+
 		stm@10002000 {
 			compatible = "arm,coresight-stm", "arm,primecell";
 			reg = <0x0 0x10002000 0x0 0x1000>,
@@ -3687,6 +3716,122 @@ funnel_in0_out: endpoint {
 			};
 		};
 
+		replicator@10046000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x10046000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					qdss_rep_in: endpoint {
+						remote-endpoint = <&swao_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					qdss_rep_out0: endpoint {
+						remote-endpoint = <&etr_rep_in>;
+					};
+				};
+			};
+		};
+
+		tmc@10048000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x10048000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			iommus = <&apps_smmu 0x04e0 0x0>;
+			arm,scatter-gather;
+
+			in-ports {
+				port {
+					etr0_in: endpoint {
+						remote-endpoint = <&etr_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etr0_out: endpoint {
+						remote-endpoint = <&ctcu_in0>;
+					};
+				};
+			};
+		};
+
+		replicator@1004e000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x1004e000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					etr_rep_in: endpoint {
+						remote-endpoint = <&qdss_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					etr_rep_out0: endpoint {
+						remote-endpoint = <&etr0_in>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					etr_rep_out1: endpoint {
+						remote-endpoint = <&etr1_in>;
+					};
+				};
+			};
+		};
+
+		tmc_etr1: tmc@1004f000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x1004f000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			iommus = <&apps_smmu 0x0500 0x0>;
+			arm,scatter-gather;
+			arm,buffer-size = <0x400000>;
+
+			in-ports {
+				port {
+					etr1_in: endpoint {
+						remote-endpoint = <&etr_rep_out1>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etr1_out: endpoint {
+						remote-endpoint = <&ctcu_in1>;
+					};
+				};
+			};
+		};
+
 		tpdm@10800000 {
 			compatible = "qcom,coresight-tpdm", "arm,primecell";
 			reg = <0x0 0x10800000 0x0 0x1000>;
@@ -4357,6 +4502,38 @@ tmc_etf_in: endpoint {
 					};
 				};
 			};
+
+			out-ports {
+				port {
+					tmc_etf_out: endpoint {
+						remote-endpoint = <&swao_rep_in>;
+					};
+				};
+			};
+		};
+
+		replicator@10b06000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x10b06000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					swao_rep_in: endpoint {
+						remote-endpoint = <&tmc_etf_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					swao_rep_out0: endpoint {
+						remote-endpoint = <&qdss_rep_in>;
+					};
+				};
+			};
 		};
 
 		tpda@10b08000 {

-- 
2.34.1


