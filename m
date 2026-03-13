Return-Path: <devicetree+bounces-275413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FZlKI42tGnTiwAAu9opvQ
	(envelope-from <devicetree+bounces-275413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:08:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 060DB286B05
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 483B23068F12
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CC853C3420;
	Fri, 13 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HFh1t9r5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F3+dSy/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E8D3BD634
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417812; cv=none; b=NmV5JO7TYs9rKShRNiRfLszb1g+IN2wo6xNb+Ad+xd7qQTfgOzM/Fp5F98+pzqw6ASCk+HC/WFT0gmdJ2mTS/wyWL3nk2gkZqxFC4borBn18SJpYqZuCTq97qcoRboCG8TgCZYxdsxT573CavmWIXERddyfpZ2wuQjM8O1IJSQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417812; c=relaxed/simple;
	bh=vFhTWj1Kam9OsLR/TmQxnydejTbhwadm6/oHv+GjKc8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sEK9ShL8V9DTaL/VFY4knMgiRhV4SZrG5B/DkS+9W8wDqdjoVkdPaNfBSyBFomTIXnXME8nNI/+TEKbvT9MCSGlI5DXFFOFqH6U1I24cFotHCA0Wv+ZdLJ2tIn+sV71nfjSvA1luMelsCtxiN4Ozh19XBZHIMWuLhnpzYuXTB4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HFh1t9r5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F3+dSy/g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D8vE0V481671
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:03:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wNIaLz9L7fJPRgrVP/Wgn96wI8NlDDrpGxn2SZ27rJ4=; b=HFh1t9r5biwBFSbk
	u7Dz6dkEluwUg+U84RFgboYGm4Idg+B2pjtqTSqvkzZslrgPeTqYqJLud5r+fpit
	tpndzrrp2fy/L6Fqrsb1PgYB6ZHiDuHZZBNN0Xtpr5ndf58rPJpCvMS37dpfJMK6
	kuXcOGNFlB7rUUGd1YS3MwB5oVso+BkRLM/4vQ1bGI7s79Ej/8ZtRVIrWkJ2KFz3
	P8mzJX01JplOp2H4Cb13Y1EEUIGzDt+M5guB6lESE337nw7owKr7rSk1AwxyfnFR
	mOuAGWC2I1xzAd/cy0cmEAwu0BSmYjwA1hsHzEo59bNlBpvIUfzxzflGVvo1zBYL
	b3lyaw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfh7sf7d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:03:29 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-829ad81b132so7234414b3a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773417809; x=1774022609; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wNIaLz9L7fJPRgrVP/Wgn96wI8NlDDrpGxn2SZ27rJ4=;
        b=F3+dSy/gqR9S471dapFcffNsx5Q1dLoKvucTkHtEUClK5JiAJ/1fiPJ2b2X/f2DWpI
         qmIUV0c10pJyNvgS2z34OmjR+M6ZuKeKrjFFE1RvG33P1MBXJSwzmdYwC3q7sdDDNhVN
         026mwqJr525Ai002RwpLj/ZrPXtc7EMogBKNG1zbmuQAeV3EMoDj1XlEEkXO7CGohgRI
         r37M0SNajXytWCSzGdCGU7Jwvuzh4QGGSXzVtNHlgvLxnd3eVOT5GkN3qJtyEx0qdcB3
         pF46ehouxBLErI0oEcpTzgrGHcb0pmCl2F25NvrrAp3f0H3sQSN0gValkDSsmeSo0B/v
         Ezog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773417809; x=1774022609;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wNIaLz9L7fJPRgrVP/Wgn96wI8NlDDrpGxn2SZ27rJ4=;
        b=BfLP7Lib0aUlI3ALVFmMsaBmp7U0P/WlY9uB3dGJDAYDRb9jrgJ1GgUv1qEyKwrx/d
         CDsbpV2cWUyMBhoqKburwVbN+5G7MEuHJPQoGZ94En+V9ewMpyT2Za8jZ+3yYaBgp0YA
         TKIbAODfSEgxmydNvKAIgzQGqB47JkPs4e0+2h/XU3qy+r5TO9qTMFPVYF4W/27FpCGp
         0Bpr4XaK6rY+l/AyHiqZEG7fFg5I8C/PcLkrVdwGYCMwc07Jx4niWod0jM9VtlEPYUj9
         D+LfUylbbdcCGqJsstw9vUkUHc9jio/f50jjpza0VoQTOTIJwOTOGIg9B7Cz/cPHeK1M
         e9BA==
X-Forwarded-Encrypted: i=1; AJvYcCWY8pMgL/IwhUaPiai9wAPcAUPGqZ+W87klVxYKiURVsOXJ1FcoRLZYejJSqD4qS4t4cx+95UNxhHc1@vger.kernel.org
X-Gm-Message-State: AOJu0YxR77O2VEKutXKxYDWFhOiYOvjpv0cswpJ/D33JhxD/3tJhsQWt
	A3jxCi85BuwnLtAwIhGtH4QuOSqY68UJH0dB1KJmdGNpxdNLe+bDJZmzgcaHAtJ63QBZs9KiYMx
	X6Kg5hthdTMkA6AqBXs3oTbp27aPqS4hXDUVJeK30l0jmDq1+MEqt1ClF0x8VN9/i
X-Gm-Gg: ATEYQzwKfevRZpc+bXXdEFa/wIxN9njfBpx1h7YIFYbjquj9DIN4bQP52VjTxt8307A
	kaDo3Uv5ZdxNoq0Dof3bmRlitsbG7Fc7d4usnsJvTuSyoxEfYCU8ghUaKDmtAb/t17o2mzslbD1
	U4uatx7NEhz+RR4XjNUr40/moLwNNO2V9w9s56FYaowdp8MTYs+bhiJ+ShXjS4rb76ZkYzJdU2h
	xtW8wNg+0zzByJo1Kz4WZJlmhJeFXdTJi9WOXRCpjwMmQ5WxsL4fxYWf2boawcmZRdGe3ILKIel
	blrbO8foZq6/90x78CR3A1FewwfZ7OMRC+2GKAU5Uf+pRUv9X7rKOyR3uYRLFjqqMTfjGzNbzN8
	U5jMV+EuIc87Kf71w8laUSaIwlThXj360vsZKIrTRdGRhKxGFe8sWQHboJit6q9G9PNTW4Rd6wp
	GmD7TCUhFN9gX0I31IjDIN/DW9xw+JRGmevG6MxBM1SIRwvwazUmxjqQec
X-Received: by 2002:a05:6a00:14ca:b0:829:88e7:c8a0 with SMTP id d2e1a72fcca58-82a196d375bmr3408963b3a.12.1773417809028;
        Fri, 13 Mar 2026 09:03:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:14ca:b0:829:88e7:c8a0 with SMTP id d2e1a72fcca58-82a196d375bmr3408933b3a.12.1773417808545;
        Fri, 13 Mar 2026 09:03:28 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a13a2f2d6sm7617470b3a.9.2026.03.13.09.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:03:28 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 21:32:57 +0530
Subject: [PATCH 2/2] soc: qcom: socinfo: add SoC ID for IPQ5210 family
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-b4-ipq5210_soc_ids-v1-2-97faae3fef95@oss.qualcomm.com>
References: <20260313-b4-ipq5210_soc_ids-v1-0-97faae3fef95@oss.qualcomm.com>
In-Reply-To: <20260313-b4-ipq5210_soc_ids-v1-0-97faae3fef95@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773417798; l=1075;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=vFhTWj1Kam9OsLR/TmQxnydejTbhwadm6/oHv+GjKc8=;
 b=Lysx9Ed+3mWqAeTQkvERMXE5I8vpPn+xbjrg9OhcxdI6SFzbr5vEsAzNJ6c1PmR4HoyyxFTZa
 /aZ3W0RT4mlCAFADukGFf9kmun81R96ArgfjtTyh1kOP8mXyF2u6ll/
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: S1H8oW1ZJm8YCTa-lgNZyHXAQk3Rny0N
X-Proofpoint-GUID: S1H8oW1ZJm8YCTa-lgNZyHXAQk3Rny0N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyOCBTYWx0ZWRfX+U2svDmDymPP
 /NtZiIv9D20LZetbG2v+ObHjRS2H+nS+lyHyZaoUkHFTWxdWcXkV+29gJulCVjJ5qrElcCASywa
 J4w+e4bdYNmdI4lmcx4Uk6LdICl7tSeEdLfDyUoSiRtQPSkCT5pdHSjxylYX0rTZr9FbBDLVEWD
 0HXubp7UB8LmjVGWuTv80P/XYJH4uWOtm6ZdB4fhXyi9wik15O+X9vBFaHYmetBdLSOgDEZioCJ
 l4KdF12d7sWxjvO4b6nG+w07SLGtA2QpSWRQO6nsUGw649Ig7AEs09TJiZdr5T6+EHA6A5zmlVP
 P6hkAMjh/VaMRghcYuZwgKn3453ahSM6JBafatcW8Gt8rJ+sNdkAbjMQ59rhXAzcI+MaorGzSVx
 P6nXXGyuSQ24X7pcbu4N0rUj0KP13MgdDSKUiqjVp4tUTNvQX09GHiWphxnJsX5lWBtu6GF/HLw
 xG/IsxHpTPf5/Edps5Q==
X-Authority-Analysis: v=2.4 cv=BpiQAIX5 c=1 sm=1 tr=0 ts=69b43552 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=Fu2THIaEtsgb9gtVlWYA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130128
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275413-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 060DB286B05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SoCs based on IPQ5210 is shipped under two different naming schemes namely
IPQ52xx and QCF2xxx/QCF3xxx. In the later variants Passive Optical Network
(PON) interface acts as the backhaul where as in the former it is
ethernet backhaul. Add the SoC IDs for the same.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/soc/qcom/socinfo.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 41867601d2502f7e6175d6a22d7f508668704385..a6489e43fab79d9415243d5d6dd2e1d00c347c7a 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -524,6 +524,11 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(QCS615) },
 	{ qcom_board_id(CQ7790M) },
 	{ qcom_board_id(CQ7790S) },
+	{ qcom_board_id(IPQ5200) },
+	{ qcom_board_id(IPQ5210) },
+	{ qcom_board_id(QCF2200) },
+	{ qcom_board_id(QCF3200) },
+	{ qcom_board_id(QCF3210) },
 };
 
 static const char *socinfo_machine(struct device *dev, unsigned int id)

-- 
2.34.1


