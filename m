Return-Path: <devicetree+bounces-325691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h44/KG0NVWq4jQAAu9opvQ
	(envelope-from <devicetree+bounces-325691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:08:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B17474D6DE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:08:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=jO8h8UOs;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=QxZYTSr7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325691-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325691-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 19C363011A50
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 16:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4284831E823;
	Mon, 13 Jul 2026 16:08:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FCD332EAC
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 16:08:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783958887; cv=none; b=qJZ50VfCdUt1znjvSvTmBRdSB1I2uerYIgE9dqmcU+fV9BT2OckHu0Asx0lT+fTrlMK54fvmjXEmF2DnecyPmaIuUwezz7ohvBUOvirH7uv6WAjzsUZVJpSuo7FPtoNuH5A9HYc64uOqiLrVQOXlaLSG81TWhgjPNHdfOKOnUqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783958887; c=relaxed/simple;
	bh=D4f2vQdrdki7ZGOnRFK/bwTkotK/uzROS4ph9Bdpk2E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iIL+/IYj9uPGxpf8+MHH3qQSBWZOZdIUhD8bCcjIxcIpe8LrWgnJJ2OoESeBRYlNvcXuZMS2wSAk3rLedLl7JWiBiCtowytD5AzJ+TP5HxqN4ySz4+49MqvzRDmwtGmGec8wYasSlKkkrdvoiFsqBUwObppk54/3o3AScYQ5Jnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jO8h8UOs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QxZYTSr7; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DG5KRe2030898
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 16:08:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W7KR++2slyzotzbYYbez+TiPph9cdOcW0blbetyx7dc=; b=jO8h8UOscnIB7CpV
	KXAFJK8mg9TQjHetH61pTk6LMOjODvezuLPI9MCJgRizkboMnsdWWHsUKZ6I8D1w
	tkT0Ba0/T79cv4/WeSQtjeVmcb9TETq3qW+FPp+Z9aOeFTVSeWuVeQrRGWMmLUP0
	TAjYTCGqWyWMly+wrNqxq5+e4EuJxRaSgXsSCYIUY7XGlD9WsSWZ/zvaVCrDjl1v
	0+EUNtpS8FT4CCDFkkGzCBgksXif0IyUYnyCSn5T1aZsOfxo/t8/SUL8yQgvsc2n
	C52qlVioHNF5UcOv+sBs0KV0Sk6dob4MDpN071ri0CTiBYypRnv05ail3VstVnHV
	w39IVQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fd37x80fc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 16:08:05 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2cce02cb769so41558375ad.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 09:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783958884; x=1784563684; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=W7KR++2slyzotzbYYbez+TiPph9cdOcW0blbetyx7dc=;
        b=QxZYTSr79U1TsR6LPsgxH49/tTObSaF5NB+P3Sr25iX6nVfH/n8AimT8VOoJqxje9/
         eZ8GIDfZ5S9E3ukqozz0NeBIgOLtjUPt7ZG1srnBzzMwV7jvx6zo6ArnQWG4Oq8n9UPm
         iJx6JN2pejImSMnMHKCUFWUxpC9SrjX6D2++NGFYNigIDOVUTOSRzDi5Vbqu/fqSjsIg
         mI+5uLAyRMASDioX6xNQ79RE+mbTw+6qk8aNjWNJGSQPfQXO3biChHo7bcThHw27WqhR
         /9sKZMRZuSsEizMy/U8jX9GuX5IYbUgakhmZ+d+qaIoRBoJcxcW98c39idATITGkiPja
         5eHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783958884; x=1784563684;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W7KR++2slyzotzbYYbez+TiPph9cdOcW0blbetyx7dc=;
        b=cDLQg+UjV6oT5ZuLVeZpCSurHYRLpDr0WzoG717x1bFJaS5gK0uTyj0m/YER0Npk65
         duxwf8H+2XsGOCTmZdsNdtsNdpNOXO1cyP+kEKdvhePFvZM0vsHceklywpFn4k2xOfjk
         Pji4twnUtxkWRRiX7RcwtsqLxDFe63zZpDZKnCrhbvp0tNVQ3n5brP/Ct1Y+/CA5e67q
         9ALTpbfZfLOfxu/I2t4TFYd6fAI+2/auyp4QmC8M5JiOtkokAW6II8RcavDUb3zu88y5
         XxMotKQA63v5HAywY1wYnH5iw2AVGvM0MYJWRT0h50MU84ooiaIJR3WePv5B3gtHdHQx
         cXRQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq4+sGp01U7ZoElCyz3kF3hkR6vf6OUC2xxIUPl8AOTw51rHyQ3r5dqYLgzDVrZbozIjU98bNEYUItJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwBJg0AcAk/g3HyA+lF8roWuS9r6Pt9NtbxlZgZ1nqyB6m0s1h4
	4hL//lfp3/Gs12iae7J2aPHoUeyK+RpAMiRU/a/l8DZMfDNZWokr/ValqZpadd8wnhvuIMJOGxZ
	cn5uHh5N5jYlvjJ4YtjSXd7x98zHnqWw5Lwqn/smR0VzG+Wdpj3U7VntK0Jd0eMWU
X-Gm-Gg: AfdE7cmJSDR2O1doBTFNORIhm6TZRTz//ekP1k2DYBTejUWCP4s/megE9t4xH5NVw+Z
	Wwrbk/elZ/9nLfx9BT8cbGpKx3X07ee0KOd3CvCrtNiCMqOTE/Q7SwKNX8ifRlD5moROavkVa7e
	hn5h3GyrRVvtdNgxbbxIp44TdxDPqiDXD+WIDyZyHGP4vBwBW/IDc/sKrrlM5yoBFRypa0DEs3Z
	1DQageciuLVl8KvX+ragd64A04fwn9ZsO1I53SJ6P/lv2ImlkXtK7nVduuZo05xiwwsJU3HY0GB
	PoAot0QxafnJyNkma3ropVL2XMUiuh/A4jHFl5m96gwQGzo/4iqcWECUK8/meAIJDlgTj+rgnzY
	SNdyjEZ3jRHe3krUzaxBd5t6cYtX8ylfXpXiZqQ==
X-Received: by 2002:a05:6a21:9211:b0:3bf:9e25:1a18 with SMTP id adf61e73a8af0-3c110b6c14dmr11276716637.52.1783958884239;
        Mon, 13 Jul 2026 09:08:04 -0700 (PDT)
X-Received: by 2002:a05:6a21:9211:b0:3bf:9e25:1a18 with SMTP id adf61e73a8af0-3c110b6c14dmr11276683637.52.1783958883732;
        Mon, 13 Jul 2026 09:08:03 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313b4cbafa1sm56974789eec.6.2026.07.13.09.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 09:08:03 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v10 1/2] arm64: dts: qcom: qcm6490-idp/qcs6490-rb3gen2: Keep wlan_ce_mem and drop redundant wifi memory-region
