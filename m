Return-Path: <devicetree+bounces-262444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OApELp6agmkzWwMAu9opvQ
	(envelope-from <devicetree+bounces-262444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:02:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72876E0361
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:02:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B042E3108CC6
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDD6A261B98;
	Wed,  4 Feb 2026 01:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b5Z9xROV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vtg4OLBk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7481DF75B
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 01:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770166807; cv=none; b=Msu75YnzR2qodwQI2cEUZPcQHOZsG+cjv7HiJa/+jH5VrIGbkwTb0xhPUKp9n7Br1igvU5xUEda+Ku/Yha6AS0xoxPUPMP7Z06qoCtf67u9xHA36X4s7Ep064t10PXUzhhmscrLy3NLjAwmoL98h+CzSq66uWDUuq4taGDRziy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770166807; c=relaxed/simple;
	bh=KSGW4Q8DYDhhzVXQ25otMmzjfKUl8PxhFUQ2hkE2KbU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sW5PEOzBGZvfi4s2WCrEGbMy9uVbtOktyQmxMggJdTDGc3VcagTJEQiJoLMqc72QcykUayDJklJcSnxGk74Wbrwv66h/IKaLpr8tMqYlxBBYRBrY+N29k/+wSSO4iOPGCflIhI2N1rYgImrWzUROSU4vUDnrdxH1nzJ04PogRnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b5Z9xROV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vtg4OLBk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Ilxat3337250
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 01:00:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OoBrr8C/QRp4i4HyUTLL0ZS25JBMm+mtVzwTnV3jZRc=; b=b5Z9xROVVg8vUvl3
	DgXj0wgIcnpFjmj93RTrVfYlGIdrRM47DEIFVJ8GedRT5bs6pjCf1W18EUpaWOlp
	C61aQHu8SvfWQHEHQNJ9ijNt6rWxPdhu1lhFXDR0UYKxK2K3zOXat4Yncro1pSO4
	Ethqwp3EaEPyHBijPgqbhsshngB9EVgBwi8Vxr3ViIsrzw2RvyL9+PlZyA28SAu6
	yqBZtF4WiCs0aU0IxbZ3psgoJJvMYAm7SaMIRNoI0jSoXYvLZ79qTy736BK5dIFa
	ZFkDQNmmwDaxuDAi8e4ZNeobYubB+Q9H0qMNyUVRi+d0gT+6dfMsQ7XS9z5xVcFO
	CJIAIQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3gewaeg3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:00:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71156fe09so560946685a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 17:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770166804; x=1770771604; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OoBrr8C/QRp4i4HyUTLL0ZS25JBMm+mtVzwTnV3jZRc=;
        b=Vtg4OLBkG0ar8PrXY5/au9AAtc2EervwD+aAe2+zZPUVoKbw/pd6ZWsjztsNE6J0k3
         6SC8ZcNV7F4inwmvugmW38drvd0R92peWo8vfb43300rfJJvLuBkQe2Oka/jRNhfc1iD
         HTkbw84vIcrtoHMww5hIupxocg4yXuCVCO/LkNM5+nKleGjsfPTT7UrY8bUU4WhVmQG+
         SIqCLrkmWCwYnjrsh65MTeoeYMbqDtjOpls2489h9/h204gWE/GJtmXL2S6kyIS90ld/
         pKiCxdkVWXKjOjf497sOPIJdtgvbERm2xUST6orkNIjKZxRwfxJ6tSZjN/R1IswUG8fH
         9Hvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770166804; x=1770771604;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OoBrr8C/QRp4i4HyUTLL0ZS25JBMm+mtVzwTnV3jZRc=;
        b=XBb3jXAaLIVu1ilEmp7GX7KLaPGMoLZHWot2Jdt7Z0LnUd549hVg4g0FnF+7h9pmR2
         hD3okALU105Gja1tfbPyOZGJ9lWRC1IDrl6nkT0zJsyPloZxuEKh0CK9EDv6I+CBhQjS
         WdPST8BuIALXvlMWeLxgrS+6ffcUtW7AzuOJCpTm/LkONCrir7Gck9PDiYturXW4a9PI
         8qb04K3Kar2woBsAWeDPdegqHgyt1vb9aJl9Jn4+ACWsm1JBeEdvFv2VdPIwUqoGjLgK
         w+cfaeEmxCmKomCLLwwSHQNKIgr6VkfVMybzISnIelSUdRDopI+2nmtFy633WFK0OuKr
         QaVA==
X-Forwarded-Encrypted: i=1; AJvYcCUgU/h5r88lhzgHHkx/K5v3ZVNdS4WoihAh3gXQd8AhHWHWpw9BIhNvyRthTP8ZnSvaBAU6XRRHwSS6@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqze+MfhoOlw0fpcsz6+BQzLp3YTVcyJGaSWk/FOV1PiAJq4jQ
	cR7+6vRAHeY7I0X2xIWWdOpmsiVq0nudNBGs+nfo8GBJjx9h8BDexDZwaZ/JBey1jim00EFd4f+
	BdaPmmvH4LGm6RcA3TH5vBDNd9Hn1C0SgrurAN+9+qKO0d6jbqoIxeWy5gbINStnS
X-Gm-Gg: AZuq6aKagS6gmLWXSp0cQGzk6XR8Q7kehYg2qngzXt0wSHeVQF35KHPRhuvtc5V4P5/
	pLNLrbMIPSj8451tUIQVgMQq4IC1YPPejZuyJ4/n8QS2jE4GSqkQs/4xiZ/8n7niDy7S7nOtLe6
	onuPfBkldGr3bZHnwYtbxn3rxGfviU0sWGwzIXfTMOlh//6d5iM4rL4EYenP0hdspmiT47+b90+
	o99CNjAPozcQc03o9/FYHuZjg0TxN6Q6cm0edqoD7K6KvqCRi7pDcjI6Ar6ypNFQ02NAhi/N5EX
	ku1SPtCxWH+p5chyTySfxYTH99igxurZ9T34QF4i1mI4R2g4wui1cGLU3WpQDsRbIe48+4Owgwk
	hnBDXosamujKzppYlSj4gum5oAAUDMA7dt+VpjwgGlrcbatZZK83In3qioJL3FTNmLpfCyKwtdj
	lL8WJBHU05VMHt6AZ/dn8uYNo=
X-Received: by 2002:a05:620a:29cf:b0:8c8:82a1:11c9 with SMTP id af79cd13be357-8ca2f83bdc9mr196462185a.14.1770166803856;
        Tue, 03 Feb 2026 17:00:03 -0800 (PST)
X-Received: by 2002:a05:620a:29cf:b0:8c8:82a1:11c9 with SMTP id af79cd13be357-8ca2f83bdc9mr196457885a.14.1770166803314;
        Tue, 03 Feb 2026 17:00:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e386ff563sm253405e87.1.2026.02.03.17.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 17:00:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 04 Feb 2026 02:59:53 +0200
Subject: [PATCH v3 5/7] arm64: dts: qcom: sm8250: add MX power domain to
 the video CC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-iris-venus-fix-sm8250-v3-5-70fa68e57f96@oss.qualcomm.com>
References: <20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com>
In-Reply-To: <20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1288;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=KSGW4Q8DYDhhzVXQ25otMmzjfKUl8PxhFUQ2hkE2KbU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpgpoIF8Rb4QZxvt4JJAHhE7PQtITxEFt8T28Fh
 YnflDeO6baJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYKaCAAKCRCLPIo+Aiko
 1bh9B/9Qdca0dqLIdd8Edm3TsEkONTyhZGu4hGaMiqN5Cyp2g9K+VkLg4UcwdlCWxaiCNOb3+X1
 yHcjlSoo0tYXqbmUh5Ao87ncvIfabP2JAM80/W6j76hA7tshBfityk/rT9IBwOaBdiGmmbqPNXM
 Y8Zv3KkoWZ1NLxKuW27t1hrvbzX0jxZRfCR0u7/rK8PPMKY9e3gYU6UOxcAb4wAyVQ10jzIaOuK
 Vh1kTB46FNwndUVfx6qfSLf7/hLg7WsZ+RYBoza4HXHrz+t7ZBeT70Hx0LDz5OZRoHBcs7Vo9cl
 PnR61mgjurPnIpaDWDo1Tr8aqjyolmafUUpsSq0nLICoaLsj
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: mrxwj-c9PnXI2w5A5DgLBFtFOtREbiP2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwNCBTYWx0ZWRfX55Wyf5kozYYl
 pp/AXQK/1/pJl8h36FPhwp99xynme7O1/C6WIyPtetzSvddRLcLOBcaL8iJw7dlPibGp+/Hd7D5
 6CWseG6jiSf4y334dWcNIpmcZQbuYTHgjQOBpjeg64o5E2xSsip1DgMYEmVQYmGlYV3L0JX4PYC
 n4vAhB0POVLtDi5nmNX32BrMASBwt43cXdVjOZHkDE/5xwzlasdAkZ2ftwnaRleq/D8o27D97qk
 QU8u7jHMwajlKoDD2cqqn6iEkh6RFRm0K8okBF+O5+xstz9Cs5mFj9qnH7Kkqp6gwp92UhdwbUj
 xSniF6FRSINHHJ6ak3DI9r2SRY+p6d9NnH+BmdllQG8J4RqB7txis6sgfnmuugjvWwcysKF4L5V
 iho/4uOY8iiYBkmYCt3sayiUIXDW2tNzFHmzB7b4Mr43remsOoO7beIxkRGSQG1Q/rWsEQiNAa7
 NcaVi85plksNDliIQHg==
X-Authority-Analysis: v=2.4 cv=XI89iAhE c=1 sm=1 tr=0 ts=69829a14 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=8Bs0yZVtKZY9psgxZcQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: mrxwj-c9PnXI2w5A5DgLBFtFOtREbiP2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040004
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262444-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,abf0000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 72876E0361
X-Rspamd-Action: no action

To configure the video PLLs and enable the video GDSCs on SM8250,
platform, the MX rail must be ON along with MMCX. Update the videocc
device node to include the MX power domain.

Fixes: 5b9ec225d4ed ("arm64: dts: qcom: sm8250: Add videocc DT node")
Reported-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index c7dffa440074..980d6e894b9d 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4374,8 +4374,10 @@ videocc: clock-controller@abf0000 {
 			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>;
-			power-domains = <&rpmhpd RPMHPD_MMCX>;
-			required-opps = <&rpmhpd_opp_low_svs>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
 			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao";
 			#clock-cells = <1>;
 			#reset-cells = <1>;

-- 
2.47.3


