Return-Path: <devicetree+bounces-206771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8948EB2D8B5
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:42:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AD263AAFBF
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F8C72E0935;
	Wed, 20 Aug 2025 09:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c6ZzACJ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0169A2D3ECB
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755682542; cv=none; b=UmOkgDscuLTWAShlPNkNUUen3KFyAqqZnUmm2icZhShST0fGO4w2LunFHQxW51COZ6MRARGb9m6cVZf1znLb95vk5O5ebuPAoVzbYI0kMOR3pt2EfmU50iUb63w7126aT9ZfRLILhHIAUUH+Z8x4Rd+56doKqF0t6sedXyF+1s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755682542; c=relaxed/simple;
	bh=TjE7e881JVJnbF2pC7aHvYEjeplK5Jqgj7gdtmDIJTo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IYpbyOlqYfKj68wcapNaUlKhWKsSy3Uzw4MghYBvFlGs7mNlvceyuxA48lvMMftGFtOLDCrJ6m/ldjeOlSP5buBI2T/5SZusd3gAvysi5khrRIZBbGieFqH6OgojjPmYkGUr9YSGrJ1XSFa2NTd++wrBvwGWJp2/Qv0Dm03Qaxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c6ZzACJ9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1p1Kt021225
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:35:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lfdbDDF0iaKbmDjAc10VCP1/rYHdufYQTCEri5cSINM=; b=c6ZzACJ9ntzGn7pd
	F4Yq/lTRlsaCdklIJw6c6npphgDFDfNqymLrq7dGBs2GWKk0poBKof8gjfnWh6TG
	ZsE0QPKZ0JcTsTkKPneiTRnaufKaOqgjMSDmrlNlSnGITiWNe4wIP7Fz/YhXPpC9
	/kGUBHVxBZieZZt4XPU3cAWhHTpGAbmurdmkt7ZKPeQKftuCRjxXhlYcKWZNHOmk
	1OcwLH+UL+0NgnPks1OiMbgRaQYpRTQVBXBrgUshD2uZUmfHnN+4IzbwUdI9xxO0
	fuEFaeuqD2+EadfBcv9f4JXOYIbGjnLB/3E4aqzgtW0sbsAnYNCOxWkwDkzrQ7Fw
	IP+yFw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52916yx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:35:40 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2445823e321so13309635ad.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 02:35:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682539; x=1756287339;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lfdbDDF0iaKbmDjAc10VCP1/rYHdufYQTCEri5cSINM=;
        b=FO7RlxFQ1XzgPjqj2n2OZnEVvwQx6tmD3fyDplZvK+iRzd5WnE0oiM7EQIJkpcFSEa
         JyVN53+ill3Fjj7KjCXjxYnrvccjWWoNGcB72gIRRrRym3Rd+KNeJjsKIxZ5NkLVTCNO
         V5XCuxxgjeiew9mjtbo0CJQXzGWdDOEddHQVVB+xgpv6DdBYiZxWRjHgonQNYK51g53X
         6k0dWo/vCbqEvHuVSm45baGc3uwFo2OtSEFdcjvISzJz08N2qMMDwqHC+mk/5V5cF/zq
         WBaaX7Y2GdedUCmSafsr9oKpHcuYFTYAP5t0J20d01uOTBQ6tmtPEZO9QOQwJArWDcXD
         U8zw==
X-Forwarded-Encrypted: i=1; AJvYcCUwtUHppbeTuZZ47kpYhuOmTL2TDDjDsgvlZOIryVw6ROq0UT3nANuoQUIqfcHe6BM3FvQN/tbwy+BK@vger.kernel.org
X-Gm-Message-State: AOJu0YwPLucVTGJExHdo3WZQFiz/ix0zjvvWhTHTaXIF8mDQoAcBj1AN
	DOH7LzebdZwnwg4cLNjUUawJHnu4HBiWa6vjX9BwzALfbk5gnUHYMD7hlo622nM3jwKn6dN3bKm
	34yPHX9FjfrBK6rBdy67pvRXXXbSi4bzV4SpV7jJjmLH6RTANxElvXOuMrl7Cdh6r