Date: Mon, 13 Jul 2026 21:37:53 +0530
Message-ID: <20260713160754.1250988-2-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260706161428.3764398-1-mukesh.ojha@oss.qualcomm.com>
References: <20260706161428.3764398-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDE2OCBTYWx0ZWRfX+Gv9m8HQtXuu
 2Wago7WOzZPSedXVXctVENzODUgUVrCFh/KO4gPoQ15wmJRG7FQI2ikfwzGft6bUyKsH5IUnmTe
 41eOJ9eOxBL4ve94Fr91LMfAEUjmv2oJy416OOVsvNdjLCNuSbMtu2TB+SUGhoQwgTvC84kEdM6
 nXrf4PFM4XJNuAZW3KU6JZ5HXNE6KTDmWH1VhRTM6rGcpBn/VXOvEKUuxQJix+eiXh4S+a3k80F
 m1EQZwkUAvN00r1L/WhVrNi2xZAHKy8H63oi9tdiJACBY+pt7eG61z7Si0I/BnbbtYlhu3axhXe
 Ftx0mQ2gUvYvjbMkWhULTOeisF3fIbkTgnOgavwAGHJCBKCjnk59YsqWk795ke1hgUNXLeUQAge
 ma3v7zPO/rl+or4J6LaoUtal4AaIHsuehJ5Eva20h+XO9NdVYq41dHTdOSAlowlr7xS7KNvqPf1
 cG/r+GmFya5X3YYVLwQ==
X-Authority-Analysis: v=2.4 cv=BNWDalQG c=1 sm=1 tr=0 ts=6a550d65 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=stktXEJXvQgT6foQVzgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: V76HTGBie2KXSAZ1O36FuTfA-8S5lut5
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDE2OCBTYWx0ZWRfX3mB0bGluLk4P
 6QJqgkXk2vwhku8cNhrlSVb9lItZBZmgEPV/QFaIDk/96KLtTJw5mUQHRSaJypcZ1qVcZFURVGr
 Lm8IbmW7TJxbIYRVAPoeq5fy/jfPVfU=
X-Proofpoint-GUID: V76HTGBie2KXSAZ1O36FuTfA-8S5lut5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_04,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130168
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325691-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mukesh.ojha@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B17474D6DE

The reserved region wlan_ce_mem is device memory used by the WCN6750
firmware. Deleting it in qcm6490-idp.dts and qcs6490-rb3gen2.dts is
erroneous — the region must remain present regardless of whether the
underlying OS uses it — so drop the /delete-node/ &wlan_ce_mem; from
both board files.

Also drop the per-board memory-region override from &wifi. Both
wlan_fw_mem and wlan_ce_mem are already assigned to the wifi node in
kodiak.dtsi, so the override is redundant.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts     | 2 --
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
index bdc02260f902..6ab1bbdc0a62 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
@@ -25,7 +25,6 @@
 /delete-node/ &adsp_mem;
 /delete-node/ &cdsp_mem;
 /delete-node/ &video_mem;
-/delete-node/ &wlan_ce_mem;
 /delete-node/ &wpss_mem;
 /delete-node/ &xbl_mem;
 
@@ -1148,7 +1147,6 @@ &usb_1_qmpphy {
 };
 
 &wifi {
-	memory-region = <&wlan_fw_mem>;
 	qcom,calibration-variant = "Qualcomm_qcm6490idp";
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 9c24802e476e..c3eaa196a473 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -26,7 +26,6 @@
 /delete-node/ &adsp_mem;
 /delete-node/ &cdsp_mem;
 /delete-node/ &video_mem;
-/delete-node/ &wlan_ce_mem;
 /delete-node/ &wpss_mem;
 /delete-node/ &xbl_mem;
 
@@ -1464,7 +1463,6 @@ &venus {
 };
 
 &wifi {
-	memory-region = <&wlan_fw_mem>;
 	qcom,calibration-variant = "Qualcomm_rb3gen2";
 
 	status = "okay";
-- 
2.53.0


