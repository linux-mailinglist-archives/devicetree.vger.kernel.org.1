Return-Path: <devicetree+bounces-273495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EL8/FDcEsGlAegIAu9opvQ
	(envelope-from <devicetree+bounces-273495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:44:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F3A24B7A6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E622A306C563
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8287138757B;
	Tue, 10 Mar 2026 11:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LPzE7ewz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fs6a+VO7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB7D387587
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773142576; cv=none; b=fWqaXRN2doxUn4QG31x0gJbDhOPaSAxDikN5MQQC+dHZBBnmyff9P+DC2B1wx2C7J2ceTWXZunfE9suK7Z9JINnVJ5U/mol3gc9kQhpw9vCmtcEMcu2+dEYvcxpBE+STuHBRh50VGpVEVFhXBDlI0aiDserdUB62DtWrIYJU9/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773142576; c=relaxed/simple;
	bh=WPmhXAkQl0KDFeJSCdUmhGT9lzk5W9kEy34gwEC3l1A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CKYLpkSUkhqTcKjUajHh571eazhUPTNLUCimitQUAJkb2xvgmhA4uEib1GS80fqcqaxhUWOeODZh2WYiMParcKnKynDa1fveRSIXUj9ZuIypPD9QB0tg/7r4EN1BAKgmVON5jBAg//oTYBeTYhp/ZiOZpdS81+f+vzOZ2L5pbK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LPzE7ewz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fs6a+VO7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ABWHf42022446
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cVF7BkFdxkO
	QdBW05LHKmOpFtvTgyKB2JnKk5PejEnE=; b=LPzE7ewzXCNBqDzFvli3dkAHCqy
	Q2/nYGGLESHpvYxIao/bcbxDbdGdPfQxYIOEyfeDHDsfO+Sf4TTHKvNKbVAgaR6T
	lEeLGBcrQl3eURjaZhxbFJuvsLwbEFgH6zlNdfNQruI8rWoo/9B3OWbiXt2G7GYB
	B5w2x8Cs6u5PzxYGqFWhHKo50dMAxhGRGCqDwcLgnWREtz3fbt0fqNJPwAU9N9pK
	oRkXEglzBYC9hiSMw9Vs/olo8CXScwe0Il4a5nzF1JJEteJYlm9xGcTNhGtfY2Lf
	aIMmxWolBpRz/7gY7e7iTcB5iOB0IMbeHwqOlIP1Iv5Hb3B7zRymtmnGfSg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cte3w94n6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:14 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c73781252edso22228739a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773142574; x=1773747374; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVF7BkFdxkOQdBW05LHKmOpFtvTgyKB2JnKk5PejEnE=;
        b=Fs6a+VO77/6+gnAHEIoJeqv7BL/6hoUCdZLlze4fkf9PJkN/4Xy0LwjVMnl/limfHe
         H4vl1Pse8/Sez7WgfY2PBMgcE2WFDVHNOPdojFY34cBIvzBb9HqKeWB6yohnzZ7prBWH
         8H7ELtmEB7O/F40XLeNbwIj1Z/fXpKkFpz+SCKKLo6QJcNY7jg9Yt8z/jvfkR+LYFfVd
         g1oE182cQtwbLzNsYu21V3e5+9ZLYp5GqnreadpENjXV2krjG1cu4nl2nctNztXnYvpT
         r+0+9pSPCU0wfw3MkVfOMdAl0/NnLR6lSXIxX8+a7ULgSDJvQxrx6BLitWo+fQAM8+ay
         WfZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773142574; x=1773747374;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cVF7BkFdxkOQdBW05LHKmOpFtvTgyKB2JnKk5PejEnE=;
        b=tZsMTcZmbKykjszyrLyD7QTV/8OJSqPlhLXkvttrfs//15pr11tmL+Sp90UNeQpYQW
         7t18IgoLJFT4KaewxeeXX6xFn9IgSyPSkbzfwVhGwvsxJjjjdC/GiH9CiZbzzw2Z69Sz
         A02eeimd89eN/xCoRRbFMLcTuTXdA+DPqjz+4qULiQeQ0JW3FRmgQIo5REU8nOJMkiDf
         WguXvfSubaHDTuaalqANbhCMHCCncqUdix6Hyv5UXAC1O2FQGcB9ZubbsQ+GUH2uSub/
         CJ5rtP8kSKzZPf6j0oMdgQjPm7OTF8gBFV/uAfCZldF47ite0dLAM3zdIhaqWYkGRq3x
         fcMw==
X-Forwarded-Encrypted: i=1; AJvYcCWYS6tSR0Vx1X5evoEZGrB1/a5bTeqbiSEC8g/wfvrxmQnfb9jQCECJlfnwbrnfAxgSLGO2CLodISp0@vger.kernel.org
X-Gm-Message-State: AOJu0YzVY3Cft5SdZONHxG73Cq/gvGEQYeg1EMbX/bDv1L9iJBtsMri0
	irRIOLjagUamB3RcUWN+INyQIU1e8esW4dgk9hx1vsOlUWBE6AVCxPcTFzBsy74c8414p6I0u9b
	6u/6NYyu7b1sWfVkHyjJKS5v7uqiMfGkWQf9DVJgkeOB5pTyfnDwtNnCge2AajY5CIFXg3oYJ
X-Gm-Gg: ATEYQzzsjurjKKkVJMN6IH/ahJ3qRF2WJZqPffVMmL+U3nzYiLVVe7Gz1lTZudqlfYc
	d2ZsIiMgJFFvzl7bUY6+DpA01TExup9zSE8gJzQlA0hOEN/X57GhhoL31UYOwwcQIBV6YEcGMhv
	P1gX/zGNdW2QzMucl2VyrkktM1oP5TWC9w2/i1wfmZHLzODG1HWafLZi85tvyNLlUZA1DoUrlU1
	5Vm354Tc9A4N3MvcdZYQmzmyYmkBQMl2Ghss0eEhMG+jLpHYx+s/eT3o4xJkVtelOB2blhFy4xt
	PJ3ZlCxolOD9YOJ4W0cBCh3UM426Vbf1KU04EQXBVhOZ/5Z2JsDVH5dzrGeDvkz1PyunFQhm4Hx
	hC2pFm6lilAlsbALcdXxAF7QpuhUO/p7ej4VWlJo/DUWbseDjFwnP
X-Received: by 2002:a05:6a00:889:b0:827:3f01:d1ca with SMTP id d2e1a72fcca58-829a2d57060mr13256746b3a.4.1773142573813;
        Tue, 10 Mar 2026 04:36:13 -0700 (PDT)
X-Received: by 2002:a05:6a00:889:b0:827:3f01:d1ca with SMTP id d2e1a72fcca58-829a2d57060mr13256715b3a.4.1773142573382;
        Tue, 10 Mar 2026 04:36:13 -0700 (PDT)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4637bb1sm12364659b3a.10.2026.03.10.04.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 04:36:13 -0700 (PDT)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v6 3/3] arm64: dts: qcom: monaco: enable the inline crypto engine for SDHC
