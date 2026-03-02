Return-Path: <devicetree+bounces-269955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGz3LjN5pWlbCAYAu9opvQ
	(envelope-from <devicetree+bounces-269955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:49:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5E81D7D9E
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:49:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE7EC303B948
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB95363C47;
	Mon,  2 Mar 2026 11:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GSdm8kvf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JQ0NQi12"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425FA175A85
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452038; cv=none; b=Iv0+4ZFTsRmbDHmrNP6DOFHlR5h/pWUc6W7aU01WlVzlOU3fXdyiFiMsL919eeg4O6sDVAJaZBLGKYRI9pFrE4wQbC3yQpue5G0zERv4/i59Ue4eDBjPijtKtY8rMW9Vjkux9500QTq/ZBeivMHi5Dfxhk5nY0X82z9Pu84CeDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452038; c=relaxed/simple;
	bh=qlET7dEVmaLfZCQy/ADJ5VWrWEtt9fNoSEsGwflOxIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=UkbpLDK5rPnPJB3rS8scvi6n9eGlfSA4cBUQS7QPZzQp7kLohvgk16Y76asB3VmOuM+EIz5g5W+HoBnDC0Z0LyPfGaPgJhnj29LD/INYVGwsatM/Rx5zdaJGbkad67HFFpNmKnnMhmW6/sdvA9q/RrpLs+NtDBqkDE7KRlbDBUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GSdm8kvf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JQ0NQi12; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62283lZH249402
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 11:47:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=qbT1r1wEl0vg1AsPHstEjS
	QrohURx3c03lED3xKLHs8=; b=GSdm8kvflWrEUwFO9PXzuBFxvJmRvVytCmihSo
	Yz5p1LEop/qN+7UrE/Hh2jzswnggmbTe7IKnw94Q5Cyjk2aKA1Dtu1DNfhdknVXR
	+zQBSxD7yTp4LglBUKYwnddfYhV9StPeFF2O7CAOSnOekVO9Iaw/Gc3zoSu5A/4U
	rzE54h1OMJVThNVOYc73u5fPri2mr/UcbZi0oNqa3cADayjo4capuJhBNfAWjtRX
	hKujM70twtYDYJwEX+/5ZJHLKHH1jnmbyoO/wQ2t+pGuZhN36LQBD2U/G7bW1SJk
	0POBINYU9daB+ZYprJrgGhhr31YAFVldiAWUlOaX74qp6zZw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmw64a6sw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 11:47:16 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae4e9577ceso41969485ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772452036; x=1773056836; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qbT1r1wEl0vg1AsPHstEjSQrohURx3c03lED3xKLHs8=;
        b=JQ0NQi12g/tzKVPh2eu5Z7HWMgTHWU3i1+JBNM1CHyxYrm4j7s22daxXQxfqb1tsTe
         rCDdVlLdzbyDI9P5ug7fk8VwMK9ao8TFWNVKZeZ1K2LdHuWr65igfOlhkny8vLRpAtEr
         Gpgn9vub9lEq3scjMMTs/D4mLSAIQoIm1iSh+GuNlTOLVHJJR+XqC02/IFGAXoEgMBvW
         9bW6/svWt0WxTjapFXNUZZPyEVWTl0WuCBfTkpbsvRDHP1L77JE15m8bPK8xox/PDHl0
         yndPND76Eh9ngnpDEDk9AEbmbhVD/JvVj/g4cT0Hmta0Vd53/eLWtPyaLhvUq6LnvEhb
         wsAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772452036; x=1773056836;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbT1r1wEl0vg1AsPHstEjSQrohURx3c03lED3xKLHs8=;
        b=tJEnRImy+wffLXORj0ETKQUL2l5ObvulvIONeStR2/XxrIr1RiZmPm1VZn4X3oigLf
         cbtcNn5GVwdOjRBTh09XTBWvnOwZj8HPpepX9XJU2sae4EvxZqdKP6OjiHBjyXVFKLnJ
         rTvj6WeAZ4QDZyE1WPg8mblpQDfQB31O4kA3bxzb0zYQFOi3n8pU9QLgN1LxHT3DzFYa
         aorTTDCSCp57V5MtgHhPQqeMwNPOHfpaEpkwpcMhJdZF5OBU/IfXnP9RgqveL14F0qly
         ek5XA4SsVpWUKl+N+5S3SAnL8FY3q725dvsWw9iH+zbF/xwpvTmQh0e7rG2qrTfwWZpL
         nhvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBiCOLV/6Xz2UjG8ZW/2l3j0r5LnTx6YC78iQQ3CySTyyjahDKj5bXXmpgrekQUJ1ukaxAPRKNOXNh@vger.kernel.org
X-Gm-Message-State: AOJu0YylMxRP/GaOD/dXdmdhCDZw6/RSadLKDOdZ1RrrNKl/QdKnTier
	Mk2RsDsNvbspA0fVTl4x7xH9IqMAsYgkfcN2O5Buy1dnnAIFmVJ3vtyR5PG/sA6uI6w5rQaQoee
	ytFxU6ONwYRPZG+fHGyWOLBKK8wqkGMOq1J+TKwNuASNbCrWND6rUpHSfPmBqFCwc
X-Gm-Gg: ATEYQzx0ovaHadnvG93Pw7ckEsVbZzxDv6lP6XPm4LFFUkNoSk/gKW+bciHeuB23wW6
	Klx8Gd6FdyEtj8mPFWoeY+Dz0oL8rdvnBvINl7zwgqQHPfC1L6uKtBoWo/uJHfp9TflTGIa5pJi
	q8Kk445lVUroO/qhtkTwD5hoOAWlmw+t36P7WMKCudbK4v0kIPgWt4fIwO8rkh0I4wVepRJp4sk
	D/xfCfwkM7slSFaXMiCLXRX61VmVPHUjtxgdbtKYTIziw2UbcLtz5xCCgTziz+7XANTOlzNjtcJ
	wtWB7+fAi2s+ZLHeoqW66/cNB+H4683Xh1Edci3FO0tWWJWSpG/pSEakZ6k0XGXyYmYWcLLE7WF
	CXJcCE8dQGJ2ouQs7t3HJAUQ2oXZBzLH5x6tQk5L3ajJhJ+VkO6+m+6CLi8eD2yeWHwEtverA52
	r7k48RIxSOvwEI3kg4vYst7NqkO2X/pmv4Umf//hW+cK6bUedx
X-Received: by 2002:a17:903:2346:b0:2ae:4fc2:d951 with SMTP id d9443c01a7336-2ae4fc2dacfmr24621805ad.27.1772452035812;
        Mon, 02 Mar 2026 03:47:15 -0800 (PST)
X-Received: by 2002:a17:903:2346:b0:2ae:4fc2:d951 with SMTP id d9443c01a7336-2ae4fc2dacfmr24621495ad.27.1772452035332;
        Mon, 02 Mar 2026 03:47:15 -0800 (PST)
Received: from hu-ppapaniy-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae496470d3sm44674915ad.15.2026.03.02.03.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 03:47:15 -0800 (PST)
From: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 17:16:56 +0530
Subject: [PATCH] arm64: dts: qcom: glymur: Add glymur BWMONs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-glymur_bwmon_dt-v1-1-f4939d75bd47@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAK94pWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwMj3fScytzSovik8tz8vPiUEt1ky8QUs8TklJQUEyMloK6CotS0zAq
 widGxtbUABT+nlGEAAAA=
X-Change-ID: 20260302-glymur_bwmon_dt-c9ad6acddd42
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com,
        pragnesh.papaniya@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772452031; l=2957;
 i=pragnesh.papaniya@oss.qualcomm.com; s=20260120; h=from:subject:message-id;
 bh=qlET7dEVmaLfZCQy/ADJ5VWrWEtt9fNoSEsGwflOxIU=;
 b=wmIClfxwSUPlFLXTqqqxoBvGDe2ARWQZORYPnZlEKYdpCXnw3TP7bWjffhV/EGosnTazUORNI
 pTv2BLSBnL7AF/2T0jMiFtRheCT3T7ucekR7NSMfjIgJalFZ6wprBVP
X-Developer-Key: i=pragnesh.papaniya@oss.qualcomm.com; a=ed25519;
 pk=09P9nFmZLXJ9+4Jx10ZK5rIW0Fmk79A/DLErm6aVA0c=
X-Proofpoint-GUID: W79mBaIchtwvAF9QRwDUvKQeugKMjBKW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA5OCBTYWx0ZWRfX1ULScT6iTn+a
 ++FNyyvZE8l98p20xY4owiRZAGwXklj8OLnCG/2W77QbCk1a1Eg3soFmkDTu6H3Q5l9YEJ9IRzZ
 j0jhCXyhn8Wcg+WWcl4S1Xy3YXOFwWYutNEZiv6DMvzlEg9D5ALs6A1umCoY98uhZpwKXACSvG3
 UO24eLjCXF5pQKFGfAc7e3mXIJYw2QFhKzWzT+qQ1WcJ+H8gN7Y0OHlyGFPkH6mdQUaWKHZIkyP
 tGkChpy+LZQ6JkRmjXUHtUcnYFMWyBgyhf729oxxlzFoPmBKyjijhOLe7DeXQXJrm0/bm4V4bzS
 BJ9EOI8/1XwKZk//fwF42hO7Hoje8p8gD0lCpHvtDQ1stVwHUBbcsxmc4fCJkB5Fm+vtnz3bOoU
 MqVE5XEPesHYIA33Ej2IY8YRVTLDncrFYqz+1EIZpFybH4Sg/clEYXRXuIpjrQ2uXD3JUka9Exh
 uSqU5eRzEi182pok81g==
X-Proofpoint-ORIG-GUID: W79mBaIchtwvAF9QRwDUvKQeugKMjBKW
X-Authority-Analysis: v=2.4 cv=I5Vohdgg c=1 sm=1 tr=0 ts=69a578c4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=ZhnK2y179Sr6Q8Jcfc8A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-269955-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,100d400:email,100c400:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pragnesh.papaniya@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.22.227.96:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E5E81D7D9E
X-Rspamd-Action: no action

Add the CPU BWMON nodes for glymur SoCs.

Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 87 ++++++++++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index e269cec7942c..fd947b1a17dd 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -2264,6 +2264,93 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
 			};
 		};
 
