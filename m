Return-Path: <devicetree+bounces-197478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B84DB097F2
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 01:31:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 147FEA4771C
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 23:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2683027A455;
	Thu, 17 Jul 2025 23:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hJ6yAY0O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A79726E6F9
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 23:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752794938; cv=none; b=UekB4bgwmfUDkFIkSiKwhD9U/Wkh8fQinIMKj4gE0qaGTRuGsDuqfFx/PtUy9tepraBNdTw7fcjU/ehghBXPgoh3c846E6ftyZ+X6vg6Xy/Q6w29SO2Tab3iUhOp6MDF7qPcyfuBdqCQm+5wAKsuNZKT6hp5iltdnAbL2H1jtio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752794938; c=relaxed/simple;
	bh=O2cCbqOAEvqsb54sdTypVBT8GhswTdQfTJ7kSW24Q7s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZnU2+U+W14hm6YrshU+iS5v7elCU9+uukOt/Mef1KKT68VfSu/Y4DfImYCEGd0cH9evYVmtcNXz3/ftUuO9Jmd8rjQMxRwbJykQTG5MUgI3E2FhuWQLWJlfVDBuAJqFVz7g2iTW/x7tnMfMMiA7wvoqAtybg74PUr1WsaFlVi1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hJ6yAY0O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HJvMb5020802
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 23:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wWByVXuqTAYkmR6e95nPijhHkyi6G8c8w9KcZupqunI=; b=hJ6yAY0O14NAP0SA
	OD7RIk1xgMFCFV0Waxc6glqINKfqNrshKx7X0m+j1IhGZTgu4SKIcyaO88U3fK93
	N/RKgxJxcUmMYorqd+tANjfAmIXX2xtm3ZsKQ4OGannWCaKJIFYdvWfJbaRlo4XE
	3hGm948gTzjskqC0wBuUGVM432JOTHdn510OiakPXvjx5QkFPic9x1vCooGbZUQ7
	f6/1yaSjf24JUbcCnCXhx0yq9e+s2KCzPX+ViaqgfGrJLEyP/8erLk3wZn5xF/R0
	KKRazVs+JRI6XJEmg2toHA2p/Lk/xI+DYUvClM/8Ri8L5sG3TbDtvgmo3tj3Yl+0
	e6vusA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpmh6r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 23:28:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23689228a7fso21795985ad.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 16:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752794935; x=1753399735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wWByVXuqTAYkmR6e95nPijhHkyi6G8c8w9KcZupqunI=;
        b=d2m1jjSL1GEylnl4BeQcdFmTQj2h88dQsMsxBeoP2WSP65M1+A2rjjRJKfgZSArvy8
         wN08JP/COseLJCxrrbh/wMnXzJ9ELyMMesewZfDac8tluAifILsKFLbh60puXYvhOg3Y
         GuvOTOMgexaktsc5VfkutO3HPox083A6Wk1eXCG8iBZ415gQUQYoehmP7isUTn4oiugR
         M2+JFxhiX2E77/1b7vNGb/dzOE+fPWDaDjUyM5YZMe4nC8hDNC02qlfwlRtUmJYsYIea
         FFfaofXdDa8k+bsQdPNh3qDpSUxjM9RbBp1Ox9Hkz0pO6HmpfFLd3ICY159svWw+0alc
         f1PA==
X-Forwarded-Encrypted: i=1; AJvYcCWYMn0FXlJvdZ3AH+e3/Udrh4COU6EaZL5Qyw7gqcArkSxqydQDKFEkWUJrbTQhp2m8WjUAhoo/bLwJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe35Q/NbsHh5wbFJdyGsKdvV4gWOGK1elrJK6LBeEgUPYUcJak
	PslMM8hwJsdWH8IyWtcotxPbGxmbOdhivPHSth8WN0BTZ7KRLT/WAIGQ9J/BERwRFRk5Qw/2hkD
	BpCfx7ah+4ezoHImZDRIHeMSc934pfxTD75MGaWZrbHyqGOSai2sirsTSzXmn2bCu
X-Gm-Gg: ASbGncsVjbrPnVx6LTmUUkPy783ZoKZDGkTH4bMV//0wIr9IznwBUwBdactOSQ3Wj9n
	6CQ4cmOV+PocwSfNu7zetDY9TjZcZJgL6JXoz49LY/xTAaGSKE0CK/TmTHRCBYNJFbvB788FkU4
	/ofnwIgNkJj0mZ1W/LU3oPc99oabMzXwsLfoJNpiODScQ/2ev8TdLKVn41xercZgQMIUZCSkjzb
	3+G/2C+z0lktRwkp9qOz/QxpbtjSWfEfux9GuySq7gvVq9/p2ugHYygYXIYHgloFot30sKMDNkC
	gloKnQkI7EsBhOm4q4lxdDAOb6LNs3PLoiDbp0BDZlWhIh2jUV+t/LGTVyQu+t6tMvLm4wcPQsD
	PNclMWrXQyWlyyRwa2bFomKKj
