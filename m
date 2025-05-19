Return-Path: <devicetree+bounces-178342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EB1ABB75D
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:36:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FB021899B89
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0681C26E15C;
	Mon, 19 May 2025 08:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j3vyxW5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080B926C398
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643607; cv=none; b=ZjuPsjUkHTwMadUVwAF2gF3Bf9f5SQXZeJAwRGw2ClYRoAxtWXBkYtBEErw6vrGp4WtStAc8oK3SPZueVmwpub6E7RFXmqNDuf33FtDA9yFCnTgQZKfq0vgXESl9oWhpzXcBQ6qypV+xltanKEa00YN7sk2sM7EwiYT1Co9CjWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643607; c=relaxed/simple;
	bh=WUDf5oTK59RzFC/H8RC+nKwkbd3Gr6mAZjX4xFarDhw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VaZ0RRBH+76aNCLTiGykXWS60BGYiUFadvnifnQa5KkWsIfk39N5UimVQp8WZy2bGBGHUYecAXXRurOPlKlgJPEO3A3U6fnnFsSCQ3GSgwaTMZMucGp62q96Cnv7hxCKUrnpywGWvbB3ZQS6AxCnUXNQSKMrPe7eq9QHyiPy/z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j3vyxW5P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54INoURQ026191
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lusP5vba1cH
	TmTKazSCNPRqnEYzF7hN/TG78FwTmuJE=; b=j3vyxW5PUHHR+/Ku34AVo6JFdH5
	xqHvX8WagAQs2DA4MjnQ53dwTdU5AK0QLKu2gkhmU7VcpCn0PrAt95uekykFeoJ8
	KI0TC+Up3KqTWRICq771axb7ywLE344g8qTRipmwt0YPmb4zNFJ+lA42NTkTl17m
	3lqN4OdPFuq1BR3+6gEMJx4ds4TkvvTGC2oLOUncLoj4YL24LGobF9aoium48UBH
	8QNLjoj4ecS3znih7JjOTeh+NFGi8oBi774lmQ6UkJKwc7dbn4i5Rm7xt+hNYVWQ
	RQuyFNdFjADmd7JSev8Wa+BvvSYlXXYi41gu+gCMXrg0HlQqAMz9q1pBFnQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjjsumht-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:33:23 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-30ea0e890ccso1694391a91.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:33:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643602; x=1748248402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lusP5vba1cHTmTKazSCNPRqnEYzF7hN/TG78FwTmuJE=;
        b=oxOi5J2YdFCRk4hSJXczpW/xvgKYgSJmzqfoUaM2O2DFUIctVDDxceY7CgsHNv1Tss
         IEVNMLGKhhOnWGWWdoXzcZVTq9Rbr1yF3V451izfEG/ARgxo2y1ku2Si/DrNKbBjeMlF
         QfR/jTUiwQuJRrc/HfOS1FHNiAzs4tGyWT0EaOjwimubfMYOYSsAZBk+SQVDAx9Mzl3y
         yUaZxFVj6AgO61esAH7MuQNrul+9O96uqgSe6yrIR3Um2uuZXcCMgNDAMwKmMcNY4A7y
         Paedoa1D6foJ5dWdiyNQ6qxcY/sbI67wOsGEJ9oNxRlR/YYks600WbSJhrROIBQRX71m
         12TA==
X-Forwarded-Encrypted: i=1; AJvYcCVDr37y/V4kXlbQesMsFSuZZOMb8NDJCUC0xOBiu06IwnSOz80dPTYt2/tBmYnfhPJwPNSKzxQTRGOG@vger.kernel.org
X-Gm-Message-State: AOJu0YxM+sfI9Jr41Z04yGM8jlFK1isDDymTX+4T7GR9cTnZHOm2Zbri
	U1egl8gx+jJ/ImpTY1Q4fHtbR/w4O3dd9We628/gBinpsXMtPgCRLaHQ+MJJDksdbP2YNOKkjpP
	/IboS0THVQulJHvYG8JJOimXK6oGj9oVllyipI53Ya5crumd5Nre9FjlG3jhDgZwx
