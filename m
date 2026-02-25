Return-Path: <devicetree+bounces-268166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFmRFJ6knmlPWgQAu9opvQ
	(envelope-from <devicetree+bounces-268166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:28:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AF61936D1
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F222431701AA
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D549301718;
	Wed, 25 Feb 2026 07:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VRMgnOWw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fo3Hf+P2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A1C3101D2
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004042; cv=none; b=oY8IcP3Iy9qEJh7Fuog+PlEbnNSuwyhzI4rYf8XS7D/265Nz5LCYQsgka5Yh2P31c2aE/NpyftQs0Kohz6JqMjOWJ46dC0qC7Hp/XQe/KCN1zNNmEeZbHodhq7+P2/ye8qVOUHU3i3qcHfeNLKpL2fdxQbrvhOUzUbzENTdWD8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004042; c=relaxed/simple;
	bh=RX2xvDlfbY2jB4gMuwAJiTjGu8FyoAFa5v+9xDn+jO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e8jJ07olytTKLurudEaZOsw5iiza77G5JpW1mMB/pLrM1Km6fDK8sZjBP2pAlTT3dVZOyXb/4hOLzzkXKwvN9KZEZgyjGF/2SGbCFzA7YwrGHoPAfiJQJXl94ri5Dl5il8vwyLw+4OkOxlzxtxEa1HpytdtjM5r7Mbz7KAqp78U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VRMgnOWw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fo3Hf+P2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P2GAMI2334651
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	38b2Y5v7C2CleGqNysqY7ea7ksqS4CP4xrO1wOPod/U=; b=VRMgnOWwo1j6ulH4
	Ip+oqJrDuIyLNAmX6j8Opjr1dZSob0ROtIaM7S0n1CFoK7ejsurNLQH0/eDOOmCd
	AO45FfXRVlUdXvWz2YTuZlO61Ihu/NruMBHhiH/I56rUnRN2mAESgVTyje515/tU
	98xkCRCOroCX96z6vYb76r2gV1S0fzEeSoWgI+QX6I7akmbOrr5X60R1brvSZw3t
	3Nhsh1raYlmfX6eJGZeLT0ILDGyOtXZlYy0ZhoytT3GJ7RPf6kN6eJZZ1lq/hyT3
	5fkhgcUuH5RRm/eDT7tqUeXZQIh4ubpnezJu3hDP/Op0QMz5hGuAajM1k6w1KO/r
	zkJY4w==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg37tape-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:38 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7d4cb985fa3so26694592a34.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772004037; x=1772608837; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=38b2Y5v7C2CleGqNysqY7ea7ksqS4CP4xrO1wOPod/U=;
        b=fo3Hf+P2l6PzGVY8Yek6Trf4CsJfW3F7nwHAYBxy70QNQh/dRf6X75paS+C2glgiFC
         I2ep59szLWgv6Uq8XtIu2QPZRlOn+k7ugxOy4PsyThoQyOlgg8U7l/PoV9hw/0b0Sq07
         hQ5aOty/6MzJ4jP28VEfbevB6XTC9qfvEs0s2cdvJbn0RnwKhZcLtmDf26nIDNT01b+h
         a1xNKb7WL2zKMy6ooa+k0SSmNQQ5t47k5We6vVqN1vMc4bg0h9KeJlGK3FB8+hWl4ICn
         vVy5p6GYCkcfMyEBoH6sxzFbQ8SlDyLAS8N3jXL3kw5X1Nfx4+6du8vmdDfVF6Sqtq8r
         NlqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004037; x=1772608837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=38b2Y5v7C2CleGqNysqY7ea7ksqS4CP4xrO1wOPod/U=;
        b=F7Z0kWg/18sUJkj5bSDX5kDYd8L2PE2J5X9ZuV7EE7g5YCzOYrC3VhyWpUas1ZWZm8
         s59fE7umKswTQFQYsjoSnw+8E/hRnW6Kdv7QaAFJwtQ2C7JBxWwAT+o4Tj1hv5tsHMpd
         v1cE8CzQIsq985BRgoOnxjgOm2lszRiMBxm68HO6/wsgeQEQT08lm//XKbhruutUXhAR
         q5H+OAaGY65Rs0dGwMfI78G5wBEx9VULaMjKNNf5J/lQspeMKs+22n4whS+UhS+gSmC6
         PkzA6exfOy3NGU2MB02tGKwjwucg5Cshb5LzBJ0Awd+BhJC/eUcRBKmNNqV1SzkT4AIQ
         GMLA==
X-Forwarded-Encrypted: i=1; AJvYcCXlQ2GYwMbkkIvoe6nuyv/wQKl6LXf5L3pMo6Cq7MRDCrSV+5wKDgG7OeYmwMkqML6pqQEwKKyKjhWJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzfDMd25nq5qWDkwRDlqIWAWCcLD5K/j01oq56MyxmNxJrR+Q8c
	4AI/oTP8j/7A6b6wa/g3W/aa1S3s2B3X2RxGgAGImp9IqNzY/A7G/zl+pWAHDsMn3qSK8L3Ui/a
	9eUbFExdpQeNy6K8mKjL8VmU/KTHCySrbhXI9mWzUdNRM1KJhRoeaj38LriycFExV
X-Gm-Gg: ATEYQzwY4Fv7g0bAMpgKl0qJ71hG7+ZDbheJ6qWmNyoNtivE9a297hJPUw9UgYBAR8i
	ka9jVScbhGJ0rGe15BHmjOukHN7P6G+6YMP14rk0HP67DXcJFZUT6sVv2WkJlFDyNgMWvqXFo3o
	BaMJRuqcQTw81Fnh2q7SE8C/WsiufWnPBUrH1uauFiGkBvi5WzsERr65XNOvcCQIHHIjbFX1wC9
	Tg8AV0jjuuN+YVaVddmU2BPvQh7jQtERMBQPUFxeimQ1IRzctpxaCyff1Oyrmq7kvS8/E3I5rJ3
	yQik1t1/ayZzLIclyz0j6vTctCPW6Hi3w+taiLq9yGRQljfWmSYknbdPJ+8Q5Zz5UuIinwv5Ep5
	Y6+5L1bc4ebv3yI+C1nKZMMp9xJpvDpJxqg4MQm66HutmeM6k29GPQ3h/f6tWA1bU9lfIHyvc
X-Received: by 2002:a05:6830:67c9:b0:7cf:da36:4cbb with SMTP id 46e09a7af769-7d52c1d65c6mr10004177a34.2.1772004037281;
        Tue, 24 Feb 2026 23:20:37 -0800 (PST)
X-Received: by 2002:a05:6830:67c9:b0:7cf:da36:4cbb with SMTP id 46e09a7af769-7d52c1d65c6mr10004160a34.2.1772004036914;
        Tue, 24 Feb 2026 23:20:36 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d038dcdsm11711730a34.16.2026.02.24.23.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:20:36 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 23:19:25 -0800
Subject: [PATCH v6 10/10] arm64: defconfig: Enable Kaanapali clock
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-knp-dts-misc-v6-10-79d20dab8a60@oss.qualcomm.com>
References: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
In-Reply-To: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772004019; l=1019;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=GwGDJFrSlIi28G0xKBu8W7R7zrPpokkDfUnwVZFXfnA=;
 b=7eKX0+jHRK5Acdl8fa6DZJpohKK8trw3F44eaaU7iKTJIGl73Zt4uDfNxEqUj0wLsW6P/iVKS
 y2dS/P6aoJiAAMczKJVA6AC7YnlfuvKw5jgJs2KKTfqX3UI1FvcNdHK
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=br1BxUai c=1 sm=1 tr=0 ts=699ea2c6 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=2LxjTKLKwRt7mIs9mlUA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA3MCBTYWx0ZWRfX+coPKhG8tgXM
 hc+T2T2wxpg88Pn14gFj19PqTP3cyfudRxHyBgGEsJit693Jax8w2qHbs4pL0Ijd9pU2NMiCgsY
 MpgZzaYAi6XCZPBpQ/G8gnN/Ed79YEk+X1zZxDruUgUzJUzJ7k0BEpQCRKVtuzgmmmlfVZ4WPwy
 ZXHY6V2KJSyyshj0N++svqfDQeFC4qE89/GmFRctL/NiKpGw6qZn8kO2D82AaHiknhAwcmlkVZz
 EWNTTNgko8kwNgHdARusNSvMgDfOuZopaG+2sRsdzsFqcKzzRvXPLMfp+3SYjjpUDL50X4/ttkc
 PMuTWDs17i8OjHN6KwAhULLIO7GvHJ6cMCP2j769cDSHs0zDNw9a/oioWe9txl3HgBehipYMFCL
 oaFPXU9ROw1XOmLO1y/Ol/4p6fVtDIpRG6Pn+kR7lQarH+wEw8G9xEWDmOvxLkQIAGlxbGKY/LF
 TgQIxn8zN9dSUfXj2GQ==
X-Proofpoint-ORIG-GUID: ShcN3C2eJUYpCYIg3cNoy3M_zRp-BhKS
X-Proofpoint-GUID: ShcN3C2eJUYpCYIg3cNoy3M_zRp-BhKS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268166-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A7AF61936D1
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Enable the Kaanapali display, video, camera and gpu clock controller
for their respective functionalities on the Qualcomm Kaanapali QRD and
MTP boards.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4ed70ab7ee85..d1d51c2ef082 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1458,8 +1458,12 @@ CONFIG_COMMON_CLK_QCOM=y
 CONFIG_CLK_GLYMUR_DISPCC=m
 CONFIG_CLK_GLYMUR_GCC=y
 CONFIG_CLK_GLYMUR_TCSRCC=m
+CONFIG_CLK_KAANAPALI_CAMCC=m
+CONFIG_CLK_KAANAPALI_DISPCC=m
 CONFIG_CLK_KAANAPALI_GCC=y
+CONFIG_CLK_KAANAPALI_GPUCC=m
 CONFIG_CLK_KAANAPALI_TCSRCC=m
+CONFIG_CLK_KAANAPALI_VIDEOCC=m
 CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y

-- 
2.25.1


