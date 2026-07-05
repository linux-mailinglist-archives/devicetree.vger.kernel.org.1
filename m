Return-Path: <devicetree+bounces-320733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4s88A+m0Smr4GQEAu9opvQ
	(envelope-from <devicetree+bounces-320733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 21:47:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 569F670B1C1
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 21:47:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=LEH8gBGq;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ZGUYJzWq;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320733-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320733-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 564F0302171F
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 19:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416303A872B;
	Sun,  5 Jul 2026 19:41:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610BB3A7F7C
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 19:41:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783280494; cv=none; b=hKyi2OrLKf0opacr3Pv3/idVz53B/yS/Ac16aGUJezcPfOuI2CWFqwtoEiP0fStp/cLyPzs8uHJujBrfHJRv+QrwgQ8IA/aEMz1rBWiC5XIBhNg9MOotrSYyrS0CFq0i2nNNvS+2jJC0+sgfXibnXzWuMK5uBBMzdDl4+kVWkFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783280494; c=relaxed/simple;
	bh=ih+WmqIWK722niQ5u1H1E9UksjJJYkGhr2LClEew4jI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=f6ZZU92k5qDXYDRSH41P1tzL+RUKvyNwg05jXoTkGqB7EPIpputNc7lv3FDwLHjXiFjKKNvrCDB2peGxbeY1MHMsPGd5IE6LYns1SP7w48oCqfzRrxGEmoUu1CSKYmBSWWDYPVdfO7BWdBYOS5+y7HiDd+6sO1bwa7DlqnNx0Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LEH8gBGq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZGUYJzWq; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 665HiKPD2201261
	for <devicetree@vger.kernel.org>; Sun, 5 Jul 2026 19:41:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	keNlL6A8+I5pnaNawbDLPC3Skjo9l1+hFMmFLmQIfDI=; b=LEH8gBGqre98aZ5S
	R+gXIdM13wWVBKCaHBPzQIy3YO16XtaM2Yeu1rWWcKE8Ahh7phGi5PdgSe6faHYh
	NZ6WuJayU3dm2BjN9bw+VBE+ZM79Gb5/VMy0wrJmVG9PAL4oi/vWr8CCwZvut6LG
	bgx8kYmZdMLIw+hO7G1imKVsWOK46Uaj/pGQFCjPL0CK5llMYjmxUaWFjupRdJAp
	DojiJvRtFxtp1fbC0Y51KdHDxd4iTgLcudGv/2y9joceF7NK21EqPuFhp9vBp/DG
	Mr1h6o1uwl/xqAgXXnlbwqyx/z4fTFXUP1+eeaAFH0RCQyOQiLqKrFrdvXcDdzoo
	l70Dvg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6txek77d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 05 Jul 2026 19:41:31 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c88d7a75507so3701888a12.1
        for <devicetree@vger.kernel.org>; Sun, 05 Jul 2026 12:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783280491; x=1783885291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=keNlL6A8+I5pnaNawbDLPC3Skjo9l1+hFMmFLmQIfDI=;
        b=ZGUYJzWqAxIXzMBhph0O6XZxQ2hb7H/KXvng0K9qR4w7d+q3Sv6K+L43GoWU+lC/eB
         zj6lXNOaefif9INP93rxsaXEdR0CjTrKZGapgon6K1xSO1x1etJ4wLJDdM7oKLYC6UTV
         NRA4nTW/+XQn8Szeb4LL6DdMhYo5n4f3YUhH1g0tSK55IgC0QZ2d/TW+BUga2bVWgSEA
         Qhegor/v/kr8DRMoTs6WRi6UxOrDObS923e3toV/e+RGNIb04oCCQKbCOU1ukU392DNe
         Z7aykGAkOON0r4zSU7b3Oha3Nd22etGk3JptUhC4oSp131Bfdcdkyb4mmUdDOJ2HTRDv
         Zu4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783280491; x=1783885291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=keNlL6A8+I5pnaNawbDLPC3Skjo9l1+hFMmFLmQIfDI=;
        b=D0mRs//P/rJkvyNCBDkPh/PmzcK+lNGvK8W44gir/OrzGrZcoYBPhjFFksfaDS6a+x
         wAS5MwpGd5WZiXu3eB/6SYMAURLVj2t+AhcKrd/ubf7Mk751Zhfhth7LBG7rstUVxcH1
         QN2UTqF3paaY2vPXfTqkiGFpNffTlIbzVazk6X3fDbe40TVNKYurKbIGV7oADl0i59uf
         6uLbXAkmq1qYvHst5AUKcHuKTAXXzcJ4raoUpMAcTQp8iSJYO8MpNXU7Zeqt9cOvU2/8
         1zrfLkxfrpQcqY6lalWGVtvn81DHnHFgT8uzcwONHa6uneuf1mnWEYuenyI54t6xtdRm
         aV9Q==
X-Gm-Message-State: AOJu0Yy4/1zV7C/E+77Y+vxC6QvkpwGktffzT53wsVAsRMXvVD6e9mQJ
	TsytJq4+d4g0u1MNEWWJYKCA+Pe1Dg/gZOL0UyohfTDqlktmklRG7fYhPiUMYyO8pENRnovK38C
	mrpYsJldm6C8lifAXx7oCAQgKl4Ac2VPj5u5gH+oqgT71QTQEonNASh4GCXyr3IySvglsPdRT
X-Gm-Gg: AfdE7clyAPD5CrEaS5QkgOer3lOWFKARptGNX/A+eciFSNMhQGVqpny+NRCNP9Gk6dD
	yjosAUpiBwMvkgHuxJdGOp7/jSDVgK8lQmbC348Uqt/pOC1NRmS6X/B1u7tVN1FI3yjpcxlkWXr
	wWLTaoLXvWuIsA6RRbjW5Lqb6Wpov1k+Fjgz8gomoxZ4neiUK9MT1DpSMfmQ5y2N0gGAxW8VVNY
	bLsxFhNo/F4udwLf/fNNRzZ+pb6dWcc4qRgUIm/hS7iJxlkyZryWpGdC/9oLTq8zJFa0m5Vgsza
	CmRXgvUT+N6A5p4Ac5yiY1ndv1HfNw8gq8G188rU1U9hFCuKgP9aFYAQettLgv8ausfktMQBWJV
	wncMTowazSLS9gkWc8fNhqZjH6A9st+q21E6lcg==
X-Received: by 2002:a05:6a21:4cc6:b0:3bf:a0e5:99a5 with SMTP id adf61e73a8af0-3c03e509089mr7554467637.47.1783280490839;
        Sun, 05 Jul 2026 12:41:30 -0700 (PDT)
X-Received: by 2002:a05:6a21:4cc6:b0:3bf:a0e5:99a5 with SMTP id adf61e73a8af0-3c03e509089mr7554455637.47.1783280490326;
        Sun, 05 Jul 2026 12:41:30 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b3c7fa566sm40573417c88.4.2026.07.05.12.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 12:41:30 -0700 (PDT)
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
Subject: [PATCH 42/42] ASoC: sprd: Use devm_of_reserved_mem_device_init()
Date: Mon,  6 Jul 2026 01:10:18 +0530
Message-ID: <20260705194019.2565498-10-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260703193855.110619-1-mukesh.ojha@oss.qualcomm.com>
References: <20260703193855.110619-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA1MDIxMiBTYWx0ZWRfX/SN8BafQwiPd
 xVLGQV2W/qS+qhLIUL09/9CHWs43S37Qb8jzCmUDa+qX5biSC9z4FcCaMVFrP6LrMUAT8CpgD+b
 PTVnf00T4DEFg5SUwBVN4A2qaM1+Zkc=
X-Proofpoint-GUID: 5C6HuhG6kRf1ci2snuf5kzNZaug9liGk
X-Proofpoint-ORIG-GUID: 5C6HuhG6kRf1ci2snuf5kzNZaug9liGk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA1MDIxMiBTYWx0ZWRfX+VGPNoHwNvq9
 fYz4CL+cM/PYWKC9gYvTY7ZIPGvyPS8zonC1e2M2illEMr/EayFWEN0JUWqrDUl9qMMlpNvzaFr
 P+ExUHFQetre1aXtGvJqCEJP575xVUoYCg/liqTCXZxokQGKT7E3U8u0HqafdrS/U6QdYFWiHyb
 xed1p91IqsVBZeeXHWDlOUarkSs/lb48hTkaZ/bTIzrJV3cs/QbUo7CI5OMp9Y3IDCXbK3VtexY
 I2ZlYHLeVYmxP9zzJ0fpMVLCn5f+3wuF7PX784xW3wwE8TprkdXqLD+RtV2A88PIJ2/4Q6gFGU3
 hSARMxNrK2bp43kd7Ppmi5c1VP6xcX2befIoThRqPfe/BoV385mokBxOC92FSGmPB39+4IOBixl
 ZgtWkf9sXJV5a7Qmlyn1x1sVDrmeZBe4EkeCZcqudDhjgBIe/9OJY+cuzKVIpdR2Yb7m8VnNN6J
 +jgYa4RNRLuIYJHUvhg==
X-Authority-Analysis: v=2.4 cv=HLLz0Itv c=1 sm=1 tr=0 ts=6a4ab36b cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=99hAX-h0IAisWkWT3OgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-05_01,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607050212
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320733-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-mmc@vger.kernel.org,m:linux-remoteproc@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-staging@lists.linux.dev,m:linux-sunxi@lists.linux.dev,m:linux-tegra@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:openbmc@lists.ozlabs.org,m:sound-open-firmware@alsa-project.org,m:konradybcio@kernel.org,m:mukesh.ojha@oss.qualcomm.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 569F670B1C1

Use the devres-managed devm_of_reserved_mem_device_init() to ensure
the reserved memory region is released on device removal, fixing a
missing cleanup — the driver has no remove function. Also drop the
now-unused local variable np.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 sound/soc/sprd/sprd-pcm-dma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/sprd/sprd-pcm-dma.c b/sound/soc/sprd/sprd-pcm-dma.c
index cbf5bf82d96e..220f55d475af 100644
--- a/sound/soc/sprd/sprd-pcm-dma.c
+++ b/sound/soc/sprd/sprd-pcm-dma.c
@@ -459,10 +459,9 @@ static const struct snd_soc_component_driver sprd_soc_component = {
 
 static int sprd_soc_platform_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
 	int ret;
 
-	ret = of_reserved_mem_device_init_by_idx(&pdev->dev, np, 0);
+	ret = devm_of_reserved_mem_device_init(&pdev->dev);
 	if (ret)
 		dev_warn(&pdev->dev,
 			 "no reserved DMA memory for audio platform device\n");
-- 
2.53.0


