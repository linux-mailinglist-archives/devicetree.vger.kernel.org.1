Return-Path: <devicetree+bounces-211742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFA0B40623
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:07:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 317EB4E7AA4
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993A930C357;
	Tue,  2 Sep 2025 14:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BynYITuI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74E2DAFCA
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821676; cv=none; b=CPbWWbflZ9xrD3t13fS/TVrSPFFYtX3rJFYr3mfkZAfaDPWTWtcanhAM4RARsxAb6ZNijQqO/2IqZIpQhWrWX8VuFqlUeVP18Y5AjhsEQWoxKY7RgdmBJ19/YZ/WSY83YsadMr2nHe/za6It53jx5kRRUcry4ZQxYpQVw++zzJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821676; c=relaxed/simple;
	bh=ZCmYtXeOLiKF/8J7Ii2M8E18kXf+ruqiaITuaaqiq3k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dMi23y8dpUDmGNt/XIrBH4myKN6w3vws2Bvz83JJiTK+sixeIF32CD74aICps4PdIYBn5LUUdLWP6NK4DS3kDT+ErX5f3mhlw8JzdFmZiCDrjGTm3DhvQ5MkqinpLcZobCaHWjosu1WH99Skt3+ESsDCY4BaeQ6vO0fTwzfqDP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BynYITuI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582AwI0J012621
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:01:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nmnJ45KeZoK
	mJHcfZsLs3+FV2VWNH0u9h4uDyk73m/k=; b=BynYITuIn6Os+8yQvZhtg4mBQ/a
	A4omgyulKqSCPbtJe2nWNr1z3Mm6yq/gpH38zH3qdxRFp8zY8aNOeQ3Uzinb+pZR
	ggccV3RLlJqmqC3YGhyAOo8Z0VLjE3CslNzCxWMOxHhPDtZfKrHZen6qZjj2bqjn
	ditn50QZJ+HdYsIbUprUIaTqvWwq8lKDz73iCKWXnsUIYFY5vDsV79hg8Iw4/87Z
	xHPMmTcvXV1SC8QkBnOaXAAjN/FT3x2JntCM+8nDt4x6FvH9H5k3hX0qHnlqqadD
	btS2kQgOtTIyooiia4GeE290vr81maV9ZgqoeaXKRd2Wuh49uhykaZabkwA==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0eg5wb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:01:14 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7455196d9b7so2245514a34.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:01:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821672; x=1757426472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nmnJ45KeZoKmJHcfZsLs3+FV2VWNH0u9h4uDyk73m/k=;
        b=Vks3HtKDoL39vyuCBD/ctx94LNzU8Q9/O6hegpTLZTJMAAZHo4wUN4p2Dlz0d85B8S
         mjGbQHrOM1+Y7Xl1uqLcs8zqnYp7OdIYa/VYHwvNuA1HdLtvR7j4Un/bI9ZBJAXMh4tE
         rJL1hCgU+UmfNVhu99cR8RKfbxBMtv6UWmQ2laPT6kx+3BvC6bKgSi5TbIQttzd2P66L
         aW8qVzQX2tq8SvkH0LeFi0KB8SuUD3wsuewnNoZYqBaVE8vrz8OFZDBC4mrWqRVFD7e7
         7eUrSgErgJE10RJOoWbHpTzZ+ma2TKRSrDohxyzGBDyh4qD0lnpFkAHv5qu7PJWkDQUj
         SkOQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4pKyMMd/nxqG8uAmGo4usqbTfn2kpgrv1jccD54OPeAnUX7LqGkDlu6U5ycrYMe1khkjuPw3PZyeL@vger.kernel.org
X-Gm-Message-State: AOJu0YzXO2SBNS6kU7Jp0c+PZd1yXGUGtRK4MED5ppz5UVJLm8jQEHdL
	8ywpWPna8k80iECoLY/FVm3Xqd/0X13I/wy8BWxnTs3RWnqUuRBCUxx6QaqY7pCbi5coaBMDGs5
	GpHh8RNrXJeNpFJuXXxKAOkn31dXLlGWETseJgWlcDGNd4kCB33vi1RZzio1aKmtp
X-Gm-Gg: ASbGnctN3YQXxLUA5volw0JR7+Efc6OAi8V3wLGbD4sR8YblbX/0CT0j1laRDe+SHa5
	amZq5h6z2VTkQ56L+rmEFTjwuh0mdH5izAMQIUtQQYb6nwkLahh7q7zDnp6tcYVFG5Aaxjz/68j
	YPvQAPTme/hcSu3YmqBn8vR0mIdOZPUxMGyBF6fJ/es9NcQef9tOQJEV6rId/nhKBVdEtYaGwWC
	M+19g3dSK8hPKx1eADhu2ePVRb80OgsBdFZ+bQ2TMlFBl0mBm8xqtyOMh7zhTDiWGrRvdy1Zy/m
	oEKe5m+yQXlRMu5OA/RKycmLG61jgYwyCAz9AyChYY/BoufF7MQAjw==
