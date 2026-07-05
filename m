Return-Path: <devicetree+bounces-320729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cpH8HWC0SmrFGQEAu9opvQ
	(envelope-from <devicetree+bounces-320729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 21:45:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D553670B177
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 21:45:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Gu2AUpMP;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=T8Pl1BcH;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320729-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320729-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F80D3043D2D
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 19:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1783A5E89;
	Sun,  5 Jul 2026 19:41:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BD03A4F31
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 19:41:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783280469; cv=none; b=SS3BOIJgbMSe/EFeT7eDABkcOYbyY51n/WoHMzQSkN2paoBZDCbFg+A3YUDFA1LJLtmrPTqsPZXL875nwM2/N49HsWI6zwWCc45mx09cn5700o6o3DlTdpY3o0/AySEBqXSgwf7ZYcT/I+IBvcFDBmhEHk+TO88tkAdj8iP6Zsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783280469; c=relaxed/simple;
	bh=aDbMtkb7vLXS6gEaXl0MiYPwbTWQdGwMD5R/KH8kYUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CMkxierkbGehOmPF+7EYa5AjfPFUvNfb2Q2xmTcmURk8n/TCVuFjtgMV+K5FXlP2brbHXM203fgZRoaIMAcngWglDcPNmGZUC8625H04jCK5m/1L6Qbmy/whA+rOEE3xOB1zZhRTukVadDXUsTssiiqV1oCtjHn0DJuq1iKFE4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gu2AUpMP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T8Pl1BcH; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 665HxL7k2221832
	for <devicetree@vger.kernel.org>; Sun, 5 Jul 2026 19:41:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YE6y7UueLsf
	6Wosu2MYgZO8ntkoAFUpog26frL0IVlI=; b=Gu2AUpMPsdWihBeIKFaHZTQdE6w
	3hlEj5FaB6LO25HrrwgnnnhbotR4nd9Z4wSGwf4UfkCGQV/6ByGXzYxc9t77t1UR
	KxydvfiZRzO7LVQt12P9iUwRudBr1BpCa8xRlWA11APsaC65cFh9VkqkdXLfhVEu
	RS7FUpWGXF4DoGxxuONB7a1iHQSW5kUybFXNTGlhVzncQd/ITVBR3Qzh2FEbhv44
	Ssss7TOOyxh8WnUK7ITPBb/1fcoeLek05gTbaYXanK/TXcrfcsX30aor/3gRRzD7
	xH/7V5eC+aAPsHQJS4BlpVVOM2yO5umWhzidCMbdBGwQ6NruQAfsY+kAKHw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6uf8358v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 05 Jul 2026 19:41:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2c9e9cb6a44so17510045ad.2
        for <devicetree@vger.kernel.org>; Sun, 05 Jul 2026 12:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783280465; x=1783885265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YE6y7UueLsf6Wosu2MYgZO8ntkoAFUpog26frL0IVlI=;
        b=T8Pl1BcHV82RNdBhjv/YnnFJMx2PfKDW5ali50O2AuxJ+wFsHHtCe9sQA7Jl4J8V5P
         7Sfx5/Z3iYr87U3fToEpecY9nTGwkS5LuNuPJE7XZnPMR+QFDzqzu/S+2toH3N3ACjOC
         ov/rVrjS9zsB+0+wR1t4Fbu/gqGr6U+MFivmHAi/A6j/xaLPzVm4uQyDjXILKDG5ErxQ
         wCghV6hgJMk1/bOaG+Kbhg96dIIGv8C+5JlWtE+gc5YhG3rek5F5EtpOrDYYpU/XURNz
         veuIPckjfa1XWXIhyV6MWcEzzJ7CCOkwnn0ZQJF++6PDjZKd0MVVabY6iqb5kVozPzxB
         XwkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783280465; x=1783885265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YE6y7UueLsf6Wosu2MYgZO8ntkoAFUpog26frL0IVlI=;
        b=dhdLuBSlqv3L9tDhXoMIepDbTfd1KZQjkh51Hi/9bUQsGzzanKCgv2Pcqx2aGQ/H5J
         d4xq4LjS0gL1FH10vb07vqSpV3Ak1Yp2vAWNzawFIE4Fn5mnuu3nE0RRJxpeXdkPTjlo
         fMsZXDQi1mUzQG/gR40JjA7mpUMNxwegOxOwZpFgifaUCjAnIZggEj/gODMBcy6Mm+bA
         xpdSMmsVMEgd6XMxRSPI9wgvyixcEZz0oV6zYOFqO8FRBUjVLA3Iyo/VnhnuKPBDm79E
         5uFQ+E4U8BzdDoQJIRLoMCsbIyuVS1MjIRYdBX7nFRyumqQyuJeFRk6jTAkpg5SHAmVN
         l9mw==
X-Gm-Message-State: AOJu0YwnU8DnR88Pz8zydeovVnlI30M7aX+TpXdDesknbRFpR2jxFUV2
	D67Fp6q435oYgMG5F7z8LD03E7NuE64zpkMq64FZpap99/i0XME2auZIk2m06XST8uTNnb20mLc
	Wnep1Rmz2ary0NWq5PxDfF4SQM392Wn+i9CyRwmZwKbeQ9rM34lHIWtv1NCnDZUWT1kqQQ6tS
X-Gm-Gg: AfdE7ckIxyan6ldUcyVlKAV7+bLPKSGPAPn+1PJwYBHeow26j/6b/DlYIjPx7SkkUDs
	r79GeLuREBWOS7HjvVGT5fBKvMTwt5Wxv89+z1li4gsfylAKxMabO5GlHxIAD3AFkTR2G7xhzqh
	fnckik4BHIr3yLdbCw5PjErmmYAFN5nJdOW5hOEtO+IagF+NkFAZzUJ8x44kiOrdKvfv1ohkVdK
	Fgf/CP7Z0aL7G3oi824SHHLJ8wiJ1QjmjGjo4nAepDYnwDbvbACs1q35E1lUyFna36xrJHgbZkB
	xCHnA4DiTvz7FasEGq8RexyqjzL+lgKoMF+ITuVQUArF+AJhU7LjNDuHYaUKdqGMTlGeBcbBtTF
	4tR9CL7YePlABMeBhCCIQzp2BH8FXqntl0ihmhg==
X-Received: by 2002:a17:902:f60a:b0:2c7:f12d:5d37 with SMTP id d9443c01a7336-2cbb9e264d9mr68673635ad.17.1783280465197;
        Sun, 05 Jul 2026 12:41:05 -0700 (PDT)
X-Received: by 2002:a17:902:f60a:b0:2c7:f12d:5d37 with SMTP id d9443c01a7336-2cbb9e264d9mr68673415ad.17.1783280464710;
        Sun, 05 Jul 2026 12:41:04 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b3c7fa566sm40573417c88.4.2026.07.05.12.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 12:41:04 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org,
        linux-staging@lists.linux.dev, linux-sunxi@lists.linux.dev,
        linux-tegra@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        openbmc@lists.ozlabs.org, sound-open-firmware@alsa-project.org
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH 38/42] ASoC: SOF: mediatek: mt8186: Use devm_of_reserved_mem_device_init()
Date: Mon,  6 Jul 2026 01:10:14 +0530
Message-ID: <20260705194019.2565498-6-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260703193855.110619-1-mukesh.ojha@oss.qualcomm.com>
References: <20260703193855.110619-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 1acoQtCSV-FoMyulkKokEVBqP94d3pkH
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA1MDIxMiBTYWx0ZWRfXx41NHgNT/d0G
 xgchFyRndzCFa9NwIp+EruIHjY5178pmqS0GrJ82JEJc23mdU7SMwcFb7TLu6qySiN+hj1pxGps
 zkBGe5bfrnDFfCSvi4eR2rm1+/5YlfE=
