Return-Path: <devicetree+bounces-274064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iO3NOUpjsWnQugIAu9opvQ
	(envelope-from <devicetree+bounces-274064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:42:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C6F263BF7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D79C2301615E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334AF3CCFB3;
	Wed, 11 Mar 2026 12:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ESgPLe3p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FPfF0Ndy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6876437CD40
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773232961; cv=none; b=ip7cy4iU8fWW6s3ulvdnY+VonW2+tpXvE6WJJcisMEB2CCAJViFmVv7bG2ffWL0RCA9YpXrziK/lzzivyal7m39CYkbscP1vKv6mMaKcEmAZ+lnVFtlUENuG/+eIQdMYDlIHpQGWcpbpQbFthyn1UfB1/lu/TAkAksPUv2aCl68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773232961; c=relaxed/simple;
	bh=jfqqO0lP2G98I7c3g7e8jVEErpQnT6FCcREb/HmZC90=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e1sOXscgLktYgvLNg1QafIWqILdEFJBrKSfBX7s0b08HuXDISJ835gv2MufcGc7wqHKneRHrNVkKo1SuD1TPqPHQ8mfOU6cYdj2s0YsG4VYmchk6lGUmLQYmPAQEdlk/za3R+uvlSddk+7pfHsFtFRi7Bjr/2wpaHflu5B8IUFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ESgPLe3p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FPfF0Ndy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BA34Jp2038161
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:42:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Qvt6P1OZkcI
	swBgtvBSf5gl3IsOay30OYXrBxUv4me8=; b=ESgPLe3pj9y8xBZWjzcjwAhUVa9
	rd7G2WyfnpJm1I9i3SqjaY+y8RMqtTnMQt2eUxh87Gac2x6CWG/ROgDFJ59/TVAg
	9tZUnzB3k2r91RHtf3o/wUR7GogkSwa7Xrmmsn0z5IUw99fy2YI+Qa1cahLsYBL4
	xS7Ew3cRPGyHYU16VFKyD+95QIgK/sHQvICEvZVhlQ/oh9uVUa2FuQxiiaZkbcR0
	bZsTyOf9/1xo2vnEwN+dSgP4l4sHb1UYGVz08iZHnSbpIEYy89nSQ9igH+hjO21M
	n56FcfK2ealboZcMtbMhAz/q/EP7y7gSZNZXi9PUp5xKAn96kRNaiSagY8A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu6a5ghpg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:42:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7d4cc049so3845344785a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773232958; x=1773837758; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qvt6P1OZkcIswBgtvBSf5gl3IsOay30OYXrBxUv4me8=;
        b=FPfF0NdySMfCN4xoIuncTflsf0le6FbKXz6FRHuXb+SP8eQ7FSzZGF0TsFDBtVe9p/
         3unxmRnucFrVOLyEC+Oph5c6kgRoovKbUKGks+qhSBfKRiOWzv+MHy+LzlmQ32QWwxUK
         5YcvpA5TQNMZjWY6bKwBIzfNzKZqWqQE7jpPrEQ9aEGRZ26NVAUS9Rf46YDOlvby6b0t
         F8/Q50z0REDTi7XMDmtgTL/W+cqrC2sxeZ7asC+x8/ry5Q8KSaZeDs6UIXrsrR/0bUAW
         Itj+9HtolZjEBCCWx+fleDhw54tVVoonQkbQkCB78ykmZsWX5jRbi/kRVARqUVfzKW4j
         mUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773232958; x=1773837758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qvt6P1OZkcIswBgtvBSf5gl3IsOay30OYXrBxUv4me8=;
        b=O7dkNtSxUo76Ybq0tyQXZB0VoCMZDsx68DCPhlR2oJJDXooQ8rOxHP+Z0gduOW7im+
         YQKMS9WpDvvq4U3IwLZ/nUywtbjjsskNoNBgoIN9Q34T8c3lRrJMJuELdZarxhs1Len4
         vDv+dofu+g5WmwV2AUQ5w9m9G6+rj5UT2bbYaZmntfK3BypaVO3n3osvZ1BVE5TGZdlL
         QLcDqZoAsMIwFhls64kCk5qZ+t/o4NqHnvt8tYQG1PsELeX4Sttik3W/2GtInyq1SYlm
         xRIh48FnQ+qgdP1FKhbjfAbe+vj7gJ9W5RjgaZ69iniFyHwLhuXnLCC7CIF103RiOEi2
         pjiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzlzwCoMr6YXIsmphXF9JGmBQkdt8JF7QnIFzeLoauFbWfGyyvitclgwDahHgERe9iZEIVX/qU6dQr@vger.kernel.org
X-Gm-Message-State: AOJu0YzbzPTufqOzhCJuKFVFNJgoSUE++wL5fqNb2SBq9vlGP0AeDX7L
	t06MmjFPVsXF1P0JvryBhMfSkA5jtxEDYEvkPvYs7T0rrGLMYJJGExm9fLkji4il3WMCY8zEods
	WmeBuXqybD+sQzuRPRjeOd4Tcc82+XNMq2WD1tPRLNPpI420yo/vu1q02pvGNJche
X-Gm-Gg: ATEYQzzURinuV42N0a/me/cFW27uHav3gMn03WnjXHaNwyW49Uh1p3ujsYfmjtly1jx
	qZDX1bLXfql24l6GYD17Veki8TljItl+jdJyX8rjW7I/AlVSWdQ5+6DYR3CF7n9KpO7hIaJQtmU
	hrcISAmSwbeWB5nLh3onAQS+uqVLwKz7UsvSLWw5oXLoDRJgHpi3oPh+1i67aSoqldbhDgZNNCh
	USWcOBIAWQrCLSf94cz/XJJ/PK5GMBV8Y/UQN83bNQ2gJsbd5eK1RJGiMtPE6t3nDhm69/cPLDO
	2qZk+hOIzl8d/07Eo9mg3g4obAQe+A+QX5/TmXpPVKY4X1HidovgxmLdMMUlZBhtoIt2mctQkDd
	OlhFOqpEzQxYsdMwOVNe+CuqH9+Z/YEnURcZozhN7NPvPnjYX2ctw5Dc=
X-Received: by 2002:a05:620a:404b:b0:8cd:918e:e81c with SMTP id af79cd13be357-8cda1a87cefmr282536885a.47.1773232957671;
        Wed, 11 Mar 2026 05:42:37 -0700 (PDT)
X-Received: by 2002:a05:620a:404b:b0:8cd:918e:e81c with SMTP id af79cd13be357-8cda1a87cefmr282533685a.47.1773232957151;
        Wed, 11 Mar 2026 05:42:37 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b0caccasm39011365e9.6.2026.03.11.05.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:42:36 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, linusw@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org
Cc: srini@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        mohammad.rafi.shaik@oss.qualcomm.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 2/3] arm64: dts: glymur: Add LPASS macro codecs and pinctrl
Date: Wed, 11 Mar 2026 12:42:29 +0000
Message-ID: <20260311124230.2241781-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260311124230.2241781-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260311124230.2241781-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: PuNfUvbBHnIxpIdBYmbkZdjc-KPaGhW8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEwNyBTYWx0ZWRfX+J+IqncrESgJ
 avu3+5NIGTVhOkSvSIKMh85jUZVVCoxnYmuDxdO4RnVMA6nwP3hAdIe8Y6iixJVkrI81RQ73HAa
 XKmgYcL28VHx/tNkgAw1mE1CW3416JxHGQDrJMS53oZKrfjTIdwvwGBetTH6/LTTtuQ67UWSVbu
 d770cXvNzf4jf2Zb2iNVVQDRkbWgsV6o6Tjdqt6IobtQuOpxczSwnwIkGhFfiE/3hBM4A+wbVit
 f/krVs4AGr4KW54vQ5I0tS4UjQCzANirA8H3q6xJU/Lu+Q0lLQZ9kyKR5vA/y4E04huupENwxa2
 Tb8IuAW0/qX7S7awCueZrpXxpMz9Rz7EW5LhuYFjEaRDa5h9mjEyJ8UdJ971SkpDx3eSC/tb5rV
 Q41sodY1OidzgGCPahp/38P8DVhLUrj4Nylcjnu6dnRlGhj2LYV5xkdOLOrgASsuafI+3mRsGLf
 RwLRU/iHs4TiYJmTcOw==
