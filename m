Return-Path: <devicetree+bounces-158316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 260E1A65B4B
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 18:46:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DBF717D76D
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 17:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34CB81DF250;
	Mon, 17 Mar 2025 17:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GdpGZ9i2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8808C1B423D
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742233503; cv=none; b=lpCWwKdpbVD9loQn/I0dFdqpAoFTxHrn7PCKt5lWnh0AkkKB/2sJAkqf36/KQ88kBrtQfsH8bBg5GqbP6L6jbjs6Vith03JCT/VjZBv00T9jVEk9PdgQbdswWqsc38dqN9VX0CnUQ+cSgh1OYwWBny2ArvCp2Xa0+XXFsAPdeI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742233503; c=relaxed/simple;
	bh=A5b+7PiOzdnEsoIXhJtEDtIF4/+zzwMq2jbAcRXdx6A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eBGUV2d6rmv53BskWN+vI3l1t9q4AU1Z3dp1+FtyfE75w+VYPLIU5itziDWimTp20cDQep8bdoOTDBsG6fQQSZlgZYzGeuoHER3phAV5uNqnNM4xX0ivfCghH6/NwCPhw8VU5HB2SJoJVBHIFVpCpx21UNACbT1iksQ9fGuPTiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GdpGZ9i2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52H9mTjf020489
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	90Qa8a9JOpfX6xK3iRiQYBwU2Lz8sFA7p1khs43FFPw=; b=GdpGZ9i2p36Lz9hy
	wZm0Nfi9jWiJ49+g81VMJRiBNFkq6IhLHnxR6XNNtkEbLLvgLazZPRv3Lg+xCJJo
	l7qTfV6Bdtjk+tEdMHskd9S/w9FElq4F1ZhLBkb4w1xtztvtmrtkXDlwd55YhpAi
	fLIB2n/rk7fKlq3AWeex/XJ+6vOv/7aOjeqz/yuF9ZCyMqCoBSlMCpZ+P6nGCq4/
	fwyRwEsQwmO688SidC4ReV9UAr3HHJ+3Pn5f28Ks6DEzzmZ0II4krbzb/af+dhw9
	6JGUVUxRPkSdapqEmTUIhESErh9KpkMKIgyqtw7KohSue3fdxlJw24N0osbukAYx
	NrC/Dg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1t4nhsy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:00 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f6443ed5so101372666d6.1
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 10:45:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742233499; x=1742838299;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90Qa8a9JOpfX6xK3iRiQYBwU2Lz8sFA7p1khs43FFPw=;
        b=q87HwwZcdUG4U+Fd4eAkR6WuPRHHW68d45wVksS1Kdxel4hJzLXRiIs5RXUpQ/7W4Q
         eeA6uzqbWVsqypngIquMaXZy0F5Ea+jlbwOYSU/YpvAQ1sIJzFt6zyCb2shqhLooMhon
         TvxBEQXh2mTTGUsb6RwgWyB4Epa0vsj9S9uZRQ6uxyMrgG/faXdVpbtuAJoVeOP+EtcI
         zJdlZTEEJADAXS+jM6In1ZMCyezv/Dn7Wy6NNOGVorCXtUatO0m/cNXNJ1MSN32OGzXH
         Kx5wzDObiR6x/+RZamKqFOeTWuU1Sa+vt8Qx1mzcenonXiwCJ4COI3UTT+fCgrtP/loL
         BLVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIi++zYxPPUzvMo+gpwzeOVPHgzkkDbOOi1X2PsE/54jELgrtL/VJDMb9lVvDq/Lo3JSWlnQv0OL/o@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7VOByg+VPJKt0RBV/TPgspgCTnP2/ppaXHgoE1SonuUgtjRAm
	L5i27yQl9S+BZzol+Z4D1QeJIOQnjNxHSP7ESxWG/fLIRyj77GVm987KwC//0qS88lYWntF82XO
	XN1/fF7U5OApKYw3xIiELBwym+ZzZhG2HOhpklDQrcCaG6rsK5keuO/ynCx5F