Date: Tue, 10 Mar 2026 17:05:57 +0530
Message-Id: <20260310113557.348502-4-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310113557.348502-1-neeraj.soni@oss.qualcomm.com>
References: <20260310113557.348502-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEwMCBTYWx0ZWRfX3SUYPqPcN1rW
 xQeOwSTG2ex6NzslZg2hLf6LuW83Gxmy9H2MLBtrG7vVwu2yH/+aPzBOQ/UiX7oPT2xgeSQvYK9
 4m+u8pSV58MnwkETamyXtplJbIQ1ycIcb9nbpgdTJc/jW3IYHQZyMJUlUV6rXqWMq0kOl6Iop1p
 ktTAgSw5R0I13faY8S3y4TFG18B0Jnr4r7F+syUa3s2i+8PdcnQP6InHr7KVo6XZi2o9bfVHulI
 e7kB9A3DYfrXghB+6lSKXVjFbyRVQAcaPYhdoPRlvrogFrGrN7m6OqxzcaL4mydX9LlMfbah7EB
 g1rKPc3uH2/tociJioCMl7CFrPK+GJ8h0J1qvglsA140HotECEImbw8mZYNwQnDPjZMZwobA4Jb
 JqbrZaOKe7ngMu4aAFbIJa9xAA4fts7Iif6SY63RPCof3PnymLqqZqbYKXjybzt08cdBziIyYgJ
 vUD/qcARKL2TWyISMIQ==
X-Authority-Analysis: v=2.4 cv=GtFPO01C c=1 sm=1 tr=0 ts=69b0022e cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=fZTdKWQFAU_LetDfPdsA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: 8ghndoABGjgt0eKFcOxDTQpARtkzPOoQ
X-Proofpoint-GUID: 8ghndoABGjgt0eKFcOxDTQpARtkzPOoQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100100
X-Rspamd-Queue-Id: B7F3A24B7A6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,87c8000:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-273495-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.135.221.64:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add an ICE node to monaco SoC description and enable it by adding a
phandle to the SDHC node.

Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a..365af78b01ae 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -4202,6 +4202,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			supports-cqe;
 			dma-coherent;
 
+			qcom,ice = <&sdhc_ice>;
+
 			status = "disabled";
 
 			sdhc1_opp_table: opp-table {
@@ -4229,6 +4231,13 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_ice: crypto@87c8000 {
+			compatible = "qcom,qcs8300-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x087c8000 0x0 0x18000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>;
+		};
+
 		usb_1_hsphy: phy@8904000 {
 			compatible = "qcom,qcs8300-usb-hs-phy",
 				     "qcom,usb-snps-hs-7nm-phy";
-- 
2.34.1


