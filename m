Return-Path: <devicetree+bounces-211806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D14DBB40A44
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 18:12:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 923B13AD937
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E378133CEA3;
	Tue,  2 Sep 2025 16:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PjmYkNhV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7CA338F4F
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 16:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756829561; cv=none; b=OspAYujv2YDuf0SrMWWoLOBXsKxtW68ANuQTK3ZABT58QMm2R4k3SWNxn7k9JLk8DFUOsOcn1qWAkqdevhWQeHBNRgpa3J33ZV12I3KXWwl4YlVYeeqNb3Jhkj4rQi1/X6MrfWfPoup+It0WlThZ2vKG1wxLRV5U0Q5lw3zdoXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756829561; c=relaxed/simple;
	bh=fD8gmiEfvHWqA/qKuJvc+eRI/STX56LOgZaEfMt7N+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OsG1Yq2ouKwx596j8fAj56ZeqS7Dp+6wayyPXMUponxAE5TTNcGFHNBE75vqRNx3BOJfmmbNnGfW7dhOjOFF7Gj8QO4zuEzNWDL/QgRlkS9208uKASU7mWmy6lcR9JLsBymcfhv9yI++YRquv4kuWmdxYdj45hOqDm0mT/7Rh2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PjmYkNhV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582EqAR4023418
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 16:12:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Bwb/aCh+px1
	clBI7DNv6FaMGNCjRZCn6kYUkRggRljo=; b=PjmYkNhVcQKcnCbkJSPJUAYI0iT
	itEYfYOmODbOesuYreELZm3Z9rR2SVSNqVyXyp31Bx98xh9GWbPCAs1tm040a7eU
	l2C3SKycrOh5g4fk/AMTgsARcmvJBTqyRruPDIWPtGtv/QQhJXmvi7F+gDPr8bMg
	PXj94iy3JILpxvOvwx4UkvwFwRQtBdzlWOsZUhATQgjxTv4A/Q6tPb/bw+w4cW1T
	YLkV3ULDvgnPTQsKYuLgdxq9jd9SCEw4+yLl4d7j+CNQXPznYhG9lHB4xBLxEYOm
	LXes7BPtE9ihtccjjs4fsjB0WEdVGih+YePNYc2PWxATX5WIB42HiPNCaeA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnp8maq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 16:12:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b30d6ed3a4so28342331cf.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:12:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756829558; x=1757434358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bwb/aCh+px1clBI7DNv6FaMGNCjRZCn6kYUkRggRljo=;
        b=dBaFcvHDikeGrdmeoOTvijUUfn0tXxSxrSS8wJCLbtKJ5bJXtm0hrPlJG6MKmO7BUj
         DVTcAP3Ov6Abk63B98Fr1BO4py+rG96KfQGgU8A/k14v5lBq6wv5SQUR7y0wA70BvF9F
         KQDwwsDbck/oukIeHPyenbfrgmSF7VnDM2flDrdwvaYA23G6KYAvz4H4R/qctkjSi9l8
         OcDhM8oJUL6hweabquwEbw6CocqQ5OtN7PEwrfuCGLqTB8dNdCAq2JPBerKBtWkv5J08
         7B3D74rsf17tN1ecYotGUb4GUx0NT8bg9H69q/FTia255SWcctl/e3LdtIZlBWNRgyEn
         klFg==
X-Forwarded-Encrypted: i=1; AJvYcCUBa6S7k8mPdzx6fCAya7u86CmQqTDiuLye1FJk+7jDFFtnYwXfINS3mwJ5IUlZ85O8HJozd0XD6bD4@vger.kernel.org
X-Gm-Message-State: AOJu0YxrFQNf1/ihjuqobzSpcf40lWHpmI+7UFaqzAdL3x86UZq+HPtP
	/+BUF+hpniwAzdXiMloKefp7JlL3QjxTo2Y/W8lxJGZjxyPlbCKqCVihOGaKxzeO+jlV32nlmWP
	G5+bgvhwqJiUgJQDfea3z53AFvOhrJbg31No7375xBjxlP57S3dYCmLn126lLKL5M
X-Gm-Gg: ASbGnctleOlWnREQvQCkpYb/MsRC2zi52GApQCHTLwr/Drkf5kv9ePAZDYpYCvuo+FH
	EG5Aijohau2yX2gEplkRaiWRVKHowpIZfH6svRsq9a0IQj9LavVCAlRE9cz1OINoDgQnlyNued8
	TnklKrEK5PpJZ+b4vvbjBIdMn9vTsUY7sUpyVTJPHUpDv3AH/wC6Kk9FrpLCp5qqKueeirQZKg6
	ztj12awWpLNtJxZS0Lm2NLCcLsq9PbPqHcq1oNik8j5LMuGcYjgB2EwmmhMTjOnnjMZT0bZTSQ3
	6oxGGV6Z1bg8EFGNpAe69Who9xBSceA6dgN2t00EmDnVqzOLqYZtCg==
X-Received: by 2002:a05:622a:134f:b0:4af:1c00:8996 with SMTP id d75a77b69052e-4b31d844f80mr137909321cf.6.1756829557900;
        Tue, 02 Sep 2025 09:12:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbbJL7r6hnlJk2ILZDcshA1ckcRvSYtJMZ/v6tTpM/xWKM09mldYu3JSH5x202tVN9PMus1Q==
X-Received: by 2002:a05:622a:134f:b0:4af:1c00:8996 with SMTP id d75a77b69052e-4b31d844f80mr137908691cf.6.1756829557224;
        Tue, 02 Sep 2025 09:12:37 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f0d32a2sm309894655e9.9.2025.09.02.09.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 09:12:36 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 6/7] dt-bindings: soundwire: qcom: Document v3.1.0 version of IP block
Date: Tue,  2 Sep 2025 17:11:55 +0100
Message-ID: <20250902161156.145521-7-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902161156.145521-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250902161156.145521-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 171FyHzaX5ZG0_dBk0YQjXUbKeedodXw
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b71777 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=W-ialWlWjSFIadUgVrgA:9
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 171FyHzaX5ZG0_dBk0YQjXUbKeedodXw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfXzqSirPcIoJxM
 RDGb+TlvOPqziv9d9Rw78nvZ9Hw03t/cKGgCuqtebDY6xTlazDLVLy24T6m8TepqoSYAj4WM1T3
 Wkb38ViaZeC4czfwtCMDP0PN4p1SogNguz9wOL/hd6tXgS5ZEJ5XU1rUJAlw8447dP3pcr+UJzq
 CvdcGh9W75F4a75LFL92SP7zFJFRwaAj+bxy26z9MC9YwtaefHModbKzbVQQ9vQrHBvKcah+Jty
 mOxNtwajVpNYqxtPkw2ZFYsfblm6tvbU2itQ6o1r7fDgxzUI898ndkJTwg+auIz7eAQnf0sMQfw
 DUbq7factRhnLaWXcZ7Akf5WJcRmhLk1sYSC4aUWK4qF0KR/figA65mA9R1aT943JkG+tYFf7dx
 71d93aEv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

Add bindings for Soundwire controllers v3.1.0, which is available on
Qualcomm Glymur SoC.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 7ea491f7e828..003023729fb8 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -23,6 +23,7 @@ properties:
           - qcom,soundwire-v1.6.0
           - qcom,soundwire-v1.7.0
           - qcom,soundwire-v2.0.0
+          - qcom,soundwire-v3.1.0
       - items:
           - enum:
               - qcom,soundwire-v2.1.0
-- 
2.50.0


