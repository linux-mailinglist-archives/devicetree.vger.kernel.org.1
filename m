Return-Path: <devicetree+bounces-239633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 06248C67E23
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0ECCF350FC9
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6DF92FD69B;
	Tue, 18 Nov 2025 07:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XldyVQWT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dO4922dJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE6A2FD1AD
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450241; cv=none; b=iV7hloreE595RwbzflXtOT3R7k19P051rKF2hvmtF9cV9EbypydIz/npFkeh/8Tv4Vc4K7WX5/g2JJeYSkt2r4e0/S4yT6c/PUJWXuME1IaQJz0jOeClbY+leiMPtm09iMXMVczIrVVL62H28LBRJGCX3V/zK2g5eavvCci6lk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450241; c=relaxed/simple;
	bh=1sHC0UwVVr1uwS8Q4dv1DDDeIQRkEFp5snpvfPQCymQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WbrhfZRbgK+b1RB1a1r9H2ZsrHi32znSO1WdXrTapyygJC8YCCoOgVY0F0tyOApbCpsiL9ty4KmxIA8ngKZAs1SYXJ+Bov4t07sQ1/K1d6FODWkfCdNLFhSAhWLNVjoeJZbXKAbcCcIXJ11VKJYu7yyalNEKX4KX9LN7tZcnaU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XldyVQWT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dO4922dJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6VpgV623768
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wQlufkIMG06hgf7XqBGCgD5Spw3+VerKIv8n6vLCr+w=; b=XldyVQWT2lbBe11v
	5n90JZWHZiGQOQDy/Od+v+PN1yzWSDdWmSuQdwAZWVQLfcXB/jqSX84bqNDzsbbp
	A6Fc5zeQvkE82qeS/M3np1Uoswwo6e8xS9HGyUtiv3sUOPx6tvKixftr7Dexo7NK
	oCv67XvPRzrQRUUZNwPuhvBlNNA7OfvmHnKBePWENYXHAQptPvvoN4y35SUdk/Vt
	2Woryze8EpZk20OsKK9wtGdxTrHMtW9+rcL3nVTa7boMj9gdBhuKZvBYSfq9QiiS
	ApA13jiiO4/JZ86VV2syXKvpuK0xmCsjHMyxDPOf2PJSFdKtGWBIqY/CAgc4OcQV
	UMcL8Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agahf9gv4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297ddb3c707so47071355ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763450239; x=1764055039; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wQlufkIMG06hgf7XqBGCgD5Spw3+VerKIv8n6vLCr+w=;
        b=dO4922dJLqRiU7aOIjynnl77gUDJes8XzoaZ6jLdVo21Q4xqiDnGgqYus+tcE/ZDiX
         ShRNK7xuMkbwXlqlhy8wWnPffWaMXevWzsm3SkSUjs9FwDDc8kKgzRbEHyuuvpF6GQR0
         EhGlMmlI9oJiQRQAzGeoZomqsEOz64/zRm20CTdwUp7qUApMv5I1pdrqJvQ1BBsiOGaK
         OKYELAxhOVWxaCCndaN1rsw7HwWn7FnzAtTs9sjz25Gc1YiRj8TToJEINz9P8QFQsh/Q
         fczA3OSK/DlGqLFfkBS3jU0F59QpsNV+NOSpXi9nigYZffQGSBqm5ElH0mfdd6+iYEEL
         MT5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450239; x=1764055039;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wQlufkIMG06hgf7XqBGCgD5Spw3+VerKIv8n6vLCr+w=;
        b=BDgqNZeTZbFp6DQrHyl+7cwy2wYug/iafjYaDqtkZdkKntRhsBvhEsszwhfS25ccYr
         lg2Q2qpLEXugqKvuXxL389zz3N4xkvVxthvxZedM3JG/pMSWMe3vNl3kgAXKDLgALb3+
         6KBUArtYikEpha1AIcKt+z0OqWvpJ0hIJ5e2tqysZ1V6nL1dqBpqZUoMUu0UrmkgjygX
         a9G3R/iM4lU+26lEjbF40Vjb7zHwQ36cFnd14kxP01zSSkzZrmKFeQKZ1nXRBSXEGJ24
         TEcffKSMMa2UZjXT9RuwRg+qRMFggXCW1UyjqvRu7RoMbVmMyRHX78BBVV5uHsBbIgGT
         syvA==
X-Forwarded-Encrypted: i=1; AJvYcCUjEcAsci7usOLV0yByY8+FU1Hf92FWV6ger3ADPeT3/k/9y+qhHyShhPGMqut/qFP6l7NlSRHu+C1x@vger.kernel.org
X-Gm-Message-State: AOJu0Yx98Mvi15gspO4BWo7YT6KJYd9zJTRhtOlhW69+3Ar3hcivSyhm
	j3Xes0syb0n+/fmIiKSSEMg9VPvMxS9E69JLq6BppoUQkYorJQr//ZzprCbmEwFMRhaAJPieyr8
	KIT5lO7m9fMYH1Ldf4ZzKZ5uCy7FD2b58Qb9s60hr6/3aW+9XiazDuRorV+Ov6ckR
