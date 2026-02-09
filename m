Return-Path: <devicetree+bounces-264029-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKDIJIjuiWn4EQAAu9opvQ
	(envelope-from <devicetree+bounces-264029-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:26:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3441103DC
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:26:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7ED823039EEC
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7626C37BE9A;
	Mon,  9 Feb 2026 14:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W6ftyN/v";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GMNo+Ls8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4498A37BE91
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770647100; cv=none; b=N7v0dKuStGQT2sajWEpBAy9/ReBI/PDbT446LY/yVJaiIot6rv/6ul/EapLqjOO0aDVB02n1LikU20QZ0RJ6s9Sz3j1KoHTAx96FgB/iJstLOSSwMGq43R9TCoJ4+yqcCTywBjYhGqlKJcNJ6IZONV8xwGiTDiSHVYjZuqs03YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770647100; c=relaxed/simple;
	bh=1b8CcQFTYWJ7MbaqtlEt0Tri+uyqg3WLJ/qexdn1e10=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FRXdK6NTqOKh4XiBFPbBmkShLSQTd4Yxckk/TsKr5pCIluHDw5OAEk56XrML00toK4OF+2btgpUP+NVCEA9tw+rdRTkA0m9X0ltP9znsrWgtjTOKedI03rQGFVNT2Lr+UzVeSxXPtg8fW+YL0462YsTjC8RGfENMyGKz4NTr5Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W6ftyN/v; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GMNo+Ls8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619ANXb72381306
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 14:24:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SOLPRuJeYBv
	6pjr7JqohPTaObN9oUAkHhm7CCKiVeAM=; b=W6ftyN/vcfx3inX9GU71dNmupEq
	fseUMSUX4DK7zDCweYHDxYpNKnnOmxN/PXRsX6efwR/PiYmqH6eq+1eVHAFsN55B
	QJq/i3jmgWQ7uWNzmSI9sc5zBHFipH+LAw/E65JNt3SstbRheUYbAq/lrQtLzckR
	otQgNeZvP/oAXG5QmTlCt5NGciEnloDrzNKqreBFK3TxQ2XSunot0qY/M5qRJ0BE
	Rg9IRWwBj8c69PuemWRH5C+MSYZpdFWaAMlaycBQSaPV6JI9Qnl7oC0tyWye/8SM
	uhSouvOhByYV7xbgUK0qEo2uW2KKM53fqzuOD9RgrdUINtFROHb4UMr0rkw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c78gdsxyp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 14:24:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6ad709d8fso1069476585a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770647099; x=1771251899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SOLPRuJeYBv6pjr7JqohPTaObN9oUAkHhm7CCKiVeAM=;
        b=GMNo+Ls8oeYjvrj1omFcvT7fMgacoLod8g1H11XmQhZ/xlElPA0Nqkayh3HP42fdnH
         6KLm4RsZbe/Wt5IZ6NKu8aOWmKftarMw5dcKTNdczO5i/B+HUFZeYmMNw/tzs7OrcDnd
         wnWoUhogUxyYi+C0MC6BhbuDbcTzIOws76JW4Wnit1RMZhWX9Sv3nCdR7bzto2V77cUJ
         xhfG3SfWyGVIoW8U9tGg2sA1DFkLKiHqaO5kc6NtZZV7NqGWRyEDvXiu0n7f8PjM0S1r
         U0G5mFgyJq/FOQIDhU7CLrIuA1Mwq7u5A6aTBBV9BBVvAGVoEAvnOvMYyG1Q0dixot0W
         Mk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770647099; x=1771251899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SOLPRuJeYBv6pjr7JqohPTaObN9oUAkHhm7CCKiVeAM=;
        b=qMqbnT+nikko/Y5UKGGv6BxA7PEXlCmqlQi4n10+6OAvrQ2fdJNq+GjZ4SiuNMxUl2
         p6vsFhcPypejVzIQ0O2HNxZ5IFcylKB6c82dJWOZO5R3hd8OxQS1Iox3gaAc1WoK7cNZ
         kDREsqfzsclv4kJTRDE7i9TtG5x0UJ9/weODRsNhw//eyv5Euw4Me9Z5q8W20kKRkq22
         4ryun9s/Y4ZmFtzdPvcRL5uEP1bKA5IzmgMr1I0vnsC6xxA75EDtnpwyr7nX1QCjriMP
         ixPqIYKU3a2h/s1XsGEeHv9oLxmQhBWpc1A0whil5Kw77CGsfKLAlpJtyq4W9y423Yyi
         AOxQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9C0DkQvjL3t1XmGamdlh/+kIZCr/41LAsIPUBwZRSjUtleRz9VFm87pAl/Ep4k/ENdwx0AOT2enBy@vger.kernel.org
X-Gm-Message-State: AOJu0YyhylH2TQqQVBlNbHBtvkcfoe1EoVA0cwOg+1oDGqHms8mr3BoK
	7sF0MFgz55pZ72eS6ZDaz2gSpghN34nETp9sKxdvQDcXK08wsSKe75wTEInwTr776ZatS3p9+XW
	LCtrBZth9WyrrLSc2wnZZL3nYHN3F6LkCeGuA6jAGlUqKRHv68Jlb0x4Tk874eRWc
X-Gm-Gg: AZuq6aIJwZv/1UX+QT+VAzJUmY4KFbESbP1dTevCcVCitmezsrIOkmFDUDc++jiRtyv
	TjlGh63fFXlTkMsxE3V6GIHso1mLoeeBRiigD7BjVhRustfIkwqBQjIQn9I9sVk626ftCMKTHmK
	AnBR9+qJHwRv0RKGwVZLrqgF8mu0dQ9j0bKaKrDOUjE9GMYLUrK3UtzpZXe+GJZ1lqph1p4qtH6
	WmridqzzH7lwC2xKBThE6HwrFpKlg4xFRxPaI0S+Fr9eRVPGq2OyHIpDbL142Z3MqXSH/91vocF
	04PhHRJlTaCu5xovyFv+p0R4skhIFa31kN0sFP7cEXcDJG7FYiF0U7YOqqm/Z73bCRD+rzNPzi9
	OnadpQsp9wS4Q9TDXc06yUJ1Ujm9ZTsbhInZhHQg08MY=
X-Received: by 2002:a05:620a:2846:b0:8c7:a39a:d51 with SMTP id af79cd13be357-8ca40b91540mr2034934885a.13.1770647098718;
        Mon, 09 Feb 2026 06:24:58 -0800 (PST)
X-Received: by 2002:a05:620a:2846:b0:8c7:a39a:d51 with SMTP id af79cd13be357-8ca40b91540mr2034930385a.13.1770647098283;
        Mon, 09 Feb 2026 06:24:58 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4362972fc1bsm28296634f8f.28.2026.02.09.06.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 06:24:57 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 4/4] arm64: defconfig: Enable Agatti audio drivers
