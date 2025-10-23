Return-Path: <devicetree+bounces-230045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BE9BFF319
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:58:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 710CD3AA3B5
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C220263F36;
	Thu, 23 Oct 2025 04:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VHgGZLJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E553256C9E
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761195477; cv=none; b=tr5+D5N4cxUJkRJfWVNM7Bg+gj01dICB09giVOMfUyF8zFq2aOytwxQtc2GAu5Hz6PeRp3L5bwJfJHoiCV5w5UcKnZUj6Ezq7idkOaPCLbDy0qRXrlydqIcRWVPBDpO5/Clh1UMYA7gC1xhVKmMLr6/poDiLqQ1K5DFOTMhL4pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761195477; c=relaxed/simple;
	bh=BWJCkcRPP96Xh9dkql3wSobHLig10eB1qb/PHKQyTNM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QmntysPRFyGO2zr9uTd+tPPMvw+wrcKPMGsQuzEXHBykqtCMvURsKZz5zfEuqutOZ2L77G1fUPDlp7tysmH3uMVa+2AAQ5VlP2HlNsiCV9tPgskF1QLmVSDzlMbc9qHHiE/5mB8S/avtWWXjkurqUfiIqF/gBi1JxQw4bLxGUyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VHgGZLJZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MJ1OIU011700
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EcjwNkGfwMCJnD1Qj6xY6Vd/84dcedItJ+DPktXYc3s=; b=VHgGZLJZCnr1XMwy
	mgtTMdtOgssMxTHyOFAHb2w65mP6DtUoCvNdu82qAs8GdLMEFfF/KbPM2tmSHGOV
	isySwCUVZLSc3d3XhoPK8b5RgCoBDcRMw3e3TxhasKnUVWQPaZGD188lUWeT8c6U
	Ma77gH1Rmd66UNlywmDkPTYVQk6HQRM+clqWvtF3t8ourjl8ROADfW+yJilbvP7v
	/i5/kgBCpLoa48wAABxJ/4ve6gHFsEM06Xa++vftNmaE07CzEDdcLFVGAlocmJfR
	vE059nkl9EiQJ/CRhHTlVeHlA4Fo1YNUPgy+fupBPvqAsiR8IZXdBVndYnnVuRPD
	VTq/hQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y524983e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:53 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b63038a6350so1182322a12.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 21:57:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761195473; x=1761800273;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EcjwNkGfwMCJnD1Qj6xY6Vd/84dcedItJ+DPktXYc3s=;
        b=WXEmlaHjzbTephd93kA041Fl00w2uePEs1NZH96cknWhiZ5x4bpCQwaIH1JqwTI8u1
         SUM29DdE/mZa1nbdLmYMw62D+fxBIEgdkIUg4NxvMfY0BzClY9oD0V/a+oUMuWCdTtLZ
         XT35FJWQ3olik7udD948rp97DwAm87OOGO1k2s39yXQs6dScPtMcNFziV3eSGdnioBZm
         BZ7J4HhGMHGvEXC2qQrvrZrlI7b2I6t/0NqaPdp4kK3LSRQpFXMdWJUFIPwdmJWVcJDd
         UyxJEa4yFxCUwiNEkja3TBNaAjJnSNarSfjNvewdqC1tuLhkafDTVfRgFEeI/mCksS+5
         F+fw==
X-Forwarded-Encrypted: i=1; AJvYcCU0YP0p43z2eagg4en9U+AoPyPUwgmjCEJEmXVHeSbijNdSxQfd73BlfLQVL3vB/uujrVXOIYquWeXv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3pEV5OZVzmcZwYRrJnyHq3AybnPSU3RCIpPCtQDxUcRTgxd9/
	jFVLvncgm4nTyn32rL7jS6n7LzbWFCK0p22ikYWEUgDSJiHWhe0x1l2lgPDRitioonEumOe+06k
	WShll7AQcrlTkzwdo3Qs2XbDMvZJau3udSZ5rL6mnHow5YM2GaMzxSO+9BfgloxR4