X-Gm-Gg: ASbGncu++WXeaZmukNsxXAGB01wkSFt5n2nyHCC5VjySOJlyvzrPMfzWox91rJCsWIT
	aTOybezX8ujK/rfHEXBfw7Oqsoman6yjT2UtZrbZbRytX5o7UhkwFnaOuaaTaeqdJYEQvFQ5Yob
	0c+V8hllE/zOm58zdgfEjvXSeov6RDnmseMlEZn+yILG5BAjf+r09n6LbabdCEzOTIxiJxsoyOV
	rryn9B0+FxqLVuwDpD16ghiyu0bfF7rcxu57+cIX0bXz9k+ZRnpdKbkhdmxlgW1ikh9NU99a0y8
	1IX/EMIB6M0Ie9+usP0nGh4mRswaXDr+/lgRMrlD5dMLm0oNCsvDm8bgUexBUg7KzWBGl5Q/pyH
	CgKWgBarZRCR7m3i4GNcMVDwiJnhHJgFnXg==
X-Received: by 2002:a17:903:3c47:b0:298:35c:c313 with SMTP id d9443c01a7336-2986a75f3camr183720815ad.61.1763450238956;
        Mon, 17 Nov 2025 23:17:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOM35Z74eyPqKFWR25yKr6fKKJcJK6FbOocM2TrUkwY9uR2CPRB3wvxbrYNAsIfZOMJ566Jw==
X-Received: by 2002:a17:903:3c47:b0:298:35c:c313 with SMTP id d9443c01a7336-2986a75f3camr183720575ad.61.1763450238470;
        Mon, 17 Nov 2025 23:17:18 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2986a60b116sm129955285ad.79.2025.11.17.23.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:17:18 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 12:47:05 +0530
Subject: [PATCH v4 1/5] clk: qcom: clk_mem_branch: add enable mask and
 invert flags
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-sm8750-videocc-v2-v4-1-049882a70c9f@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA1NiBTYWx0ZWRfX3Nl1kn/qFvDm
 Fk72eYWxVo15C8BhqMtdVMXPYK3akWdclyXtsQ7nr9/FBHpnefTMLSUA9B/yhmkY/xegJYsnFBj
 KGxwFZsc0mVDwo5KSuW4pqh11Jbx7RTrMDAm27u+gKRjwScaxpvU+eAFU+8M6Rjjf8e6zHUfgax
 1EuNoALj+ul4jY+D/ZocA3AWBRMGSO7e8rpBgjh9dzfjfJOPzwE/GEsv0M8DNourlEGwGwab4ri
 0kcfJtizXiVjXIBn08DKkUOTQsfv4khIv7zUKjqS3pPiGjghFJqqg6aw8FxyP4CMJzrRadcv7R5
 D+bfeVTUzR2gDxAh1RRXiqg0SJITBQVNBgYbYRiRbZpNbrg76D++LhnfV6KFktOktBLB28CxYBb
 nqIQElCuVaoAyMvrKcwmfEfKHjJvGQ==
X-Authority-Analysis: v=2.4 cv=RpTI7SmK c=1 sm=1 tr=0 ts=691c1d7f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uR87BbDKUCx-STIg3aMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: fsT3VzSGY2Ps9_yDGvajaxNpN-PtJ3hX
X-Proofpoint-GUID: fsT3VzSGY2Ps9_yDGvajaxNpN-PtJ3hX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 adultscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180056

Introduce mem_enable_mask and mem_enable_invert in clk_mem_branch to
describe memory gating implementations that use a separate mask and/or
inverted enable logic. This documents hardware behavior in data instead
of code and will be used by upcoming platform descriptions.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-branch.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/qcom/clk-branch.h b/drivers/clk/qcom/clk-branch.h
index 292756435f53648640717734af198442a315272e..6bc2ba2b5350554005b7f0c84f933580b7582fc7 100644
--- a/drivers/clk/qcom/clk-branch.h
+++ b/drivers/clk/qcom/clk-branch.h
@@ -44,6 +44,8 @@ struct clk_branch {
  * @mem_enable_reg: branch clock memory gating register
  * @mem_ack_reg: branch clock memory ack register
  * @mem_enable_ack_mask: branch clock memory enable and ack field in @mem_ack_reg
+ * @mem_enable_mask: branch clock memory enable mask
+ * @mem_enable_invert: branch clock memory enable and disable has invert logic
  * @branch: branch clock gating handle
  *
  * Clock which can gate its memories.
@@ -52,6 +54,8 @@ struct clk_mem_branch {
 	u32	mem_enable_reg;
 	u32	mem_ack_reg;
 	u32	mem_enable_ack_mask;
+	u32	mem_enable_mask;
+	bool	mem_enable_invert;
 	struct clk_branch branch;
 };
 

-- 
2.34.1


