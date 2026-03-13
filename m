Return-Path: <devicetree+bounces-275378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIWLJ4AutGkEigAAu9opvQ
	(envelope-from <devicetree+bounces-275378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:34:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F6E286159
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5DD9A305A865
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086633B3BE7;
	Fri, 13 Mar 2026 15:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eC04M2DF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YuqzzHr+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A853B27C0
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415645; cv=none; b=JPlUbZG57yAh+n8n4wQ78Bony7PNz8Za3sX4zl9sPLuE4aeaqeghGh/5SHdXczj5u+hg9k+qTb33F0FUl42GpBc0wlJ9YS5P5hXqaRhRWmT4cwLv4AkeF+b4LSDYu/4g1d+MQcxB0HXC2/Dj08neYeuu4YUgHlb9qhyTTUsXW0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415645; c=relaxed/simple;
	bh=cEiFtTK9CGWRlE0jyNb5A5tA+7r7sPf024l/M9YIj28=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Lh66bBzuI+HIeA0wZVpjLLP5QmWuwQFqgI1N+DgTfpnyOgaxAlteRMPu9FHS0P+Nlr0CrHD6ClN+lNkmO0jo+z6x7EubyhoMmJD/OX25M3l2bxpCakdKyZ9Y5o0KDYNW1i2QMdIQQj7zAH7x3M+o+LkBK25F/XWf/tcgo+CWNEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eC04M2DF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YuqzzHr+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9Tjrd1498959
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ABFpcb7W6o4PCW/sW6jq6M5EAgU8CnIQjzMpLoYflR4=; b=eC04M2DFKnOfSppV
	E7GJnUSfy2EfqlT+lLfR1vC6iSqVrMcP08B7uCC6rLEpAcvMEvR+QoZ0WSsbBxtr
	7/2NdSubeU5IF8eLlkE+avWG2C8FA2+6OgV+AdS6SWM1ofhp330X3t7AT2rMR8N8
	sCkrlV5v1SMBVsCbXf9Q185MSjs8EVMsQmW+haqkdCzqdQEvrbQ8TGKdqgkNgNdc
	peUrnBZXK5YWKpCl8oMyINhZtqsHmf/UuOcNW99dXX1zDQhNG1GPGgo4RQ37IKUf
	dkzVzvCnlsHd27zL6A/ohi4+te5brkO2OgT4BWcy3fP4+G05zW00hwnCcaH/3GKy
	UZlSAQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvg0hh5wp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd76ff19d5so1261637685a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773415643; x=1774020443; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ABFpcb7W6o4PCW/sW6jq6M5EAgU8CnIQjzMpLoYflR4=;
        b=YuqzzHr+hWHAhbfQu/BqBQewmAGTdXPR04QcqfLISVslmVL9pI4gNiNDJ2S1d91DeR
         d6TqLGNv3h+0fRp33/u0tZazjraBsS74fwUdeRL2v32F5cpj4lwq0hKjtUtnywEx4vez
         9PCqzLj9i1F0VgqFP8g7j4kXsOpuN/y1rjFDyvEGv2GbuyYdM7ZvIvN9FCrPA4wXrkOS
         vGdgQdQmvwat4OlRlcX/I4QsOKBQ2N+6TbM3UxxLTCx/rCzaxkVgDtgeFaLzIdH7f0/K
         NOgSymrNe4BIjOaNdoian1BNYfz+sylXvFRrMIovybdBmyYzndPcCyWgGlLM4MD2cs67
         RytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773415643; x=1774020443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ABFpcb7W6o4PCW/sW6jq6M5EAgU8CnIQjzMpLoYflR4=;
        b=SobfPUK1YwkTh8MiXRJdmWXfMSMYPifZZlekW8ehfE9RDpJw/9s/gIWYiwK3VpfMrr
         pOZmvw2xhw9+gV1eKJqbgelHU232iXA5/60pnz6/REwI3akAuhXFnxs8AXprCGY8WtQl
         xD5tDYqDKHftLgFK1orrS2F+Vx6FL2Pce/oWYhTVKMKoir4TCOyN1uqVz5ut61lga1lD
         7H6SHyEyabtZRtQ/eIPszheYgNqnwsliNvYOcYbf7aDpyYaiN2ifL/r+X/AconGOqp7V
         udKy4vVcVbWBpui09DBZEpYBhLE0QkEQhPksutjcUpDH38Iezm1VDeKus2LRwURlAn6x
         +HlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSErqyCpHoJVBcqNujyF2hB9FDEdMYV6IlVnce/vQ5kCoVNORO7ItUbeeaTi1PsLebKRXA5K5Qj07m@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm/D8nDEbMLKPGR3o81Jp0NzV/M2AOli5utKbq73/SH9JHomn+
	c/n1DI09JmR2rK5iU+qauFBsTWctVCeCTuMHHZVrIfx3YUL1Tkh76LhTFUQbAe2ge04/F2QkIV8
	fMQLBHuTPwMQ/FxWHtzUadFykiE3jgWaSyhKSKcO2ozOAQDypI9FZ/dUhxAwGHXEr
X-Gm-Gg: ATEYQzz9dRGk/gRSH+neun2lGF5CxL4UYpEymQtCL7t0/gpbyEIAwFv9MWstx6pqPhL
	MXBVZ211eUB0PwkslCyHGbZ+o3bcETlkh+wScnk+hQwvm9zKsUHZNI7ytHdXe9DngWj+JqJKsYp
	rOilw/Lpnf1erJdf/9d1EGQ60l2A1fUtq8cEva6C8gKDuS8mhheJ2f893CZ8mNwRCEakNbdnIWH
	+S+CGthmrrja8ANYsbBackEKDull7e2yiBWUb0E3JNvPwhkqYLPEiyt1SXLb6b+E8WbkuxP9XNF
	/RLECG4xgzqrjAiNOWaGU6E9azZZ+eWOcDQZMs/lVIjvlUcx+Ot69Yr4/JTBB+biZo5OLmW8ayu
	c5nDA/kRBmao/BlqG6HGrPPHWrVU21l2EX51Sv+KUIvMj+c7Hyooq/vBaLwgkEuUNivjm0JruXw
	3dc/gy0YCdQv3FillA4WtkroypcY5JccxMmNQ=
X-Received: by 2002:a05:620a:4691:b0:8cd:8f94:2595 with SMTP id af79cd13be357-8cdb5a69638mr448820085a.34.1773415642681;
        Fri, 13 Mar 2026 08:27:22 -0700 (PDT)
X-Received: by 2002:a05:620a:4691:b0:8cd:8f94:2595 with SMTP id af79cd13be357-8cdb5a69638mr448814185a.34.1773415642004;
        Fri, 13 Mar 2026 08:27:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33c0asm1603328e87.18.2026.03.13.08.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:27:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 17:27:12 +0200
Subject: [PATCH 5/6] arm64: dts: qcom: sm8650: correct Iris corners for the
 MXC rail
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-iris-fix-corners-v1-5-32a393c25dda@oss.qualcomm.com>
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
In-Reply-To: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1529;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=cEiFtTK9CGWRlE0jyNb5A5tA+7r7sPf024l/M9YIj28=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBptCzQs/fY4RW7wVPrb/WJf3b+TBnSef0kQu2bY
 NJm+3J9SbOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabQs0AAKCRCLPIo+Aiko
 1Q/FB/4oHpJS/wArW6wiv/w/UkISHjFJuOd7ddKKrOKP2ZUEMGoFaQpDUK9GY1nIg88QotsgUZP
 FyJdifJvHOjTY9Ofexq2tSdqtcMUsLdNeea+fXWacq9s3WH4upLxXWLxN/h0WykQl8dIug+ugP8
 t0lhwwmyozR/Z2tEcFB73iTJQOglS5kojECj4JQ5iHoiyML8TaF1YUy+qQUnq5RZMbmcxd5UWLW
 XjJgaAhZpxahZBAkEIKAPnUy910xUaT+VwVsWZ/LTRrXD6+SHJ52aC5vmHRRxXQ2TKSOzNmcnBM
 iTj5ufSDsdd0quN6qnUg5PdAvD4Zm+FVbKQql/RUw3xpXxHA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=T6eBjvKQ c=1 sm=1 tr=0 ts=69b42cdb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=UouAheEfswbHdU7NjTAA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: eugkx8DGzT6mrySIXvXOPe7mxzwPA4R0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyMyBTYWx0ZWRfX5d9SEJdeKRxM
 ns03aWxRv+sKNKirQe0/Tij8muPdabPkksoxNutcW4+RgrhFyvTV+YRDtw2JWl5xcmz9VEFEdfY
 h1e6D2AnGEiACQsTtnduJ5dVxXSDohOVnjPrt6EmW4RvZeI/GMyjtdje3zzdF0yXpUZ5HSDTRNF
 0rLzKuy+H9k3cJ0Q0qcfZhtakf8YEwcvHs08XC2gsirgRS4c/sgF1Tlneomb2mvYyDbC3ejZ+aL
 DctkFod1z1HSvDKwJXOxwxbZIG47tWuAoqYXU1EStu58KpzjNgEdzA/VM4zgRJ6f1ZGHTb8AdWs
 NdKj8sVis2IZpPBp2qL6m+a5xqUTOAxqugkl0JqLi4ZM1I6UEDIESHznTMplYS3yRU5yhE+qYsn
 KeyuJ3o6Tc3Trn7ZLm3ZiOzS5aLgZbajnAMsfQ8NsI01HB+2k9pLDA1HuZWiQPXHZLkC3dHfKcj
 /0T1X9568dcvlU3hdVQ==
X-Proofpoint-GUID: eugkx8DGzT6mrySIXvXOPe7mxzwPA4R0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130123
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-275378-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 48F6E286159
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
match the PLL corners on the MXC rail. Correct the performance corners
for the MXC rail following the PLL documentation.

Fixes: 56cf5ad39a55 ("arm64: dts: qcom: sm8650: add iris DT node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 357e43b90740..9437360ea215 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5236,13 +5236,13 @@ opp-196000000 {
 
 				opp-300000000 {
 					opp-hz = /bits/ 64 <300000000>;
-					required-opps = <&rpmhpd_opp_low_svs>,
+					required-opps = <&rpmhpd_opp_svs>,
 							<&rpmhpd_opp_low_svs>;
 				};
 
 				opp-380000000 {
 					opp-hz = /bits/ 64 <380000000>;
-					required-opps = <&rpmhpd_opp_svs>,
+					required-opps = <&rpmhpd_opp_svs_l1>,
 							<&rpmhpd_opp_svs>;
 				};
 
@@ -5254,13 +5254,13 @@ opp-435000000 {
 
 				opp-480000000 {
 					opp-hz = /bits/ 64 <480000000>;
-					required-opps = <&rpmhpd_opp_nom>,
+					required-opps = <&rpmhpd_opp_svs_l1>,
 							<&rpmhpd_opp_nom>;
 				};
 
 				opp-533333334 {
 					opp-hz = /bits/ 64 <533333334>;
-					required-opps = <&rpmhpd_opp_turbo>,
+					required-opps = <&rpmhpd_opp_svs_l1>,
 							<&rpmhpd_opp_turbo>;
 				};
 			};

-- 
2.47.3