X-Gm-Gg: ASbGnctGrM8GawXz4gPGsvKB39T6hcCk0GfGpV0PGD0kvwknSJqlug7zylWCuximlh1
	u/qDI3CuAwLpMvASJaE+bK07hMxl67inSVVQJeLAvff/abd44NX3VYLJay7+c/NEHKxbjhk4PhM
	n/DOjIx4W3Ad5ryp1dwiVxjFmyXza9KNq3zPY8Ihg+RPQzUs7+Acj6ZwvJTyI6H+AFRg0DOONGG
	+da1D//IFtIwBsoRq6EiKVgwFNo0zao1d9WseIiLspTqT2QmEuhGINNoKrVBlchSk5wJd7ABcvu
	LeyIMu6u6OK73grV/xu/1Y7IM4nQwC0ZLZCebBBWyakzdmnSEMQ6VWdHY7yAAVsiZLm92KT26Dc
	o/1vvX9sSLShdUlP2hSuS2iUjr0KjVkazd58RAxSs+h7L+PYRgQ==
X-Received: by 2002:a05:6a20:d088:b0:334:ad99:7e99 with SMTP id adf61e73a8af0-33b6a5dcf35mr5241411637.17.1761195472699;
        Wed, 22 Oct 2025 21:57:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMTxhqhL+ktvwqE/YLE0iG/l3G2teVCl5Mj3JLXQrTPp6ntWIdAjtA5UiZSlixP0cbKprHZg==
X-Received: by 2002:a05:6a20:d088:b0:334:ad99:7e99 with SMTP id adf61e73a8af0-33b6a5dcf35mr5241384637.17.1761195472265;
        Wed, 22 Oct 2025 21:57:52 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4bb86cbsm814289a12.7.2025.10.22.21.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 21:57:51 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 21:57:37 -0700
Subject: [PATCH v2 2/2] soc: qcom: socinfo: Add SM8850 SoC ID
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-knp-socid-v2-2-d147eadd09ee@oss.qualcomm.com>
References: <20251022-knp-socid-v2-0-d147eadd09ee@oss.qualcomm.com>
In-Reply-To: <20251022-knp-socid-v2-0-d147eadd09ee@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761195468; l=680;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=BWJCkcRPP96Xh9dkql3wSobHLig10eB1qb/PHKQyTNM=;
 b=k6289RchbVm3PRam54CCkf+f1qp+jhTz2xYwJ7heEtyLgCLOuGoYSqHiiVQ6ROzjdExGR5SVE
 WhEB+9s5/UQDQaEINLMmfjhZ855lSCb2lCiyZSojsltmjwuodwJ6Glt
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfX3cDwi8N7dXKJ
 mgEF4uYC3/3Kl5VCIAIAnjNPPw6bRg6mpQxYg/FMt1n49hMiWW1YOqdsJR5nkK+LEwyYeZx+tbq
 U/hRkrgH9G6aM0NTzyUzRIcD5mjU/D+V56IsQxpqrlOBgM6nJc3mvHZiJ+ks6SlEa4aT39od/JQ
 jKmQIe9pEN14O7TePBlWnrSmu7wlM3E/is/OrLPrDJJQur1X/XNPX8bzOwzi6NtKndjlNyl9IwN
 oGgqgWYuVKWr+xNCjkbGCr81r8zb8c/fi5GPmbrt/wGADokN4l4PhptIBbgBNkfjJlkMDYbaY1A
 8dg7jVJEwMtt26Ku+j7mM49Ro+vYcWKbTXjvHWdZiH3u6plcsQweKd86UbYtQnD46XNgRLqRGm8
 crgw2pCFIdXYMRWY0LGRvxAlCTteIQ==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68f9b5d1 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SCjz2f6kJreciZqEAHEA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: -7YIc9-tkHKVrv8C6A4gx8ky0dST6Lbi
X-Proofpoint-ORIG-GUID: -7YIc9-tkHKVrv8C6A4gx8ky0dST6Lbi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155

Add SoC ID for Qualcomm SM8850 which represents the Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 963772f45489..a2e2e15b840c 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -461,6 +461,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(IPQ5424) },
 	{ qcom_board_id(QCM6690) },
 	{ qcom_board_id(QCS6690) },
+	{ qcom_board_id(SM8850) },
 	{ qcom_board_id(IPQ5404) },
 	{ qcom_board_id(QCS9100) },
 	{ qcom_board_id(QCS8300) },

-- 
2.25.1


