Return-Path: <devicetree+bounces-181897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B03AC9517
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E65DE502561
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5373C27586A;
	Fri, 30 May 2025 17:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FdiuEyk9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE50C27814C
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748627276; cv=none; b=Na3RHMDkntLPltZF2+0sbYKnnjFodtpSFnQX+I9rDtxXgVMEzAu/1dz6bFN+A2q2/n8zhxda5mDKbvo9Ny8wJvD82BKj+Epg48GazOo7gpvcZS8eJFmw1mLhlhRsYjpzlMOjk+JWvwchcwVraH+dr9fhWi0P42THI51HQIYm0ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748627276; c=relaxed/simple;
	bh=jtEjy8chK7vSy/5Be8098CXoqGuk29fN/utLUxu+ZOo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qp5qmhhxfhlnRUmZKh1MFloNsnjAe34qrKd0yZm2AjvZDvx1S/LfIakYtDF/AH2D58BBF+d4ywVZ3zHoHbS+YLqZ7AKAZpABCaEhVDHTMcThslG0CJh9SwbwB3WIZyEKWaXj/mP8DA9lG6EAzY6wbBWQqFPODtb3JyJsz5W+Qjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FdiuEyk9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UBdKuP023953
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MzWFt16chN6vIu9WEyj7pbXUxecSq7Tf1b7Fhb2bIj0=; b=FdiuEyk9LZOIgG2X
	DXUeU3BG9YY9qaVl1cdSaNsa6h0raHzjJnOvQfyRAwi1PGybqKpy+xNQcBzrI2Ku
	cCY/I78JgkyLDEGlxOSTKSIok5xGOxShzI79PVEjrH3k2wb/sEiM+O9tllGeulOT
	ZK6aBtOgpMAXl0RJwE7JDITFKtj8Wrn9bo0pDhVABQXtvxQK9hclPIvehpcWxjpU
	ZV40DScfxuiDgLrOMSxT9NUMydsg88GqRH+UcTsUHike0XJdxMvkkG81blPvoPMV
	Ye/I7ScILFkV5iV1K/4PhU3SA1pIG6Oz6rnxjYu407IRukFC3iRaaEU59QfhBYT2
	sSNfEg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46x8d7enm6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:47 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311f4f2e761so2366048a91.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:47:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748627266; x=1749232066;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MzWFt16chN6vIu9WEyj7pbXUxecSq7Tf1b7Fhb2bIj0=;
        b=ftAhLzkSNjAVqtWGDMcUDJjF3xAD7TjyZHgMmQkiDoO5tDo71onTF87asQDrzU+zjM
         TTezA5NN7uFGzBAZPuH+XsTVWs+PA0ASjFb7fkEE3h51hThD/SmhqUTPHWvrx+kd+S6G
         gRn8ss6EDo79D33+LY+wkbxdeY2aW7F69K3drhUbaP9nGmYW4r4UBdtlLe/DWqvRjlYG
         az6v+Dg7J/T/77uHAqHtic/bIB5XQ5p1m9Q8UnGvno77zJvRLRqrZCTI6tR7lPWb3qaN
         0bEf1UYu0Dir0YrvocgfPdEpuUtUiUfKI5LK1m93DSu8eEUJBQ4gqFSczvhVLNwzh2nr
         7uQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKxQNWiqWb9Z1E/8fdAkKmo69ueCANf2C9y94L+U3QB4EdMzRGsAeGq9oObhgqLEV9gygTW6h8qUKa@vger.kernel.org
X-Gm-Message-State: AOJu0YyZwTmsO/w3vN8oSXs1ErcKlbuhjTWL14o9I2zqVze19+m1llkK
	Vk+Xkg+C/ptIkQfe+CudSfPoYDxLJ9hHWdxcwJLXsg4dkpO+JlXDXwYZeUkmcaN9z2PS0qvJdti
	X3cSOrjwNtCqMC1/E5jgv0zKv8BlAuZYxKpOEKzJyHrbigwHuRJj7SX8u0KeANBng
X-Gm-Gg: ASbGncvRIfaS/O5M684i11gLvqJVZ3V+sQaa6kM9mS4ZcO4yfty/9D5wzon5hZE9v/k
	WENoGoBliKYtgmwoYFXXF6YzUdf2x7vJh2veEugAv38PrsdTgJWok/Q483CHgjFznwtF7Wt1tQS
	B+y8e63LMG6i53uMCiyBbnPs/xXIkjjbtnp7L36Xo0lbThBGwR9mpYYCTGtteq0dtqNX/WyzlNk
	rqKgcGbQL6uHuTejbd4DMOoj1EjMRYQB+r5NLFM0w+gRWtN7OuZWy1u7QXCq/owy9JiexLT+3b/
	2EyJX3FR97T4AUj29/DKVFb4jSpHXDg8aSzRSpvDM7eas7MA2oC0l4sdBKXFTv0Z0GKppzvb
