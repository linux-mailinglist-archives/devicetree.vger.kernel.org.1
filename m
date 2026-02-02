Return-Path: <devicetree+bounces-261760-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDoBMU2DgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261760-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:58:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C81CB560
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:58:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 73290300A5BC
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E0735CBD3;
	Mon,  2 Feb 2026 10:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PB7HhW5L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H1PpHKgQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2723235CBD5
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029837; cv=none; b=Lm3Bxg6Lu96xXOW6yEq33EQTne+8nTPPdoLbhwR1kpcLDUDnEsiZL70TN2wskhy/BZaVSNOmDkPtdXTR1TJeBNW5fhAXra/kJ7DfGaJUfAGBMSW3YWkhs7mpiKcxGHeQE68Hb7PV8WkmHdDVLt23iOSyVBf9RqZUcdgJoWZloVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029837; c=relaxed/simple;
	bh=mwwR5/m+SQ+W7fXnPWloO0v5qeZLn71VhIfgfzsp0WA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PRFW34oHAuf9VfSbWVS6WFhDJso/Ma+EtTCyH2p76fXPDsAgqambeoLEufzHkN4Wsn5t1i0+yA4iYRiTXTO6rvqtzDYbs/7L5+ozfGo7/znFBjVBtcI5pqZJ7tmJS1XBo7KVd8ufqPo026GGN7M3HRPd6eJDM9KXZve7iZ9+BeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PB7HhW5L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H1PpHKgQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6127KAUN2028246
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:57:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LJbPYNH8o0DuJj+prMbOGveCp5KZaKE2+xR/ODLTLjc=; b=PB7HhW5Ltnv1H+XZ
	2LZ813cn+NviiqLmRFSq3r8MHUrSvSp4ONAw4vXwYPNevliLJ3G7BM5FUEo3IbK/
	9L4N2ekpFRprHTkb9v/W7uNbeOYNbn4YYi2JMNBCycELIFySF/UkCkaZx5tGSnIH
	vrq9wRzBXjFFb0N203ktJQ51NKXrXfaMTlrsJgeJ4IpQOFQ6X1crE7rOtpsJljYG
	2Ka2pD/W8Z7JgXij0sZiWrVfmQClu10LfYpQEaLBmFOXR2+BDdHgwy1V8jeojGyf
	52mAeGSfWevPDgmgh62e2Put4Racu9DQGYcgyxosLIuMVI04/mRGU078W2/WbMks
	oA9exw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1awdd4a8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:57:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0bb1192cbso36389305ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770029835; x=1770634635; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJbPYNH8o0DuJj+prMbOGveCp5KZaKE2+xR/ODLTLjc=;
        b=H1PpHKgQY8DNorK33UESNEqNsu7YuPToc5XIDqZly6rRml8GfXoxQ5iB7cF5dyJFtx
         3tIO1pZYDHd8k1nX+U95L6ieN2grdgp2S8JS48anNCkCXa6mRjWCjrm4Kyp7h1Cfm/OO
         ULbe7NZLg/G8TykUOhiEJJowaNgNjF9VDtqiKVc9E0kU1PCWgo4laFcDGicv1IEv4yOq
         jWnmUZLNc1qCb9QxbC1e8cY5Z5mIheDqTV80+DZ7PL6yrHZQg+VJUtxkKZAG/xoDU20P
         AGcamIFYa9CMea54xqxavBekwie178uYVsATHSK5rEyvPfR/iuKSB/xIWlLayXJPTgMQ
         giwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770029835; x=1770634635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LJbPYNH8o0DuJj+prMbOGveCp5KZaKE2+xR/ODLTLjc=;
        b=HBb+oxABQnqDCB/lqHqgy1RQbmhoNPRN0cjYDsEskC6QIFlK6KT5OAl/QXdC53Kf3k
         us69iff03PYWXsQDOMf093R2t0716sJ8K++qeF0RUnHlbNGXQr7c6KD72YrE/10GIuoT
         lY4TeBCE6oY7QrrM9O0g0F78brhvBdqFpmZDpuZKF9VTf9FYOT/CvJ7V+190c/UkKDVQ
         A4tGToghplfLNOYldX4JU3pN8uFXeOlgDYJhnCSFLIi6BeYLKyZWSkuKByB+HIwa0XdE
         4uhvnlQpwuaFOkLVSBsCl2LOlcx89XNUOj/NsVFdoXLDnjX+ZOrZDyAX0lxB6Tb5gumw
         YkmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUe4AY4P49PzWqh8E0agescbZ1EIOZt0A06Q9UcXQumaTWshjD1wcsghnlbNwYmpxhztKrcMQPDJ1sw@vger.kernel.org
X-Gm-Message-State: AOJu0YzIsfzro6wfNSXEk/nunBaZvk2/vas03NLTht3r9YkusguR1MJ7
	U2TvA5oHHOnIQADZjkmDNXheahodR9R6xZzLpvgVJxAzWiWMNFGWKzW5X1sXM5yAR0WbakcQppO
	kgB120YXY4DRoxQYwsTg6RbtMkY41s4gF6DwMtALl6T7GHdWJU4+z30tOi2lPS/R1