X-Gm-Gg: ASbGncuC5YAuIT9+l4oTxcalFe5yU2MFaYUzdfpLVbqIA9ZR3OCjZGxUotZF1KWIwwA
	pOCrGlQXk78CxapXezYKjA64ef4m/nVRzDKBP//UKzSgR+XdDEFdJ7CsB/RyZ2yBqD1sx11KsHK
	kmZfp3RKLVriQLjIohNE5gyYqhDdgy23bt0+m/tVRyxyeTGK06pJgulR2i/+bNNJLypNaYfNX7p
	mc8G8kuXFRKJNrxpCmuQ7uugWN6vwjhSWVWrNyr6n0T6szp1bc7w0IK3qX926FpTcEwnqcbY7e/
	Lv/voqbauz99VAaReby6I6tf/5Xe1DSeomF0eBGSO6+onRdu0tarh4jiy5/+PvzHC6lj+3OYl3i
	lAw/cOVNEPmXV35y7AqYa8BPmlEQ5
X-Received: by 2002:a05:6214:5246:b0:6e4:4adb:8c29 with SMTP id 6a1803df08f44-6eb1bbdacabmr6171656d6.12.1742233499608;
        Mon, 17 Mar 2025 10:44:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6M10twaR+eAeYAWjZSYXf4U+Rm9PnRfiqhIA7VV26zFHprmtyLz/wX1+C7AE933btocwG+g==
X-Received: by 2002:a05:6214:5246:b0:6e4:4adb:8c29 with SMTP id 6a1803df08f44-6eb1bbdacabmr6170986d6.12.1742233499213;
        Mon, 17 Mar 2025 10:44:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0e9985sm16687121fa.29.2025.03.17.10.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 10:44:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 19:44:40 +0200
Subject: [PATCH 5/9] ARM: dts: qcom-apq8064: add missing clocks to the
 timer node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-fix-nexus-4-v1-5-655c52e2ad97@oss.qualcomm.com>
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=945;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=A5b+7PiOzdnEsoIXhJtEDtIF4/+zzwMq2jbAcRXdx6A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2F+G41SO77q/fkDgTaD4QiDdHsTw/YIt2DpoU
 /iIHBtHF6qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9hfhgAKCRCLPIo+Aiko
 1YNVB/kB3jCe15fh6tsndDZHpVGkGIwtmAmqyKZ1Zj1q1YUo/zvWqfSHp/IwY84QbpmI23fIrPd
 3C+fIlrNRvDSrGRJizu+8VvFyy6SHnNXG9GfiOj+wqOn58HPewIRqisOf875oiVAtnCTLpoiu2v
 t5Xu5Lmm97WDX9q3eUP5YP007ZBRUQpTP5DtAMYS8itWCu3pSZjrGJnsPRBIe1YVz5/zMVOqI1x
 l8awwBbJ2RdiXrLBQEuS9mMHVaC+31aQupj56tiWlHvzfNwFH3bvON3HjXh8HMCSAT74iOEemCo
 5EUvp36+up4TwSCr3Ss8Mb2y2/ERtSJhOwLLr2ZDz1wIQQTL
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=VLPdn8PX c=1 sm=1 tr=0 ts=67d85f9c cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=ZANWpg7mVWKCtM2BIo8A:9 a=QEXdDO2ut3YA:10 a=mjqSHpV9Z7kWhFShES6D:22
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: Y8ZHTW2KhubEzSxHTaQ9MaGgh8dlGSmm
X-Proofpoint-GUID: Y8ZHTW2KhubEzSxHTaQ9MaGgh8dlGSmm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=760 impostorscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170128

In order to fix DT schema warning and describe hardware properly, add
missing sleep clock to the timer node.

Fixes: f335b8af4fd5 ("ARM: dts: qcom: Add initial APQ8064 SoC and IFC6410 board device trees")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 5f1a6b4b764492486df1a2610979f56c0a37b64a..ba99e794dcd2236f65f2f3d8c49213cfdaee5f6e 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -326,6 +326,8 @@ timer@200a000 {
 				     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_EDGE_RISING)>;
 			reg = <0x0200a000 0x100>;
 			clock-frequency = <27000000>;
+			clocks = <&sleep_clk>;
+			clock-names = "sleep";
 			cpu-offset = <0x80000>;
 		};
 

-- 
2.39.5


