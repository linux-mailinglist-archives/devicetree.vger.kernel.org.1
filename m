Return-Path: <devicetree+bounces-171999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E1DAA0EE0
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:33:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D26C81BA0824
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A690215060;
	Tue, 29 Apr 2025 14:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J12JJMR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296E01B0430
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745937167; cv=none; b=ddOn8sC4tUVHK4f6OffswccDmYSs8/6RzGHAZOemN0wZs5/9Q4vAvx0/7J2Tt81omMAL+FcJh4MuykzAPpezLeMZUEBvyaMLNYE9em4i5nDshB4uSeHEM7Bf4BtoJgt0bYgbsgMa5iB3m3fTK12Xb9ltoOr5YK82m7sWQk6RrdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745937167; c=relaxed/simple;
	bh=CAjD/KK2jdzq9tsIIkgeEOC7cVQjgSZn3t9Wd39MQXM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EaRAcpMDe9NKs3YKE614PgQXZy2FRc1q7jNA/sCbDrm4Ys7I2z5yvJXfhDVS+UAVJCFHKzQwS6V6hkyNrDAJ2UX8fnyHW8pcuY9ho11LIBFA62gWpGPhzwUDsKW7uEWPJTo9Q/aqHzDYQ0/GN/VyioTh/XK4l0eDsOVih9MGM60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J12JJMR9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TA9sE6011841
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:32:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bPriHSZx3KQJP/KsDQOWzlOT
	mChm8sjxQPQzHrr/5WY=; b=J12JJMR9Q7NMWgxDtjREBVcwp4RzpJ5+02SMlUX4
	qVgDGXteJgupzg7oZ5a0Ewx2671aEd1SzhiO9/H8SGrnSsAstywaK+KnSTQCzMKm
	OzVftgwcJoCv0VCRLjooCp+6O4EDafmLLWX51ffh7cYkAScLWyaM0ZePtOWz8/ya
	Wj6QrtpRz0croBpfkTmRT63iScrCDoUAgHAan7vVwxILXq0AbfMLgLYiACH2GKKZ
	G0eyAoprIyDtOryovl9CY5A80QgjWUwM2hdCS+PhY00qa6C9kcwh1dGR0ulSkhIj
	lnAzHx9VnmbmM2ECcHfPNQIhrus7mEpk/56biYdFgdo06g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468pg9cvuc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:32:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e2872e57so1001500585a.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:32:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745937163; x=1746541963;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPriHSZx3KQJP/KsDQOWzlOTmChm8sjxQPQzHrr/5WY=;
        b=sINfy7EnESPDWX/WB8uRJcdF8uaV+x/0YnF7hR6SWNhWWstfcIuihEbmHTLTNCfXA/
         hA42ildaia2zBsJbES5V4B799UZdTHLtjc5RrRYcQJQZNcZXH7sM6psDbsTgi1B/Kic2
         QqUh7XUf9eV9VuyKe2t0+3SMnGVRuTKiatgQ9ozv6dlSaAPGVwnx0Gu/vmwRG350sOqP
         pzFpmOCQvT8OeJBgA8npBqJ/vWzZ2woDA0mxLbFckn531rQ6ROP5GpqGGzP1eCYyDiDc
         UNhj/CKisoPYzBYXThSYwzQEtFPvKyv1PIL96xDMsgav6fT4Mz7AxyvUZtLccUZHVN+p
         JpKA==
X-Forwarded-Encrypted: i=1; AJvYcCVeEUB5Lo1fIZFsFCVIo1sKhNzng8DcAOEkHXLxZb0JnVVr/JoGpvXeJvyx66ZJe4nfxu5bDJG7UDfg@vger.kernel.org
X-Gm-Message-State: AOJu0YyFgTJmNWs7CEdBwNbn3DQDdGetY8vKwdlATl7H07i1kuD6hs3p
	U6DhKzeXBsOqCc2O+rkDlgZoIKFCoJxRv90gyYj/5cz0Bdz92ed0lyGjCnG6r3bBEGwhUjdigFX
	jz20s7o3NK+A8P3s1yJfcq+N+OCbhv5XMkWXchcDHbttC4ddG8TOfz1Lp0nSu
