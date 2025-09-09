Return-Path: <devicetree+bounces-214913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 95341B4FA96
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C2EF17AF2D6
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5033375B7;
	Tue,  9 Sep 2025 12:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GsMI1YeW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D853232C31A
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420422; cv=none; b=iHutQiamcKU3FC2xpCxETM5qN5YcX5SO+ix7XQvRWx5zHxI7Uy/yTJ9u8+QM4glWFGUW7lymSO7UthBUxPQZY75+15/+uUjnXiPZ+m12eEBQD4d11R+bzjKDD/7XMB91wu7kQerWXAWrV5JAcVcAQCoXkdyzgnxrBXG9w1m2PGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420422; c=relaxed/simple;
	bh=vmg0oYOxevk5nWCek+pJEZ1daibBK7o4kDXZ315AyTw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dCD7Li0xE34Ve0mm/W8MFaIXrZJmhuzIHgT0uHHKYKW1FUZ6EHb2QkHdetnUb+GlYUlpgdzpJQsxbhUt15gdJH2KAoC7u461BQZ46T1T2z+HGbPlqyaIq/sZcH8iYkdpML1mdnS+c2VfWZHeW0blCLg4LjS9gav0HW711W83ASU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GsMI1YeW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LwMZ000914
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=qv++HabcA9y
	4aEMaW0PNus8L2anA3PVptVFL6UgEzvw=; b=GsMI1YeWCpjDMjfMazHAqet5DzD
	sVM987n0ADM805jh+AE9gZt1ky+LlFmkObQVMvgFZCUSCe5tzDxerjwMMBzMvwBk
	fuBXhuRzYrcDbfYIlfty9GrJrp6Hpw2ncniYAZh6Wg3Jdysw9NuJSTeobbJPq+0y
	byrq+oRria7UsrmaTeB9nAVAqngTlWEtrpr9g24QBZWKR2NS/Eik2EwFx3BsE+25
	2+NDtxBo/80mNhw4yaMsdJ5zAY3RFEaSp5IWZA1dkrJCP80SeFjRXduOD/TIhSV2
	JqpB8BJdP5/nGUr7QZqxSRwbTv+Ysj29Zuo2xqdB8ouWEDqINB3BRlFVlrg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m0235-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:20 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-726aec6cf9fso178665216d6.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420419; x=1758025219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qv++HabcA9y4aEMaW0PNus8L2anA3PVptVFL6UgEzvw=;
        b=HoR9UshjcbgVkr3ISxuRK8FRMBTyn4s7c9C1eTWdVijSnyhmewvbBh+/e6LglsJE6Y
         bX3/RjoXVXzXP7H2VC/Ad3/CWhhOAqyiz8wp1p805jvGO2KqFOQocDxZZZM70puAc0im
         n/W9DkZlpl1zf+k6Dhm+tbB+uZ4zqpFSFSoLHdcIBe7rqW3y3kfxWb1E0eDXI5H/RMtx
         tZtrIcEwFbA1aZsi4a7QZ/Zje3viT/G4ME7JNqW1wXILhNiqYR5wkouMdHXXMTNV7hj3
         HVZDowCkrXCoNbWnOH5oAp1/4HATr9Qda8KhpS/Cv+gY2ttvofS7t7evHEdn4sh/V8q6
         Q8hQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVD4TadKLgDgpYcOnMiaNSuXTTCvbJzubgkI9/OYk5IqpL8p40grMtWcKz6MOaUTM+m5Xw9aKfYSBV@vger.kernel.org
X-Gm-Message-State: AOJu0YzuVCBaR6ktndc2IafK/wQEk8u5IdJScYw9mlLshdsNknhzzTs9
	YATNJ6imPAMSkp664H2PtY/ar558y9PtKCsqEin6Jed1fOGBM0NdWHZbdRPtOYt17J77gHXr7+G
	m8RAmnYgyt8NlSXmELdt9Kis0LvpfQtNBzM8x6DIkRfa/19VZFRWjdCdLLNVWjgy8
