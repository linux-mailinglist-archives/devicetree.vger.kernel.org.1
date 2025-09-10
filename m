Return-Path: <devicetree+bounces-215401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4872B5159E
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F165D1C83B11
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20C6631B82F;
	Wed, 10 Sep 2025 11:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WF5z1w/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B39C315766
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503601; cv=none; b=Gz82YqYc0bwLxEVs/vhHMo0aUNmb2qcAr12HSj4QmvaSRJmMSIOjHxQ38Lb6HQVKUKWdgUQp6SVtCy6rwtbkSK5mJwzMHp+GOHbhV9dZknc9M49l7T10fP6v4vB/Dw6ENdJrfgKQ0SCPunZkwc3JJ1GKX7/rshNj+AROrNo8Ayk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503601; c=relaxed/simple;
	bh=lvtizlHL6MS7eo9olZSEO8tIpxGFiSCKBoj2b3IlTA0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=al+L5YYT4Jg09c8r425oyWTrep8X6i9dz2i1jc8OV+O8XJYjuA+7KZkciqZyn5d4r8bcvqjMWcKl39SE3jj7aCuQJgdSymTmhu3wMeTCGeWUDrokkiujRZ1LhRNB2cfWrUmiO5yx9fpFJLE8FVYQ8llXmkqlae423JlNmQz41Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WF5z1w/i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAF5Zn021045
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uTuT+xoD9CIqTmF+XCt73ZauYNq2xf3D0o4LX/E4JG4=; b=WF5z1w/imCQRNDQV
	2zRa8DS5c2KZfi1kyN94/IxTDYN+cV4qP0SE8/EqgupTZv89TB35c7CCNwVPy/La
	2DU4vfWz8ijebHnw2wExRXvpsDDKhfUWJh8Hb9BTpweQf4h2BxBS44HVxDqJDWkx
	rxBOyFmPh8C/YoKIv8iR1qX0A8ZhMhtmXGeNFApHYPg+nVzESXwETtDCtOTWiOJx
	rUhFc0mfMOqHRc6U3DO2qxA0ccGRI3C2STLYSuh5Nn+yvxPypKrDUed6eEaDqFN7
	tUqrPLwB/MJdVIRcG6z2a3KI26sIcx0uPT+TWFw+NAPNdPX4FSuQGSyZxgjjWe94
	cFeJGQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8abjh1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:37 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b522e289a39so5091111a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:26:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757503596; x=1758108396;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uTuT+xoD9CIqTmF+XCt73ZauYNq2xf3D0o4LX/E4JG4=;
        b=tZUDJBk6ZA1Ti6px2KYjumqFvoqJmK2//WH/lqisbvT2h94mXBkkWk1YG4+q/YfYB0
         /ptAVWr5eogWzfJ4NLxqw3XXfEzAhlsyWd9p58DxD/+TkU3U8+TmgoOaSYB2UdbmLIho
         ld4eX2OpTu96UuhoQfTXaGI0gWAD8F77zq7ettuOpRuQk6yVPjs+0bKaMmCqQapdzV7q
         nUmvr4y2mp1H1fD44hDT1DlvlYKU3c3nTRDxp+JORLNLRd4maQsMpS8OuswDU6PGGNV7
         3MZ6RZHhHQysZ8GP+D0dAcFQ4EzTTWdezlvkvkx8dsINSJ37Y0ez6MDK07rdEd+anAd3
         POMg==
X-Forwarded-Encrypted: i=1; AJvYcCV/7OUOb7VBodmM6yMxZSUzKIgZRyHVyxp6MS5919nUhqmAuJcvAlfh72SsGKRUaTZkC9g+G/fhs6uR@vger.kernel.org
X-Gm-Message-State: AOJu0YzS0dFPWj0tpi4WglbyBizHDQIJnL0ODRdnn7UK2DxHYbjJGcXt
	sEkZN7YDNOwPM317QiM9tRyXMlmIX4M2hqQLaRu0oACr69BhNoOpKMO6Gzx36qo7DSDisx/21Xs
	6H+EpTOxZVTQ7pI5gl9j1/3Rw2pAM8Fp7EsTLQ3v3TRY3UVPSRgR4CxeBg/rE2sTp