X-Received: by 2002:a05:6830:630e:b0:744:f08d:15fc with SMTP id 46e09a7af769-74569ecf0fcmr6903310a34.34.1756821670716;
        Tue, 02 Sep 2025 07:01:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMw9YT5rkoNZ22kEloWpSq9TQIAdQv5X+Iy54NEzqWo60ZTF+TAlJf3AXt2PwZZsGYu12l/g==
X-Received: by 2002:a05:6830:630e:b0:744:f08d:15fc with SMTP id 46e09a7af769-74569ecf0fcmr6902363a34.34.1756821662010;
        Tue, 02 Sep 2025 07:01:02 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d2250115fdsm14381196f8f.40.2025.09.02.07.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:01:00 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: srini@kernel.org, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 5/6] ASoC: codecs: lpass-macro: add Codec version 2.9
Date: Tue,  2 Sep 2025 15:00:43 +0100
Message-ID: <20250902140044.54508-6-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-GUID: YCS3xTTQ5QkOlCP9jEP_pHKcD2bi6q_-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX0oYkhLF/TPeP
 2xsmbWCNhCwF5HJFbOipNmoPRsxkp+x5YlCIIQDYqTYYniSHoG2mHZuMAmNt6xOSz71/165vePF
 xxX3xyY2LPllneySsRnIGiDGg/B+jXmBV/Ri7/WZQJo4s8GbRF6MfQjKotDyvIj3Kn3CZDf/r/d
 5PvThCzYDObuaQ58HPxZdT2HFMbSwcwG2gkmgwdmqlvCH+hjeX6v/4aT0i4RVgi5WghuDlsyXkZ
 e77Koophel4m3XWaRo7w9C3Zy3zCfBOuI1QFQ3ltQthxX1yKtQopkxq0EoMXYSbFlpXbLQoHJNJ
 FG8/3UWyVDJmUa6moVKXuVEHIMIjaomQXr4rBHNrRDzWQeoFNLyK36w1BGzSCQ5bXRqS8zc43g5
 YnffqIJg
X-Proofpoint-ORIG-GUID: YCS3xTTQ5QkOlCP9jEP_pHKcD2bi6q_-
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b6f8aa cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5KERvJ6N5coBvBd-fXAA:9
 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

Add support for lpass codec macro version 2.9, which is available in
Qualcomm Glymur SoCs.

Its compatible with 2.8 w.r.t register layouts.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/codecs/lpass-macro-common.h | 1 +
 sound/soc/codecs/lpass-va-macro.c     | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/sound/soc/codecs/lpass-macro-common.h b/sound/soc/codecs/lpass-macro-common.h
index fb4b96cb2b23..10ad682019fa 100644
--- a/sound/soc/codecs/lpass-macro-common.h
+++ b/sound/soc/codecs/lpass-macro-common.h
@@ -29,6 +29,7 @@ enum lpass_codec_version {
 	LPASS_CODEC_VERSION_2_6,
 	LPASS_CODEC_VERSION_2_7,
 	LPASS_CODEC_VERSION_2_8,
+	LPASS_CODEC_VERSION_2_9,
 };
 
 struct lpass_macro {
diff --git a/sound/soc/codecs/lpass-va-macro.c b/sound/soc/codecs/lpass-va-macro.c
index a49551f3fb29..2e1b77973a3e 100644
--- a/sound/soc/codecs/lpass-va-macro.c
+++ b/sound/soc/codecs/lpass-va-macro.c
@@ -1485,6 +1485,8 @@ static void va_macro_set_lpass_codec_version(struct va_macro *va)
 		version = LPASS_CODEC_VERSION_2_7;
 	if ((core_id_0 == 0x02) && (core_id_1 == 0x0F) && (core_id_2 == 0x80 || core_id_2 == 0x81))
 		version = LPASS_CODEC_VERSION_2_8;
+	if ((core_id_0 == 0x02) && (core_id_1 == 0x0F) && (core_id_2 == 0x90 || core_id_2 == 0x91))
+		version = LPASS_CODEC_VERSION_2_9;
 
 	if (version == LPASS_CODEC_VERSION_UNKNOWN)
 		dev_warn(va->dev, "Unknown Codec version, ID: %02x / %02x / %02x\n",
-- 
2.50.0


