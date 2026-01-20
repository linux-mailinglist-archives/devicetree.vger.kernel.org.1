Return-Path: <devicetree+bounces-257528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GC7kJTHRb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:02:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBD049F39
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:02:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9B7E18AE439
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 360CC421EEB;
	Tue, 20 Jan 2026 17:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MvyvrnH2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FdP26bMd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7123F23B1
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768929830; cv=none; b=Pn/1ggZOLW2jkgHkM0EXHuoDRn0CTab3cFAnsGTiZLCpphWYUL5iH5W01epI2EvCh/g811RkMvd3fZw/MSWSfPWQu8y27Fs6EKQ2iy1CGvp47A8ov0w4yK5qi4ewTwTRiUkUSCNE2jcjL/Qky2C/DL763CFG85x/nTgxGBotEDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768929830; c=relaxed/simple;
	bh=xOKCUEK79jZEMU0XsZlL2vcpGR/Zktrh+jM8ZBiVhRI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ALvGAxBgJhS9C/DL4VidP1Z4d+QXcUUSi+1IeXA7p2SloZIvfZDCPk1Qzu33rfVXtitmQJfzH2Y7sC9u0o/xmkhdBLWZwdbUBdG81y8RXiGZ830dDtuGuRs1+ov69FHVv+/BvmebK5ngPMR2XgVJwbU5sX5iLxjOfWtnPVfHnno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MvyvrnH2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FdP26bMd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KH4ChN3257519
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Js6BTGG/ZwNb6rGbBE6BzKASIp33EAZbXoHw3fRr6Dc=; b=MvyvrnH2yKPJQxut
	FxsL7eLSD0vPm7/8qrALcscQ2y98faVaPZ48GhUN7DiAICB0FUpw3+CuDohOyoo7
	l2AGsHpBiWNfCApiJlcWKiq7uq6ZrKYagY32cUol3WaeQvRRMR88IyR65U/0OI9H
	m1ukWUNCx4ZbuKQgxHik4PLeygTQzpy3VEWTXKhNgEYzTfcJrrvEXxvLOVSM60GS
	M0llj+ViWLTqPKzmVSBay8Gb6/DKVZPhNihBSQB7gvDKgPZKKvO5ihOdIZXwvGMd
	oHsQIlBxHPFV8bu8cpEJT9EJuqExKS2MTIKP5lmsiuWzoIuz3xFn7SjVsgaTiORw
	UGM9Mw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt6u7sgqm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:23:46 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b6f0b345e3so7306125eec.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768929825; x=1769534625; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Js6BTGG/ZwNb6rGbBE6BzKASIp33EAZbXoHw3fRr6Dc=;
        b=FdP26bMdDn/T/z8ZNi+bLVi62gHz7s6cRhtr1lydVhGAkHxNAXS2t4M8nDJKy220Cx
         yiO/AzMWukC2d7taxqxKZWy2dwHYILiKHaOmUkZ8FANTsM1uRyXSBcmeCIWq1mzLemoe
         RY+tk1YYyCTWTYaRFH0F63lxBOOcn/s4laTIDyA5uVstT0ZnjoCPiQLCqx4I7j5xF/tq
         PIJ2YlKEtbK0p90Y9zRrTUrY9y1uSbHFpv2NsDpK4/ZZJU/e5AZnhHNymJr0Y3Y0CJF2
         jyhcHPbidCtrngL6TXmltoRRNDstiayiUKoc7ejm0NruWu38xRVHJK6onje0DdFU3XlA
         5p/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768929825; x=1769534625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Js6BTGG/ZwNb6rGbBE6BzKASIp33EAZbXoHw3fRr6Dc=;
        b=L1ctJ2JbN+xs7UG2WlEuOZ+ziL7PQVfYyXNryRJs69P/KxnAefgWDwZk4s2HstDiVN
         OqDpyXOvuGFqMaF5nqppUUGrPfMlqhHcoSd/epX45jCBNNt3wbMyiTltCEyemQLWgqTn
         aeogmJcml1JuK6gncO6OqGAFY2vQEi37UljldAtVjcCmNQdZ3tRK48jxRgzcPTrwIsZ4
         aa8GVuiKMiD5rSzVXHgr8rcwqodh77e9ia91Znu0DE7njg4C8mVXKLxXYYrGxjakKO2Y
         eKuiNcvSk5xTIwl63ZJNOqJg1t4DPcl004XM+qZNUCHWzcL1DNfh6QI+UxXi6WpYk4Ae
         QsBA==
X-Forwarded-Encrypted: i=1; AJvYcCW+DR8MVpWEWut33cKRXjlefC5WENH6G8+1RLJdHu/tpnSi0i56VA6PRc2j/BpmJJsb8pA+9YaRvhOC@vger.kernel.org
X-Gm-Message-State: AOJu0YzTJTdPudzSzdyLM1ishTzICrqyhH6L4NAP2L6wegXjuIpo6PR9
	ylrwU/juUBkSi30LQTouJpfIZ/i7bMe3VCPUCPOfrzsARYACG0V/0bFIIHzFA8ILitZzq6KhC/P
	WZ8Kv9STI9dyknlfzXJGnxGSgA4z8bJEbdG/JRycJTQzmf+Gh3UtS1NKEXW/blz8V
