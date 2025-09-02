Return-Path: <devicetree+bounces-211803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8464EB40A42
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 18:12:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AEF53AD9B8
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005E933A02D;
	Tue,  2 Sep 2025 16:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nTg2TTxn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C65E33A000
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 16:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756829559; cv=none; b=nadI9emTe6lDubCSx8JL0UA6GGZmnvlHY78MsE9peDJlIgysz6qFD75bpb/AdNppdySejj4Ml6mEN50DX+PVQoLT/50QlOLzZGxgI6putLHrmuip80zHWRCwQnzU0wNbjIBTzWAoDZcfq5Bmfp2z7egHDO6Bm0HuXHjNm/VAqlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756829559; c=relaxed/simple;
	bh=HG+b+jRIRTWPpc1sxXtE1A4aG886oTSQcaj4r4e1v4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GWaDKMQ8rR+ukxc7Tli4vgasm+mK3o2xHe+Vp7ZSe+Ge4cdCw6k/swIdUEqpxSfbrwDIpreu1x7/Su8i4lfhkLqaONzFLKLdYbReE30WK9sYYTYUDqoOi/KSgnj0ed9Ols+pw0vkwz8DJk3w+tziEpmRBUb0XYCbQ4SKYjeIfeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nTg2TTxn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582EqA7A001379
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 16:12:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XfwpEgA5iMz
	nAO8LzxBPMwKlKMUGeLCboiF0FAzcPH4=; b=nTg2TTxnJhNoLL9BaeDyIlshZcE
	3FP/R9RRpXL1yQQ2Dz/zhPjQ19QdKxfR530jmSehI36+qqT79hqt3J8u/ZMlZEGD
	A6eqjw+GlSbohphegWsRzYwUjR/Xy6/L/qL64W0z0N1mGGNcy1ALKRFqlIz4j8Bk
	enGJAaxU7XvCmtaqHV8Te956ZCkBjBu9SlJ7BCvuw3kpKL+ccBtuUatfWXiFsxaO
	jIBGPy58JcxYtiicwrbsTczPZw0EW+mJgZQ3H+nGzIwWfIFNYEBsfQve9zVD0k/o
	umajJEAtkKNTR3xyaeWsclsvV7TRZttOWR2WHQNQtpEVnF7wJ68hzIms1Hg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy4acr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 16:12:36 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-544b17a341dso833787e0c.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:12:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756829556; x=1757434356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XfwpEgA5iMznAO8LzxBPMwKlKMUGeLCboiF0FAzcPH4=;
        b=O0Y0b7RGH6TQT9ra6JEeRDrcN6wWdU2/JrWRl/5EqqVZ5BQ3Q70a3rAmmiAm1fk5rS
         4qe7zl0q+oRtvieEiE1YVgE2DLWX6RuKZhtSVftxt+UWl257PWcsGXebaGFzgxwAnlx9
         OPNizIGcTp3V3byhtmsYfLX7WuYS4XGI61cN/SAICnW/hl2nHQctnCAD7Q7glORnQ9q/
         FOCnafD7KtFbV6hoAbbxfuSPAoJd4GFEQpVFcPatdFyyleCK0zh9n4ixxj3sceaA+R6o
         Mo3484PyOl9LlyP2QnDwD5Mv5DPpdweIhKZYKBifF4l/n0m8s3Vy51cdzP5D/Zx5Gc6E
         mLTg==
X-Forwarded-Encrypted: i=1; AJvYcCX2qyG8VDqQ6qxJKbjAD/+tMYU7bUWVyU3ZIra8HlsxVAa4it7VGdmLVBQD7q6oyUPJ4H+6u6iQE/uo@vger.kernel.org
X-Gm-Message-State: AOJu0YxL669pWs1DOG/IVLroC6UrjJHx2qX/dXxC0h0alSWK1dIrM5o1
	bJOoGvfp4n5jrNN6BpCGd6OlLxWn9kmCOyeJTt0JKBFCXwjOwJ/7o5BZNSD4DUlqCxUm8wJV8Vq
	p986BHyObGO/yozubiBXvKeZ6Ys+dNK0ywEwiz4MV/HihjmYIpNwwx8q5bh0m88XQ
