Return-Path: <devicetree+bounces-238722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C845C5D9CB
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:35:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4622734C31D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA4D325493;
	Fri, 14 Nov 2025 14:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="onGjc7qK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a/FKVyu7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B75324B30
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763130397; cv=none; b=t8Dpuv+BzmxEZxM/Da48QwwicB0CaKogoCIYnDWmJjDevFvXnnoFk8KTM7UUCxnrXkQJq2auyzV5Z75EdSG6e8nQXV3TMIWHj4msuW5t9rYklzsdpRTfRzFfiw5zORGpLSDt5B0QCus5gRGtj/noOJT4lLfg3dXYPZv4g9qiv9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763130397; c=relaxed/simple;
	bh=9f9+RKxUrAQbjdf2T6XhhdD4pu7xMfYe/GD54lP0aI0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TbjRd1AqSViUFi51D6RH34nptfxqy3v2W2t3TDabV5YVQn2Na5BnHeSQAsXhbFX09m1PLNc1gNlU0rQXypVHrmR1s25/UwqaeofBe1EIOcj+MwvWO9yxB2ueMwwKTwx9B4fylJTWpeHRP/AOoqo4Ayx649PZ+a+QhhbDZcxyhyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=onGjc7qK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a/FKVyu7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE876IP1494459
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l9no/0GxZu07rSqXKlYIfPnkQay7eVZlKqtoBFEi2pc=; b=onGjc7qK7k480p0+
	9xm/ydktUD61A5FPyRVnxcyvkkUEmSezTIcdhaqTu1ES2CI77dsomBXbBPqNRR4z
	x/9Eoy2WPml6sskYOZhjw3q3k4xY+c3/+LLNY3YmkHj/6nZg6Ws8B/Yil6MMk7Jj
	Y0Ad1c0M8K2ixfIJMcv8TyQWpvzMKkoPOZWEw8lGz+oNXoHXZi20lDnJWq2HLlzp
	sPniywPeDgRsLlQB4GMn0u2G5wnh8dueM5BhOgRJd8WIInrexXLUG99zASdOiB3+
	Kjvqlfp7XaWmlmZpMe5rg/XiYavJxbJKjJW2OJ1/eVsy3HVsrY9F8tTOKwafco8F
	gOpqJA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9dtdfr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4eda95d8809so45603201cf.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763130394; x=1763735194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l9no/0GxZu07rSqXKlYIfPnkQay7eVZlKqtoBFEi2pc=;
        b=a/FKVyu7y8sbBY3A7YKE2DAQc6w923bj49bDciSEENC/wBtoT5fiSM5ytiBX9VHbZN
         EZkm2S3s/paAp6kTxWYz7xWbriG8eBdB5UtaIuaYW6a20HBWeOaQT/vZjH7YFbTZVAij
         A7UsgGMywgdE5XqbBuVHWkLP8+R/yC8XQvzfOB8DisHn4oVcp/NW1TH53FTafF/5ZQy2
         dv+qh813f9XZ861OCgcFTjK+pvO+s74ursLrv+Ln006Tlg9z4T//kj+3tWqxeNQMRNZV
         IajaNwa9IryMcuBfs+2bcYwKBWkG/RzdjlsJSEAj7C36pT1cA6gjS8RIOfz/YsKaFjbD
         7xZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763130394; x=1763735194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l9no/0GxZu07rSqXKlYIfPnkQay7eVZlKqtoBFEi2pc=;
        b=LWyzUE1knnHGwqsBlL2o7nJe+EtoFtS48vswGKMRMwIQ/fE/2B97emuULic1Q74QUs
         7nYc7FDET1q2fVTBOrW/Rui7cYmkv+1cei3uCsOAcaxek+0gTlbHzn7vX3cZjdn+gtmP
         RxtNvCv/I/73etDcIZaWNbakmI15wLt+lQI+pe0GpRgHWtUcKPi5XWFA/nRSrhBxpYy3
         /PVlgL41nKHWkSfY2g0b+9kJ8IFHK4EPfnFh8ob6qRBzlx4qYdmpkO+ue79jGzxQueAP
         IrjcDH41K5PVni6ZsqQtlbhvTMEm3oYXQpnijFO27DGlutQ1dHVNZM2SoqI/hMF2zSKy
         hzew==
X-Forwarded-Encrypted: i=1; AJvYcCUIjmlCfSZAc75iKxLAN/fHvqeh3wjtD+jFKFRHTPVX3Vw4qeo665klEBIj1/h01QjlVnj2gEpnnsaG@vger.kernel.org
X-Gm-Message-State: AOJu0YxfUsgGvK/qWfholBy/4GWioDnM7OnGu8owNUklw9JboqWrqp1y
	RcpbTLI3nzAjPgBmOAaOSQu8EVl2HvgQKh5QKE/jPyZChrjyC9fi2KbY0f7OQyNimGoBWSc5VJt
	kbekrfseoxCliqJ8+bHWYXgjfJlDyqFE6S0DT//qfaAHobhsUzwwOD5NmZBGe3o2a
