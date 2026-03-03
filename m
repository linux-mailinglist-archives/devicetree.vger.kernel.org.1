Return-Path: <devicetree+bounces-270679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oENDJJ0gp2mYeQAAu9opvQ
	(envelope-from <devicetree+bounces-270679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:55:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0276F1F4D71
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:55:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D95631387BC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 17:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6615B48124E;
	Tue,  3 Mar 2026 17:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qrz601Ch";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hpzqnhmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2097A3CE48C
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 17:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772560394; cv=none; b=Md0Vd8So8oBmR1i4MoXhNBsw3wDPxeZdnXLWScxMOlcO2GpJoGauTTiglIhXk9+lI2Bf00iVe3K2eRrMjj+mUG6UktLeofj0KkK1DumyZC3rnmbVe+LEz2kWRYVHQJvcADLIiKkI2tWELKifgwgCy77VbbQm8VkFnCU4aGSDuIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772560394; c=relaxed/simple;
	bh=L4i9+NmLTenk9NvF5rvg09qhVWv026X/cuN748GZbcE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OPNvVM0n/5avSA9AnrQw64SYhEgzLAx2FPm3PWsNJAYVWhdM+Jdsml9hRT6rS/lm4vP7eQTWDZDux+rf9KU0IPFqNG4TWiLi2yQomnumIe/gcAttFAoc69yM1Kz5AYBF2STCYqMyPRTeFRS09fCsj/3lr1uP6rKMY6GN/A17FVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qrz601Ch; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hpzqnhmJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0eQI4030500
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 17:53:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3IcyxQoUt0WKuaFn85P6nhvrEAnaAOqSDP6o0bqTd7c=; b=Qrz601ChTeX83kwv
	htBd38SA9GJ2Sicjm2J0fwnT6HmYjd8rcfzuV2Q205pD//FXR6hDbMgBvmrAZcvX
	cvr1nNxnkoDNMBXxNMqhewaDJjxSfvDhxvSZd0CDFcUEXm5fQIfDo7r12XWX9wZP
	+uDHXRH4Hv602PJULROdgLsD/XqRj8l7GaqNtaTNqZId2QzTfPAMTer1pQBq8gYh
	XVbhAML6XxJrnsbQwhVpscawiaLGo/8L/uo0lkzvfEIOv9WuMcJNP5YoN5Js/5oR
	PVyXq58yn0cIPhJjHIuY+BTLKjLThV5cH+ysi4Qpa8UeDsI04bjelFFssYXV0A0j
	fyhe4w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu1xaf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 17:53:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae57228f64so21503255ad.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 09:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772560391; x=1773165191; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3IcyxQoUt0WKuaFn85P6nhvrEAnaAOqSDP6o0bqTd7c=;
        b=hpzqnhmJWPSlBL0+JC0DAos3f7ZSr71QFPJfYnWRNURrYpLllXE0wo++wPMO7CO3+f
         h63HQIq8DhzbixNjtScS+86u4VMsPNLpZOCr34ZMgQ2qAPHRvoBkSaARkYukNE7DJsYY
         FDVwe3UkfPKVthIqw0aK3vN6e2ct8X5gl7P/F1wsnhEqiPGE+bzLu77ue/kW2qFjLUos
         0jaIunXajhZtA559M7RZbPsZ9/7ZxStWVjjT0sPGCnxEPOlF0mG9YdepuE1lNST7VvAi
         pOPBYOSPjZi7KNNuBkMLNHDEs3JuzK2ORvqmFZ6VvnzrhjQ3YhqM/BPDIC1kRUyx+WiE
         yGcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772560391; x=1773165191;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3IcyxQoUt0WKuaFn85P6nhvrEAnaAOqSDP6o0bqTd7c=;
        b=uy7B3Ua6Fw/VUnXmGNfFljIiSc4LXj4cv6in3fJTLbSukY3z4D6vl7PhhEcc1RoJLE
         y4bOYfUdZr1xOIxDYTh9yhHaz46cSJRcn6EjPrLCYUF74u7Y+fydqV+W6XtH5E1iuRJ4
         Si3sJLn6I3ZLDUCAQaq3h8fqNZ1C5en+lbkfbIM71mhggF3Rc9d/r6JrJd6MsBv6nMB9
         frNA/DcyprQMUGkepzMuWnGgmHLAoJrAdJlt3ms/D9fGsrtlX+SD20Imj8c+/EeUXJEZ
         eeli9hrKtyhdOhIqLEqRx7DY9SFuCZKsqXDBMa9yhL4ylfvMed7xEgkL0ZEmBNWVfHTj
         s+vg==
X-Forwarded-Encrypted: i=1; AJvYcCWNNPyKl6xqqNOuLcw6BdzKcMgI2nVtRiiW0AwQz8QntrXeEXRpblC/slBQSgKVh/4boik0/dW/tBbN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1+9ykN4WPLP39Ov8HSesk/ESjQL/6DSz0k+U5a5/H7oKpoZvw
	tyuQMxdKv+UO7dRm7gGLiwZN6GEqEl4Us2Z4NMkIxQL+aPGjxNyg9QVsCXtxus1mMVId+DuhlZK
	mKOUSJQ147qyFoGMEQW7XOLLA+eSxuyeKErmFbnvJLO/L34ZDy4+FFypLsdEwP1yt
X-Gm-Gg: ATEYQzxGC624cJXvsd440NFeVvssMROKG844E+wa0YSjEpNb2kHEzQQY37c9KdWMuYl
	cUoP2TGWxEmmrAZe1CZ5rxhsaTumoABeaupuUM4STHoq8Q5WMhPGV5SVMJR8pP/KCVwrKohHmFR
	NQlYfqY6AB5TvnjQ04LkQo6hIINwo4R58cncKdTYTD+FS6f/rAuVTSxawvJbmYCvs++U/1a4zB8
	z2Glz4k3Dd7YeK4MVjK1D6BEmusiqKrAWzLzRI7NNxjPYCF6k0ETgobWpeZj+qHqON7DmzrGWAy
	7dyfXAZcXNCK8jF9GVsDdZpbOmRysquuNfECOqUjCBdaltxzaZIQRnCs9oFt/ONkgwTZnxTxHUh
	D04SnqMfGTZqwqRWtyEmMGZYUr6EM35rTv0Jce8o9mAdlqA==
X-Received: by 2002:a17:903:3b8c:b0:29f:301a:f6cf with SMTP id d9443c01a7336-2ae2e4b0b6cmr163679945ad.35.1772560390961;
        Tue, 03 Mar 2026 09:53:10 -0800 (PST)
X-Received: by 2002:a17:903:3b8c:b0:29f:301a:f6cf with SMTP id d9443c01a7336-2ae2e4b0b6cmr163679635ad.35.1772560390496;
        Tue, 03 Mar 2026 09:53:10 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae3e4e34e6sm107140625ad.30.2026.03.03.09.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 09:53:10 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 23:22:52 +0530
Subject: [PATCH v2 2/2] arm64: defconfig: Enable Qualcomm Glymur clock
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-glymur_mmcc_dt_config_v2-v2-2-da9ded08c26f@oss.qualcomm.com>
References: <20260303-glymur_mmcc_dt_config_v2-v2-0-da9ded08c26f@oss.qualcomm.com>
In-Reply-To: <20260303-glymur_mmcc_dt_config_v2-v2-0-da9ded08c26f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a72007 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=rO3wVDe-YCVyVCuK1RsA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: n0dIfEq1FvvlisMdWQizLW0qawBI-hqN
X-Proofpoint-ORIG-GUID: n0dIfEq1FvvlisMdWQizLW0qawBI-hqN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE0MyBTYWx0ZWRfX6pmttOBvjzDn
 7t5VxfkS9SSU0t4aOGRZmwkbyAz5rRAWiaJ3pbKeuclUcBwj+rn9faD7Ui2ix3e22HiLp7ziR49
 ONUeKgsFKBjV89cXLraMBmdCBIXB1mUpr0tJ0TzLnRC6F7GgJAz+7wb/31M9HB0rB0ZzJd3M7Dx
 fbAq9aVOknbCY+wCAWGut7RLMLEo9sL6rt58uPwZOXMO354sWvbZRGUYkBiOpJHNy4hQHpohfj0
 uP9qgKUx1dv43PEnkxJyb7x1146k57au6TQkzafbcsOk0IsWFNb50koOSiOUdYwVH7IcCL9AvJ4
 ynB+8sCFdRPDiGmm1hv9fJ4Gl4JNTLIqhlt90hzNTVMWpbDaMLDR2EVdcxlF5n68QFLp+PEqXnG
 lIWKIf7KKyxv2TtpT7pZ/ZGXmooNfdn3+eYICrmFpeBKtRuiB9rf+Mg9mhKnRgi1tSWfq+ZnRg3
 /WrgHIhqq+ZS2j80kyw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030143
X-Rspamd-Queue-Id: 0276F1F4D71
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270679-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable the Glymur video and gpu clock controller for their respective
functionalities on the Qualcomm Glymur CRD boards.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4ed70ab7ee854038fa7a756d8b650a609258bdb3..a607bf49c1563d22550c4b81a237d46fe4ea41ce 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1457,7 +1457,9 @@ CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
 CONFIG_CLK_GLYMUR_DISPCC=m
 CONFIG_CLK_GLYMUR_GCC=y
+CONFIG_CLK_GLYMUR_GPUCC=m
 CONFIG_CLK_GLYMUR_TCSRCC=m
+CONFIG_CLK_GLYMUR_VIDEOCC=m
 CONFIG_CLK_KAANAPALI_GCC=y
 CONFIG_CLK_KAANAPALI_TCSRCC=m
 CONFIG_CLK_X1E80100_CAMCC=m

-- 
2.34.1


