Return-Path: <devicetree+bounces-214923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58133B4FAA8
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CBF2E7B066E
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E00DF33A027;
	Tue,  9 Sep 2025 12:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KHrWVNew"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E4F335BAE
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420435; cv=none; b=Y7zh3NCKvcznk8tWoc8H6sGwBhBjon9gWMWAj0z4XbZQha8V9/cpNjDv3mjkHKx6wAxnajUTfHsA0lRSthGMzeIt2vOGdRcCzMcKRYfWWyh/XjTcWBcauONUa+o9JNaHHoYlaQcCZtRWY2ZV2bAk58oTZtNB2c+lz6JuRcAiK/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420435; c=relaxed/simple;
	bh=SVUoWsmSq4cUO/z4U/2qlZs54P0s1u7ZOQr9dToLxZM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EYRlFgCElTZj5QCvoxSJhPWM0woOpscfubPTBUCLq9zSwl/c0pdZHL4WH5DSlrrApElDvlCHWnlhbgwUxoQEFQG05InycmCMn2IqP9NL8cJPBGvQq5tZqxre0s+OlpzwuYFkXr+yF1xZnEN2wmRWEagRSCvWeCAZmD3DZCX78mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KHrWVNew; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LTXJ032460
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/aX4MrtepdT
	dnJU9juLKPIRgCfBEk58eXLQDBNRQG8Q=; b=KHrWVNewg7+jycfasOPcvIYs7ZL
	SVSzNIkUD+vyP4qVuLHjN/Mgcl2lvvxv9jv9ZzqfgojXlkPr+n8P1RHRl9b6cjFt
	LOVfZSTzqhl9jnFX42lww7ztGKzFWSWGqxhS3iotnjWavmHgfCQC0q9KO54MsRva
	dQFvCP6vbV+9PBnMtL1jx/6vdVHNmFW9aeW39cNC//UPSXPyu0ktT+knncHb5VZp
	xFVyC3Bo0+phjzuuQWVmL1NeAwzeWCmQo902hd8M8NLl4r6tBA/FQEcaoJEbRfZ+
	PHczTnDKR2pTN9Dk3I7i8qd0dQUA6UDW/pWfY9M+yyoVwxoLLnYrQFYWjrA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m024m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b345aff439so153859611cf.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420432; x=1758025232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aX4MrtepdTdnJU9juLKPIRgCfBEk58eXLQDBNRQG8Q=;
        b=LyZDfVHm3vZyfOcK54bLS/y3D9jIyUVm5n/A8xyYfzgZ4pwBoReFCNlnfZYaFlGIWo
         YXZnNNzWLFVA14HWTztZ1PPUwthOrRiiq39+FP8a5/yhg42jUTUwyjt+i9toDolz6aVv
         LSZ6p9MzOrApPsvs6mXmH+7EINXRwZALq/an7RSKGp2kLzBhz7xbE1T98by4jimQyoth
         hM7gcavS60HRtkM/8HUCxF/doM1c7nxSFPkc3ZGDEmjPCAdF3a3huSLz3kao23SKXKom
         De982JLy7SemFFt+nWH9j3ly/PMYQL/AOzqLeBWJ/LR+YvZKff6vIgeWkmKYBQXTod6h
         eH1w==
X-Forwarded-Encrypted: i=1; AJvYcCXcb9Bi1iq26dfAUrSndKy23Cw65RWcp7JUObKAykPrYVR90jdU8xCY7ggB/AwstBC5w0AgBHUm929E@vger.kernel.org
X-Gm-Message-State: AOJu0Yyoq/j9CERt8BY0eakNiYjd7A51m4yTNjz8gOi3qEvR0Rz14U95
	Rrw4nQ26kluStVnyUKsuHI76aWUiGsGTkJojgXm8VVM/XJsHa6DkXwrdD0fH6biLR8MLNOTbiFc
	1we0cNdVCmjstWX2O0zGuC/vql4ZPxNCv1U7/4Qp5uS/kQdMydzm0sdld9GYQvU/b
