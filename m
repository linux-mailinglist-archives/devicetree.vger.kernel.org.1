Return-Path: <devicetree+bounces-264003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OGfLtHgiWnGCwAAu9opvQ
	(envelope-from <devicetree+bounces-264003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:27:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABE210FAD4
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 238063055CA8
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE312378D71;
	Mon,  9 Feb 2026 13:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9LJCamS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VLu6k1yC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9F2378819
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770643439; cv=none; b=gUa6rnbQllsnjpSLx2G46Bu7icFztH8967ZB26CYNrEU5aC0hjB8QLgKP/UDOPq3N0t2upNHPdD60bqmkiB/XGpqznD0J88RuHESNerPfGQc3l4qfM0/PL7NAAvjKpy/PRJhU/hV9U4KlpJJt9RCTdZoFQSEV2Oy4f/pPEQ1U1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770643439; c=relaxed/simple;
	bh=UiU+149jnrVM1SWUnO6BecZTr+G9PKFBnhbQil6C7dU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MPhCu5QAu3GFTbvDtI4WPrfYFH/IiAEijGsilVe6Y4RC6DpbtburEsGA1yVEoOlPANL/V5INXu8g6qdN274tajPT1B8IYIqsF6fU+hdX007LHrHPmbDQHK+UJAhxbuqxue5XXtxfGxdemUFn2iHLDPhkRSoLYojuxdfB9nUW4HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j9LJCamS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VLu6k1yC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619B1leL3253955
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 13:23:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4HKCdAZuuGxNAXDtN64uIxZbwDy+4WF8n1CgeQagiJA=; b=j9LJCamS2nPoB/b3
	w9ofSOa/FHjj/uhSY5FS6gHTbYRzjmRpvtKUaMCG6NxAFVryi2dzTUb7S+FDFg5z
	vTi5+YFkk/LJXMm0fCyRP9nhZDt1waVNOtdr1BpVnqO3hsysatagM8d69VcrqZWs
	gSXwU2cGjS0VlWrbCNDarJog/deIqLSt/lN5XbBqHfXwNoNkXrLAR2bsGtu2meBT
	rLPyVOY3Q5yokm0/L6EkebVzakKPWsF4qvUPEEElYmdPLQIoHmd2QICZu6ep3Nvn
	rk1aRDK13dTqHcD2VCueabivCOmPh6J85L3YDpZRnfJHrjrFSUKJkqVzT3qAkbaz
	BTSHhg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79f69jkq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 13:23:58 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a784b2234dso142376605ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770643438; x=1771248238; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4HKCdAZuuGxNAXDtN64uIxZbwDy+4WF8n1CgeQagiJA=;
        b=VLu6k1yCQsdxneKAlGdLFMczJsodMKTUlTdUtFwexnYtbc8n2k1GSEkOdmxyvYXIf+
         qe4G2KCgHnWU3UleD7ZRKJ5zcv2ox4+D/dSHm8GSfnM/9NFNOCE8gF4mbz8edW1lSCKA
         qY2cpFZwpUudHNJmx0uHdySNkkoPF0Iwln6SwL5bHM+QhvMqYivEye+PIhtB7OHCdieN
         tHzIiPaz5JWcMEcDV1nks5njMeAVilqmi+pyMb3OJDqIPR9fRhRxjsXHE8iAqHY1WhMC
         TvCsNX0gt5MeNA+24aAsO3TERhDpx7YQ6qmMOiqrbzSPsFNHmwc2o5g6WmeL8Hlwl/Bb
         rJig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770643438; x=1771248238;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4HKCdAZuuGxNAXDtN64uIxZbwDy+4WF8n1CgeQagiJA=;
        b=hRuwrPDY/ERr9bfGPNkOj4xRCn7HKQkXHcxDGoq1CCMseubJATXrXSIOvSxNtsmMV5
         e7xn6h2FCnmHyFVoPUNJ+s9abM6hRcgIOodkzBiyem9QfUchluXBHRg1RZwuJRxTWra6
         yxqYdhnAyhW+rnxYyDR9La2//aM5AZJqJABf07YaJiWgRiaBzKyntInLvDl2o4oILnF+
         tSDGjJU/RvI8HeXW671HS8g7LpESqXx5EUPnyvEgiwgzaStxFKeeKIAx0tJaywjShDr3
         3hk7LdQfDlJp4xP+RTEsLEENWanKlPAOW8Hn1QtVpyNBvIcQDrej2D0VMb/7/4woGkYm
         gZlA==
X-Forwarded-Encrypted: i=1; AJvYcCVPwlLaH3xCc2mf/g04u30frWt6+qH5TTG49vJzulsi5Av0Y3N2OiG3/ncbrZgEJzF25lCZh4YawyM6@vger.kernel.org
X-Gm-Message-State: AOJu0YwCGx+YWPi57OC7W3jYFw9J20SbTAGZRunSFH2h+16Dsgn5JATb
	o3GN7O8D4I2EPielRgDFjRd+tcq4z6mxTmGsin5rAvQEnN8FQQJzgtpKiijiWyXKDdsMbuWvN+E
	UWowEzypvXyWuiPRBQuxLzrLU3VKMiVANRs9VHY/Qm/QUYwuypcV8PF2Ht5dLwE4=
X-Gm-Gg: AZuq6aLXef1TocbukHc52O+ifkSvh723cg0UGri5O6xFJpu434pOLP5RFq5wC2W3tyN
	8eZvcqpczsI+/gn4NEkAI5GiSlO5amF4QfVyBVCLRhHtTy5k5iiZvM0XcvnlGMl25Eay0zzY5JN
	7WG6GfA4R4EH05WrdQFUKhcMM+pDHeOZnmivUb+iw0FY869RgoV45IWjWaUt0ll9G4V1KgeeMEa
	dLRCXMGMBZD1V+g5+sV2oNvrSJcx16Ts3XC3qMFmLgAWCcEdxSwD5aW9JHzYBGg9YFU6AaOIRTL
	16Ldx2SbwwkxDPPNDExx1vhA6n71U4mH/+VXnlUAeZH/3ZXkbdoJz3P9DSX5pqutaWPANx4GIBO
	FFwljD3s1UKDPfzWDIF4R8PUclSbtP23W7opOOKQ=
X-Received: by 2002:a17:902:e744:b0:2a1:3cd9:a737 with SMTP id d9443c01a7336-2a95194698fmr144679005ad.36.1770643438088;
        Mon, 09 Feb 2026 05:23:58 -0800 (PST)
X-Received: by 2002:a17:902:e744:b0:2a1:3cd9:a737 with SMTP id d9443c01a7336-2a95194698fmr144678525ad.36.1770643437573;
        Mon, 09 Feb 2026 05:23:57 -0800 (PST)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521ba245sm107895765ad.47.2026.02.09.05.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:23:57 -0800 (PST)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Date: Mon, 09 Feb 2026 18:53:38 +0530
Subject: [PATCH v2 3/3] arm64: dts: qcom: monaco-pmics: Add PON power key
 and reset inputs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-add_pwrkey_and_resin-v2-3-f944d87b9a93@oss.qualcomm.com>
References: <20260209-add_pwrkey_and_resin-v2-0-f944d87b9a93@oss.qualcomm.com>
In-Reply-To: <20260209-add_pwrkey_and_resin-v2-0-f944d87b9a93@oss.qualcomm.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Courtney Cavin <courtney.cavin@sonymobile.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-input@vger.kernel.org,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770643418; l=1461;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=UiU+149jnrVM1SWUnO6BecZTr+G9PKFBnhbQil6C7dU=;
 b=rG94SyNpfvcGbjoBjrVWjDplNxVX6azl7klWt0E/bxlDq72lOpcETrbZpYe88qy3c9m+Ivrk4
 /I4EbjXtMxEDV3NlnfEqd6AiZMFfuuBjvuDymgtoP3a47/SSj/wxjDe
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-GUID: cLWxknyHwZeXf8JPSO7owyM7s0H-5cOs
X-Proofpoint-ORIG-GUID: cLWxknyHwZeXf8JPSO7owyM7s0H-5cOs
X-Authority-Analysis: v=2.4 cv=W581lBWk c=1 sm=1 tr=0 ts=6989dfee cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=waYKtz62x7MdsOGo3IQA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMiBTYWx0ZWRfXy4CcRw+yLPhG
 QBDZW9ano6EsbCc/jb1H3oI/pbmYatEV5hh7tEsBuRIw4mMlvTHxTQSk+mTo7iNbX5gN+lpheAm
 HYSSey8MbBuJiqtHDxJgpW3q/nyYehjBJ03pSZP/ni0BHl9eqDWDfSDwwZT0x+BjmKgAyk3u1gV
 U6Yz8Qt/i/rD1gSZWt9fMZjCU5j9pEy6YI5f1st8kheFoAdlB+3iWun/pqy/YEywM1TEYUdu99+
 uT+NrKHeeu5mEYOZ6x5KTMPeJ04JMmsUwIiWrqruUVT4Q2XgnaxmdU54893dePeR7AkDnbwXwM3
 jR0m6LpjlQQkvLSZy6cWAMHONYj4tG2x7As+jes7s/AEM4RM2tkP1FFwzNjlhEiRt6cxIcI1QFG
 RloTUtSFvd9OwC9WeRFSHQTLanPUr4fVlAbszeHqqKmIJeh1NIeIb48CJwbfv9SZM+tIYo2zzcA
 DTpCz7fw179efsySieg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264003-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sonymobile.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.23.212:email,0.0.4.176:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rakesh.kota@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1ABE210FAD4
X-Rspamd-Action: no action

Add the Power On (PON) peripheral with power key and reset input
support for the PMM8654AU PMIC on Monaco platforms.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-pmics.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
index e990d7367719beaa9e0cea87d9c183ae18c3ebc8..182c2339bb11af40275050a36c4688227e89497a 100644
--- a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
@@ -13,6 +13,26 @@ pmm8620au_0: pmic@0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pmm8654au_0_pon: pon@1200 {
+			compatible = "qcom,pmm8654au-pon", "qcom,pmk8350-pon";
+			reg = <0x1200>, <0x800>;
+			reg-names = "hlos", "pbs";
+
+			pmm8654au_0_pon_pwrkey: pwrkey {
+				compatible = "qcom,pmm8654au-pwrkey", "qcom,pmk8350-pwrkey";
+				interrupts-extended = <&spmi_bus 0x0 0x12 0x7 IRQ_TYPE_EDGE_BOTH>;
+				linux,code = <KEY_POWER>;
+				debounce = <15625>;
+			};
+
+			pmm8654au_0_pon_resin: resin {
+				compatible = "qcom,pmm8654au-resin", "qcom,pmk8350-resin";
+				interrupts-extended = <&spmi_bus 0x0 0x12 0x6 IRQ_TYPE_EDGE_BOTH>;
+				linux,code = <KEY_VOLUMEDOWN>;
+				debounce = <15625>;
+			};
+		};
+
 		pmm8620au_0_rtc: rtc@6100 {
 			compatible = "qcom,pmk8350-rtc";
 			reg = <0x6100>, <0x6200>;

-- 
2.34.1


