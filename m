Return-Path: <devicetree+bounces-275127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PcTMEfqs2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:43:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 288E0281A72
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:43:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DE6131AD712
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0CA4390C84;
	Fri, 13 Mar 2026 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rsy+yKWN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SPvjjYNF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024FC390982
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398333; cv=none; b=R3M6rBfmSyd0XCXQHl21+iCdNGXwHouPZDzfTg8lWqUsD5Ud2THlmLDt0KYpS0Eqq00aVMqfHq5deFBqWEmOlVLL9mx6nYnJWFYevU7Nzn9OX39DeHKRZpgMGnVz+Kz50yu+GudoZ2YhikdJU5JdZPrGxBCTjNtmCLzT3mAoSf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398333; c=relaxed/simple;
	bh=J06U6waoFWMJOn5ptw7RUrRhjCsgxgMkswpnloTTxxs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RvhJ+Z0m+J9XF0OWKYOgFKVTERgTgZrb3OgYsSCDTufN3c0DFW1rI77UQJ2AX5nsUWBryAka+wxMLrP33x7utX2HkXP9+7R2+k0ddbLgCyrPquugRBKq40b+EQDX1EQ0vKfb0YDEGeCosGVBneReUurcaGJcplGp7YpbqOGgkVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rsy+yKWN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SPvjjYNF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7JSPn240513
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=1z6cAVA9wDL
	Auv+O2HvPHcA1Ourv45Ign+yQ1rx2YMw=; b=Rsy+yKWN3YYfNjK8kvqjvQNENZa
	8Xbxf5IB6eN8d5uA1i+waOAMBawKzogN+HRIGFxQDyM9GqfMxAlkPX+/XZ0i/V0A
	cwNZW00DFiJgL3vNGwqGIChxXUau0l/1U6aqUOlZf+kmJ+ou0XgJMXsrJu8Sx112
	afsrf+j08zki2y4bkBzSltLjSqZcOUn8TKIpNmAVMbiLnhqjYY0LDMvyyGrDrCBD
	VGou5icGd1QJ3N9va2E6/QbXBHQ6/4rHWIPSL1ppvjhZS+mAFAqFOx2tlXaNa7b6
	smPuAVNCaEO8WiN1dswRI7NZsG6RAao3Fvgi8PWkC6d/P9xhmsPz7w4fRAA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cve3d8q2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cdb995a1bfso434358085a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398330; x=1774003130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1z6cAVA9wDLAuv+O2HvPHcA1Ourv45Ign+yQ1rx2YMw=;
        b=SPvjjYNFB+Sph1I9CbNQwSm+F+O1wOGiesHcfobjM+39SalMjnQHlYVl59meGKBzw2
         qvihBVZSQ6+Mt0E19KQibn4v9DPZcWXRLMGXyDlx8cMNQg8EQoLecajxZE7V9/QcNX3M
         HJqLIoXMQygad512UZ18OiVnROU9vgA7ueft4g6pSFmy5HAofSkEizKJ3HRidWlvKLVx
         ZDU6RK3FA/1LLOpRdAfpgjSHsXfV8aMKC0/4OZA5llEZmZfX6Mbmd3h9jgcBmqPvBehF
         DONisJ1GOAa9wPqRomDvtZNuRDT+UJu9ANVfKLnd3mI/8/7YLbx/hsbXU4MggWKXiz8t
         ywTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398330; x=1774003130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1z6cAVA9wDLAuv+O2HvPHcA1Ourv45Ign+yQ1rx2YMw=;
        b=UuK/CqxmJXLVirdff83MigHLhaFr98TzpOFvFtduVZuIexQkRB9Ly+53OJf+Ytq1PK
         T5cdiHku6qkO+Y7FkbI5YZ/vic3wsPEKcd1VwJNzLZNy6J8NJoZGYdEDtQb1KR5cvF47
         0DKfO6DFfQE4D1RxgUWtlywUrcTASrfeNYRQ7mutTf3tf2NTEp29t8XYSxRWKiI7AJ9+
         GgvQOV5yX0e2dmTKoD7yTQkHkMgkrcsOvMe3m4aFGUBRtvk+Uqvht3slzrxGWEQBLjPS
         iyq4COjGlAan6qj1ADzrgHh2Be4StsmYbLkn3QPvBYrJmUSfw++uIKahDK2mBDrVb7CQ
         GZbA==
