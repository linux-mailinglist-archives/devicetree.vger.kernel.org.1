Return-Path: <devicetree+bounces-204570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 692BBB25FBD
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 10:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F16F884F3A
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 08:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2659F2F533C;
	Thu, 14 Aug 2025 08:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jyh4dR6Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FBA2ECE8C
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755161589; cv=none; b=nH63wsvLAhP6PWAxrdNr8w4Ez6DZWrhTVPA/2FjSE5RjNt5wxZy5GOEk9nJwhT8q4K57HxX+t+rPRSyntS89/RXT22TbP3M2QxhMdbpMn41pRgG6h3q/lbgwPdwdO0SfH9rjs7xejMBPhbc/cZm3e9VoF+aBJEDdtxQyDA3Vrts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755161589; c=relaxed/simple;
	bh=2nrV1RGrteIGILA35JGVcooDPCw0i8l4s+Fs181xoas=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=abXj0Hm8RoLy26xKQVsaQDCxSv05TKwu0PaVZrngYcq8gf70YMP/6WUxg5UWEI0dYhMzNCYBLuILhkl+8Bw7mtpqlp1MJz5aeoq6oniFaWXiEPDparSR40nqUcJUerCghbrHotLWtHnNQAJQqlEExU9Pi4vTPo7br24AmqC60hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jyh4dR6Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E8gj0M002767
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=802pdFifR+0
	7OV/Ivdq0qgpF3I8tJB99ZMyu6lvL/YU=; b=jyh4dR6Y5GqRn9yuJLvkmi6qTRV
	W1SlCzCiWosgv77Dv6xxSxN2XXcwLBJccGOtJeFIx6ysXRCPtr7fvDrbaSw83d6Z
	twIYFk7pDFIA91QYFQtLMlNbSoUqh2vNpr3I6bAT+UA33MRhN4zHwOhIn2O0eEaR
	3CjcdJYkjtXoG8Uhl/bl0GFEyyMZKsBTfuAlS14VfX3V1OKshB9LeVhbaQrjfyO3
	u3Vs0EZbcFLnWgf9c3jZseeuy2EgX+9RolWGPOcRsvqNYky+0TzfmXhPmL3nEbfr
	PB7kda6Fx4iP/K0fM56yI+csS6tCxN2hhDm7yNNQ7Z5t++0AEbWP9mPzPyA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxdv71fj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b10992cfedso16491531cf.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 01:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755161585; x=1755766385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=802pdFifR+07OV/Ivdq0qgpF3I8tJB99ZMyu6lvL/YU=;
        b=abRc+ddb0zF/NYYAaghDeW+olkxcJRQV1dOcUZUFfe0aHcFDjw05A8vyTkaqddzUbR
         3kyQImbx3iRzvi9dNkjgyYMjpG1XTihHnNdN7rglgdarxrJ5cK9FB9JiQx8wOYih5DyR
         EoCK5pyUqNi9+OTJZ5303KurMqE7NE/pAyhPwCCnLhzI/ACCrSnP7XbovDZ5pXwfRI9K
         ILLNWQUF3w0KBgpOBRf02VQ7k4SVaZVJlSFeitgYE28P2NjkC+132hdL87QbAXVjZ0SU
         C49mVf14jrNS3cyKPr8zHgnqlrLncTd42Drbh39lOnlQUVCE+veAcBwUoOx84wMopqMd
         XbaA==
X-Forwarded-Encrypted: i=1; AJvYcCWbbonVPos/aKuIHzWcNUYq+JuL/ev5pAouWcKHRk3/CJw151LjuFCSQfSU8ifoAwU6xUR08XMQ03js@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp2t9Qa+i1Z6kohBd9SSDg2GiryGaqHMv5o5DqzylrCe5weqlp
	foAdnGeeoNkMV3cJ01r5b+HX+LLqQy2qcXe+RY6pzUkdfGvLQtyQtYijOZzml68LeL54EILGAFS
	O0/MIPrHMx0/Ly80e+klX7CAXDvBwZivBZ852/rTaaLAyIg0AN1lgvMEPly6L609+