X-Proofpoint-ORIG-GUID: PuNfUvbBHnIxpIdBYmbkZdjc-KPaGhW8
X-Authority-Analysis: v=2.4 cv=TtLrRTXh c=1 sm=1 tr=0 ts=69b1633e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=qWK8edRwceJSshL4KG8A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110107
X-Rspamd-Queue-Id: C1C6F263BF7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274064-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add LPASS macro codecs and LPASS TLMM pin controller on Qualcomm glymur.
for proper sound support.

Also add GPR(Generic Pack router) node along with
APM(Audio Process Manager) and PRM(Proxy resource
Manager) audio services.

Co-developed-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 263 +++++++++++++++++++++++++++
 1 file changed, 263 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index ed384d5d9d37..069f2aefdafb 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -17,7 +17,9 @@
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include <dt-bindings/spmi/spmi.h>
 
 #include "glymur-ipcc.h"
@@ -3459,6 +3461,46 @@ compute-cb@8 {
 						dma-coherent;
 					};
 				};
+
+				gpr {
+					compatible = "qcom,gpr";
+					qcom,glink-channels = "adsp_apps";
+					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+					qcom,intents = <512 20>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					q6apm: service@1 {
+						compatible = "qcom,q6apm";
+						reg = <GPR_APM_MODULE_IID>;
+						#sound-dai-cells = <0>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x1004 0x80>,
+								 <&apps_smmu 0x1061 0x20>;
+						};
+					};
+
+					q6prm: service@2 {
+						compatible = "qcom,q6prm";
+						reg = <GPR_PRM_MODULE_IID>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6prmcc: clock-controller {
+							compatible = "qcom,q6prm-lpass-clocks";
+							#clock-cells = <2>;
+						};
+					};
+				};
 			};
 		};
 
