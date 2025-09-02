Return-Path: <devicetree+bounces-211743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 933EDB4063F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:11:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D880E1886967
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2112DF6EA;
	Tue,  2 Sep 2025 14:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jFDzbKot"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0644B2D239A
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756822104; cv=none; b=N6jnDhK4Nhoz5ZCwedXhO6+p/VbKe5TE5zfQCLEgWqff7aOGmImnkd1aK/R7lANormtg+jprprE8ieeYfIlbQYGe1hw8/zLYfJUFP27xvUh+/uZZtueeexWYMJ7wwT+WrsCDtjOr1mWhi0yCPPqb5PWMx7bpwUPcybO6pr4h1aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756822104; c=relaxed/simple;
	bh=wc/7JbfhxWZb0IvcqrXcslNekS6+I2olIuv0yDvhRhU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MJyZTDh7ST4KdWqAvnx51TObGkK9K9wwSd/QKnCA2KW8ToWJ3uH32pMVkNI88f/x8f1FODasiB1/3bWTf8QD6Q1eSXhYomXb9o4gz1yBCXM5m739LOuTjp640/6UMQ/daTQAuCaOvQoJWl9HHfuMR6I5a6NLAkWE7b0zQq7dVjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jFDzbKot; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582AqFMO017641
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:08:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ofBMOU8ZIZT
	vpxtjJjzxzmb9uOD74fydkc+Mw7BveZ4=; b=jFDzbKotkqypIshh5GCVuxtWybR
	GSkI3mvgBp18pQfU04reVVaQGEoK2AqUDG2uQwH+qAlL3+XErhVrluCEZfqpNu+h
	1AeBixrSKHKV5ZXwT8l5GzhXQ5IRmg9kWjgKSNQHC+JmHh42cOlYczm4fzTXJCuj
	ZnV/uLf1XKLoOhIbRaVeptLTmqE53YIfMZ0ly3rzAEah2JFUEMIQN0YbD74p5htn
	vYhtt06I0lSvMjuDFarm+OZqGdhsUqwIqmgg8SAdj8/UoXgIJwJiMcR2edyEIHTE
	vOdK1n0oDk+xFWhuI0lwh5zjgXlnWjItd2hsZe3YYF+D9RM1tf1BvrnhoGw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8yvgd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:08:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e870317642so1036211885a.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:08:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756822099; x=1757426899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ofBMOU8ZIZTvpxtjJjzxzmb9uOD74fydkc+Mw7BveZ4=;
        b=sSb58aGEbZnCeqfhmHiAZNtHD/1PsYuFd06H7gogpg6Q0KYk3F/FuiIVacukgomOn0
         FA21ilhUcMqzp7KojZqpZfb7c/1l2Jpm/OgouBkrecfe5XhH3NOPf95BcY5S/Moy+F3I
         v3lW2BMUWTqYVLPji0/EPVtIi9lFyK7k5EwQQta2UJV6KhI0UPklbg+Ah1eGw3TSXPHg
         YuqLELN0wqGeocw/a47SF1szgbDlGFwbgNOQDUijNbLOPJSF+UgB6BwLYMMRSCA/CSTT
         aM6xkVkqov1xDK6OwyMSXrsK1lr52UxR9RYsaEO6yLY2ksFKVyqDQ6j6wbXLSVSYUTBd
         Ojbw==
X-Forwarded-Encrypted: i=1; AJvYcCWh/s6rKEigOyYa7yYgGlJH7REjY+pMGPUvRBTjAGsa40Slb/YViYppR/ZplQYFSUFPGqcAOuiecMox@vger.kernel.org
X-Gm-Message-State: AOJu0YzLSPeu7OP/xUchvoh00ATJAnJ2kLIbEoqHdA4B/cJevSw9kgSx
	4Hst40Kr+E3K7HUyRdaFcNuRiqM0yHkQxkfOm2HOPXzPevYUs0YTMj+KZirpGcgxay9oJoJEIH/
	PzkV8HkgLyQtylgWBU0Ci1QCUjoKh51RtAEWKGdpswca+X6GxO9h0R9RIVyQg/WBL