X-Gm-Gg: ASbGncsn3vDeUkYAYwCl+o6h6rFxiyrKHkkU1M3vSWvmvrALuldTqVA6POYx+ItGH7O
	b9/lyAE/Vvv2U8hQmdLGMSXQ2hIDMxk9hWnaIgX2P+Fw12KCnqgRNCEECGyqSg7rWP4Cil2taKy
	LJjwjC0UQfGRN07UwlKW+ZAHOEpmAOZM8xtc4nrqZJSgvsE/valSsaAOMtqU2wH4ii5JaAXYPnD
	cUH3bYaVuAmGWB3gkbOoAkD7ZRqHFFTGmMBVD6xcMSuLo76pxXzuFh9GQ4G6vkmcuCVISjcA3bN
	uBMC3J4n0hTredZYT+PA506BylNdqACiDMCZqu8I1G+FGhMROKfJXw==
X-Received: by 2002:a05:622a:1b92:b0:4b5:d639:e111 with SMTP id d75a77b69052e-4b5f849014emr114086581cf.72.1757420432284;
        Tue, 09 Sep 2025 05:20:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGD1H4F2A9zCRDLPBwKwDxTxZrMciTCyU2vqs0hTpRNN1jnEO8an9hAxmLMO14UhV4DIucfwg==
X-Received: by 2002:a05:622a:1b92:b0:4b5:d639:e111 with SMTP id d75a77b69052e-4b5f849014emr114086231cf.72.1757420431636;
        Tue, 09 Sep 2025 05:20:31 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:31 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 12/13] ASoC: codecs: wcd938x: get regmap directly
Date: Tue,  9 Sep 2025 13:19:53 +0100
Message-ID: <20250909121954.225833-13-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250909121954.225833-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250909121954.225833-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX3Y3pes7+u8+g
 gU+FHTJZIjzxiCkBxlrYYxNpcCNJulq/jUPNnhU6K/7lMMDi0wfapfaIYtfrcq68PfTxYQpWOhV
 fCIMg0SKTL3rCRtlzUg/OJt4NuTtGAzqsl9DMPMeRgH28KowTONLsa4IjSHQPs6dhaXKVe2gbqV
 ll1F9bLt6gKFMhs6p0u6pZU2mXmP8fjUFHsVDzLKrSn1PPFj65Add3NPA3QIKtoOO9Wi9Sed/sZ
 DHdWQBxnJB0n36iritYsxD9ZRZfE6iPQ5t41Ud1QV9RVWw/5WgH2qOTIRU2I93OqEaKzTDscWQj
 MBAYumYXvENDjPTu8Yo+JHZEZZ9nhs4v4C9wkiF7oP5hbSGQRq7jAlerK/okS4foFe4dx0Cx7L+
 DLYXUoee
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c01b91 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=AeW90Tct3s7Q8B8mPpwA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: vFdtKJsP8y9FBCn6UHn4eG39h_LPQbqC
X-Proofpoint-ORIG-GUID: vFdtKJsP8y9FBCn6UHn4eG39h_LPQbqC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

Remove usage of dev_get_regmap, as this its more efficient to directly
reference the pointer.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 sound/soc/codecs/wcd938x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
index e495f98972f1..e1a4783b984c 100644
--- a/sound/soc/codecs/wcd938x.c
+++ b/sound/soc/codecs/wcd938x.c
@@ -3389,7 +3389,7 @@ static int wcd938x_bind(struct device *dev)
 		goto err_remove_tx_link;
 	}
 
-	wcd938x->regmap = dev_get_regmap(&wcd938x->tx_sdw_dev->dev, NULL);
+	wcd938x->regmap = wcd938x->sdw_priv[AIF1_CAP]->regmap;
 	if (!wcd938x->regmap) {
 		dev_err(dev, "could not get TX device regmap\n");
 		ret = -EINVAL;
-- 
2.50.0