X-Gm-Gg: ASbGncuUQ6bUG7p4luZMew9q8ELkJGkhdq75i2woD9xVxfai40WpsjBp12xwyQwzNz7
	n0F5boB602jM01Vpb8kDklebPoigWmA2fbgO3StLrtr5Dk3bUWPNjK3D40hb7lVaU+a2uhARx7U
	xtmx3Fsz+QC1adZqHuSlVviO6sDUdCiK+ZZW740nJ9KJNczwAQ5QEZJQO4gKtH4DN5I0G8LYAuN
	Aw6YVqGYqwKabUHIcTEZkQ1XBEpURTk/KKswDdvtTB4ZYVWAPj9XyZzk5ecxMyHELvqe9Mj8HD0
	t0+qpUBNK1abt7zrrFOGbATamOwVnBaHp7i+PRMJGyj43oV2o2NHIB42oDWxllyg0Oia4oq9U7+
	bcGTHuJ89kgh5
X-Received: by 2002:a05:622a:81c2:b0:4b0:e934:85e5 with SMTP id d75a77b69052e-4b10a958260mr23386611cf.5.1755161585072;
        Thu, 14 Aug 2025 01:53:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDfgB8pIcLGblDgdcBbn8sEeOUMF0U28QhhTWEOvZWpvnlv7kxX3cNXjAhMSWaa/z5Xj1oDQ==
X-Received: by 2002:a05:622a:81c2:b0:4b0:e934:85e5 with SMTP id d75a77b69052e-4b10a958260mr23386401cf.5.1755161584620;
        Thu, 14 Aug 2025 01:53:04 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc93fsm13155895e9.2.2025.08.14.01.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 01:53:04 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v10 8/8] arm64: dts: qcom: qrb2210-rb1: Enable Venus
Date: Thu, 14 Aug 2025 10:52:48 +0200
Message-Id: <20250814085248.2371130-9-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250814085248.2371130-1-jorge.ramirez@oss.qualcomm.com>
References: <20250814085248.2371130-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=689da3f1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=Qms5JgQ9tnEuTiNUcoUA:9 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: NwYO46l86CROAmxqqbBrJIbxClnsQDQ6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfX0jnR/lprnGKh
 3EkJvKs7KTZ3WUZffgi962wNkTlTgxbSNa2HLj0fYcikjQJWYR5+SCQ1/vui23fAw78U8ZF9HSI
 TokCwTAyj1xOKxjmHD8DYTGCA5APM6KzpkV4EbTOC1SN0YvbmFSsbnDV3MhkB2l+kTpxMvashBe
 QyTicH+HzxbDthu/K0cac+vbMBTWtY9WE6irMuLOzOJAqIU8VDXsK7U7DUHkfpKf2Z6csKt+LFt
 IWwMD0U0LyxP9lB6TaURWNGdl4MQuuPaBMIFcppvfnu+0qxFriVTZUcXNjQHAV6Lq2mYbbpQjzw
 GRE6/65rKVRQhg/WVqGTR9TzqD4CueXqUzKXIbNk8Oh+wS3jFaYeN9EyPKvp3xSTkHNv6vaXhUC
 n/350dyb
X-Proofpoint-GUID: NwYO46l86CROAmxqqbBrJIbxClnsQDQ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025

Enable Venus on the QRB2210 RB1 development board.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index b2e0fc5501c1..e92d0d6ad1b8 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -698,6 +698,10 @@ &usb_qmpphy_out {
 	remote-endpoint = <&pm4125_ss_in>;
 };
 
+&venus {
+	status = "okay";
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
 	vdd-1.8-xo-supply = <&pm4125_l13>;
-- 
2.34.1