X-Gm-Gg: ASbGncvK1YPJFz46PzsiU1ja8X1INSLAmbfbShgpNU6h0LOXHGof/FQW9polFL2eYRK
	lB+p/lb04WsllUf8lmT0sTa9zT857w7ZN9uINER5Aqr4H/jumGKCpNXii8JcvYomMqWRlo8bn9E
	5uacUIaJnXCpMNuqJTItViW6mKE+OGHOZ51Nq4cLV7slb5K+Ya1n/OlNiKIKvE/jxhpBiRBhYqp
	8+Bmtp00xcH/N8/o30LeLq1FlDuM6D28armwHSTgszZEZvTQuIPA8A8voJ11fp6cociVGrWM1EJ
	eCoinn3A7wkmxaRbSpE5kAFSKmBMyt5h/Q9g9aELqmCNfUsjv2TUzQ==
X-Received: by 2002:a05:6102:54a4:b0:525:42d2:790d with SMTP id ada2fe7eead31-52b1b902c6fmr3471035137.25.1756821671543;
        Tue, 02 Sep 2025 07:01:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE257wS09hktiVeXoKS7mdBQNq0fy2/WSA+DkddsrfqENMevrNa5o8DRsYPDgcJnlFqhk99Sw==
X-Received: by 2002:a05:6102:54a4:b0:525:42d2:790d with SMTP id ada2fe7eead31-52b1b902c6fmr3470791137.25.1756821670137;
        Tue, 02 Sep 2025 07:01:10 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d2250115fdsm14381196f8f.40.2025.09.02.07.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:01:09 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: srini@kernel.org, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 6/6] ASoC: codecs: lpass-wsa-macro: add Codev version 2.9
Date: Tue,  2 Sep 2025 15:00:44 +0100
Message-ID: <20250902140044.54508-7-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-GUID: E3-zawxrHQzLq_OpCi3DpgbXJm9OqrSP
X-Proofpoint-ORIG-GUID: E3-zawxrHQzLq_OpCi3DpgbXJm9OqrSP
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b6fa54 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=aFUyGFNo807uSY4iGNgA:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX6hCBi7gwFEF5
 J1s+4H0CV9zOW/9YY7QZ+Gfug18BroZDSV3ZK055s+p0Rg4IyDUmgdAnoigne8cehPvCa9RBamP
 Z5PF0x8fOPVuvUkR4w/jbwdf2EujU5ZG3MTSEnuTa36pXz80FJZa2niz9BNbsSdGX3TsMPEjzR0
 5Jez0jwBYul1iPKyNbKB0Ms1qZc8T8cPIhmIez7gQ3kqMedRG81KK1RBAtSp2HT/5iRN+esFj67
 4ElJ55eJDU73ls/DCC/Uv0lSqTVErf2G5B7eH8amvevFOcSgGQ3UJ31IDiAJxL6V1Ggc0uQYQ+m
 G4FozDzNhqnNrCwFrCfoD1n95lXte+HeQqG1xHXuOLBoZsVqvlhs2pyE8cKrh4kv0oNcoMkoWpd
 OOD//LDC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

Add support for lpass wsa codec macro version 2.9, which is available in
Qualcomm Glymur SoCs.

Its compatible with 2.8 w.r.t register layouts

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/codecs/lpass-wsa-macro.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/codecs/lpass-wsa-macro.c b/sound/soc/codecs/lpass-wsa-macro.c
index da6adb3de21d..187805b39264 100644
--- a/sound/soc/codecs/lpass-wsa-macro.c
+++ b/sound/soc/codecs/lpass-wsa-macro.c
@@ -2690,6 +2690,7 @@ static int wsa_macro_component_probe(struct snd_soc_component *comp)
 	case LPASS_CODEC_VERSION_2_6:
 	case LPASS_CODEC_VERSION_2_7:
 	case LPASS_CODEC_VERSION_2_8:
+	case LPASS_CODEC_VERSION_2_9:
 		widgets = wsa_macro_dapm_widgets_v2_5;
 		num_widgets = ARRAY_SIZE(wsa_macro_dapm_widgets_v2_5);
 		break;
@@ -2838,6 +2839,7 @@ static int wsa_macro_probe(struct platform_device *pdev)
 	case LPASS_CODEC_VERSION_2_6:
 	case LPASS_CODEC_VERSION_2_7:
 	case LPASS_CODEC_VERSION_2_8:
+	case LPASS_CODEC_VERSION_2_9:
 		wsa->reg_layout = &wsa_codec_v2_5;
 		def_count = ARRAY_SIZE(wsa_defaults) + ARRAY_SIZE(wsa_defaults_v2_5);
 		reg_defaults = kmalloc_array(def_count, sizeof(*reg_defaults),
-- 
2.50.0