X-Gm-Gg: ASbGncvBNNAeIRxoJissCW1ELjiPCXjvgCrH7MiSK1AhXrkkIqOlp2h0ClIwDopKDIr
	INoOkjXOGOGAuF1TWH7KDK9LatUYJzbJexDbtRh4VDoH+psY/qe7X5f8inBVEWtQfJcG/v271Sz
	+BADSJxWeE8qy1NOwTUxwOODz6P7GY9GLp/aKn9G3RaaTc3DDLup5lixjj5Iv4yPNXIRJMr6vYa
	+chSJUuN25hK0xHvyKUe8oCynnnoPpSA0lJ08OICpk3UiSCSQgo3NIbYKzdMWldj18xtlc/9Fvl
	cU22/JfdfkrIAhtEaR7hIe2hQsnRaA+hzF4O9Uk0sZQt5NiF
X-Received: by 2002:a17:90b:3a05:b0:2ff:5714:6a with SMTP id 98e67ed59e1d1-30e8319a169mr14877140a91.19.1747643602526;
        Mon, 19 May 2025 01:33:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJgez4Ba9Dkp7xRjB49WazKLV56Vbnrwm4V+0kd/o7IW6d7+7SJKmeRpcSLYBWD3W7NX1c5A==
X-Received: by 2002:a17:90b:3a05:b0:2ff:5714:6a with SMTP id 98e67ed59e1d1-30e8319a169mr14877105a91.19.1747643602064;
        Mon, 19 May 2025 01:33:22 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30e6af9d586sm7003887a91.11.2025.05.19.01.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:33:21 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_pkumpatl@quicinc.com, kernel@oss.qualcomm.com
Subject: [PATCH v1 2/2] ASoC: qcom: sc8280xp: Add sound card support for QCS9100 and QCS9075
Date: Mon, 19 May 2025 14:02:44 +0530
Message-Id: <20250519083244.4070689-3-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519083244.4070689-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250519083244.4070689-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: sd1wiTo_ocM4u2qomygc39JnlQMCJXtV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4MCBTYWx0ZWRfX0Bcg7oWuaava
 nfYrW5dN5qzleyVt9A2FkDYRjgpuzVcLzhASTeeItEvPAh+lCGg47hKmWkl1PNMA8PKHia+WqMc
 odasEFo/Vs20kPwy8MvQnSJd/ucdCOF29Sa5g3A+ICx41QAOYwPiIhoNHJ/wMcaUZ/t6o0Jd+Lt
 B95RpmXs/J1W/EpzgtMlYif97TgTb/xrtP5qudA7xS3RpNHxTtvZZ57DjI0CJ31QgDqlNYYqLWz
 y5EvmxPM+yEWwe4gCzOH+iOmBpkTcfUd31TGqmTteQTDz95VWjXVTK+HkgFeqbUkX+iYgM2wWMU
 Tlu5iFCOxeqw4EbIV2YfkRTZTSTuxOl7goX1E+mlt6LBGVnY2XI+7CMjGNbRnJV9kXpLICOnfN/
 mMTB+aKSPsPE6eBkJ1DPziQT8nHVdkr5IIkK3VAzC6AgIKfdbioJbTw24MXnjeoQ5iyTuRff
X-Authority-Analysis: v=2.4 cv=K4giHzWI c=1 sm=1 tr=0 ts=682aecd3 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=i_bJiae3Nsw47DEeRZ4A:9 a=zgiPjhLxNE0A:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: sd1wiTo_ocM4u2qomygc39JnlQMCJXtV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 mlxlogscore=999 suspectscore=0 phishscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190080

Add compatibles for sound card on Qualcomm QCS9100 and
QCS9075 boards.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 sound/soc/qcom/sc8280xp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
index 311377317176..99fd34728e38 100644
--- a/sound/soc/qcom/sc8280xp.c
+++ b/sound/soc/qcom/sc8280xp.c
@@ -186,6 +186,8 @@ static int sc8280xp_platform_probe(struct platform_device *pdev)
 static const struct of_device_id snd_sc8280xp_dt_match[] = {
 	{.compatible = "qcom,qcm6490-idp-sndcard", "qcm6490"},
 	{.compatible = "qcom,qcs6490-rb3gen2-sndcard", "qcs6490"},
+	{.compatible = "qcom,qcs9075-sndcard", "qcs9075"},
+	{.compatible = "qcom,qcs9100-sndcard", "qcs9100"},
 	{.compatible = "qcom,sc8280xp-sndcard", "sc8280xp"},
 	{.compatible = "qcom,sm8450-sndcard", "sm8450"},
 	{.compatible = "qcom,sm8550-sndcard", "sm8550"},
-- 
2.34.1


