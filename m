Return-Path: <devicetree+bounces-260103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id clpJA1ASeWktvAEAu9opvQ
	(envelope-from <devicetree+bounces-260103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:30:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5099199DE0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:30:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0D9363024816
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A80C736F40B;
	Tue, 27 Jan 2026 19:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UYHj4j5/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JWg2hO05"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE28836CDFD
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769542048; cv=none; b=K6hcxOE6QPtA99Wtf1f1YmLL+qSlJKN2QpAu6Y4tp1X+jVLWuji/q7QHqUkWwKxyU3TlSdNrip+k1VRk0URXpLZyYYVMr3wEhEd0nMmtpodhHFbyFGH7Qv3/bOrMX87/tK1fQH9JAcBtZTtJm1ZUrYqHbyQnoBGQXWL9obWSWNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769542048; c=relaxed/simple;
	bh=4oyhsvL92/W6SaipuEPDVxPDMNpnID8mT8emKAyjkSA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vul/zq9Im8vF3Mi70S+OQpDrmRiiKOuduA6W2Uk/qO3hNfFoQrUOcGsOIjb+9JFdPOTIPlqR4JqIOucE9bHIvzfIdwSEs/4qtrIUFMrrwSzzelG47c5EedtXql/yKBirpTovIMmaynPjgVhsmbo7KjBGz3LGildKdI29NbtREZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UYHj4j5/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JWg2hO05; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RFMiGE623368
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R2bEMfrvG+BG/GFJ/bryXnEyoZu75Z9QE5XgUVO7MPo=; b=UYHj4j5/kpnAINPE
	T3un1S+7SbF7+OmqRM6P0WhuVk3OmXRLPNTzaoLOIJ4UcxHTwQcBUqCBaOTwr95S
	KDLgblvdil+o72DlG4hO7IQwXBJkyS4HY5HvTkIzaVy9ZS0VJgLF3XkNroeZUaJm
	oGaa5J76//22XuHsYXyR1uLsqX6aNQodmmxBhBWbYCabWSCdQOYwGHfiFwMO0J7V
	5nApYB+BKizUHTT2whd32aBNeS8YH7m7pEBICNuEJU/KCFfIDCI41IS7otBUk3tZ
	MuNFPooc3u7MY2gIT0mBVjffmPeaks9RQ0WhUvpRPQZ4gDZ9u+BgaHghY7kLVSC4
	qh38NA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjej93p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a7b7f04a11so27950855ad.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769542045; x=1770146845; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R2bEMfrvG+BG/GFJ/bryXnEyoZu75Z9QE5XgUVO7MPo=;
        b=JWg2hO05879upO1Bst+dLGD4o1o7YBh9p9hzsR6WL95SbXiibOcI3GwMGldMie6sqh
         Sf/4m4Ta5TSGA9psEliMR3qP3Div7VrE9aLKt/zhk3rCi9aiKVGdjUjC59OU/ke2OUIV
         qddIZKM5vziMVfHnPRY/icArLcShZdJXxn0mk4RJIXT5sUnIrk64olciRNgMVOsKSVPk
         pqEWjYezBOykmclPnYGnbs+HFWpIx0KtSNH2cppaCdY/b8luVf6NTXHm1cY5mVDeY7LG
         Iu/EJ9quFOR6SvJGhF2z70DTLnoG5bKMYWdgceazsFEyoMxIMNNvca3Rr4+nvmg/BRVP
         sywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769542045; x=1770146845;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R2bEMfrvG+BG/GFJ/bryXnEyoZu75Z9QE5XgUVO7MPo=;
        b=a2m6M47SOeQrT8lmWOxicnslQtDnlZkTx7p8N+qLl7rKjN1didJMTLpj4YnCG/HAhK
         7u548qyjnu04H4y6TP12boXkuFGN9PAWNdwayONlwBqQd1TEUipcQrZI0wb99ZhZoAk9
         gFKVMgnTDO9o0xMuNptULXrL6tBMoyrR+90K8swwJVwuRoe7RfbWOdQPREQIOLGoaYc1
         mgwgehYLaUJN5ZE9aHepiMEWk1HfF0maJvnycPRgsBiN0mx/DHlJklhyUgQeUpe0uR2r
         77OZtK2bfZmQMZ0jzb1wa8pnwTYWHr21Nod06q7WHY/HFWj3hNQnyY6ciFKApjLPJofD
         bfsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCdOobmkNiONAeGofEm3lBg3xUAreoxEuJ8I8pc0Q/UiPJjHCNtyjqswb7Voq1nEvvwLQa4Ox5I7NO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw72lw4fT55+m/m5Aqkv1MlXkk1uBesMHb1qyDoamdrzcebqrY+
	4pXS0T/7cjduKSgc4DEUMGvF5EmnnLBIUsCXS9T7D1wv/tAwagi859QTm8qHdBIZIdNktHjRHZG
	szuF5wgkYKyN+yyrXB8i0wRU9dmnn5D6Cts9MQ2p/a0/pJ0jTQG5ktaCWesqaIjSU
X-Gm-Gg: AZuq6aIkuWfq2tHM92mw7IHnIxuou3d+Tl4m9X2ECUCYjW4Xd4S0uvuluxog8PsuWYK
	ZazwtjDKHtM0k/kfpsVA1zs1clq6pBZ91RRaPc6FR2iYj22NDnsA3eUD2l4Vgj2WtcallHMr3qk
	mkuIj3lj1DT34gaFaQsY4plHJl4psgHg1HyQI0dIQ557GnI5xFfdRYQ+L9U0ulhAHa/ZJ1orsNX
	bWfVaIFS/Yx2qw18N/YN2s5JWwwrNOKPvjob+RpXihP4IH1ZyWnIS4ueGIjvjSabvu5Uj7VRmF/
	cFr0+FIQxa/NMh4bzgOdb2MVtAiipZpFsKFE5lJ30PlZ1HgZjKN3s2VoUf5zrsm79CNuALBjnlG
	LmO7yxLOUfwr9CtdwqIrs3vc3YgJk3HTaMelmDdoR
X-Received: by 2002:a17:902:d4cb:b0:299:e031:16d with SMTP id d9443c01a7336-2a870e193bamr23418485ad.33.1769542044679;
        Tue, 27 Jan 2026 11:27:24 -0800 (PST)
X-Received: by 2002:a17:902:d4cb:b0:299:e031:16d with SMTP id d9443c01a7336-2a870e193bamr23418335ad.33.1769542044206;
        Tue, 27 Jan 2026 11:27:24 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414fc4sm1322225ad.32.2026.01.27.11.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:27:23 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 00:56:39 +0530
Subject: [PATCH 8/8] arm64: defconfig: Enable VIDEOCC and CAMCC drivers on
 Qualcomm X1P42100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-purwa-videocc-camcc-v1-8-b23de57df5ba@oss.qualcomm.com>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
In-Reply-To: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE1OCBTYWx0ZWRfX+SlqvpThJWu4
 hII2kGkZszjebM/U2hWgcIcXySMkzv8vU8KMhQQtrnrlOtn6ltOz7OA6c7q609BfEKiP0ny5HX3
 mA15aHzO6gWhAtaIP195eiBBKaxRqL7taNSfgQsCq5u3mQsMfDLebYBvqcjFRbLkxYhDqjFOkZp
 DxJ4adXPf2F9U7OLvZMjzuX2KHr9M8up0FibWXKmqfPOIZnT1B/eKYqgeL+0K5+OdzmxWHIDVE1
 CnmGpgIXx7DAZjGuJAIaRaiMahk7HImuJYedKAYfRx2z2RtxLa4aSZNSvo2M7bwtBupKegdW80O
 Skr06cTt9PRwvKnYFN5dj+kBTgFGHA5nkf5DCddiH6jzCXSG2huTs/VAgxLU51p7CiSdz5DkyfA
 xWET0GNR7I2SG0WVtfGty8p1+bTzQ4pZqQUfOnb67hop3Grt2piINHnKTWvWrtACN4wkzZi19uL
 jfCU+KwnFwMZigw6oQA==
X-Authority-Analysis: v=2.4 cv=Qelrf8bv c=1 sm=1 tr=0 ts=6979119d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rO3wVDe-YCVyVCuK1RsA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: _SXhq2HxrbCzQwBsZzbbvHaboNgLZ2Vp
X-Proofpoint-GUID: _SXhq2HxrbCzQwBsZzbbvHaboNgLZ2Vp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260103-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5099199DE0
X-Rspamd-Action: no action

Enable video and camera clock controller drivers for their respective
functionalities on Qualcomm X1P42100-CRD and similar other platforms
with Snapdragon X1P42100 SoC.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7a6d7e70d38352a3eda4a39c39a9549508b3b944..50cecf05027e6de754771b9ab5195216f908f859 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1461,7 +1461,9 @@ CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
 CONFIG_CLK_X1E80100_GPUCC=m
 CONFIG_CLK_X1E80100_TCSRCC=y
+CONFIG_CLK_X1P42100_CAMCC=m
 CONFIG_CLK_X1P42100_GPUCC=m
+CONFIG_CLK_X1P42100_VIDEOCC=m
 CONFIG_CLK_QCM2290_GPUCC=m
 CONFIG_QCOM_A53PLL=y
 CONFIG_QCOM_CLK_APCS_MSM8916=y

-- 
2.34.1


