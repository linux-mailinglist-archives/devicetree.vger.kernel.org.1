Return-Path: <devicetree+bounces-211737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC5FB4061F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 247E816BF62
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FF802DC32D;
	Tue,  2 Sep 2025 14:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mCMtip+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C804F274B27
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821661; cv=none; b=ojUV1GVWoGYJ7EWitUfQyVgRDsBnkQUf6FRmFAbiISQRgzXrw7KkZiNArSN1lYDIuXQaeP9GTsTht/mtPbzt5WIYUuDTILoSPG7Yxnqb1jO3ddtaDhRGeWw8/7TVGX9Z6W3frfb6yUaQVJbcoz51KetKNy4nzdOPjYthDLSqcPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821661; c=relaxed/simple;
	bh=Erpj/ouDd89cAEWDr0McVn7qsX1VY6xCR02OGCP1IRQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OuZLlAvbtPc219knu1KwMUq3vDp0LkYWhDDb+ksj7yryZnrRCMOK0IS9KpKFjJkDU7GwsccHc6ud1okIjIcZocr3CQEIokQctYyzijqmi+/sOIOCcwL7VY36CGi9o4wtnEGt3UrjrS4XoMXv+npF3VPzh2ltxRM3MZPvpkGb8G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mCMtip+k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582BAXdb030605
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:00:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=WzGhnqCbKpL
	vbZMIa75k5x8iAR9+F9/qdnVgwvY1TNM=; b=mCMtip+kQ1QOc9QDMwKOg/Mtb+0
	R2Hy7zIJe7WivVsJZjpXagIpRupYao2OxC8Lf3VHq8bPw0GtJ3J7iIxvBCuYOu4E
	Km/SHhDf5Osuk2v+5diQJ75Ms1jNBPV+zIfjp5Y7bGwqlv6Dfl2pSPvuEMVyzCqj
	EPPk/+GIvSFmdGaQIUdCwnxRqZIGqadEREg8LWVly3SfS0BPjXBS7c5nYZ6QQnRC
	FYYr+dyaMTsiXvvhdgfacuh+WSq+RPQ8no64QbHSkku4tswbmc4SBwHnkoqLvfm8
	mIXa5BHlLNnixgkI7FDkGCH2aQGPjziGUwZe+nUD4MLvcehaHoQy3P1W1kA==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8r08b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:00:58 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-89608958740so283157241.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:00:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821657; x=1757426457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WzGhnqCbKpLvbZMIa75k5x8iAR9+F9/qdnVgwvY1TNM=;
        b=HZIEhyZHCA+WjVoUABaJB5Tvl/mqu/gbFcq0nIdCuJ0z7qf5s3mpNec0GVgWwYHlnJ
         wvbmWIHJq5O4dS1tCRXPdFTVCIF11fKW7QM6C8t3MOKypgf8CA85b3cdvkfCwvnKtgq7
         qpXGklzehSw8afmxTq7e2xohsYQd8+vWFSXNtErGM58JF/GGVH10lSIRLyCC28kw16js
         jOfj2woe5ReODxQUY8wYuDiJbAZdGmq8QKNMXveAPjMHJ1LQ93Kcx3c0Ov5PcgM868B2
         fCwKejwJwDf9NhFYz310IxlIRgzf2R/qF2tzVddG3seI6ijlXMMDGzPSvP7PXE5+X+TC
         WxWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuQ0sRdkoCEzSUuKZXtUGurNIHMlflLdU+aDmO+mACI8ey8le3wguqiYu6xlOyJ1xloGAWBv6UG/wP@vger.kernel.org
X-Gm-Message-State: AOJu0YzrfNw7nvFCAAF/x2XGEo0YG8PgzcIcsADPqc968zLMe1DO36yV
	4C3cTaltd3IkFDQ9U1O6jXx+n6OczZHFqToIjqJA338PvJDyz526msiUgI0P0h+5ICwE/cLiE6t
	HAVanorhaq08rLPU6JCv5Jvrge86oh0B1ornVMnAMZD1wxkvo2NZWLJawpPccRorK4cr38psN
