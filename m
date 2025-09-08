Return-Path: <devicetree+bounces-214568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04684B49A41
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 21:41:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D925F178B33
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 19:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B85C62D3A77;
	Mon,  8 Sep 2025 19:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EDEelVb5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3301227F4D5
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 19:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757360450; cv=none; b=dr5Fx5tzwwEAENUSyqVnstjMDVfZhVKR6G8ozPv11Pvxd/S4D12nRh2XBjaDAddgUZFzIfwaOMEICVkuhTpqI5WMJ/wDqcKIvy8D/x1ErB778+QU7ZTNAVL+p83b4zEbydy51QuHs6zvU4tNX0WIjBSCD54h0HcXHsANiaPaY/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757360450; c=relaxed/simple;
	bh=9bfHDTw8kTerdOD9ddHzM0+SjSgjN/43Tp5eBUWS4yw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J/c1EX74DTbGizxiVk5EdUWxNEJcUa3xco49CLejkOXK+jMrg0lyEzRMyvMXpuCsOxSm6rk238Vxw0ezUra7tdIk6pceA2gsIT+l3wwwipeDyUTzUuDG+91gdzw/eIDLZPQ3TWlFzVDkyPINEPC/pYQhmqi/WSZdl9PsjIIgZpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EDEelVb5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588GRkDp022772
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 19:40:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	itWnLUDQYz9rGMnzsBXBwWW0Rd78skgWmOLQTl9Qpc8=; b=EDEelVb5QOzbOCtY
	x59I1bFXpz8wZOSNVjit2YR8zEXrOvhG4AP7cPiAqCWidY1AZX2gP62OOHA2Kjrt
	HENFFz5XBpfBDcJXPW64sFPgJR1Daiu4IA/0h6v2mFwViQ0jzpgdJS75krpFBQJd
	+IXRDRKK+6nr/W0JCZgE30ViUU6PApFyMsqLsAcG2ts8aoEsl9hD0bn7wRdL2adU
	7HIoq3msOSHaHq/VsEzTEwCivP/lbFR4yivjbZsAAuO1wPPl+HDVLuzJma9RZ/Vu
	ti4ID6BdzdvhKZ6UDlu+MZJ3fWnthZjrNPlhKe8X2TRRQswEvpwMv5lfvvn4BAF9
	IU0MwA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc21s3h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 19:40:47 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24afab6d4a7so101958825ad.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 12:40:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757360446; x=1757965246;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=itWnLUDQYz9rGMnzsBXBwWW0Rd78skgWmOLQTl9Qpc8=;
        b=kO/AT+Hi5mF4LvIUBV9H3QUpiIMM5q043DQguNrdMkKyCpWCA5+t98IsLo3eN4yVTW
         KMEYPMYKH7gO/DmkNXKIRYheqpxWMkhNV656wF8jJTqXnnaM85Ktin3rL1dQgsq3Oa7t
         irfCWpRtRVPX+U2BgEDArKB5FhktiMLADR98CsIfyYE8AHjI/5v8mNaHbVsc5ywnmmtv
         TYbhfUujnvdT6Q19XGcrCFaQzbhRxooGyISIZtaLD4ENelvlX1td9/deITwKDwYBEwjm
         H5YO9dk1ZjNn+ofp39bcuXxWjlEpF/wDEtmlnEcydC+9zsZ6uxwyJ03Yr1G2lEvwUNFG
         UGjA==
X-Forwarded-Encrypted: i=1; AJvYcCXkmDfk5Q+IsGNoUW+XeeQRowBlD79IM3YHHnJz2aWWt93K1qYb2sK2Wm6wK/pG827J3RNJZ6Opsg3H@vger.kernel.org
X-Gm-Message-State: AOJu0YwqvPWXLII/DZsF4duEnC65Mnykf6U3NeOjDgfKo3bWY4gaD2nB
	hekM3wzzjTPVMsdv0ZwomoY8RqV1IZKyN1AhEeUwAUyNFKGIvKFgTKTzp09jovRHSo4ZVT/5aJQ
	Gj9nAD86VX0sxMqxW9EGwY32OlHd1Rfes5XgUFNWmwt5pXTzVjskEzL8NPd/EZoIz