X-Received: by 2002:a17:90b:2dcb:b0:312:e9d:3ff2 with SMTP id 98e67ed59e1d1-3124150da88mr7360784a91.7.1748627266066;
        Fri, 30 May 2025 10:47:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH44Ez8w2kSkFGiWXJyTRDICpcy7Z7sFhIreQn9zU0Akkst+TmIzvezQ7ZxQQV4CDoSwIXaEg==
X-Received: by 2002:a17:90b:2dcb:b0:312:e9d:3ff2 with SMTP id 98e67ed59e1d1-3124150da88mr7360740a91.7.1748627265598;
        Fri, 30 May 2025 10:47:45 -0700 (PDT)
Received: from jesszhan-linux.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e399b0fsm1615381a91.30.2025.05.30.10.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:47:45 -0700 (PDT)
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Date: Fri, 30 May 2025 10:47:25 -0700
Subject: [PATCH v2 2/5] dt-bindings: clock: Add SC7280 DISPCC DP pixel 1
 clock binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250530-dp_mst_bindings-v2-2-f925464d32a8@oss.qualcomm.com>
References: <20250530-dp_mst_bindings-v2-0-f925464d32a8@oss.qualcomm.com>
In-Reply-To: <20250530-dp_mst_bindings-v2-0-f925464d32a8@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
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
        Danila Tikhonov <danila@jiaxyga.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Yongxing Mou <quic_yongmou@quicinc.com>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-64971
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748627260; l=862;
 i=jessica.zhang@oss.qualcomm.com; s=20230329; h=from:subject:message-id;
 bh=YcjeN4u37rChhC2e9vyygUDR5/9ourQp/Z4Vjz3aqaY=;
 b=4V+1vbUqjNallDMi4o5HtOHP1e5c2KVcVyGeo5DMGTjvm7tRoaV9zFs4DFYTtqTv+nTiRbwRV
 6bG9bGyWiyOA8qrekpoVJYMfqPwDIHSo3Bka5HIDElilp0rnW2u027w
X-Developer-Key: i=jessica.zhang@oss.qualcomm.com; a=ed25519;
 pk=gAUCgHZ6wTJOzQa3U0GfeCDH7iZLlqIEPo4rrjfDpWE=
X-Proofpoint-GUID: au6uhyBZ-0P3_t7KvZub-uC56jaOyGlr
X-Proofpoint-ORIG-GUID: au6uhyBZ-0P3_t7KvZub-uC56jaOyGlr
X-Authority-Analysis: v=2.4 cv=X8pSKHTe c=1 sm=1 tr=0 ts=6839ef43 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=HZRYMJrZkReahVkyUwcA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE1NiBTYWx0ZWRfXzy0LMUaGHF3q
 bSnq/WyF0sUecuaXbTxKmibWrl67dQ1EUoeWzWI2m7dUr9A/NNtdiXwCho9pQxY53Fdij5QzZ/c
 jm98VkG5rp3sZu+lLCmljFXkbuKRRcLoecpLltrUDrLgT/My//S2WjxeM/z/P59TFPwYkB6ckHh
 UIyVXQ/3gQhf29t2X4qcGCSL8rrE4gFQKHrSxZDW+YALMxIP66WJer0hREDquoMRExhrUDS6tEF
 /okqhkuRlAQICNHvmoNMf0xvmGkXMS0Fx7iIeWZZWXQAOSZxhgCRS1dyIwqw2HqrWFpelpt5HhO
 fm6qmxwgdiBQm2wUoNyoq3ebZvYeAhafHik5rb+B/rikAk2KYl5DwVgrsscSfEnovNoyuqnqjD1
 90Xf5XVyvOdEmxQkE135qPe/1ZYcM7SjON4+hfI/tUJp3ZY9NIiHx3R74LcNbPvfJvOLD1BV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_08,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 adultscore=0 impostorscore=0 bulkscore=0 mlxlogscore=818 suspectscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300156

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

Add DISP_CC_MDSS_DP_PIXEL1_* macros for SC7280

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
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
2.49.0