X-Gm-Gg: ASbGnctmhe8cayzEp3HHzQAJtc0SROPwXd6DjKK/OTgk/FQZwzLOIYkGJKU+d63NgsP
	ykW/fj608RSaVI88XTsyj2Zdf+N4UEZiFa2C/SQgDJHdsyFxgUcNp2wcKFieFfvYAIIcpBKNTVv
	jMKQtyYq0BwdPyJyDALdY4faayalKamBJPAPfKu3T14F9EQdiJdu8kuorbNMV2IuBE3PkOrbHn4
	0gplZ2WjX6zgpTNzjEqYBH8wW0nl0fFQkOXIjtGO520ZVrFoZbHz0+ls7kd9wtRrtpxxnsfrsNs
	r+SUq52xD9SVN5dM42f6X4EW/DvsxRXSHBlc9u+5im73shrbyPzXQbg5IxmdTxTJ
X-Received: by 2002:a05:6a20:918b:b0:245:ff00:531e with SMTP id adf61e73a8af0-2533e94d135mr23613220637.12.1757503596572;
        Wed, 10 Sep 2025 04:26:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHu8n38cqjdfKt9/1s/M/MeQK58nlWTbkHvgUjuxlUJFIC4snQmD4oj/oPkqGgfcrDAzAET9g==
X-Received: by 2002:a05:6a20:918b:b0:245:ff00:531e with SMTP id adf61e73a8af0-2533e94d135mr23613180637.12.1757503596105;
        Wed, 10 Sep 2025 04:26:36 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662c7384sm4862260b3a.76.2025.09.10.04.26.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 04:26:35 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 16:55:25 +0530
Subject: [PATCH v6 5/6] arm64: dts: qcom: lemans-evk: Enable Adreno 663 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-a663-gpu-support-v6-5-5da15827b249@oss.qualcomm.com>
References: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
In-Reply-To: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757503556; l=802;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=lvtizlHL6MS7eo9olZSEO8tIpxGFiSCKBoj2b3IlTA0=;
 b=JAVAIdqmrnue5/ks+VzoXSDwPNFYkasv5RLMnK3+t3s4vjQQ4iplYXmNDUzqGDU8F4giYFc6Z
 NdvaJx8nFTYCc26y9qynH/pfcd6GTfKURUIPJewQ3LieME0ZjgXcWcW
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c1606d cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Xl3f10jGzgz6Ja07nhwA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: WSGBY6fE-pnx36HjfeqCtIwBO8-LXuCC
X-Proofpoint-ORIG-GUID: WSGBY6fE-pnx36HjfeqCtIwBO8-LXuCC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfXzQlJhW4x0N01
 NAW2KD0171RR35DOnPa19tISOMKUonW4mlVTxEru8PaaBzBOwxC4s/7ubJ1BNvOyrNhJD1oNPjY
 Hy8cP8IGIRJ5QNz2GYfB30WEd8zKFT6HOW5rIMTchHpo//u5pcGSxcDoSi8jgGT1nNiUY4MLkBI
 bRcjIjFCn1WlkbDspYfmN9IG9VRdb6mqhYuJJosnnI5DQ4mvF68Vxih6IPLWz6WOGD2HBsBCsLS
 fnd2dDTh/2+v+R5BfYNiqXV7vrz3HXri8XAP/I8RW0Vxw+8FNhrVm8QXqGMogh8c+SC980R5t4L
 qj3yXjZhiPdQbtl3gFv9uLJ7ZZjfREm8pPuM9I7N7V6qZocczWRhggqKVek2yAig0DmngntSYC5
 ae5ioOXI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

Enable GPU for lemans-evk platform and provide path for zap
shader.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 669ac52f4cf6aece72141416068268531fd9f79a..876f43d761870b968e43ea1ecc360b4403f19fef 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -253,6 +253,14 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/sa8775p/a663_zap.mbn";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };

-- 
2.50.1