X-Gm-Gg: ASbGncvY6Fxx9/Ok7Z9mYvbUes8SvUjbWO84Kf+Tu1rDn3AKR0kR+swzwV9g4dytIMK
	/ZkzzEcpYYsniuh+7+hSCqnaTOiGRAZhGSH7Q7QZPSVyann66vKx1gZd0yASGwxb/euYed8Zu5L
	dRFtnvHuPM4yWZUR87PTQi2AFiS129BnjbShLBsbKd9AMgF++LWfkohYK+Wu0rOkIFZV7QlWD8P
	WjnTtq5anh4RXJIU4Z6N/qZFSjR33YwD0wmNl2kjR3jp1ZtdftlIzLaFWy9sGrxWgm2Abzcd2GN
	WrsYVwUzZGPZi6Ip77GDDBIcLxsu90oWGlWJbDGtDRb9MJX/UUpYMi8Y+vruz9rv6TB6yutv6Gc
	+4otvT/bKJNx6M2C+ofOeweRWNZW/8DAbVszw/q9SaDbjWJBcFSmqCG3w1t8rXbNgvtohCPWP4x
	OahsGLKDk2QiNa
X-Received: by 2002:ac8:5809:0:b0:4ed:1948:a8a2 with SMTP id d75a77b69052e-4edf212af38mr48477301cf.40.1763130394386;
        Fri, 14 Nov 2025 06:26:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGHscNoHLm1MuydPFCmacZaAgfo0Tvh6OgbQ4/hlbC4OeYTE54MJSZKbngEqsl8733UCg4WVw==
X-Received: by 2002:ac8:5809:0:b0:4ed:1948:a8a2 with SMTP id d75a77b69052e-4edf212af38mr48476551cf.40.1763130393831;
        Fri, 14 Nov 2025 06:26:33 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9cee0cabsm10318821fa.40.2025.11.14.06.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:26:33 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 0/7] drm/msm: Add display support for Glymur platform
Date: Fri, 14 Nov 2025 16:26:27 +0200
Message-ID: <176312947284.1737000.2080843930887893997.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027-glymur-display-v3-0-aa13055818ac@linaro.org>
References: <20251027-glymur-display-v3-0-aa13055818ac@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IaiKmGqa c=1 sm=1 tr=0 ts=69173c1b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=c_IYe_yHoYF0OweyKxMA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: 8eFdfyvWQ5EtnEMMJBAzmiizVLp9TMry
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDExNiBTYWx0ZWRfX5lOV1KZ600S5
 Rc+6+oxmU5hIR++iiV0hRuMud5eaoiIi/N98pzvmZkbr05FBXJHSvBb76uamC/NFr+5j4BEvZ+V
 VyiKMjEdq15IIgXQyfMNu0IFW4PRZplEbL0BtNuPhhrjbOPKMC5TbUNgMnVTXl1+Uf045kjhPw4
 0nZuKqx8m9/0xiPH7gHHbrn5iuxsOKhpfGnmujnvw6XS+tW4V0AuofYAp69URqcGx05x1m9fru/
 36zO3Qgz4mLwqO/Bc1p/N4NAqVMUT2AXae4a3P28xcUM3ewsquWZbl5CtJ6ItCRGfVL91vkcOVx
 TUspik9Dorg36uzauc9seRzwTW+LeI3Vf61ffLbD2PkHeTanIWskJVj/emNnpLWbsuhAydUQ4TY
 3JTPqbcXf+2J+CsZN71rAZ82DZPYnA==
X-Proofpoint-GUID: 8eFdfyvWQ5EtnEMMJBAzmiizVLp9TMry
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 bulkscore=0 phishscore=0
 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140116

On Mon, 27 Oct 2025 16:59:17 +0200, Abel Vesa wrote:
> The Glymur MDSS is based on the one found in SM8750, with 2 minor number
> version bump.
> 
> 

Applied to msm-next, thanks!

[1/7] dt-bindings: display: msm: Document the Glymur Mobile Display SubSystem
      https://gitlab.freedesktop.org/lumag/msm/-/commit/29deccdb0927
[2/7] dt-bindings: display: msm: Document the Glymur Display Processing Unit
      https://gitlab.freedesktop.org/lumag/msm/-/commit/306305f38cd5
[3/7] dt-bindings: display: msm: Document the Glymur DiplayPort controller
      https://gitlab.freedesktop.org/lumag/msm/-/commit/144a3862f626
[4/7] drm/msm/mdss: Add Glymur device configuration
      https://gitlab.freedesktop.org/lumag/msm/-/commit/401388017c14
[5/7] drm/msm/dpu: Add support for Glymur
      https://gitlab.freedesktop.org/lumag/msm/-/commit/d15c65a4645c
[6/7] drm/msm/dp: Add support for Glymur
      https://gitlab.freedesktop.org/lumag/msm/-/commit/eaedeef2b9aa
[7/7] soc: qcom: ubwc: Add configuration Glymur platform
      (no commit info)

Best regards,
-- 
With best wishes
Dmitry



