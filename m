Return-Path: <devicetree+bounces-273010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFyEDLTormlRKAIAu9opvQ
	(envelope-from <devicetree+bounces-273010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:35:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 858B023BC64
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D9A930D20E4
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C6673E3D89;
	Mon,  9 Mar 2026 15:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EoxHNe7S";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dQ/UUHs6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7AC3E0C70
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069878; cv=none; b=VIPj7jYqGrHSn+/thnaxvjelApmlYwDE1fry0nirC4eSVl+mkczR7jlmAyufelJM4IgMlvYk5bpvEcWVf2m0oLe65PsAxIqHgbBwM65Dy2JfhTG1qP/vak5nthQQ7lygePipyBz3pu8RxeF014fEZ3bDkWuIFNJgdmblq44COcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069878; c=relaxed/simple;
	bh=x9brd5pLSeKoNygja1dvAl7QqSkQOu7gniSmsU2x60M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P0CaXHu7sCzht+pdkQ67InG1LavkWH7msYxfYEKSWQS8m69vOo4nZ9xtpN+5aRdkm0aIPh11G6s8MQY95EGcnJR63jnKkknV6P+ZjeAMQzrf7N8QrrCMiViwWR1aKiWfSYVfOy55lA/9iQZ3lM4wkp9CzfDvW/c9xeBce9MBGCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EoxHNe7S; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dQ/UUHs6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629DqldZ2138216
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 15:24:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sqp1z6Ji/52
	Rrc6p/NTzKG5+Cmga87yxwgSBmBHuHBg=; b=EoxHNe7S5i8nc6hUD3J4IdE2oxA
	H7lqwIG9SSqkoz9bvTG9ZEeDzzPjWPRTNqGot9i76Y+gNJh1h9DsQqHqf3CO1xHN
	EeMUkF61Bj64CUHMQWBvjpe7UL8pI7JVx7mMZYZHySsnbev3vhPcinHnhDRjMGeT
	+RLDgOhcVa6nFqX9Vu38xcX1pMGxhhk8NWjv3rqcy2q/DX33ZigCPJ2DZPqjEDaT
	z8ClHzkssE0Kmn/sJ0mgKCX5rdUKn35QUo6CYQ1ZbQ4xWHpX+J/RaynVJFz74g/A
	sNDBSfN+DpE0u3/JdrwFqvLHinXvpudX+SxQc9kxXHeiwVFnz4dd+HVVQtw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyft09tb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:24:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd83cfb36cso973048185a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773069876; x=1773674676; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqp1z6Ji/52Rrc6p/NTzKG5+Cmga87yxwgSBmBHuHBg=;
        b=dQ/UUHs61eU0F/mCfDR+v6xn0kgKW/fig6xEKj8rinezxeURrbwGzv9QFKM585vcLj
         pQKGiuryYwSa20t/Ud0BiLgHN0FzqBTUOMvQzGNcp9Hii/zuKWok7i4iI/dOS9tYNi+m
         x/vTc9h5cadXXG+4rGU5bRlnFIv7+FdNjP3ZenvUujjKnstcLLzZG/Tg4svkhshmCJBN
         ngm+wCrfjbrXPS5kkphwZtRSBFgQXaMpBWNxY/h4KhCqw1/6UQa5TSuWHb8Ejx7oBUTQ
         l5snmKrX89zbfX+GnsXLqqYU0lotcKehzlQN2t34dczFH6CsqRKcur3VaDuabhqtGCHW
         F0hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773069876; x=1773674676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sqp1z6Ji/52Rrc6p/NTzKG5+Cmga87yxwgSBmBHuHBg=;
        b=giDh2M+7JZFpOmAEMjbp+ATm2eptYCMpLrkn2Pkg2PLrpFwC7QgL1OHPQg/IB0CAZw
         Om/gGOEwlzQ0a9FWu83JFPpsbFM/cm26fYqYzBY3A0VlhPotsUX/60kOxDbRwbL50xOA
         WSoEE0W6XJds1Qx105roGWYmXWFqxS9BIcZMvJ6rrJRQSD8y+A81qOHcvByaSScJ0ffX
         qF9EDKJlyC86qK0rGBYlS9XcxWWVJiXtSDNNvplRQJuWLqkbQxCkaNGd769Z1vJezjFi
         GDcjQGeRapKhASrW86RMymJmW2ZWDBmzwWhzWzCSPP7VgrMFA9vxK/87HUziqGVZWOHO
         xRTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjlQ6FpCTXmJneKGgd/olNC5RktyVzrRRoZvcpzoWEPq48T1gJb3nxkd3bpHAong41e0pppw5Go6RS@vger.kernel.org
X-Gm-Message-State: AOJu0YzDkX2xgFI2vpTpGT1zesWjIN4YeeNd+4dY05F7RPzOhzojlMqJ
	3tsoIiNPXLNLBxp8zgEkr0xiK2TOKCfy2JvnZaxT9StyNjiTMgWeEPgCIyb0ycPxwCziJV0Z7sE
	3hixf41qlGDo6iRvfN61n3jYzdlxVHRQNrSfssNZf8mOm8yNuehhZLikQc+NoNTyv
X-Gm-Gg: ATEYQzx5jOri6cf9DOhls6Y3G3sFg5rmv3xkPgZWPxJty3ZjLtvqSMmXyWXY3G3L4F1
	MpEJjXhQdKXW5VsA+/AuVUPKxI8fOXQRuikc38DVEHRWQncYHUT648MDEuuJQ5x5REBYoBQjAsX
	89LmgUo0UXeBL2qXFcmzKTng7rTYmMFR65yiSf49d1g1DYi7lsd3SMfHQ2oQA0UUssqOubm5gK0
	+JMOlIHNF74E3pga+5s9Ky+ju7C7J+VZpbgD4e7zr9Gv56X4ZBdOb17q4Ti++qg81uJZWq3FEe3
	dSDbHgTfwNYn89Fod3tTkCxjNTdzlvzFTxkP/fq1tVIaPT8lnkDMYNBdM+p8XYflkZsYhamiuBt
	J9lEYCmq67/iM3Dd7n1kxka8P+Z9a2SopMJ33okdXWK6OZ3NvdZifGSE=
X-Received: by 2002:a05:620a:170c:b0:8cd:92c2:5125 with SMTP id af79cd13be357-8cd92c253damr100792785a.13.1773069875840;
        Mon, 09 Mar 2026 08:24:35 -0700 (PDT)
X-Received: by 2002:a05:620a:170c:b0:8cd:92c2:5125 with SMTP id af79cd13be357-8cd92c253damr100786585a.13.1773069875278;
        Mon, 09 Mar 2026 08:24:35 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853a59fc36sm192812515e9.9.2026.03.09.08.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:24:34 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 5/7] arm64: dts: qcom: monaco: add dt entry for lpass lpi pinctrl
