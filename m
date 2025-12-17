Return-Path: <devicetree+bounces-247554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 272D9CC8F8B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 18:09:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E72843138769
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DACE34B1AC;
	Wed, 17 Dec 2025 15:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UjcofAbv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F5REcQz8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27E5346A1D
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987034; cv=none; b=QrUJBEjqvQa3xTMT9BHtYrXpj0USBaO0OLBO7rKruyo9qJ63jNoQPotPXGO+JRZnFJ403gKSCR1iIDgrGPtdQetrHe/iOKfWchYSIzrbQJVkMMF+o5n1pQ2M6it8mhcMS2xyaMhv+srxxC9wyikI2Bv5pcl6lo68GC5ClULiSoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987034; c=relaxed/simple;
	bh=gRnwoWYVjN7GMrjsuBdpDhiMQwmfcdo/4r/Rw1j08vQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SOE457W1/LQZD27MtMiYriVUlCe/DCKeFY7dfXS4ffIkGYZSK5Qk3lQg9OAM9xOQ9uLz+TGP4dnRoqxqdS83OMd0hjES6ncUZHTdW14iKIV8P6PFOrysj7PehnIXWHE+Qpgcezlb5laWV43EGjksNC/o9wzBGqqRu3y2PRgxeBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UjcofAbv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F5REcQz8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKqfx330694
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:57:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y4KqA588JLPQI0i1Leq0ab3vXKKNpG6AzEKsdY8kU30=; b=UjcofAbvH5ht9RLh
	cYDq/xR01gLxK5bht4pOfOe/Ivsszgr2Fdc+4rcX4BKCEK8dYHehIfDscs9uNXo1
	c99OZw+2Hhp7E+iGe+UUdUIzg20l72HxXdn20rJxGjEoM9C5iDBpi/nU5Gj1peGu
	zJV872/Ehdt2N8ZdNXR1QHbg0OrsQ9zTpRvBfbGJd5ioRNCDQycKNXOoWuHyeG25
	sMGWfTG7WP81EoILnuep+ocmdsTk7487psinZdOW7vf21t4uujkft+xeThwvgNUX
	bo7HqQhm2fZiWh4O9HW+uRwY198oLau6bSWKMY940YVr7bEIYAQWOL3tMckzmBfE
	pj/7Jw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3t8e14e3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:57:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee0488e746so16060781cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987020; x=1766591820; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y4KqA588JLPQI0i1Leq0ab3vXKKNpG6AzEKsdY8kU30=;
        b=F5REcQz8IfQ0pWce3a6i/wPOtbb4O/rz7hxWm5v0rBKY6+1OHXj2TvYlqKMFWE+BO5
         Qb4+rfs4/2RrHGe+ukFhQ4NULqIJCZQv9KNp0cLN5rQ+mjt/EliLpqJnq7S7psYlHnUK
         psWILYCaqwK474EcyA3P5CcFX/Di7fRTjCEQkOjgzrOJ/D3OQNiZylicOagiSImOQkjh
         /vwkRzT7rRZ2XUBr9WdSXxosV+0mCZtn60P4Dk22rMyopEnh7YtYS599MdhXYJWtnUH0
         HLOAuCCCh9xEnv3ojv72tm0rJ35Ekn7x8mp+9359Cv/Nvj2IM42AkWqzFNYd1DZEk+hO
         rXgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987020; x=1766591820;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y4KqA588JLPQI0i1Leq0ab3vXKKNpG6AzEKsdY8kU30=;
        b=XOb9gW+sBfpRoOWMXG1KlgicyYQGXT3zOczXqb0D5M0UQnhZZn5rwWglwUn9eelku4
         m7JyzocCZPn79M8n9iQDObDs7JfTzKRzMsFcTQ0wzcG2lZ1J6d6JWtW4maGQgqR+QUe/
         OGAAMsvxoQsvCbIddq+19iV24xPYZYh85mscXgAyatmEm3T1+qei+skE5vk6zALiZOqf
         JEbl1msXd8+8ThIwo4Qqu/DmeiRfDcpjjLWipQohUbomYW1I13qLqp1ZKspjXkQyT6J/
         7juYHGdzBRcD6J+68gSVbww94s02V+/8khtVAdrWPIXSa6R72WmW/ySTF1LZKWEtWz53
         d4Kw==