Date: Mon,  9 Feb 2026 14:24:28 +0000
Message-ID: <20260209142428.214428-5-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExOSBTYWx0ZWRfX54ycTIDdmR2g
 Okcw1RquUrOHyUmYjozGoQrdddYKMs1Vkz2jHhJh4OG1AL8laqoM44e8MyQ+3kWQ5Tts67FGbv2
 smi0c9q2/pMLZViyCl15LtUYKO6ma47G1zJJXZnX1QH2EM8SA/QmFhlqz6a14dJB5p8lxihRN0l
 PPfZc8VPGXIuDHFkT18fmLSnYKdCiiQrfQ9cPP8QhfLuHrbbXS0omEijvgJ/roPqFKdi9a85xuA
 ioy2UkGP0Vt4QJKLHw1xIYL2jtpAkMIHi5XB+BkiOJgJjTuUwqCV+SRqgjEwT0RCKNBwIqED1Z3
 KfdO5jYVNQJN/Uhc3IDl4kwxc6vVf+kv6s+lAryU0wG/TALxF6V7WJo3Qs/YaM6i24T1GrvRSHh
 Ei3Z/a7/DSSTmBBMugEpqw3a/UrI3d5THexwBp6WSQkWlRDOOK5onqpwK+RQIZgHs158w6R4zZH
 T9PW4hE1nfJq/62tZPQ==
X-Authority-Analysis: v=2.4 cv=Fv0IPmrq c=1 sm=1 tr=0 ts=6989ee3b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=rO3wVDe-YCVyVCuK1RsA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: sRp856FJhDL9JxZ1xgqPUZmo5Zfq491_
X-Proofpoint-GUID: sRp856FJhDL9JxZ1xgqPUZmo5Zfq491_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090119
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264029-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ED3441103DC
X-Rspamd-Action: no action

Enable reset controller and pm4125 audio codec driver that are required
to enable audio support on Qualcomm Agatti SoC based platforms.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b67d5b1fc45b..6db35c1605a0 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1146,6 +1146,7 @@ CONFIG_SND_SOC_ES8328_I2C=m
 CONFIG_SND_SOC_GTM601=m
 CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
 CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
+CONFIG_SND_SOC_PM4125_SDW=m
 CONFIG_SND_SOC_PCM3168A_I2C=m
 CONFIG_SND_SOC_RK3308=m
 CONFIG_SND_SOC_RK817=m
@@ -1550,6 +1551,7 @@ CONFIG_SM_GPUCC_8350=m
 CONFIG_SM_GPUCC_8450=m
 CONFIG_SM_GPUCC_8550=m
 CONFIG_SM_GPUCC_8650=m
+CONFIG_SM_LPASSCC_6115=m
 CONFIG_SM_TCSRCC_8550=y
 CONFIG_SM_TCSRCC_8650=y
 CONFIG_SM_TCSRCC_8750=m
-- 
2.47.3