X-Gm-Gg: ASbGncvSH3ebWf6sZNuScnydLOU1+Lp4u9uEu9EOCQCJ1cPT2SjPQDQMJ/bfI8XzBuk
	STMdXNXY/sXY2bWiO5zly9wwxGNiD1RwZyoSure1niqZhMTRENrMDFaORtc4ufdm/T8ZbHyvuyr
	K4l7YuvyR7yPyZaUbEcxwT24QE4ZooCn0MHbBvHhsSzSqHwcEJBHVq8DD1J2ZaONVr++EzTNONp
	0wxFJzVMZXqGNg3JUrJyuT9KfOp5drK8g0PY6Z1zIV4ed2wPKN8qoyEHzhK7QD5R4MU2q2+TdhR
	dFz1GqdwugbfvbwlvmcJAi4CLeLGwQ0Q5TVCOhMAjULOdrLC9KiXPg==
X-Received: by 2002:a05:6102:8017:b0:522:194f:fcd7 with SMTP id ada2fe7eead31-52b1a06be68mr3884643137.15.1756821657135;
        Tue, 02 Sep 2025 07:00:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/U4dPnlcOQB4TWwCsU2ajC9mEnPbFZd6rjcAkR2eVla8SO3be+Dd93cVapqglSYKgRBmE0w==
X-Received: by 2002:a05:6102:8017:b0:522:194f:fcd7 with SMTP id ada2fe7eead31-52b1a06be68mr3884529137.15.1756821656042;
        Tue, 02 Sep 2025 07:00:56 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d2250115fdsm14381196f8f.40.2025.09.02.07.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:55 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: srini@kernel.org, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 1/6] ASoC: qcom: x1e80100: set card driver name from match data
Date: Tue,  2 Sep 2025 15:00:39 +0100
Message-ID: <20250902140044.54508-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: UqiMwZ4AlKNWSltZuNy9OV_2_zjnPI8v
X-Proofpoint-GUID: UqiMwZ4AlKNWSltZuNy9OV_2_zjnPI8v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX13yzrWAdcCdN
 /kTHa4Pn20MtSbDRXoP//QNipQnJHpAXcK9da8kblLF6mK7BwPVuEX5/1LMP2yf004TMfkvFNTc
 sosapFLwnGfF5DdYGaaPBlePiTId/3WeVll/EC1be8bxtysUfKGdITdULB10NscRALHx9shrr/f
 FJ9QiggqmIMjaMCqYoPMcgwMePuTqr+1F9skPuGKQejisoMMP0GXwazny4OeW64eVYMHhBHgpbW
 V7sIZN3RtsQq8Sd1Qs4rE7SXeuxRVJo233OgLj2PjUCcA4/9jhiDhXFWPhYxZ/hSmY5deEmczyP
 YM1GOjbB2nTOfygqsg+PLPvvyY18kFxvmdUrvCYRmkkQlf2txte+PKgUq1efnRcCZsY83b5y3Yx
 zCK4FGQn
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b6f89a cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8PtRD21WSkYcRLTV-pYA:9
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

Sound machine drivers for Qualcomm SoCs can be reused across multiple
SoCs. But user space ALSA UCM files depend on the card driver name which
should be set per board/SoC.

Allow such customization by using driver match data as sound card driver
name.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/x1e80100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/qcom/x1e80100.c b/sound/soc/qcom/x1e80100.c
index 8eb57fc12f0d..322010d54af6 100644
--- a/sound/soc/qcom/x1e80100.c
+++ b/sound/soc/qcom/x1e80100.c
@@ -210,14 +210,14 @@ static int x1e80100_platform_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	card->driver_name = "x1e80100";
+	card->driver_name = of_device_get_match_data(dev);
 	x1e80100_add_be_ops(card);
 
 	return devm_snd_soc_register_card(dev, card);
 }
 
 static const struct of_device_id snd_x1e80100_dt_match[] = {
-	{ .compatible = "qcom,x1e80100-sndcard", },
+	{ .compatible = "qcom,x1e80100-sndcard", .data = "x1e80100" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, snd_x1e80100_dt_match);
-- 
2.50.0