X-Gm-Gg: ASbGncsIiHaexkxUeh7ARWjvBmqsMziy6QqjgANBZJz2lsFUZYEAHgvANPiwsFXbFj1
	RJ9Be3KQmweUNfK4LcnV99i785g/UKYO1ufZmmr/4+vNsM2YWV9FixdYz5UQvds6+K1nx+ssBH8
	ZwmhBZfW0m81++inZhHg7IJC86xBxAy1iIV4p0vwXZYXs59xhNQc22wIgXUD4VEa99ZwX24OBCz
	Vz+7UZ8I+UfIGnOrlakpSw0k/OPIxEt43UpdrecIZpQQDw8QJwVtREZfLIf+YnlbJYpfSLsco/D
	ml3DzIAjAJIPXuSjHri9MOeXImtqr8WzZZ7E2jGvDdDHFBqSJl11oQ==
X-Received: by 2002:a05:6214:c4b:b0:72a:c6e:c716 with SMTP id 6a1803df08f44-7393ca97abcmr130511936d6.31.1757420418673;
        Tue, 09 Sep 2025 05:20:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjdb+VN3e5HFiDLcN4GJoLNoIuWhH6jlimmrGYroWFErjQGM2HSwWtl3GgLtlVDVdSH+RylA==
X-Received: by 2002:a05:6214:c4b:b0:72a:c6e:c716 with SMTP id 6a1803df08f44-7393ca97abcmr130511316d6.31.1757420418043;
        Tue, 09 Sep 2025 05:20:18 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:17 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH v5 01/13] ASoC: codecs: wcd937x: set the comp soundwire port correctly
Date: Tue,  9 Sep 2025 13:19:42 +0100
Message-ID: <20250909121954.225833-2-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX6FRzNEGXrmGI
 BMJSR+jPNaHPGc60rAwSFn35PCftxnRSceGWKPabMCG2Q4eG3VZBRgTX7b181n4MdrM1CPLuo2a
 mDlFaTw5gT2AH8z4wT8Jw4mJBTA/cNPxIfcGSAeb8laMCa/gzphDLQPjz25OpHETgwtasRS+KMf
 K/V6FRyXEaCDd2XBqAE+ujxl8fPA6b5Jyr2EHFgg3dHBTQkrPQuyyLc8eGpSPDUOfWuwemCBthq
 /7tcaeSSk/L/SoDhw4C42oN3nxWv03EedsMsXQDHaGglF1qsPp6j84NzdPKXmDreIgfxr7ng3FU
 bLD+OYpszWAl+spEEzVaNDAghikPt6Re03oxD4j60NQhYoWfNEflJRY3z+RJinDP40H7/ZyqTq2
 YorO0uKF
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c01b84 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=0i9YUgi2cL8IzqKwLzsA:9
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: _jr8kmivHHMxLijwflm6A6jatpW4N_NY
X-Proofpoint-ORIG-GUID: _jr8kmivHHMxLijwflm6A6jatpW4N_NY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

For some reason we endup with setting soundwire port for
HPHL_COMP and HPHR_COMP as zero, this can potentially result
in a memory corruption due to accessing and setting -1 th element of
port_map array.

Fixes: 82be8c62a38c ("ASoC: codecs: wcd937x: add basic controls")
Cc: <Stable@vger.kernel.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/codecs/wcd937x.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/wcd937x.c b/sound/soc/codecs/wcd937x.c
index 3b0a8cc314e0..de2dff3c56d3 100644
--- a/sound/soc/codecs/wcd937x.c
+++ b/sound/soc/codecs/wcd937x.c
@@ -2046,9 +2046,9 @@ static const struct snd_kcontrol_new wcd937x_snd_controls[] = {
 	SOC_ENUM_EXT("RX HPH Mode", rx_hph_mode_mux_enum,
 		     wcd937x_rx_hph_mode_get, wcd937x_rx_hph_mode_put),
 
-	SOC_SINGLE_EXT("HPHL_COMP Switch", SND_SOC_NOPM, 0, 1, 0,
+	SOC_SINGLE_EXT("HPHL_COMP Switch", WCD937X_COMP_L, 0, 1, 0,
 		       wcd937x_get_compander, wcd937x_set_compander),
-	SOC_SINGLE_EXT("HPHR_COMP Switch", SND_SOC_NOPM, 1, 1, 0,
+	SOC_SINGLE_EXT("HPHR_COMP Switch", WCD937X_COMP_R, 1, 1, 0,
 		       wcd937x_get_compander, wcd937x_set_compander),
 
 	SOC_SINGLE_TLV("HPHL Volume", WCD937X_HPH_L_EN, 0, 20, 1, line_gain),
-- 
2.50.0