X-Forwarded-Encrypted: i=1; AJvYcCX52Qald9J+DL9XfX1Kj/5AsSDzxeTFmSSLibcZUdIxw5P3+rHlwTPiij+A/nR+rVAtrhVTQd4CVY+Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyGvsBC25T09zoKNriug8b+pNjSHJu4fpxXb3BLaQNKlrtqNhxo
	DnfkyZn1e0AD5obUHaB+ImKWxzKCnHj1fqOrBDJ+z7dW/vjNTBqKYNpA8V0WyqbsSYpgQsRB2by
	5W4OxWzooAkWJG32rHjzAvdsuxz8xqEk/JvBpHpvi+V+wWFafaGAdRfN8Pv46sKa5
X-Gm-Gg: ATEYQzz4Un3PqxFv4YgPyJG4B2wAQcKQrt07q3T9FebZV5cappX5fEJh21T0FjftZbn
	FOgPtZb5GdxaDa1ZaaS/8FtR5BjFsZ+fiqvirPhmJsCNAACim1gtn/bGaaJgYdTSxNjoRyAtp8u
	UyB5WfwdzhiG/rDWUJGhcuuH5XSusCTn+PKhaNV9NPPZESHFEOH3inOrbiHe32yFLl3dNsRJo/M
	qXLza8CZJORLRfFCOhunK7WNa7OShTQw+2q1xXOxhMIVtOJI3CTtk48/Fq4iZyNg7Yn3miCuPGb
	Kw2ROffktPkAGJHHg+c9+siCYFW4bOxZlcv937A46hF/7qOgnnIuBYUKa34OBWlPVXB/jPUsnbV
	zUGWOKB3AvSHb2jvE08jPbgHiyl2WF2a5DJYuTiiLKX+lsdtvQSLw63s=
X-Received: by 2002:a05:620a:4722:b0:8cb:c849:215d with SMTP id af79cd13be357-8cdb5a6dce6mr343794385a.25.1773398330449;
        Fri, 13 Mar 2026 03:38:50 -0700 (PDT)
X-Received: by 2002:a05:620a:4722:b0:8cb:c849:215d with SMTP id af79cd13be357-8cdb5a6dce6mr343791585a.25.1773398330031;
        Fri, 13 Mar 2026 03:38:50 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48556426be9sm20183445e9.9.2026.03.13.03.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:38:49 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, r.mereu@arduino.cc, m.facchin@arduino.cc,
        geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 3/7] arm64: dts: qcom: monaco: add dt entry for lpass lpi pinctrl
Date: Fri, 13 Mar 2026 10:38:18 +0000
Message-ID: <20260313103824.2634519-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: aPuRvshQHtBOJ7hsoJCJq8Paj3lPosYE
X-Authority-Analysis: v=2.4 cv=FLwWBuos c=1 sm=1 tr=0 ts=69b3e93b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=UQoYJOyxK7kCTs_gie4A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MyBTYWx0ZWRfX8Otg3yCPwtDh
 oDUqHwc7jfAbS/TcHS9nLZDV+KC1jM69q4y1uFVgqQW6R4J7CJV2rYuLWUYCZrCk3zdLHJpgN+C
 xJieLUassW+TuvnX9Z+FlQ83C5ecilKckDhu3EkVl5LRj4arIXcvo3dZjtziFasXoHDABEW9xi1
 kf3h+7HjEUTHTUjRTOlmwdHJIXLx0ct/Fg94f3/9a/iyawMENYi1TuEZcDh16Ig8eyzMWMLCCRY
 otpTqgsiXsAaNjbhko4ZIhjBmOTpRppwYukVPwmhyKBJQmgZOHAZvjJ71gv1kjNbUoIZIkZFRAS
 rKDXg7P2AZ0PMTyBXLZf7Ht5uPuPj3gIfx19BY2TL58KY3bmLP3UAs+BRSjZhG/gXNXkbPjCmd8
 pScLhtl05YfiMhsJvWj2OpfpxDpRGQZ9SKZjan/+OyOqpMoSCn5HTuH/sEZZsuThkjjklkqVbzN
 0LTQ+BmhbTQ9beX2DDA==
X-Proofpoint-GUID: aPuRvshQHtBOJ7hsoJCJq8Paj3lPosYE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130083
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,arduino.cc,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275127-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,3c40000:email,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.52.125.128:email];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 288E0281A72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add LPASS LPI pinctrl node used for setting MI2S and soundwire pin
configs.

Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index b3a2bca58a73..53cbc08d4df4 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -21,6 +21,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -2872,6 +2873,20 @@ q6prmcc: clock-controller {
 			};
 		};
 
+		lpass_tlmm: pinctrl@3440000 {
+			compatible = "qcom,qcs8300-lpass-lpi-pinctrl", "qcom,sm8450-lpass-lpi-pinctrl";
+			reg = <0x0 0x03440000 0x0 0x20000>,
+			      <0x0 0x034d0000 0x0 0x10000>;
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