X-Gm-Gg: ASbGncvMY7O4N4fvaqJcR6GYTMV7FVTMhMTIT+Rk9FTl4G7VEGFwX6s3aicVRHfxqRV
	wII7wYHYywQcjWm8tE1zzW6yKChm1ksV6kokbu48/d/tXj2vnfNP4sVgxnJH37TISn+vRuj7QOH
	cN9h5MJFnWKiAOl7ZbxJwhL1rzf0br5gJAkaoOEJi7mW5vor6GS/aJf8O8HzGvDiWDWOsIIMvlo
	omiEx9LLtbS9CxBZBYC146GfUhUjACOtO34voqDGwEPAcq97SEipu1Xb+hH7m9LPdwP1l9N0wrd
	1nus9ZabBebW1U/065TVLhue0eqj014b8QD9MxKIPlYVH7VI/gFsvHzvKfOzKron2js6HSqt8QL
	3mLoDsVk7iuek5HaF6+7lqIyOZd72/NW2Tmve+Jj5PsQHcsqDlN0KHw2g
X-Received: by 2002:a17:903:2301:b0:245:f85c:8c6f with SMTP id d9443c01a7336-245f85c8f03mr878815ad.3.1755682539165;
        Wed, 20 Aug 2025 02:35:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGruFqyjDNjNZap3tlQ1QMYvoarVGmRE48uLqorBf5FfkGpP/sCgL8kWEJHeFetKvlW2BsAQw==
X-Received: by 2002:a17:903:2301:b0:245:f85c:8c6f with SMTP id d9443c01a7336-245f85c8f03mr878395ad.3.1755682538659;
        Wed, 20 Aug 2025 02:35:38 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:35:38 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:43 +0800
Subject: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682519; l=1064;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=TjE7e881JVJnbF2pC7aHvYEjeplK5Jqgj7gdtmDIJTo=;
 b=YwFU8m0AxT0KFGHqI+UMpcgWIIE1IgQqEACZ3mvVMDlXo2yCND45p9Q1LVkk1fS+g3Vf0Oj8h
 owjuMU/XXy9C5rqcHiom1RQmoTnCAwpm4ldZajHq6LLdCFeZzebhABE
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: 70GWcR77y16uBzBvJJzu7BNXemAmYXoI
X-Proofpoint-ORIG-GUID: 70GWcR77y16uBzBvJJzu7BNXemAmYXoI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX+3C4kxy9tzvb
 k4TF/KiqzzNGYO1xHWU14M5B6N08MKWEI2h0LBJp3rO4sl2za4CIoQjdcCijSk2FXh+9bQpd3h3
 Mh4Mnc/7kXtqp6D9Nfeh7jkfswK3nPDo3Zw5BC9qlfabrKEiyLPwUtMAOKxAchLfVo5coSf7nqI
 WckbE2e0Y1aEEt2gmlBujmbfdNTHB7C4o3u2ZpTt2V6CLih0wtX6ut0Exj+G30ofepxYByBAh+h
 aHmLBktvjkA0kt4MBpY03aHegf8z3dwIKx5OTcnUWqbXf5Fg3TvEyG66itJscsQucAe4vuP2Up5
 gG5YAfk0gpmPRXfLqzEJGxhSJus7TvX3bSzjB6uUNO8kRpQaNzIfkWHvaol2Dhhc+lVX1c/p6L3
 t2Del9kXXJwrcmUuG/fWY+HgNjYCLg==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a596ec cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Hz27nZlvLZz7BoqxLNkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Add DisplayPort controller for Qualcomm SM6150 SoC.
While SM6150 currently shares the same configuration as SC7180,
its hardware capabilities differ. Explicitly listing it ensures clarity
and avoids potential issues if SC7180 support evolves in the future.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,sc8280xp-dp
           - qcom,sc8280xp-edp
           - qcom,sdm845-dp
+          - qcom,sm6150-dp
           - qcom,sm8350-dp
           - qcom,sm8650-dp
       - items:

-- 
2.34.1


