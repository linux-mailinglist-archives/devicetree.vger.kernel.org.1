Return-Path: <devicetree+bounces-215937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D77B53311
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45768160F69
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F78E32142B;
	Thu, 11 Sep 2025 13:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FMPIOm8A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE25423372C
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757595769; cv=none; b=s2uGuT5BQP61ayrSny/BXYVwCDwMFDkljHddKlQke4Un9MbhyqhbRD8MHhbJcoSoTxfQOPVJFyw6miyjj7L52a4S9hr8Cz9QgVzO7DJI5ql+pCm7EBOxyYm9BJ5LyhKl2qwdMnfXwWFZnTlIzJzvdbDWUd+QzOn6fKyKx+ZjDAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757595769; c=relaxed/simple;
	bh=A/d9B+F1+seir7iNB0L7KE5Pg1ky59wbEws9IQYbYRg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qk4QEg5j4sSv1olcoq3c9gEUxzf63hfu/GrNV2MGfYDHP0onsaiHyqbtAhiZvA2EI2pUHsNEPo9zgYdXx02u1zIF5pwp5qHy96QFAj/pwGNosbT2Yw+Ciq8phH1yHtnh9kOscevvGFSngm827o2D7QjrxPWypSEku8ULVujjJm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FMPIOm8A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAeWpV002343
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WOjKakWSJUNAIQxWsQlAPujB
	r+5TdOe/svr2H2na+E4=; b=FMPIOm8Awg8n6eaKaddTiTh3sj+RnU56NbVJ87hz
	NIBlaXAAIkvKo9pYDptzD3yqHm8DJBEOs0yYNKTLay5mxJY9D0WOsxnodTlo5hxi
	xR7+vm5RPDaoguYR9ZBi46k05KFoOD5f7Kt7cy4tioE45QskcOYQGUOsCONy3s05
	Q+6/WBFo9eU21CNfir16Os/a0iGz9/VfLR84RQ8LzNCi6uFRrd1RgTU0NZTrZBsq
	d0EKUsDiVUyjUz4mnRvBJyfUsxUbwORJa1Hgd0DuyWS8IhyK1IvDRJIrbweDT/Vi
	aYnm6VKk+hH4kIspiUYJcvqCdZ7O+XlwNJRUS7v7Nuvlbw==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8qrjy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:46 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-74381fe311dso1091131a34.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:02:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757595766; x=1758200566;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WOjKakWSJUNAIQxWsQlAPujBr+5TdOe/svr2H2na+E4=;
        b=l7pTXOawpGkSdW0QOx7fEeWBZhHkyjD06wHX4uDTeVAdXC3mIjopnYTJudFALDUCGd
         QQV4eOBk+mKCLId1cznRSaOeriGleYi1l1s5TZsKZfTR9KWjo3iTX5cQMwy42uQzukb2
         Ihy3TGk+DCXFJhW+nbPT4Z/Zn7UwMexYmzptKOPdMyo18XgljNN22tH58idosUxmiQBt
         lV5q93RSan8qy7YyOUoYm74AfzEFSMfeYpSQZxhn8o8/TqxHIqszlRvXBdU3TmTQuBxO
         ZdpGLUKvcqWHujUJtM4Wa5LcpKgX0AM3yp0XdMeJ8IUwEzgSneSZpCYrVXmOUvSuUUHc
         jlTg==
X-Forwarded-Encrypted: i=1; AJvYcCV1dDm6AHKbT94Bagc3K8a7A2RIFgI4+7zVHiVcaX7CxsJuU/k6XcGwCD71urK4JYmsGQ6ZStArzmeH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0m2lUWagF57rmaKmZ8hiRgEPhsEqOnmwxDFmfh+hNXGlja4PZ
	Q6Eq0dtOZgTZLVAnMbVdew9xyN3wFA6JofH3c+eAPHhrfdLqUzz40p9OhRRX1VN07VDr/eE26pA
	QahWXnfYEoPJDKLc6fOXrcwkQeBBEmo6M35mtbuRo+s5nVtnAIXkXN2dVl63ikLaE