X-Gm-Gg: AY/fxX69FFlKXei6MXiM2JSE3IbmSbCepAssI4C42i+SBb3HFM7VA+9qGHXx2COsXcR
	toNdUKm3llNq+5HG23HQsQD7RSq33vvjqW9N+PL2YBpHtu0uuLl3uUtJbV2/GHjqIPcAyMUQ8fa
	r+R+yyy/aNGHVrli+UKBg2DF3HftsXXfis1x5XPj+5REjBADxPOjTDsBsbU1CZlGAu41bSPRwlX
	BxJm75KC/o/fkn1FLYKqTdGJdrCQ14pqA9aBGO6H2B1u9SSM07+z8YgpYAOLCmEaB3eQ8R0BaOI
	oEpO7VSqZ7alFY87iJ8a5taZL84IhTzmvsO/RO93HmOWYkjmh0zfzVDoBo/LqFZ/dMoEjHEgI3A
	4pdRKnbbO54ndYRvFkDsO+zVcY24Ec86FN5hnvuwUdSZ1WD4n14aIVRnUg7l/HSmEJRuQBOBZ8w
	==
X-Received: by 2002:a05:7022:128b:b0:11f:3483:bbb0 with SMTP id a92af1059eb24-1244a72aef2mr13665627c88.19.1768929824993;
        Tue, 20 Jan 2026 09:23:44 -0800 (PST)
X-Received: by 2002:a05:7022:128b:b0:11f:3483:bbb0 with SMTP id a92af1059eb24-1244a72aef2mr13665588c88.19.1768929824362;
        Tue, 20 Jan 2026 09:23:44 -0800 (PST)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af22aaasm18714842c88.17.2026.01.20.09.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 09:23:44 -0800 (PST)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 09:22:51 -0800
Subject: [PATCH v3 2/2] pinctrl: qcom: glymur: Add Mahua TLMM support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-pinctrl-qcom-mahua-tlmm-v3-2-8809a09dc628@oss.qualcomm.com>
References: <20260120-pinctrl-qcom-mahua-tlmm-v3-0-8809a09dc628@oss.qualcomm.com>
In-Reply-To: <20260120-pinctrl-qcom-mahua-tlmm-v3-0-8809a09dc628@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768929822; l=3365;
 i=gopikrishna.garmidi@oss.qualcomm.com; s=20260102;
 h=from:subject:message-id; bh=xOKCUEK79jZEMU0XsZlL2vcpGR/Zktrh+jM8ZBiVhRI=;
 b=qrUCFFOijYpi0NRnPuwotZ0+mtkgYDX/J8Ma/yrxiniHFiTgZMsI1/oUcU41BuL7lMC4DE6KH
 f+SgnrQfjL6DaMdS6weSdiIui5skgoxLGS3/3cj7yVMUYU0Jeue7mvl
X-Developer-Key: i=gopikrishna.garmidi@oss.qualcomm.com; a=ed25519;
 pk=TkSjNEhrfsj90i3wkABTZtAjLNr2cfYsujaTvyOIDsE=
X-Authority-Analysis: v=2.4 cv=P/w3RyAu c=1 sm=1 tr=0 ts=696fba22 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=p1T0IFexb8msloUdZnoA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE0NSBTYWx0ZWRfX2ReKHuKr7ffZ
 ybC+LdDu5bUpXK08kRNS1qWEdkWnabeZlIEQCuEU/rKpCwR4CrmtcAByqda8aW+WRPs0C8jhEJN
 KWSNiKVingKMpj/cWQiLF1oZr0W+VAKRBjZE4xT0zQQ4KTGuA9w3N8+1Gr21tcPIrFElXHNC0sp
 f32FD3VPg2sNFw10lunTVrbH6QStBNLW6j7G+ZoEofyeD1f3/l+a/u1ZpTmB1CiDdzB9/hiF21f
 kcSOKUxSvqLXvWBHyXMYALT8WNvJ5nJfVAmKq1kXWvnFr+eUSbW7878O8r+MaoQJ+YfTDwAaVnB
 6QXmVAqdh8+Nbm0briRmEpqlo0jeJefxoTkrzkfuc14zEefK7RSmm4o91DP/2885mKEEZmJy1VF
 5tiqzZ4NTGINXtgIAUULxozA8Iftpc194gSBz+8cdvIyGUdelbHngZ276sezhWSkR1TW4FvAKI4
 28SIpNxcSu5GhANjq7g==