X-Received: by 2002:a17:903:288:b0:235:ed01:18cd with SMTP id d9443c01a7336-23e3035f782mr80881295ad.44.1752794934712;
        Thu, 17 Jul 2025 16:28:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHy7EY+GZlHPcNHVs1AkXZZ2eIbMpFdFBa4h83G1a5pVhnBvbRDWLwMJEYWXJSA5sRyT8Jqsg==
X-Received: by 2002:a17:903:288:b0:235:ed01:18cd with SMTP id d9443c01a7336-23e3035f782mr80880715ad.44.1752794934261;
        Thu, 17 Jul 2025 16:28:54 -0700 (PDT)
Received: from jesszhan-linux.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b5e3cb7sm2002195ad.17.2025.07.17.16.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 16:28:53 -0700 (PDT)
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 16:28:44 -0700
Subject: [PATCH v3 2/5] dt-bindings: clock: Add SC7280 DISPCC DP pixel 1
 clock binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-dp_mst_bindings-v3-2-72ce08285703@oss.qualcomm.com>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
In-Reply-To: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Danila Tikhonov <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org,
        Rob Clark <robin.clark@oss.qualcomm.com>
Cc: Abhinav Kumar <abhinav.kumar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
X-Mailer: b4 0.15-dev-a9b2a
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752794927; l=911;
 i=jessica.zhang@oss.qualcomm.com; s=20230329; h=from:subject:message-id;
 bh=sZ2y2IyaYhBO6AuOxdT0mFWtWBLRRO6rCaMc6lj8Ipw=;
 b=JIQEhhSfOyDoyV7zPgQsd3A3ppzobltB2q4r0El3ARcu9XmGhKVnrWAmOUE30VXrx8yJGe0zd
 e/IkHZCE9atCpqRREuhMprBnDp3dtKBR9yS3h9V0DD0pruyJh5ZbmIW
X-Developer-Key: i=jessica.zhang@oss.qualcomm.com; a=ed25519;
 pk=gAUCgHZ6wTJOzQa3U0GfeCDH7iZLlqIEPo4rrjfDpWE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDIwNiBTYWx0ZWRfX6j4XvIYVTJku
 4WwRDmUYKPTcMdhGsLtC4sGJrL18nrSlt+pMN0UVi9pdKpfMEVEEg4H8uTsRkrEYUOYXS7ua0zh
 TmlRCcXHlDgiHGYbHAHMHv3QnVpD2QRfcgGx1jRuxOCi6IU00jSD2CgOS7tPsIDRDDjNAsuv6wm
 cPKlRbMhUkTE6SIOSdLtEacHoE5m+HcruPdVJEiCIy+hEbehdnbCu5VTSK492v3JUYaY3smwYu2
 zdbup448I/CGoS3YlB9F+dEKwEi8aZ3H/pKOZVrlbX85XO1/ht1sPOJ39u/kurrZBJXEbK0qUai
 vgwpHqS6XDtLzpRSuU+YjXbINuaMpycCdjrCE3kzTytiTY4GjU9fPumolMqQrALL76YoeR1HwYI
 nSte9FOlN4eYJ8N/RRX8qREEKZJD9mSke2S2VHx0ub71AV5BZFLwBn4r0cvLxFW0H3Lnh92j
X-Proofpoint-GUID: clokIKQ57a4ntzWG_6I88JzllrWf6Vac
X-Proofpoint-ORIG-GUID: clokIKQ57a4ntzWG_6I88JzllrWf6Vac
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=68798737 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=HZRYMJrZkReahVkyUwcA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxlogscore=855 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170206

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

Add DISP_CC_MDSS_DP_PIXEL1_* macros for SC7280

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Acked-by: "Rob Herring (Arm)" <robh@kernel.org>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
---
 include/dt-bindings/clock/qcom,dispcc-sc7280.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,dispcc-sc7280.h b/include/dt-bindings/clock/qcom,dispcc-sc7280.h
index a4a692c20acf..25f736629593 100644
--- a/include/dt-bindings/clock/qcom,dispcc-sc7280.h
+++ b/include/dt-bindings/clock/qcom,dispcc-sc7280.h
@@ -48,6 +48,8 @@
 #define DISP_CC_MDSS_VSYNC_CLK_SRC			38
 #define DISP_CC_SLEEP_CLK				39
 #define DISP_CC_XO_CLK					40
+#define DISP_CC_MDSS_DP_PIXEL1_CLK                      41
+#define DISP_CC_MDSS_DP_PIXEL1_CLK_SRC                  42
 
 /* DISP_CC power domains */
 #define DISP_CC_MDSS_CORE_GDSC				0

-- 
2.50.1


