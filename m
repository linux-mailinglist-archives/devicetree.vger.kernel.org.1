Return-Path: <devicetree+bounces-265632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKlLFcIRkmm/qAEAu9opvQ
	(envelope-from <devicetree+bounces-265632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:34:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD6E13F6B0
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F081F30247FA
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 18:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740912EB5BA;
	Sun, 15 Feb 2026 18:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SmV5r4a7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cAAAVPMM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BA5405F7
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771180434; cv=none; b=R+IXK9O0+mImd2IklXd6/tR6ZhgXSt2uY7Ykeo1spxeMcGUNGd29pRn7fHPuksZFhtA75NagmNJ95iQ7jU5EX6nLJMbXxPvDOSi1aka8HbKf4FcSzaNF1DH5nwpZw6GT4N6WvNzgYPWIDvtWauWazZgK+zyymgYHYZ3Sk9BvBWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771180434; c=relaxed/simple;
	bh=LXieuMSXLnhRyDTdT0QOEouXa5uJ9ARGKjrc72Z/Ez4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FggLh4zBMr4FzQBDihlN7Q9TVINu5Vl9Pevs9GA1n0AoxJdUqOLOiNmFP5cNRqJZuknlKuMmNj/Sl8AEq29v/B9W2RO9695XbB9quoxQGV27fyaJWUloSx0otZQ+o/Xzt7UYpQDubZ47N9hTTlxk2RID9xDFiiHFgcmEayO1vS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SmV5r4a7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cAAAVPMM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61FBu7a52315754
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 18:33:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ffza9yrxptqGzJXecgO7+6tiuykjBr73y+A81e98J+U=; b=SmV5r4a70ADP0Wvh
	9CHiRnpxAoEfs10AMt1MM+jXMJk618zUwF6wUxaz1ZAUNlUEpH+jwSeKIhi2pSMA
	Qs06l+LXa48LCLu8QHW9cdfOygGiBAvyRH0qjDRN0RHQBqvGRxHB/lbhYqGJjg/z
	Uzq8ATohfMWOEStGljLeNuw16atvGnQ4e+V/+gvWr1CXLiC5fzRv7mlvM1QJIlfJ
	CYSS/KnNrGyC/m1mXBMQ3HmBu0/fRRx/l48u/E6FeIItXWuY6vY3OVMd1n3AHdIB
	3faetCyVotfopH9XWu51QpXsMihADyO3sX/wQapL5vF8q8d/lnmLAtLa5pTpqSFt
	UzRaNQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cag24asn2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 18:33:52 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c6de2c762aaso6049153a12.3
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 10:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771180431; x=1771785231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ffza9yrxptqGzJXecgO7+6tiuykjBr73y+A81e98J+U=;
        b=cAAAVPMMAPR5iTKRjLO1gGhqouKGoJgNk7s8QVmf6YbAPdTkjIpdlTflFgAwhTe6Sj
         y5Zgou5F6mu9gNwxzALtLjyunivXeEI1cd8es+ccQirhUTvtNMF+HJjAfNCeZ1x/CF0m
         5gSrQzFQ+HR82uBDe/3JKarYaLO/ldWxHydhLzArZeY+2GoR7xuJ69lxSxQQDaOqpV1C
         aRUUeL6NCERhzg3/zvxyi1txz3vcJhWrEBg5DpPydpshQ/thb8xPHyrbzViMAyUcBxYj
         AEG7S2JgqjUCwnzoMd3lRNjfeX9xah1n3TmGrVfC9GAlBWgBh1M8lzulAaOnoRSm/+sw
         sVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771180431; x=1771785231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ffza9yrxptqGzJXecgO7+6tiuykjBr73y+A81e98J+U=;
        b=BvsjbE0rDgoR6vOju9gx8U3a5m6ALa8uhhJ7joh3YuXDb6edXMsxmfLvIxPA0L5LKC
         aHmW0WwC8ivyzyBx2gjGBPAYUATGrHzY1bfKOUKEaNtExBD53Nf7u5eMn8G5thOgGwsb
         WFgGM7Y+MVXV4tyG0qIb9Wy5bCGxj7RCKLUZ/6by4aYWytnIZ4q72Lu9eYPjqUQsTSAO
         FGDprsbtLcLSdcJhTGz8//ecrglyaVTnnt0kUhHm36JSPigiS0kHMGQoQYxk/BG+f4ZR
         UgCHGyBQaIGrIF7uxONnHEdeQ4lP2HKXN7YEmvVI0RQBO5FHhvcRfo2AUwEhJxQZGYw0
         6Naw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ1uIgUwRyDgEzIV2+tmt4NP7eP0w0Mq0ixGNE34EcFfBVMMb84ur+RgQQT7zjkTqq0DugRSyiDD8Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwkqkHN8qLvStYbHtZf6yvDvbHqScKKvKgUyxmRjRR815ZT3eC2
	a7y7jlxuGfDQVcUsIQiOjkdvL/SLernS/1H1YHTU11cJGZrJPeHIXWN0//sfdjxkdyqNgdzRPnO
	2RWxGXinR76/loYTq6XxJAza6gulX4ObkKDggW4iBzog5X870QK6REwZvCVofO6Gu
X-Gm-Gg: AZuq6aKsyg27MAjJvGPXf4OhGQdgThgHDwOGG6nkkfGOSYegZfqm2QADLf150TJpIOx
	+0B+D3kHlvImSFEyPjaJJOX6TGrm6Utj+GmeXXiiIOkaGfXamhF8tcCBC9PlXq9tzDFZ5BudfH2
	goeQIiKk5is5PcZApZMNjx7bz94WhcZl4d5Hs9l3WIglwQq2/0THEyFpdOlnVJVmOuwkUrQnzzT
	sb1R5tSQAM4Q2U1/5DOmK2NP9PPoz9onLxo8jkBbqH0cHNTF+4Np3Aa2x1erz9egYotIQSW7ICw
	9ORBuKdcaO6msR8fdPQGcejZFd/WMcduUEQpNUX0l8uGOlzso3AnaeZCAqDN3QkoU0ZDb+S357r
	FoUDzR1dGKIr1PpCBw7P8S1yGZk66YFmWyj/jq5M5YViAFGXx1lVwL+Q=
X-Received: by 2002:a05:6a00:950a:b0:81b:1a87:9eb9 with SMTP id d2e1a72fcca58-824d9517154mr4783084b3a.25.1771180431286;
        Sun, 15 Feb 2026 10:33:51 -0800 (PST)
X-Received: by 2002:a05:6a00:950a:b0:81b:1a87:9eb9 with SMTP id d2e1a72fcca58-824d9517154mr4783066b3a.25.1771180430811;
        Sun, 15 Feb 2026 10:33:50 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a2afeesm9560875b3a.2.2026.02.15.10.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 10:33:50 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [RFC PATCH 2/2] arm64: dts: qcom: lemans-evk: Enable wakeup for primary USB controller
Date: Mon, 16 Feb 2026 00:03:25 +0530
Message-Id: <20260215183325.3836178-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260215183325.3836178-1-swati.agarwal@oss.qualcomm.com>
References: <20260215183325.3836178-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Kp7yRppD9eWb-5dZvBlvYwT3bLNzgEW5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE1MDE1NSBTYWx0ZWRfX4NONM7kR4dyC
 pKn+gZ1UAeqJjdm017GCaLFVYykdnhlzMntFFgok89rhUBhDv6Biuv18nomoHhUhH3bzC++GO7C
 Fu8fBSdEIQ9auEJjXccb5ADUaaAhiGRCNBudhGl7CE8+UonVMwyGYsjL/wzjzGGf8+bZpZ+zzxr
 ThjBR7TvLACnle7xaOzwnXwfXIeHv5En004CQzCaFv2VGmzcT9WR64WB114I9TqJKDuzavZywGO
 vU3tuD35+HvxiDiE6AdW22W+5XF0t6ftcS0ifymraWLL0dK3Cl+ShNCPO71DNWwYrhvrcPFQadB
 KKpAYTOgetNTz3e2NtpAhd1L0DYA2Nv0sf4bH7kG9RI+NTG0CqGON1ch4nqCvJRQHLFo6yMp8Q1
 gkf1hPAw6XKvp3IXwGtMPARjUGlBErxlk8ASJwHLGf2Un02RCUiYyIuvQPxLPiKbnUdst3cj/vf
 79FdK4nnho5nP8esoAA==
X-Proofpoint-ORIG-GUID: Kp7yRppD9eWb-5dZvBlvYwT3bLNzgEW5
X-Authority-Analysis: v=2.4 cv=aetsXBot c=1 sm=1 tr=0 ts=69921190 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=qmfhev-2QWiT4-t3grkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-15_06,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602150155
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265632-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.67:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AFD6E13F6B0
X-Rspamd-Action: no action

Add the "wakeup-source" property to the primary port controller node so its
interrupt can wake the system from low‑power states on lemans EVK
platform.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 90fce947ca7e..50620b557404 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -515,6 +515,8 @@ usb-typec@67 {
 		pinctrl-0 = <&usb_id>, <&usb0_intr_state>;
 		pinctrl-names = "default";
 
+		wakeup-source;
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.34.1