X-Proofpoint-ORIG-GUID: KnILJe2wU-LZ_Pg8KZzakWD5AePYyUgn
X-Proofpoint-GUID: KnILJe2wU-LZ_Pg8KZzakWD5AePYyUgn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200145
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257528-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6BBD049F39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mahua TLMM block is identical to Glymur, but the PDC wake IRQ map
differs since PDC handles the interrupt for GPIO 155 instead of GPIO 143
as seen on Glymur. Hence add the Mahua-specific PDC map to the Glymur
TLMM driver.

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
 drivers/pinctrl/qcom/pinctrl-glymur.c | 46 ++++++++++++++++++++++++++++++++---
 1 file changed, 43 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/qcom/pinctrl-glymur.c b/drivers/pinctrl/qcom/pinctrl-glymur.c
index 335005084b6b..44f9745325b7 100644
--- a/drivers/pinctrl/qcom/pinctrl-glymur.c
+++ b/drivers/pinctrl/qcom/pinctrl-glymur.c
@@ -1729,6 +1729,26 @@ static const struct msm_gpio_wakeirq_map glymur_pdc_map[] = {
 	{ 232, 206 }, { 234, 172 }, { 235, 173 }, { 242, 158 }, { 244, 156 },
 };
 
+static const struct msm_gpio_wakeirq_map mahua_pdc_map[] = {
+	{ 0, 116 },   { 2, 114 },   { 3, 115 },	  { 4, 175 },	{ 5, 176 },
+	{ 7, 111 },   { 11, 129 },  { 13, 130 },  { 15, 112 },	{ 19, 113 },
+	{ 23, 187 },  { 27, 188 },  { 28, 121 },  { 29, 122 },	{ 30, 136 },
+	{ 31, 203 },  { 32, 189 },  { 34, 174 },  { 35, 190 },	{ 36, 191 },
+	{ 39, 124 },  { 43, 192 },  { 47, 193 },  { 51, 123 },	{ 53, 133 },
+	{ 55, 125 },  { 59, 131 },  { 64, 134 },  { 65, 150 },	{ 66, 186 },
+	{ 67, 132 },  { 68, 195 },  { 71, 135 },  { 75, 196 },	{ 79, 197 },
+	{ 83, 198 },  { 84, 181 },  { 85, 199 },  { 87, 200 },	{ 91, 201 },
+	{ 92, 182 },  { 93, 183 },  { 94, 184 },  { 95, 185 },	{ 98, 202 },
+	{ 105, 157 }, { 113, 128 }, { 121, 117 }, { 123, 118 }, { 125, 119 },
+	{ 129, 120 }, { 131, 126 }, { 132, 160 }, { 133, 194 }, { 134, 127 },
+	{ 141, 137 }, { 144, 138 }, { 145, 139 }, { 147, 140 }, { 148, 141 },
+	{ 150, 146 }, { 151, 147 }, { 153, 148 }, { 154, 144 }, { 155, 159 },
+	{ 156, 149 }, { 157, 151 }, { 163, 142 }, { 172, 143 }, { 181, 145 },
+	{ 193, 161 }, { 196, 152 }, { 203, 177 }, { 208, 178 }, { 215, 162 },
+	{ 217, 153 }, { 220, 154 }, { 221, 155 }, { 228, 179 }, { 230, 180 },
+	{ 232, 206 }, { 234, 172 }, { 235, 173 }, { 242, 158 }, { 244, 156 },
+};
+
 static const struct msm_pinctrl_soc_data glymur_tlmm = {
 	.pins = glymur_pins,
 	.npins = ARRAY_SIZE(glymur_pins),
@@ -1742,14 +1762,34 @@ static const struct msm_pinctrl_soc_data glymur_tlmm = {
 	.egpio_func = 11,
 };
 
+static const struct msm_pinctrl_soc_data mahua_tlmm = {
+	.pins = glymur_pins,
+	.npins = ARRAY_SIZE(glymur_pins),
+	.functions = glymur_functions,
+	.nfunctions = ARRAY_SIZE(glymur_functions),
+	.groups = glymur_groups,
+	.ngroups = ARRAY_SIZE(glymur_groups),
+	.ngpios = 251,
+	.wakeirq_map = mahua_pdc_map,
+	.nwakeirq_map = ARRAY_SIZE(mahua_pdc_map),
+	.egpio_func = 11,
+};
+
 static const struct of_device_id glymur_tlmm_of_match[] = {
-	{ .compatible = "qcom,glymur-tlmm", },
-	{ }
+	{ .compatible = "qcom,glymur-tlmm", .data = &glymur_tlmm },
+	{ .compatible = "qcom,mahua-tlmm", .data = &mahua_tlmm },
+	{ },
 };
 
 static int glymur_tlmm_probe(struct platform_device *pdev)
 {
-	return msm_pinctrl_probe(pdev, &glymur_tlmm);
+	const struct msm_pinctrl_soc_data *data;
+
+	data = of_device_get_match_data(&pdev->dev);
+	if (!data)
+		return -ENODEV;
+
+	return msm_pinctrl_probe(pdev, data);
 }
 
 static struct platform_driver glymur_tlmm_driver = {

-- 
2.34.1