X-Authority-Analysis: v=2.4 cv=Z4Tc2nRA c=1 sm=1 tr=0 ts=6a4ab352 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=YxFYfaw6DuWYmsw8bRUA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 1acoQtCSV-FoMyulkKokEVBqP94d3pkH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA1MDIxMiBTYWx0ZWRfXx+71GMxVVrcn
 rbhhSkHw/ckoA1tm7Wcm/mj6JjcQFJCXZhOU0V1mC967FkHzZ2sthGf9nokHsgzNQo7+DG8YEVP
 QGKVRxfMYRcf6WZjryey//a9ZdWS2v6zxowPOCPOhdF/EAAqulAZ0BOXRx89MzROAIAz7Q4hxvp
 VCdo360jkJMvs4HyBHPKo0WBDSxFZqOV1AUuaj1A60JNElWSwceXdjKcrYAwFaz3IAV8st/5iIH
 s/qW7uLOybyaGZyVkROrk9m8GEEc1nPOEOBbhNNZTkglaIydMaAIuhHM34Y8RelpSGN/2L5KEDH
 UGUZ5A3iU6EW+yU0hX0WaC7J9FN9WeGmB7UbQY+tXK1cO0x5nNl0lWVV1hIayHhpcAh29XbQIEe
 iq3H6r3uD8JDTKEwZj1Ak4ufG7GVhWnCWFIhiIHcV1VsIwwzBQ4F/mItQFXE7lgeZBGDAnD6Y/y
 ceQV4YK3pmatnn7HEJw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-05_01,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607050212
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-320729-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-mmc@vger.kernel.org,m:linux-remoteproc@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-staging@lists.linux.dev,m:linux-sunxi@lists.linux.dev,m:linux-tegra@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:openbmc@lists.ozlabs.org,m:sound-open-firmware@alsa-project.org,m:konradybcio@kernel.org,m:mukesh.ojha@oss.qualcomm.com,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D553670B177

Use the devres-managed devm_of_reserved_mem_device_init() to ensure
the reserved memory region is released on device removal, fixing a
missing cleanup in the original code.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 sound/soc/sof/mediatek/mt8186/mt8186.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/sof/mediatek/mt8186/mt8186.c b/sound/soc/sof/mediatek/mt8186/mt8186.c
index c1bea967737d..a5ccee87e684 100644
--- a/sound/soc/sof/mediatek/mt8186/mt8186.c
+++ b/sound/soc/sof/mediatek/mt8186/mt8186.c
@@ -49,7 +49,7 @@ static int platform_parse_resource(struct platform_device *pdev, void *data)
 	struct mtk_adsp_chip_info *adsp = data;
 	int ret;
 
-	ret = of_reserved_mem_device_init(dev);
+	ret = devm_of_reserved_mem_device_init(dev);
 	if (ret) {
 		dev_err(dev, "of_reserved_mem_device_init failed\n");
 		return ret;
-- 
2.53.0


