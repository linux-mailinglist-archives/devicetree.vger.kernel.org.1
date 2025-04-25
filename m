Return-Path: <devicetree+bounces-170777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AFBA9C462
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 246909A6C0B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9D5B24338F;
	Fri, 25 Apr 2025 09:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mCHfUH2e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC6B242D79
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745574726; cv=none; b=aIolpV1MjIhghgMziY0YC9iQlCl2w8m+DzAmUHb2KzSiKKZeUB4S2eQ4zn50U+YK+cYFFoICn2qax3PSo4rkzoonR3beTb/FDd1fF+3pAeTml1OZQEqsItMu0MzUBBgwEVjY6UrhG5DnKhDEWbFaQUNmRa4YRa2T+6haWzv1VZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745574726; c=relaxed/simple;
	bh=QKNaVn6QCseVUR4BUepdIAxDPpNjR38Pq6lvhCZCros=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pTksTaPHCLdLjoMVKs2bwqV0q7A4/hmN/xAxIcWY57eX22xFb6e1ZvHUWImU+CmVfDqUE81W8H/7nhTI1UIeo6IBaESpswzzJs+j+Abavk5+I4JGb2xiYikGKgzfQpTOSDzz9ezSmtzstRABKQ54cUGRkp+bikTB4Gy1ryYJKUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mCHfUH2e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8TDTF025215
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:52:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TZfczLUxnWTdMqDmkRvetbnLGF6+K+kBxElbD/jIQGQ=; b=mCHfUH2eedgMf8ua
	ulLCCbT8l+iO9zEcYHxVfAEbKNLEPjskH6QYR4aFYBOmJXnpSM03V2bXh/F/drKQ
	4cVAJv8UBOyV0M3gOz2X9rGsOD5iIk6ASu/EMV0ASJHRuaV7azWaakkhKWt8P2lu
	jVl5mCOHytZiKDKP6xtUHuYCReLv1ihhWOAE2jjARbQOkPpNca5xqI/1vsDBgsi+
	1bnaxGr+CEn0H5uTpuS1Tp0v6IICM7smLCuzmSnISk383jrM7R6+fZEfvmV+gnoa
	ES3SH7dV2FBN9zonP10IKL7rv8Hcwf4jhzzm349/LSj46EfuYozOQyeye9dy4Er7
	aoPQ3Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3rg26-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:52:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c791987cf6so422905385a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:52:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745574723; x=1746179523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TZfczLUxnWTdMqDmkRvetbnLGF6+K+kBxElbD/jIQGQ=;
        b=oFzQ8BSy4kD/VqLXIyVTU+BT4QKRd5ukdzwS1A684BU+ekd+a/8SVBCNrAS43yS83G
         SgzKXHcUqUQJeYtdB/3f4xlsNTM53quOenVRH5Fu+lt60VRbH2mL76yMkkagNaGxt0YS
         LLoPQzKqewzrRzWt4nenMS2j7/U6npR95u1HRz0OiIuAycOOqTiGVqQ9F0MC3YhIB2eT
         oVXGn2Sl4iJWluZj/h16kLvp8J5ra5qTQ5L1uOSQF7YWkMDdtdJMXTTl31JL7vNNKciT
         RkBIkDrx1r27UEhxSxIZEjzeaJDf8f6lSUbhpYXl/kgjCWOKhjyVPzPbUtnwGlJmVKUQ
         M69A==
X-Forwarded-Encrypted: i=1; AJvYcCVY7yc13ngXhgYgQHogXt1swxdnR8wpURK1nCBCoGRWVkFLusIvRePNordPor7b9tXA/08sWDXYYe86@vger.kernel.org
X-Gm-Message-State: AOJu0YyOllKgcp5E48npeWqEwm1dV1yo9RGB9Ia9BMowoJL+E1L+tztV
	/+ZGz54UIcCUx4sGEEspU8vrsVFpkYVEP8GLPcr4hM7zIRh8etaf8PneWqbXR8EJ0TsbBO9It7Y
	Qju0lMz5u1Lvwj5uqE/KwPQe3GYagvGWvlVCrCRqtFAyY5p1ZgY0fYM3fx5cR
X-Gm-Gg: ASbGnct3pMUkfvP59H7K+7D/nPBpdBer67SJv8JZt/mwjt7Cw7yDFVXnhzBylCXA90M
	bmWxipweHWer4XziF6AFb+hioiTkei2DDJhyhPUFuiczE5pvStsJwpJc/EwRVk9+GrekWagOfPN
	lw3yBVeBJdnsMThWAbIKD/tqq9ldQX4eye7H0ZjB5Y6+kqXWCpT7Qq8hb+prmZMJInApZGNq+Ge
	nJrCSHGI0W8d+Zw0bJ/F96jEgfrmBAkfO1qahX7OUuWuW00Ceuyg7atJsf2xZFb4sX67pXsS8Tv
	sYy1Xsna/CxmXMPAB+FUmOCmH5eE/rXWbQMhBSaYj7GC2in2D4IZ8IAWbgCVXfBFlU6+VV4sA5V
	4vzSN5gmHmP9VirGsepAOxuo7
