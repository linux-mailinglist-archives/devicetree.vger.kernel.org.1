Return-Path: <devicetree+bounces-259674-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOxtDrD7d2nlmwEAu9opvQ
	(envelope-from <devicetree+bounces-259674-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:41:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A552A8E4A9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DACFD30670B6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AB243164C5;
	Mon, 26 Jan 2026 23:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dw2TMeN3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jd87A3z8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B813148D6
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470725; cv=none; b=hY3+6Tqb5u7y6Ecaw+F+ayipe3EcetUJvs/NFy064i0cS8OgdzaW5PgU6/m6DfKpTUqUWc6KO/xhVWQi/b4z3Hw51XyouKhQzCp/mJiYaK0awKjhY2TmofpLlvpcDj3ZTGON9V2Zisp4XE1dMzs8DXuqvqnL2ow2roLAfCgLduo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470725; c=relaxed/simple;
	bh=oJZEE75ljDhbxjPAjmqXX/qekCyAnUUIY+vndlyCRTs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lEw10DOQYSccbdpG7sxuIp5K58C9C5KdOuQkyj7ZTseBIyO///JnFUXLvxJok6NmEOlUqsPHeKEfhrzjIHS7ei8TassLwpNiQyHDD74VSpQNQV/ERXpuU9Ygp5Py8Fbj0JL1LFLneeR+yLG5RhMGcEKtnzz+jeA7WWW47WQuqqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dw2TMeN3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jd87A3z8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgElw2733093
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YodHWG0Qjmm
	xJvKMASHwO0ieWVY/Zym4kEuPLt9q2go=; b=Dw2TMeN3cGX/bc3JhndNUoL2Xax
	4r44DIz4/ZvCanCQrhrWPp24JbyhRvbnEBNtcd0pfuZf0083mwCN+4VQG1tEZzXx
	aedBQWZci9N2xHlgCxNUAfHeK84OE8i4MPV/zx/XRo7XWKi2g/GMHOWOohZ0vmvh
	fKaeOZ2OCo12rBx2QUTtUcl2sI50odA0X5lUZzxvVQOYu8O4aQP+CUxbC7cE3h/8
	eu2NPEo8KEnyFZpcrDho3txoR4QtXXVCYRRSn89h5HF4Td0ZUt2w9XL9F3BpbKMC
	tW1CylE+mZxh6upxlZCAa7L7p7k8xxmvlRmURDcqar+gyCLuOCoJ2L4bHfw==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv08qpk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:40 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-124627fc58dso9058695c88.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769470720; x=1770075520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YodHWG0QjmmxJvKMASHwO0ieWVY/Zym4kEuPLt9q2go=;
        b=jd87A3z8j1naf9Q9Lo7y5eRxReH0nqo6cWj5MpZGZbhyVRDXiVKIALZtvQomlHFb5O
         hsPaoJ1tEk3T13JFWD2qk80F5xO3lCSl39Tf6Wo+cFmUZqCcxpNe9/K7h3T3vpQz8LZn
         uulAJlBkQcr+Sn0Et5Hp+6SgZoBRjkyvGJ56+U1e8txgpOy39/GunyRq8koHTDK8nEWH
         BnLsol+HjNC8ej5hlCfh8+mPfpSf4HJxDaGuG2LFmxdQqSS16YK25OrL/Vfezgn+KbX+
         4jdejbYEOL7bAwip4FhtmpkwTsq/2/u5aT3EhiXVOZCDYEEU3DSHB2gROXKx/YLgouib
         hvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769470720; x=1770075520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YodHWG0QjmmxJvKMASHwO0ieWVY/Zym4kEuPLt9q2go=;
        b=HDGaowubzMLL8zL7R4+mz8j3oQBr7OpVLAxuSoC+P+alSUAYpPP8SgkLjIhTC12L+F
         Ng2LeT4Mo551eqxEMhbegvdn7Fe13zCYbXcJ1GuLmNYNC1bdNh/uUbbjG8k2KJGFosPy
         dozKESTJl6QK03HvPS7Edpe7bpI2S6WPWlQXb6KCESxNsFSSlnTNu1QXhf9Ki4obEyXK
         DzAYLOEytNoOgvDTydXhQdFAx8vNeIAv1MFxRvVWhxUH7Mp0R9OHWt10tR10VVE6Qw6x
         gry+FTCVJHLsblYv/L9JJnIkdVV15RiAjr4Z1wh3kMcWftnWDZGSwr7Up2wo+njsJbtZ
         3uZg==
X-Forwarded-Encrypted: i=1; AJvYcCVQLuY4s0eXlh2jzKQPFDS4s2txd+m+m0bp2UQ8Qa4bZ/149bejP3lxw+zZE92D9hQFA5X5dxh1Ivuz@vger.kernel.org
X-Gm-Message-State: AOJu0YyvoTyikYpm3k9PYEGZg1biaIhUhKzcwF/pek+NuYmfhK1rRlTw
	PmC91xPDvJGx2JAgMmji2zg14kjLMw7hrWCl37UTrRqcxN5bFieKiPtTqzy1UANfYIa7dz5xIst
	uo7bkCvjTf2pXXy/ontD/v+efT2OG8SHIseB23e3FtClo/Z8bHP3tT6hwr58rqhHS
X-Gm-Gg: AZuq6aLqzpkB0qgo+tcQe4BGLFLkBazsIWjSV8kc9RMvGlJdDwoXI+vAY3oaDs3OjhK
	6PoT1m9Mcpm4FZfIXluwONoR4TDZBTSVR0u1E9PM+yXw1y73nl3EBhoKTxttpe1uiRzElJ6rS4J
	VkKbpWTy8213t27yHIZ7OBVGwS11UMpsAn6tgeOd4t3d9jiEklyJLeUZySpOHwZM0d/Rc95EOqf
	wN39TL9KpQfzK/S4UBOn6Js/V4z/6dOG1aBD6VmbIT+ov4jgvLPl4cTwd5StgwXTNlThaxFGTi1
	n/KNnCflFszaETf8uMaZ3z1Ik7URE05rUrGCsGDm4z9Sx+s4KMzbc/a4NArkkZuK9fwDy7HSH3T
	4UizJ7zfL2XWUG8XpX8sTr4lbb4OFL/DC4eC1ixvO4rT4Gph36WO4hZT2TvVAFzs=
X-Received: by 2002:a05:7022:619b:b0:123:2ee9:d1cc with SMTP id a92af1059eb24-1248ec9c04cmr2997168c88.48.1769470719908;
        Mon, 26 Jan 2026 15:38:39 -0800 (PST)
X-Received: by 2002:a05:7022:619b:b0:123:2ee9:d1cc with SMTP id a92af1059eb24-1248ec9c04cmr2997152c88.48.1769470719393;
        Mon, 26 Jan 2026 15:38:39 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90ce0dsm19948967c88.4.2026.01.26.15.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 15:38:38 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 9/9] arm64: dts: qcom: qcs6490-rb3gen2: Enable EUD debug functionality