X-Gm-Gg: ASbGncvh42wtcTAHQTgBeY40yg72w7sG1O8nqnt2joaBXbJKOUUHa/30pv2fIN8jy78
	NLaucynV86jKreLij4VEZ6djxMEbG+UuUeEhTNP/aMmIuta2sjjXgQeyWIMALqegwaODisBIRXK
	ifNia5APYgeXxvRBm0aktAVPFxinLjSlMLIa4tVF/eL8Yz45Bxah12PkdIL3kPbaM/kwH1Pk/IB
	kpkWtAfDcZxOADFTTetTnhUUHAYr5xcTlbG5al4t/gRxXZNBh0wOzaO7k48T4v0QrBv2l9IPq8K
	m6bcp9VlVNekHe2a+/d3fE5SUz2ouAttSrjfBzyeNlcBJgbqGldMxmsXqcN6hHMeD/5s3JvqiKP
	n94WSEOlCQBJ1Yvc3/ojeP7/yKAfQtQR5abJ81pnTTAjEICn2no6K
X-Received: by 2002:a05:6871:9f23:b0:329:8747:1653 with SMTP id 586e51a60fabf-32987569accmr6700544fac.49.1757595765367;
        Thu, 11 Sep 2025 06:02:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHllAsg+d3b0kcKub7S1vojdU22rC6Gpz9ONEV9J6SRbyOSxxcJp+ShDd6GhvzKBP0tyHSfqg==
X-Received: by 2002:a05:6871:9f23:b0:329:8747:1653 with SMTP id 586e51a60fabf-32987569accmr6700417fac.49.1757595764406;
        Thu, 11 Sep 2025 06:02:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5cf2f446sm425872e87.42.2025.09.11.06.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:02:42 -0700 (PDT)
Date: Thu, 11 Sep 2025 16:02:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] drm/msm: Add display support for Glymur platform
Message-ID: <xjtg6emrb7svloz2fkaotfbj4m2wzmddxdsdnjk5wkbmocqzmd@l656suk46pkd>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX+5Z2rPd+58dV
 LzT5JHthRp0k5OJlbhVCFQZNb+xLfEJYvSjdjfhV9YoZ2/xqBg5/c2W/FW8ibHT8G5D0y3h/03l
 253jlrFQvwyd+WLDkJ07WjO8l6hEtM7t3/eD/OG9xyo6ZGtjzNBuD+JWt6k66ky8xIf/j+SuWui
 vajidqtU4/V28nvxRodXHW3HFg4H+Cz9lDJj2RTsD1QACWaA1zGhAfY6iBi9iFGqQy2kZREp5rK
 dvj05xGNZdXaSQu6m8WZ6L8HJOvNReGisevDL4DYIJDAuuvoAQwqmozbG2ZqCmdA79ocRsT+ttk
 YdguRlmp3gXO6OTI/KADYv0KGfsXPBnD9paS9ZcueF9qqAlPGDFKRP25qg67XCe5ZcHehcDE+od
 NNLs9BNq
X-Proofpoint-ORIG-GUID: y3uu83FF6AJHs8Og9WmhUzvfsA6mpRhW
X-Proofpoint-GUID: y3uu83FF6AJHs8Og9WmhUzvfsA6mpRhW
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c2c876 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=cOPp_-mWbVNMstl9cqoA:9 a=CjuIK1q_8ugA:10
 a=EXS-LbY8YePsIyqnH6vw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On Thu, Sep 11, 2025 at 03:28:47PM +0300, Abel Vesa wrote:
> The Glymur MDSS is based on the one found in SM8750, with 2 minor number
> version bump. Differences are mostly in the DPU IP blocks numbers and
> their base offsets.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Abel Vesa (6):
>       dt-bindings: display: msm: Document the Glymur Mobile Display SubSystem
>       dt-bindings: display: msm: Document the Glymur Display Processing Unit
>       dt-bindings: display: msm: Document the Glymur DiplayPort controller
>       drm/msm/mdss: Add Glymur device configuration
>       drm/msm/dpu: Add support for Glymur
>       drm/msm/dp: Add support for Glymur
> 

This will not work without the UBWC config for this paltform. Please
include it into the next submission.

-- 
With best wishes
Dmitry