X-Gm-Gg: AZuq6aKRyC6eT6DdeFlJpx2Jsg48XGqH0RjRl3LjqUnTy8a8ND1k/VaD8gflahqAhPN
	0WXkr7urwQYshCk1UY4SJZExUf9uFCQjZQXGTH8do8JFKn+3YCVi/V2MW1ltu5QmCipROV7uVpP
	4rO0wFIqeXJZMiwss83qQnlJNUm6yRHzO0hkaC3aBPKTWPo8adh/XRqan1Vo6BrZ6kbXPoYFRMi
	jj3PK86pByMSuZJd8FbS+Sm+99pUE9R9N8w/wYerOg915lzQus11YeWjMlL1EksRG4dNPUWeDmd
	V9D25WTitFEocZvEPwTdBsOGHSmlXtnz53UjYVlRaTtlsilKQdUL5tfHbuUBxr+sAZWdzhTMqnu
	jMQv5Yz8lNrZpxJa4k8Sj7JjgCovOk8KZiw==
X-Received: by 2002:a17:902:e846:b0:298:4ee2:19f3 with SMTP id d9443c01a7336-2a8d9943dcfmr128668495ad.49.1770029834685;
        Mon, 02 Feb 2026 02:57:14 -0800 (PST)
X-Received: by 2002:a17:902:e846:b0:298:4ee2:19f3 with SMTP id d9443c01a7336-2a8d9943dcfmr128668025ad.49.1770029834192;
        Mon, 02 Feb 2026 02:57:14 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c4665sm143981225ad.64.2026.02.02.02.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 02:57:13 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 16:26:52 +0530
Subject: [PATCH v2 3/4] clk: qcom: gcc-glymur: Add video axi clock resets
 for glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-glymur_videocc-v2-3-8f7d8b4d8edd@oss.qualcomm.com>
References: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
In-Reply-To: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: dYrr4PHhArhQnJ3u1FNnhJtuLjx6l6CV
X-Proofpoint-ORIG-GUID: dYrr4PHhArhQnJ3u1FNnhJtuLjx6l6CV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4OCBTYWx0ZWRfX79/RbTQf1/8G
 8tcTi42CuXrh0Csl15jOPYTzuH6UTwtpyhS3T72xm1iILy+3/CrQ+rz3Cp2Jue3TZcqdaZKXPuw
 I0Uj1vhECHZmKc+lr5aucO9ooXsok8pFFMK6EALeUVCJ6epefUSSDKfMGw/xXR1EWBTTMepkcVD
 bpKVKZThrg3FLw4fIfU99600LU22KAnL+Upq18ACYX6s20mThgDlFJCw7wtZ7e+sE7u7xike4Ys
 Xme22Um7klJntjmbk5CRXCykAhsNafwsZ56Z/w2yZO/bSMRwl7C9pmTiZzXaGjS598OEWVn/jHA
 U4Mr/oB5qZnkQ5okjJA6adDjJTamn8LSbSj1+0oD9oZfhVA0imJFWsvD1adrVqZUKsIC0QDaDoZ
 NkzNJUrm+s3tfagFEu9yNWBTEBzl75mdPK49BPUnZkM2k6pNpM7mHgAsu7dL0xePcv9smKkWh+B
 7wi+piMpzt2nUNyQZuw==
X-Authority-Analysis: v=2.4 cv=T8OBjvKQ c=1 sm=1 tr=0 ts=6980830b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=h3uFTQrF-vKaECCUKRQA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020088
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
	TAGGED_FROM(0.00)[bounces-261760-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 28C81CB560
X-Rspamd-Action: no action

The global clock controller video axi reset clocks are required by
the video SW driver to assert and deassert the clock resets during
their power down sequence. Hence add these clock resets.

Fixes: efe504300a17 ("clk: qcom: gcc: Add support for Global Clock Controller")
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/gcc-glymur.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/qcom/gcc-glymur.c b/drivers/clk/qcom/gcc-glymur.c
index 238e205735ed594618b8526651968a4f73b1104e..cd11470a75f3fec67c1c0cb7fb2b54a814cfaf65 100644
--- a/drivers/clk/qcom/gcc-glymur.c
+++ b/drivers/clk/qcom/gcc-glymur.c
@@ -8507,6 +8507,7 @@ static const struct qcom_reset_map gcc_glymur_resets[] = {
 	[GCC_VIDEO_AXI0_CLK_ARES] = { 0x3201c, 2 },
 	[GCC_VIDEO_AXI1_CLK_ARES] = { 0x32044, 2 },
 	[GCC_VIDEO_BCR] = { 0x32000 },
+	[GCC_VIDEO_AXI0C_CLK_ARES] = { 0x32030, 2 },
 };
 
 static const struct clk_rcg_dfs_data gcc_dfs_clocks[] = {

-- 
2.34.1