X-Forwarded-Encrypted: i=1; AJvYcCXx4uHyZ/v/KWmfMd4zaIBihSyJOkZ9K2EB5SKuC2ih6mf3kTcft96LDBgm/wGXXFlbpmeCt43ZIgCO@vger.kernel.org
X-Gm-Message-State: AOJu0YztXO8RsjWF45jvfU4BiGA9pvEV2K0YPDHj730956SGFNnyFuAU
	lc64c2aQ3RNuzVsXNYyWXGecIUbSIBpIJSrKGiGqD6k28el42Lwjjam8QX6Pnp2eKf5bZ7tB+2o
	gtRUOT7RzZD2fAE3r0O3NxGDMrTN6hMhzNOL7/F9wFxXndruz//CckYrG4cWKMosR
X-Gm-Gg: AY/fxX6hdfExkhpXmu23krqzzFViiLQByPSgL6WkS4c9nzC13ojRXqeNyTffbIjEcjj
	H+yMtckSMgYQTLtfwtun9knh+cDnkeoXqig9jNPFFwZEob2yqMLuayoBLHCXFvx0O5/pHxX91Ct
	Ckb5ScIhWYlOTwzOXXZyRGidNUidHS4MjiXF3LHFOjPX38U+L8uzxJbgQn3erSr3BT+0do8ryPX
	Xf9hx2mksiQwUyyUWIZcABilydL8KC+mI5Z2OpCephlRJmNF8VYB21Gbua2NymJ6EWstPliahk/
	w/FDo2mYMSNjffPeabWo3IRon3cIZQFeZdqJ7JlsmQ7COaV3t7yX8C6Wi+2EtTIMbv/N3z8TrdI
	4ZWY291OYy6v0l8eYqvBzWrfIbEkuDUel
X-Received: by 2002:a05:622a:50f:b0:4ee:12e6:dc73 with SMTP id d75a77b69052e-4f1bfc359c5mr334303511cf.20.1765987019805;
        Wed, 17 Dec 2025 07:56:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHSeUGQg3MB7LH9Sfie6xzdKE2ev/yzJYMwkoILOdDw7e/522lcpaoGhlmo5oVnRw1Xh0YFVw==
X-Received: by 2002:a05:622a:50f:b0:4ee:12e6:dc73 with SMTP id d75a77b69052e-4f1bfc359c5mr334302971cf.20.1765987019289;
        Wed, 17 Dec 2025 07:56:59 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:29 +0100
Subject: [PATCH v3 11/11] dt-bindings: bluetooth: qcom,wcn7850-bt:
 Deprecate old supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-11-ced8c85f5e21@oss.qualcomm.com>