X-Gm-Gg: ASbGncs4Kzgpt8UPFAGtYcHgPoqBDSRTn906BjgVFzc/pCDElpTGkYnWNiqlU8JTTaT
	L6kScY8n6ScPJTHTXLA9lWBu+rCRSqUV2JdcZgtRFgpRFN2iS+57Xf6IB1xMl/mHkyOuDzuLVxX
	xFbmZ5dTS0Zs1bFYfDXmNq9XR3Skjd2lpqSGbN8tR+3PlAk92zbVpZZfKKsr9i5umvnVsf5Obi8
	QMK9CGjedScDWV7NSmb6YzrYN4ytqwn1XXkONa4Is9Rgbw9nEGJCOAY/tl37Lkaw/c4yBr9XbDb
	gDII6I6RX8A7UHIwB4uGmorodZwa2ZXWLK4Ovnv/rII/DDwxa1v+yw==
X-Received: by 2002:a05:6122:181c:b0:543:6991:8f63 with SMTP id 71dfb90a1353d-544a0245d89mr2847491e0c.7.1756829555678;
        Tue, 02 Sep 2025 09:12:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/AW64XUiNKMzzm/MfHy36hagXtx5WIUMa11UNfoPF/ThD0Ck2204vpxusFiXXXWGCeVYkRQ==
X-Received: by 2002:a05:6122:181c:b0:543:6991:8f63 with SMTP id 71dfb90a1353d-544a0245d89mr2847450e0c.7.1756829553717;
        Tue, 02 Sep 2025 09:12:33 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f0d32a2sm309894655e9.9.2025.09.02.09.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 09:12:33 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/7] dt-bindings: soundwire: qcom: deprecate qcom,din/out-ports
Date: Tue,  2 Sep 2025 17:11:52 +0100
Message-ID: <20250902161156.145521-4-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b71774 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=9b2JUy4lzbIbXjLhPvkA:9
 a=hhpmQAJR8DioWGSBphRh:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: bgQiEbb7H4ESwXfIsoiW2JZlISxbs_l5
X-Proofpoint-ORIG-GUID: bgQiEbb7H4ESwXfIsoiW2JZlISxbs_l5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX/z/4hVbWx8b4
 MwV80BRaLi9WKxii/zUwcl9BlicYbLVt8lI2pZwSHDEmq/jOwWxxWmxbg+urV1lz1vsY9/EKESE
 /kWofrcVvg5qf7DbgAXAJoS1HYVE6pxAAXqen/C+M6TZa7qflSWMonPYaMFWnKxSVjlhgBbAfyb
 SIRfzRQiUV+HImO0/b9XkNbgCCtXo+uBDyc/NunwJ9g5CkG6PI4qlm+zorbh9p9DWf3LzGhqJu2
 L4pjZkdBxjI8ZUZGAfEJ0IMtVu6/i503O3nVuZIhRh1/CoadBssZkdViIhYYmblrtkTpGFgCaQe
 By4oovi+BsUsJn2WOywFDPsN2vvNKFuUiY8IS5Q1VFcdAhvSyQKnO8DsovmH593mymOv0KLDMvf
 ZI3c9g95
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

Number of input and output ports can be dynamically read from the
controller registers, getting this value from Device Tree is redundant
and potentially lead to bugs.

Mark these two properties as deprecated in device tree bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/soundwire/qcom,soundwire.yaml      | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 95d947fda6a7..7ea491f7e828 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -73,10 +73,12 @@ properties:
   qcom,din-ports:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: count of data in ports
+    deprecated: true
 
   qcom,dout-ports:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: count of data out ports
+    deprecated: true
 
   qcom,ports-word-length:
     $ref: /schemas/types.yaml#/definitions/uint8-array
@@ -223,8 +225,6 @@ required:
   - '#sound-dai-cells'
   - '#address-cells'
   - '#size-cells'
-  - qcom,dout-ports
-  - qcom,din-ports
   - qcom,ports-offset1
   - qcom,ports-offset2
 
@@ -257,9 +257,6 @@ examples:
         clocks = <&lpass_rx_macro>;
         clock-names = "iface";
 
-        qcom,din-ports = <0>;
-        qcom,dout-ports = <5>;
-
         resets = <&lpass_audiocc LPASS_AUDIO_SWR_RX_CGCR>;
         reset-names = "swr_audio_cgcr";
 
-- 
2.50.0


