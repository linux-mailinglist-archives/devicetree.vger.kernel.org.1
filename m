Return-Path: <devicetree+bounces-270363-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJceNPCbpmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270363-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:29:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7A21EACB2
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:29:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 988A93136C87
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 725FE388E7A;
	Tue,  3 Mar 2026 08:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A910Ig/u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e+VhV4i+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309BC319858
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526141; cv=none; b=cwIzyP4iITeilE5lxbRoEXL7pmZ5UkDV0zuFj40bUK66j+uTOgt3F+GxuYp8hdyL81BZBnS0vIveW58KwTBRBsSnf2x3sVed8X3bpuoUqVlGgrRUdRBWH+l6oP4yB238lwmeJmDf3zHyC5OzpwtBvh8NUn04NXX2Ipz+Fq8tN7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526141; c=relaxed/simple;
	bh=3L2NdIsZ0m1aRMuVNIQhv+veMziAbqc057LMDyfnlHg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hpJ+FQgSzKoGxUNoswLzBYw7J+ZIAou89eE7vvVKU/IF5g54wYCneFghCXlMW52/6C2T3KrgEDDjDnoafyd1lfJuvxDp9xoHSiWAcL3arvP6g0ys5160zL4OUSkSn49+h+bxdfSa4XSauqq5Q+6a/LGW4x3B9LV8t7U7N0PF1xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A910Ig/u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e+VhV4i+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62363NRR1675541
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:22:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=E0asLgT4/at
	m7tMXE70/nCPwp67p1a7B4xwmHW82ID4=; b=A910Ig/uLFh+Uv3Goceeld6sRlG
	aJclFSRXHFjP1hpAJLN1kFaLpbsczPGZQDy213Jivriigd/9SOL2ajthxgZRTTAk
	dGonS5kWqI8YGel4FPZ0qtcUvE7wZiZ2AP1oVd230eENlo6CNKbk/sFqVzjbr6rX
	Zw3vFklLN/3q4Vg6CXL7NGi7mJzd6+wh5Z98jCrr5EVaaZOxNULSR0N0dMy4WSse
	yBTyfTW2xCLbvMndP+PColdtY0RzlA0Id6quf+k8aXjEX8Mm0UHTDSaYNCa2xqQP
	+wvhAriSXGEvLL4LJ7SCZMiCuoSacGyQWPHm7Jklcnct0j1yJDGLRE+BsVw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnhxs9xcy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:22:17 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35449510446so5061377a91.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772526136; x=1773130936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0asLgT4/atm7tMXE70/nCPwp67p1a7B4xwmHW82ID4=;
        b=e+VhV4i++VFwhFu8Eodxbyq3TeGsWTrTjMfij5vRrkSqhtw33OqGHv/ie7RGepYcMN
         GURvqjohuq3104H4zcCwJ6Qshwfn06EtRWwFKM01pluQMSmSa4yfx7LAFnspmBO0Re6X
         ujwrB5aJthSgLU6sasUXs2vINOdzzwl6o4SntHP8vUOHKHmpZM2k5wi2FXteHScLOn55
         XG1exNMFxmQnIX/LCVEKd3O+JgsmdnOx5TylSPegUtCxobkqUnGKQJKN8ajsRNveISD+
         l9KUg3/9O2MM4DWYLu0tJ/HNm8n3m/GOsowi0YWCRd+G/vMBeHgBuFlItxDW3XZR40Af
         anJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526136; x=1773130936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E0asLgT4/atm7tMXE70/nCPwp67p1a7B4xwmHW82ID4=;
        b=pEjk/5LP327re6bgDDARRWFI5seVE8rhuFiJVawbN3SkUC3OloZ3idV5vKydL60/hV
         9jF62+zItywPWn9caBgGIvtJHxALD0zb2akqKyACtIDxPpvlv0QYVt267ZQ5Nt/KJL+u
         jfxHBT6717wEMR3wFnYyCbrWaHO3Cu/NXMDSHOk1qLqKUp+nWtT6HC2Ts03QUQBJ4xhO
         wA4y/9yFE+PYZmlvufXvG6KAKLRj1sdWunTYsfXzUfWJHVsGYjfZBQwnBOLXMFC/3J0k
         S1EprV3KKC9/tFtqx0pz/CXtNVGmzfiSRF5n1AkbUGnjvdjKwRFOmJjVBbIkgnL0fjIH
         9j3A==