X-Gm-Gg: ASbGncsUZTVHIw6sNUSjxNTDx4sq5BW+TfslO4T9PoRKyTQYoNajGIUUza73BA68FzI
	hC0dHGalqS//9K/ZSfVuUAxrM3T0s1dZv700Yb+ORNyQdjFLtpiEgUxjPtMKHHp8yxTk4A5vOvm
	Zg1htPrLDNl8/luUDTIXeg7rgGbynmt15BB6sP0M03pJTE3iCI7ag6GQjwTPisXy7b68sspgdfQ
	46lEjT5E/PG04n7Juue+6xmEiftX/+BvGX/BQEGYMyr4rzzDyp7kj06CkU7NrlK1ZKclK+5dBIR
	CYMfxOyXzpohdaWlhm2ZdGrxycsomLKEX0MuHKB9i9mchl2uJYiiF9bgfaLW+eqJCEVh1Qdaz08
	=
X-Received: by 2002:a05:620a:3184:b0:7c5:5003:81b0 with SMTP id af79cd13be357-7cabdd823cdmr635638985a.23.1745937163137;
        Tue, 29 Apr 2025 07:32:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWF2xshAzyNqq5fdOAsbkOvEB3opt7kXShCLYeUNW9cmZ74LfQEMRBALbW7HQGg1CwIOtf9Q==
X-Received: by 2002:a05:620a:3184:b0:7c5:5003:81b0 with SMTP id af79cd13be357-7cabdd823cdmr635632385a.23.1745937162672;
        Tue, 29 Apr 2025 07:32:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cc9eb8dsm1880507e87.135.2025.04.29.07.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 07:32:41 -0700 (PDT)
Date: Tue, 29 Apr 2025 17:32:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH v4 16/19] drm/msm/dpu: Implement 10-bit color alpha for
 v12.0 DPU
Message-ID: <oibskwq6gk234lu6bymqlrtgt2yd7o4qbpk46snhba66uqbupi@lwwcfmgp7bul>
References: <20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org>
 <20250311-b4-sm8750-display-v4-16-da6b3e959c76@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311-b4-sm8750-display-v4-16-da6b3e959c76@linaro.org>
X-Authority-Analysis: v=2.4 cv=ZpvtK87G c=1 sm=1 tr=0 ts=6810e30b cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=0cLWEtKbF7AIdJ2SciEA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: sTRymrK_ssqqbcbdif6XralSGtsvr2Gk
X-Proofpoint-GUID: sTRymrK_ssqqbcbdif6XralSGtsvr2Gk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDEwOCBTYWx0ZWRfXwF/qjIZPCzxF kxbvRuWjE6yQ9YOqW3kzpi01n5fUiEK+IQzIe+Z7Y+plD3ER7Ly0ceDOF9AP4YGfJ3ugwCKQehX 1XNA10XPzOfHrsIC44yRYAQR5KK9MnTbYwf9Ljfz/s24ZZ8UD32EOUel7FgIKVT32+bypQYASvT
 ES6YZM8m55y0XDakVs66tToSv+XT+wj6A5gIQUPmjLodHctddR+n7cumxZDzgOyllJU6wloO78Q Bqj4EseXEcWZI+mrIOe+WEsPTlEpl8dK3k8sjOj2LASgnv7j/I8tPiG7RyT0dgZERJf3AoUFhzS 3MZpR0P7gvTZikPuStDVBKgK2v3ScFkOarkwa/bX4DUJYURMmK076NBElhG1uU+qEvC4OYxNph9
 O1B+hQ/WNVmFoZ2xwUWs/S0HSNQOFPQhBewoGgSqQUhQbsa/snOM3J//DO70et1huU8HRVX/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=806 malwarescore=0 adultscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290108

On Tue, Mar 11, 2025 at 08:02:06PM +0100, Krzysztof Kozlowski wrote:
> v12.0 DPU on SM8750 comes with 10-bit color alpha.  Add register
> differences and new implementations of setup_alpha_out,
> setup_border_color and so one for this.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v4:
> 1. Lowercase hex, use spaces for define indentation
> 2. _dpu_crtc_setup_blend_cfg(): pass mdss_ver instead of ctl
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