X-Gm-Gg: ASbGncvF3ane3J4fTeJ53RBBqCIdOMvJGHEuJ1Njmn5CRIBffROxGAdfzMOYYNuT38l
	vFicD23Sr33l90xKwzIfRy2S05njTzHs5vHSsT3sfdC8LVmqk0WzEE4yIv56QgioQUu1li2GY70
	qP054ZIGbe8Y+9o3OUJjCJHESz7iYquSWxKEzoe+M2u2Z9CCaWLGr8ExkOQ1engbmu1iz0pL2I3
	WOybi3MDGsXZIzM/TPMwFJbuSUllPDSL34o+YKX9fZ2ZdMvJAX6GgHcxEU+YbduRCNltQg3O4qF
	zUk9yEt7rR8+de7ASz6t9thxcI9PSYSoY6U7qQGqevwPGVEqgX6TpIN3RGmb3lMu
X-Received: by 2002:a17:902:ea0e:b0:24e:bdfa:112b with SMTP id d9443c01a7336-251761616c1mr100018115ad.61.1757360446334;
        Mon, 08 Sep 2025 12:40:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+9JOK8BMb3sXLnKBC+xc+bC3hh8II9OXtGKKTgCzvM+sstpMkCgxC9RzDwJ1IJu9Z0f7IRA==
X-Received: by 2002:a17:902:ea0e:b0:24e:bdfa:112b with SMTP id d9443c01a7336-251761616c1mr100017755ad.61.1757360445770;
        Mon, 08 Sep 2025 12:40:45 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ced7ea5e8sm104008475ad.104.2025.09.08.12.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 12:40:45 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 01:09:41 +0530
Subject: [PATCH v5 6/6] arm64: dts: qcom: qcs9100-ride: Enable Adreno 663
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-a663-gpu-support-v5-6-761fa0a876bf@oss.qualcomm.com>
References: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
In-Reply-To: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757360399; l=879;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=9bfHDTw8kTerdOD9ddHzM0+SjSgjN/43Tp5eBUWS4yw=;
 b=ipTZYtF2nW644chXYPKQvMmaRxyK67TXes3EoDWwCmqC0y+G+acBzHYQk8Zq8DjgOEkmPZRFG
 YeSNaDji+duCoUv05rfDBL8ZXrVvNvt5yi8+ocBBT1XDvOeaIWoSyp+
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68bf313f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Xl3f10jGzgz6Ja07nhwA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: ohcDlvkEkklEznq7nuxqdxfJsj0eoVpD
X-Proofpoint-GUID: ohcDlvkEkklEznq7nuxqdxfJsj0eoVpD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfX1yTUlCiVytSz
 hdAOtOHrw/PN5CoaLdXQFO56CG9QjBVzjuyLLupkf5ouVQ5/3T7nXAw8nYbl76x8G74R+1OBOMz
 C1dhLa0gRPJ0lUbNdNGGPyW7FP7iyRry7bUdsjRjABBIh7o6WOrDNsKwwzLPdiUyaWVpfig/eoT
 i3sgnuFeqC5qY2EQ9lSwbj4TH2V+H2Pi1ZOM//SZTusSH/Yjov5iJuw51+3QMABBrq8z755PSjt
 6d1OO2PLTgmXKkdQcse60uKivYphJGVYnTImsV/GPwtCYbf06UKC7QSapRzSf26SbmtwiojxFzN
 FE/3ELlyQkRuFJxHpO6T2S5Voc9735tVlq9OfmSqkpJsSTvVctsqCBwvm9pKShDdDWuXOqh9VD2
 GqHCkvhJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

Enable GPU on both qcs9100-ride platforms and provide the path
for zap shader.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index 25e756c141606fbe0876ed48a54809b372650903..e9540cbff78ee44d6d92de10464c660a05a68db9 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -436,6 +436,14 @@ vreg_l8e: ldo8 {
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
 &i2c11 {
 	clock-frequency = <400000>;
 	status = "okay";

-- 
2.50.1