X-Forwarded-Encrypted: i=1; AJvYcCU9SVhARh/SxOFkDW+zcgL65vqwszfyjdqipIK9y+V92oGuO023B6WFBPHaizdOSt6hwK1/ulVFAMzF@vger.kernel.org
X-Gm-Message-State: AOJu0YxcAXhdCb55fwcboN9PHO8QWTyr28J4Ot6s+/J1lT33hPmg0azI
	L7S7Nxe4qOAOOMzNEk+p6jaSD2cHGCc0dKeRvb+xXsADdXJaLCv1deB/Azsc26Y77rcNeCfIZBp
	9+lQaADrVzKYHMaAfK7MiOIXUec8ApqVfEndnPfHTjsDkJw1cM63rBLOXfQcsBrlR
X-Gm-Gg: ATEYQzzAcaPlrfAV318BsdmIMT7kmWHQqEQb/OWEBQ4ArX0Rv/NDIZTBfjedj0JlBxY
	NMo4KzgQJ4YN9tawZfnzd2BRGhgApY56oE5oCoS642P5RlvSs17pcMuxSDiF2V+B+9+kzo/6cwt
	qT1JL7IkngZxzjW6Fc7tpqtBN4S0Ftc23KQDlPuOrJA95CoH7Af8BRiK2gn3ypk03lD7l5qdXMm
	+XRwgzWxfaBnG8UNK/Jvqg/0NjSEz3Em/5ghzcms0tZQwVuXXc4bp/6R7riAXnwcP9mOSg0lBxK
	kE1c5oDGio6DEnSAORmYUsAegk1hDWurXfGROUpdUYfhOZqT4JLM3nvnmj9XglgPTK/5acOokMX
	Qgieu/eaLiiZp3DDRKVRuKw1GT4sjWiKPlkr+oOnZllIiDE7A0gArSGs=
X-Received: by 2002:a17:90b:2516:b0:359:8888:6519 with SMTP id 98e67ed59e1d1-359888869cemr4785367a91.0.1772526136425;
        Tue, 03 Mar 2026 00:22:16 -0800 (PST)
X-Received: by 2002:a17:90b:2516:b0:359:8888:6519 with SMTP id 98e67ed59e1d1-359888869cemr4785343a91.0.1772526135939;
        Tue, 03 Mar 2026 00:22:15 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c4e2f85sm1797214a91.17.2026.03.03.00.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:22:15 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 2/3] arm64: dts: qcom: monaco: Add role-switch support and HS endpoint for secondary USB controller
Date: Tue,  3 Mar 2026 13:51:56 +0530
Message-Id: <20260303082157.523847-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
References: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: utAHeiyUthWylnxvAZskYEbdtx37kQhW
X-Authority-Analysis: v=2.4 cv=dfmNHHXe c=1 sm=1 tr=0 ts=69a69a39 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=ZrvUoS1E-TgtW8Atug8A:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: utAHeiyUthWylnxvAZskYEbdtx37kQhW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA2MCBTYWx0ZWRfX+sqeHPJ69XSl
 j1Nj0EkxTFSS9aLXpAqadUZlAs6+56v7ORSDswUGq3S6qAuYjWuxA/Odm8mQw1u3p+M7ZsWxUJE
 yE1rWYFJgBTy+laKTojek4c8OjLtw7NkiyOCtgN8KHEDAvSN42N7K2o2QscAgcLjURY+8B2Cwee
 DyFmlQ0xWhaPFJir8ttQJ3f/NJi+eWC8OO3sadu8z7cbkqbbDoEjp3nIbLlLpJK1Gn089UW0Ovm
 5QmMrvDLVLr/QZOmVc1PssOsY8InRur7QN7OulCovqLH4hgm5pL94VvcZo96xOEw1exy5u7djqY
 1aWfIjga5TE6He6BRjt5/prjbafkzFAKn04nHXHy0Q5ROvbME1gqRHICHEMhO0gc7r/weGw70LQ
 cynM7ETry6FIvRn9v9KuqJxiH6kLdXhPlLhElLn7bLIT2j7iZsFQz23DwO34rbL84eu32qY4ogS
 M03MiA8mSqMyCq8UUPA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030060
X-Rspamd-Queue-Id: 3D7A21EACB2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270363-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aa00000:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable usb-role-switch for the secondary HS USB controller on Monaco.

Additionally, add a port node with an HS endpoint so the controller can be
linked through the DT graph to the corresponding connector.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 5d2df4305d1c..59dfacbae4f6 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -5232,7 +5232,14 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			qcom,select-utmi-as-pipe-clk;
 			wakeup-source;
 
+			usb-role-switch;
+
 			status = "disabled";
+
+			port {
+				usb_2_dwc3_hs: endpoint {
+				};
+			};
 		};
 
 		iris: video-codec@aa00000 {
-- 
2.34.1