References: <20251217-dt-bindings-qcom-bluetooth-v3-0-ced8c85f5e21@oss.qualcomm.com>
In-Reply-To: <20251217-dt-bindings-qcom-bluetooth-v3-0-ced8c85f5e21@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1900;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=gRnwoWYVjN7GMrjsuBdpDhiMQwmfcdo/4r/Rw1j08vQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtK2taJdcfc71fNpPw4LJbo7qeYKf7M33R32W
 mEtK42HxAyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULStgAKCRDBN2bmhouD
 17MiEACS7xd3LVPvQXjWLBMFSa2PmWiLwHVDtKBW8gEpmwHoSPzYHXgOR/euSJamH8L8boA+IE9
 NeNxEkh+BHZpmUmr1RKMnw9o+y4hSwlDkmK+irX804O+DD1fH96l+morgQJC79vCrUV63p3doS0
 3n16dXUgxUM+TdL0LGtGl3psTvtxOw7IEpbEE86qnkev75YQSaium8SCcHj6teZT4ErdMCgBdAB
 6zzZEW/Q7iLizEdaq4OZmWoPT6WMwxyRE3BYcLANAyYRIidrxFbZnwn8e6QhyiDj6jSGkP0crtj
 KhCIqf2L1U4TGtIEpnyNW8auIKrihZVy08m2aNUmT7mxWqSlTDsbiqJR+EyxmMAHKb6fzOymixR
 rczG4JI3uZq6DxerQbJspEivHWpHLPmMNeUcX9TzdM650mYGJWGDcHwBedq9ylU/KbyJgiLETHR
 TpYPPYhCY0+9zZwUI73lCr4EKsiov7Q4qxA36iEBTTRj24hZBfNkWMDEkJad5wb2ha3c+yUUVYo
 jte7+mXAx1JTOTEUtSGaWRLAGn8fAdOoXfuHIT013tMtMsYh/0OiAj8YYx5N2UC4i9GL5H5OWdW
 0/UzJTRu0oFSUoe72e0YsJZ+rERfj9LTTSKUpf/mdrFkK4bcG9+Jbs/3y5bHyPlXK8yzGn8tovv
 2NN8rWjvqXRChig==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfXz6zOpQBOEbo3
 EETZ4u+RNly85+vwSQ/hO29UqF1ufoEDwk43ZEYAa2v4sHeMEnclQkgzFHUdDZcg9vf4qRgNRtO
 +h0uwxo+qpK958di3e37ZcLZYZlynfjKsDh4AnA+TaDm0yAtY10Jm4KyuAMrtZrhpib89OvXIvS
 lJEW1PykI1fn8Z6tbeqh/h9qnjtxz5YEvgDkPOa3Er1f31ed1YNOtkW27ARQ0mtVwXtZtluy/5o
 XiICZcCQdo8uwApRvG12kDPlC7K8v8uixwDaafoDJkpZcn3afNZLXjvb6su+pLXGMWJt+cQVUX7
 W/OtC0sy62Qt7ihlQQaudzar6M11gWRkXzhRHWbFvQkjx0mlmcEfOQgMClxdrQ7XEv7dnBcgCSf
 r6GGT8aCNTb6qtSvI8Jiv4Peouukkg==
X-Proofpoint-GUID: T7FzscVdscg2owKahz-AwfZyXg_QBAgM
X-Proofpoint-ORIG-GUID: T7FzscVdscg2owKahz-AwfZyXg_QBAgM
X-Authority-Analysis: v=2.4 cv=EsHfbCcA c=1 sm=1 tr=0 ts=6942d2cc cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Yne-JONsqnic5O4-CUAA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170126

Commit bd3f305886ad ("dt-bindings: bluetooth: qualcomm: describe the
inputs from PMU for wcn7850") changed the binding to new description
with a Power Management Unit (PMU), thus certain power-controller
properties are considered deprecated and are part of that PMUs binding.

Deprecate them to mark clearly that new PMU-based approach is preferred.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
index bd628e48b4e1..8108ef83e99b 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
@@ -18,20 +18,24 @@ properties:
 
   enable-gpios:
     maxItems: 1
+    deprecated: true
 
   swctrl-gpios:
     maxItems: 1
     description: gpio specifier is used to find status
                  of clock supply to SoC
+    deprecated: true
 
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
   vdddig-supply:
     description: VDD_DIG supply regulator handle
+    deprecated: true
 
   vddio-supply:
     description: VDD_IO supply regulator handle
+    deprecated: true
 
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle
@@ -44,6 +48,7 @@ properties:
 
   vddrfa1p9-supply:
     description: VDD_RFA_1P9 supply regulator handle
+    deprecated: true
 
   vddrfacmn-supply:
     description: VDD_RFA_CMN supply regulator handle

-- 
2.51.0