+		/* cluster0 */
+		bwmon_cluster0: pmu@100c400 {
+			compatible = "qcom,glymur-cpu-bwmon", "qcom,sdm845-bwmon";
+			reg = <0x0 0x0100c400 0x0 0x600>;
+
+			interrupts = <GIC_SPI 903 IRQ_TYPE_LEVEL_HIGH>;
+
+			interconnects = <&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
+
+			operating-points-v2 = <&cpu_bwmon_opp_table>;
+
+			cpu_bwmon_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-0 {
+					opp-peak-kBps = <800000>;
+				};
+
+				opp-1 {
+					opp-peak-kBps = <2188800>;
+				};
+
+				opp-2 {
+					opp-peak-kBps = <5414400>;
+				};
+
+				opp-3 {
+					opp-peak-kBps = <6220800>;
+				};
+
+				opp-4 {
+					opp-peak-kBps = <6835200>;
+				};
+
+				opp-5 {
+					opp-peak-kBps = <8371200>;
+				};
+
+				opp-6 {
+					opp-peak-kBps = <10944000>;
+				};
+
+				opp-7 {
+					opp-peak-kBps = <12748800>;
+				};
+
+				opp-8 {
+					opp-peak-kBps = <14745600>;
+				};
+
+				opp-9 {
+					opp-peak-kBps = <16896000>;
+				};
+
+				opp-10 {
+					opp-peak-kBps = <19046400>;
+				};
+			};
+		};
+
+		/* cluster1 */
+		bwmon_cluster1: pmu@100d400 {
+			compatible = "qcom,glymur-cpu-bwmon", "qcom,sdm845-bwmon";
+			reg = <0x0 0x0100d400 0x0 0x600>;
+
+			interrupts = <GIC_SPI 901 IRQ_TYPE_LEVEL_HIGH>;
+
+			interconnects = <&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
+
+			operating-points-v2 = <&cpu_bwmon_opp_table>;
+		};
+
+		/* cluster2 */
+		bwmon_cluster2: pmu@100e400 {
+			compatible = "qcom,glymur-cpu-bwmon", "qcom,sdm845-bwmon";
+			reg = <0x0 0x0100e400 0x0 0x600>;
+
+			interrupts = <GIC_SPI 902 IRQ_TYPE_LEVEL_HIGH>;
+
+			interconnects = <&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
+
+			operating-points-v2 = <&cpu_bwmon_opp_table>;
+		};
+
 		cnoc_main: interconnect@1500000 {
 			compatible = "qcom,glymur-cnoc-main";
 			reg = <0x0 0x01500000 0x0 0x17080>;

---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260302-glymur_bwmon_dt-c9ad6acddd42

Best regards,
-- 
Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>