Date: Mon, 26 Jan 2026 15:38:30 -0800
Message-Id: <20260126233830.2193816-10-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
References: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 88_gdsFJlHB_cyIWmieZZwXJ0F5ho0Oi
X-Authority-Analysis: v=2.4 cv=SvedKfO0 c=1 sm=1 tr=0 ts=6977fb00 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=bAolQom50hykzV7YMrMA:9 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-ORIG-GUID: 88_gdsFJlHB_cyIWmieZZwXJ0F5ho0Oi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDIwMiBTYWx0ZWRfXweAwP5F7igKK
 V6R5wYGU4RqSEZjWpHrYQshO1xEhBSo8FDHzXaealRih5hxy+euWfOwk1Lpkye99nVyM0JBRVWN
 b5xW3QECfFod+sOjan7wSmqYQ1aFAdMTjWRzFn2QYipsDuqP71k64rcFUbQ13MShFpMYRLQERSl
 aOdjE7bAb2Jmalb/MpGjlx3hQBiOc5OqDs9KEv4B59mpewNgi0Seq9zaPv3UT+XB/SapQknLLUj
 MppS7F16REdXN4alOdZxaC8RTaPPWOm1GjtV9ItsjlqLHCt7kqvDeTy7Ul9Shdpjrkt0+cOLSXa
 0I9UJ0f3Hg87PzZCoevb5Ip9t/v5KigYttj3ISdXMjWwfDWqLSwSIHo3H620Pw0aRsxxzRvncAQ
 UOLKxqS5Db1PPMXBH2NZREzSyh7q4ym3jUvFcSGVA9xZsYJc7H/go/qT4DBbv5wW1wfkfDueytg
 ISSndBqjJTIPUTSF9dg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260202
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259674-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A552A8E4A9
X-Rspamd-Action: no action

On this board, EUD resides on the primary High-Speed USB data path between
the connector and the DWC3 controller. Update the device tree connections
to correctly map the connector and controller endpoints, and describe
role-switch capability on the EUD primary path.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index f29a352b0288..2fc2d0aed8dd 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -194,7 +194,7 @@ port@0 {
 					reg = <0>;
 
 					pmic_glink_hs_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_hs>;
+						remote-endpoint = <&eud_con0>;
 					};
 				};
 
@@ -1176,13 +1176,29 @@ &usb_1 {
 };
 
 &usb_1_dwc3_hs {
-	remote-endpoint = <&pmic_glink_hs_in>;
+	remote-endpoint = <&eud_usb0>;
 };
 
 &usb_1_dwc3_ss {
 	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
 };
 
+&eud_con0 {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&eud_usb0 {
+	remote-endpoint = <&usb_1_dwc3_hs>;
+};
+
+&eud {
+	status = "okay";
+};
+
+&eud0 {
+	usb-role-switch;
+};
+
 &usb_1_hsphy {
 	vdda-pll-supply = <&vreg_l10c_0p88>;
 	vdda33-supply = <&vreg_l2b_3p072>;
-- 
2.34.1