X-Received: by 2002:a05:620a:40c4:b0:7c5:53ab:a745 with SMTP id af79cd13be357-7c9607a9524mr306224785a.36.1745574723402;
        Fri, 25 Apr 2025 02:52:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcOR5RT8Ys3lrOEeDC6ELuWjVuKpQ4U7qX2eJ0JrlAWEm5qUDXGcz5n45dHFY2oJeOok/1nw==
X-Received: by 2002:a05:620a:40c4:b0:7c5:53ab:a745 with SMTP id af79cd13be357-7c9607a9524mr306222285a.36.1745574723063;
        Fri, 25 Apr 2025 02:52:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb7c99sm539164e87.218.2025.04.25.02.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 02:52:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 12:51:54 +0300
Subject: [PATCH v4 4/7] drm/msm/mdp4: use parent_data for LVDS PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fd-mdp4-lvds-v4-4-6b212160b44c@oss.qualcomm.com>
References: <20250425-fd-mdp4-lvds-v4-0-6b212160b44c@oss.qualcomm.com>
In-Reply-To: <20250425-fd-mdp4-lvds-v4-0-6b212160b44c@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1330;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=5QLeLaZ4u0g3jUxOIWPZIeS25ToIY4u/0NRZi3Wj6kk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC1s5iD+ue7B/ncg0smiCdmNNJbzhQ7e2zXxwh
 CKQDUKIPP+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAtbOQAKCRCLPIo+Aiko
 1cVsB/952BXavkqHOo9fTgYGdajfI8ZXs/aaV7h12vKdVkwrLrXZPXL9YdKOWBEsnBCViNDKJz1
 Sirzb/XOt5rdGdbbG9Jrkkkl3EHLgHvvpAIuJFeOjVv28YnIr0Ik7nKELJLcU8pxyNLsIsSvHQC
 cXg9YZFkfWhqvC6M/UNgNqLj1hmh3Iy8qx6I4osKefG/0EhTWPYMk1/K/Hfff00JHQ9PNlExzay
 1poSB6PmItQqmNE+OcyvBHWJQRi6YyL4gps1DDO4CstG++o/Rk3da71KT5wnhpdKvpLd5W3Zbig
 pZ739t9ddffJrjlDV923QPmg3hLU/Ov+JyVSbN091wfkTz+9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: loO1t9BUJSLwcFQcwecX7Tsozun0h0tA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA3MSBTYWx0ZWRfX7bEsC+d0njFA hUyan7vpeUIeXD8NJnPIbIGajnP73bFAEbZaPTuttGXHUf21oA2a81QMKh7YD906NOhZkJrfrPM h6+OEbLCdIh5MguvTdQoeAvVXvt7nsC4xih59VvbbZBDPIWDHBicsg70yBfnQ5QPcmc7SRiR4By
 IMtaGNyKYu9E1X3Aqt7+b4HTm64RyztraMzksMBaAD3/fGbiE+o/UZne1cGqPKKQGnTzUw2LQsf Pf73tUFjEy+gv+1AhmdhCJp9TjdfjShw4aO4H79gpm/Dl3IbVZ6W7OBWoKL1c23bwoOHQ9r9hQl AxbQ4jHk4LJkUHWQrLuNN6AGMs8uLhKiSXGd3y3uv4sM9+9CGmC6WmAj6rVsrS8ObK6vooKE4XD
 QgsHFibAhdlW1dmePTvzAXzOzjCPAAl63aOSPpaOARDh2D3WCC2st4HjgAITr/hV37qUKys2
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680b5b44 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=9KfIv9cJTkqftt8VF2oA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: loO1t9BUJSLwcFQcwecX7Tsozun0h0tA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=891 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250071

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Instead of using .parent_names, use .parent_data, which binds parent
clocks by using relative names specified in DT in addition to using global
system clock names.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
index df2bbd475cc2a11da20ac07be8e757527ef41ae8..fa2c294705105f5facbf7087a9d646f710c4a7fe 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
@@ -122,14 +122,14 @@ static const struct clk_ops mpd4_lvds_pll_ops = {
 	.set_rate = mpd4_lvds_pll_set_rate,
 };
 
-static const char *mpd4_lvds_pll_parents[] = {
-	"pxo",
+static const struct clk_parent_data mpd4_lvds_pll_parents[] = {
+	{ .fw_name = "pxo", .name = "pxo", },
 };
 
 static struct clk_init_data pll_init = {
 	.name = "mpd4_lvds_pll",
 	.ops = &mpd4_lvds_pll_ops,
-	.parent_names = mpd4_lvds_pll_parents,
+	.parent_data = mpd4_lvds_pll_parents,
 	.num_parents = ARRAY_SIZE(mpd4_lvds_pll_parents),
 };
 

-- 
2.39.5