@@ -4753,6 +4795,227 @@ rpmhpd_opp_turbo_l1: opp-416 {
 			};
 		};
 
+		swr0: soundwire@6c80000 {
+			compatible = "qcom,soundwire-v3.1.0";
+			reg = <0 0x06c80000 0 0x10000>;
+			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&lpass_wsamacro>;
+			clock-names = "iface";
+			label = "WSA";
+
+			pinctrl-0 = <&wsa_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,ports-block-pack-mode =	/bits/ 8 <0x00 0x01 0x01 0x00 0x01 0x01 0x00 0x00 0x00  0x00 0x00 0x01 0x01 0x00 0x00 0x01 0x01>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0xff 0x18 0x18 0xff 0xff>;
+			qcom,ports-offset1 =		/bits/ 8 <0x01 0x03 0x05 0x02 0x04 0x15 0x00 0xff  0xff 0xff 0xff 0x06 0x0d 0x0  0x19 0x06 0x06>;
+			qcom,ports-offset2 =		/bits/ 8 <0xff 0x07 0x1f 0xff 0x07 0x1f 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-sinterval =		/bits/ 16 <0x07 0x1f 0x3f 0x07 0x1f 0x3f 0xc8 0xff 0xff 0xff 0xff 0x0f 0x0f 0x31f 0x31f 0x0f 0x0f >;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0xff  0xf 0xf 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0xff 0x0f 0x0f 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
+		lpass_wsamacro: codec@6c90000 {
+			compatible = "qcom,glymur-lpass-wsa-macro", "qcom,sm8550-lpass-wsa-macro";
+			reg = <0 0x06c90000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+			sound-name-prefix = "WSA";
+		};
+
+		swr3: soundwire@6ca0000 {
+			compatible = "qcom,soundwire-v3.1.0";
+			reg = <0 0x06ca0000 0 0x10000>;
+			interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&lpass_wsa2macro>;
+			clock-names = "iface";
+			label = "WSA2";
+
+			pinctrl-0 = <&wsa2_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,ports-block-pack-mode =	/bits/ 8 <0x00 0x01 0x01 0x00 0x01 0x01 0x00 0x00 0x00  0x00 0x00 0x01 0x01 0x00 0x00 0x01 0x01>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0xff 0x18 0x18 0xff 0xff>;
+			qcom,ports-offset1 =		/bits/ 8 <0x01 0x03 0x05 0x02 0x04 0x15 0x00 0xff  0xff 0xff 0xff 0x06 0x0d 0x0  0x19 0x06 0x06>;
+			qcom,ports-offset2 =		/bits/ 8 <0xff 0x07 0x1f 0xff 0x07 0x1f 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-sinterval =		/bits/ 16 <0x07 0x1f 0x3f 0x07 0x1f 0x3f 0xc8 0xff 0xff 0xff 0xff 0x0f 0x0f 0x31f 0x31f 0x0f 0x0f >;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0xff  0xf 0xf 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0xff 0x0f 0x0f 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
+		lpass_wsa2macro: codec@6cb0000 {
+			compatible = "qcom,glymur-lpass-wsa-macro", "qcom,sm8550-lpass-wsa-macro";
+			reg = <0 0x06cb0000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "wsa2-mclk";
+			#sound-dai-cells = <1>;
+			sound-name-prefix = "WSA2";
+		};
+
+		lpass_tlmm: pinctrl@6e80000 {
+			compatible = "qcom,glymur-lpass-lpi-pinctrl", "qcom,sm8650-lpass-lpi-pinctrl";
+			reg = <0 0x07760000 0 0x20000>;
+
+			clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core", "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 23>;
+
+			tx_swr_active: tx-swr-active-state {
+				clk-pins {
+					pins = "gpio0";
+					function = "swr_tx_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio1", "gpio2";
+					function = "swr_tx_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			rx_swr_active: rx-swr-active-state {
+				clk-pins {
+					pins = "gpio3";
+					function = "swr_rx_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio4", "gpio5";
+					function = "swr_rx_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			dmic01_default: dmic01-default-state {
+				clk-pins {
+					pins = "gpio6";
+					function = "dmic1_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio7";
+					function = "dmic1_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+			};
+
+			dmic23_default: dmic23-default-state {
+				clk-pins {
+					pins = "gpio8";
+					function = "dmic2_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio9";
+					function = "dmic2_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+			};
+
+			wsa_swr_active: wsa-swr-active-state {
+				clk-pins {
+					pins = "gpio10";
+					function = "wsa_swr_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio11";
+					function = "wsa_swr_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			wsa2_swr_active: wsa2-swr-active-state {
+				clk-pins {
+					pins = "gpio15";
+					function = "wsa2_swr_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio16";
+					function = "wsa2_swr_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+		};
+
+		lpass_vamacro: codec@7660000 {
+			compatible = "qcom,glymur-lpass-va-macro", "qcom,sm8550-lpass-va-macro";
+			reg = <0 0x07660000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec";
+
+			#clock-cells = <0>;
+			clock-output-names = "fsgen";
+			#sound-dai-cells = <1>;
+		};
+
 		nsi_noc: interconnect@1d600000 {
 			compatible = "qcom,glymur-nsinoc";
 			reg = <0x0 0x1d600000 0x0 0x14080>;
-- 
2.47.3