Date: Mon,  9 Mar 2026 15:24:16 +0000
Message-ID: <20260309152420.1404349-6-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: n49RAmJQa4i9wYjQYNyO-W5MYDwYV4J0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEzOSBTYWx0ZWRfXzO2bb9cKTn9/
 usio3/E5sjMnb7Y4sG1i2lUnnD1T5mcHt1/1hy0T42WmllyP7/Tvb6phyOiVUSkNd+VNF7zKYTb
 swwcJMYfcS213s7NlqM+uzQLSS39InGOEjt6LpxJomxvMOgbSfJbtI7Lh6FGjJzsznrSPYVUmAy
 mJVTVJtjVhLP43MTB80FnQYrqfKFqqyd5rrlWr6pfYrfuT9apYU5pLyg4/aOUTFctroPahMW4Ed
 WUSow67dA9quGM6Xgaa5qveNeN3BAtmDiLxyjDvK3djTCg4ZtC+j1syX6N2fL2lv/b5slt/vcJs
 HPodsJkQD+MZ36I+li37AnxEpDqxyRB0C9qiWbg5DOOBqsPvIMknIRyKXQrTN0X4VY9AkYVXsCx
 DoLPupTKLLh3NDf2pikZk31YfWT+vaUe9oEm9+9szL9G/xn5XIXLRTcZc5HxJOzLW0IZgN6ue6K
 KrQXvEw8rOFZqJr9cgQ==
X-Proofpoint-GUID: n49RAmJQa4i9wYjQYNyO-W5MYDwYV4J0
X-Authority-Analysis: v=2.4 cv=F8dat6hN c=1 sm=1 tr=0 ts=69aee634 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=UQoYJOyxK7kCTs_gie4A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090139
X-Rspamd-Queue-Id: 858B023BC64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273010-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.52.125.128:email,qualcomm.com:dkim,qualcomm.com:email,3c40000:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add LPASS LPI pinctrl node used for setting MI2S and soundwire pin
configs.

Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index ce1565c7cc3b..0727dbd44a75 100644
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


