Return-Path: <devicetree+bounces-262753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OzbFyOGg2niowMAu9opvQ
	(envelope-from <devicetree+bounces-262753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:47:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EFDEB1F9
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 904C5308F82A
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C52F3A9DB1;
	Wed,  4 Feb 2026 17:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pe75XLG7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hl/Bm0MT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C0434B69C
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770226977; cv=none; b=qHeGyLy05BmVcYd9Zb4e5HVHev/MQTDI0SZEXMWayTg+3iLLDxlRobbYznXzSdd5boJK+5Qj6Tuq0kjAn27wVqQaSjdDugJwXUCEiOmU3wZCK7mcdsXpHNAZJDVe/RjNZxGwVr+H542VpYGD1Bxf0OpzvRVJd+wGh0VpNuqngV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770226977; c=relaxed/simple;
	bh=rb9BQvsUgWnWi7NopoqFStPBl6AI4hwBSvA2JEwcNRY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bFRMQSZQWiRdLyggL5bryL28K82WY8dGhy9RccgQLPPakVafE0Gs6tpVwLLV+EkW4cFKOyTwCOZKnr1fB4znxpFFu5adQfCwkBQFyXDz0cCFoc6S4LNYOJae3+vS8bGSDMzZ3gaJU4ggzUQXvvkmGQCKdS2B9mbV5YdOd0RaWvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pe75XLG7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hl/Bm0MT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614H6tfr1662490
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:42:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XqNr53atLXa
	WJ6+VAAAHezxKZyJzO3XsCkWLFOW5Q/E=; b=Pe75XLG76TdFkS+VcQ+I/JpgGU8
	9B4KmyPIXVZUZVuTgXhryfY9GzeFjF/2SbsrsefJdnWA6Ac5pvWj7YaG8e+d4RFW
	EIrtENsffJSZ7LjEEzwioffMlXFbQyaDx7W3fzvpVVEFIygs7w5nHNo4EWHNjvZD
	o/6ri1gjAiOdI9taafAyq7Uj/9dYd+wm55G7nghJY12vOyVBB5IZL/flk7Km+Rel
	5UmzUKMbXsntprIMefJ9n0iQwiYo7gB9CvagTv9dORMq+mGmkQfERN9aD6Pgu1XR
	x30TIe7AO3J0O0VeZvlTsYqiRGhmg0q8ktVQCEoCTT8o+0xhNsw8Juun2Fw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4a7tg4e7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:42:56 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5e166fb75so2269552885a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770226975; x=1770831775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqNr53atLXaWJ6+VAAAHezxKZyJzO3XsCkWLFOW5Q/E=;
        b=Hl/Bm0MTagiQCoLJZgNXtQVOHfjvKSzwvah7zbl/nAdO3pTR2pm3DjV7ANI8CmPTx9
         4BLCxM+pmHMQq7vmUleGpYrbi/6UwKu8IH9o3QSO1zThUY2vxl2ANHzNG3rFpLWNlywT
         usqkGZTQ7hPg3wNzYDvzVu3fx5oB8Gf9MU3izcUummL6ScZcyixdXG31bs9LyJ6qj/wo
         qNAaXym4yk+EAdrp5iCEa1bnIcmsoP5DPmzBXBTJiJQrTDJ0/OyF7xUF6feU6GVr8tsn
         +57s5UlSrIHImWh9QCAZgaCqfWV0cJK6MLQWJQsW/N9CQD6YHVMSIm7RJTq27szVPV1T
         SFGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770226975; x=1770831775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XqNr53atLXaWJ6+VAAAHezxKZyJzO3XsCkWLFOW5Q/E=;
        b=MUNSXfgW4sc1WDrBiiu6RPd5AoMLK9ezFaNuWOQX00t4cJ3IL/d8euTP3oDVp0PvSG
         lb6Va2sqsZzbJIfC4KuMfL3sLAeQDbpYcLmVYrvDu/yznSDb/+9erxebWlqRtN5FFDl1
         39rDQNXqNQK6ywE2hFKM59oIMGn/v/zL8SpuJBvnBQ/UTFUM8b/XS8SduFOpir76rdL1
         5GZ9v9V7kqOOvJiqHIFg5ZfwydbKAsQppbaG5OwUVuTlWWUhSIOwxoEMl6OU/F8zHDeO
         zxpQokMbu+rduzrbrp1Dm0RPSa0xdtLfSHKyUTcSLuS/Vx8+6kxM6UycW+D7n39KVjdW
         fpVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSWNseJVLH81I/8Y9RmXsEabHEKObZZVFOAU6lhOfwG30Hndm//Ecte9wS/1v2S4JguWpxbZnJin55@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0YIDaS5DP/Fg5P1bkg/For7pQfX8N0gxRTm+m7xswhBKnlEA+
	bTFM7WqYqjgYCZZWQx0SNiOVvKFVHeKhWBD5Nvch44rlfnetzPuIWmFTEBNm+phsMhUG4lssoLh
	Y8x73r2G+yl7JSXA4SbFlNjtrT7ez9ZLTg1ixQZuEXeHvfstGQRTym+Zwxh7ShL7T
X-Gm-Gg: AZuq6aJs3vWZgncJ/CspieSDW57sy9CwoFylbL1iti0cxXDp9kzlTJotlLJ4tVw1QmY
	cg7zXYt9BCi1oD99a7BMosDxt/JxnMHA6GMrshXpY/vOIiPJSSVKLYnkoS4RsXmXC21az8uIoJe
	GL+DVVCP3LbWdhv0K6XVWYe0jbVQjwXJMtPLPk3OCYU6y9FEkaI+0+Git8a2Re4Tx264W/DG02H
	zgFaXr1b6UCh0+jqONTL1U0gpJGINmhdm1h/wuSpU5xmFOE6Xn4kIvy2p1fcErkYc+rTDfVKoqX
	MsH7lQErt7n7/LaEsVR96QmenvXUbRcM7FY31OUhXEUkrIMG9LK3zFw2txO3COTrtoMNmc44/TF
	KpePEKa1M6owx7L1f1jAv5ONe/LsqJu4/YpP74TcnMUA=
X-Received: by 2002:a05:620a:2984:b0:8c7:d2b:b5b5 with SMTP id af79cd13be357-8ca2f9c067cmr507825285a.48.1770226975591;
        Wed, 04 Feb 2026 09:42:55 -0800 (PST)
X-Received: by 2002:a05:620a:2984:b0:8c7:d2b:b5b5 with SMTP id af79cd13be357-8ca2f9c067cmr507822185a.48.1770226975126;
        Wed, 04 Feb 2026 09:42:55 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483179dbdcfsm959985e9.0.2026.02.04.09.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 09:42:54 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org
Cc: linusw@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, srini@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: monaco: add dt entry for lpass lpi pinctrl
Date: Wed,  4 Feb 2026 12:42:37 -0500
Message-ID: <20260204174237.2906-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260204174237.2906-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260204174237.2906-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: -lpB1ouc8uTxypxIhvfMWp-9sHQ6YJ6J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEzNSBTYWx0ZWRfX85TZAQfHaVoc
 QU+0muX62Kwi/OecC3rNanr5WcFl9MJ70Af+rNrwWcm4+MWv+03f5sZhrASGTUNHuNP8JwaeJTW
 TeDhswbTzcFWJ7rjj98D7JiRoGDNNxuSYxfYZN67VVK/JyGiePyxMzR5/XK5Qclh48bJfC2GJBV
 uqMTzVVChT4vKIa3A2VikjZKs2P3gE/+MVqltfkyW/irbev4vPFP3+mQx+LbTzfpfEWmMFjIXLN
 uHOwpWOzmGo1wWH1V2mwu666+RmlIy1w3DBdMGvPswAaBgTNJBUmEixmAeWTWs5UmA0FGeyaXt/
 8gT4uc3anlM3I2yV+aejiW+wgkCzGa+VmqBsfJlZrEqtujcUcoGXalMHFSlTdg3VWyFDoMFjH9U
 +ORFFHX6DWYqeLdQ8esalSqutGphTrXKJxxhm5QYQFswDLGavS50AFv542V6LFw7dovmHtnYokT
 z5g4sCPckSiBT+4PTkw==
X-Proofpoint-GUID: -lpB1ouc8uTxypxIhvfMWp-9sHQ6YJ6J
X-Authority-Analysis: v=2.4 cv=QaVrf8bv c=1 sm=1 tr=0 ts=69838520 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=UxGNenrRC82WP0KDhzIA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262753-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.52.125.128:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,3c40000:email];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B3EFDEB1F9
X-Rspamd-Action: no action

Add LPASS LPI pinctrl node used for setting MI2S and soundwire pin
configs.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 5d2df4305d1c..e1ea94d2f0f3 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -2866,6 +2867,21 @@ q6prmcc: clock-controller {
 			};
 		};
 
+		lpass_tlmm: pinctrl@3440000 {
+			compatible = "qcom,qcs8300-lpass-lpi-pinctrl",
+					"qcom,sm8450-lpass-lpi-pinctrl";
+			reg = <0x0 0x03440000 0x0 0x20000>,
+			      <0x0 0x034D0000 0x0 0x10000>;
+
+			clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core", "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 23>;
+		};
+
 		lpass_ag_noc: interconnect@3c40000 {
 			compatible = "qcom,qcs8300-lpass-ag-noc";
 			reg = <0x0 0x03c40000 0x0 0x17200>;
-- 
2.47.3


