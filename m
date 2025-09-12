Return-Path: <devicetree+bounces-216458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF9B54D64
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:24:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03D0A188B6AD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 508ED30C614;
	Fri, 12 Sep 2025 12:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U6BIixRY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64743019AC
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757679047; cv=none; b=gujINs0JpRS0ku9C/VHjqaRXhSj4DkOQMI17lxqDlTWZqw43vZ4+LjGgRXiPY1fD/iGrO5iomnwKWlOC53X73iFRkKI90zT0/zR6VY5E82e1mW+fARwNpOPdlRkVHGxqTOy+9NjPoATSbw60XaWJ0BEC1+gdztm4kqnkhfOy+gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757679047; c=relaxed/simple;
	bh=xXwLkLYFnottH0uj1XMiPgvWdFijfaxg7v0hh7NI1jE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CmTSrWQddWGuTwP/E7HPNg/VuyxOTb49KCECFD5dPpaEHIOXJbbUGVI3VjA5Pflgdg2K/gXRC0xTYeH/t9GbMy7Ottt6HwWIm3RC7kJbhgSuKwRttmm5Wj/xuZ0vmZ1AiZnTv5wqBgqwcdfWQ34CSCSTga05xUuajTBKtSkOA04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U6BIixRY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fE37001288
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:10:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NnyrkzB4u18LRqNkoWf0ndPR
	ZH6XykQ2rOusGiQJecA=; b=U6BIixRYSgDlGbrcDBKVqlzqS0Af7/HksXpssARb
	muet9XY088mhCTEqPh29mMbqImu6KpSkYJyT1M5W1PnfW5x0pyJ1xvO/ij2kaSij
	k7xs0/2yWBcoGM5nT+T0uV5hgcZP6sMqHhS1BS2b+6r7c9E3bUA/fYtOem2Cp5+W
	qv4IJzRS2bBURYLzjn0TdzSiy8E/VfkXj4l+gjCeugU8PJICmsV8ybck56LqVTes
	a2U74zfl5vjhG564d2Q0mF1nHmbB/OyAxLzeewXIVYtYN88dHS3RcNZpWhsLUUzQ
	YQjn7FJJzjznjTLVls6ig44K5RUMIuX/tMX96W3dDe/onw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h6jtr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:10:45 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7585b6deccaso33066786d6.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:10:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757679044; x=1758283844;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NnyrkzB4u18LRqNkoWf0ndPRZH6XykQ2rOusGiQJecA=;
        b=Pv9/ug7N59bQ8yCbrQLvYAc2FEeOP0XLAPgtNXdc+az37OPCV4yohq4X/tuwr5a20v
         vDCe1NY6SsTzripQYwFLz6xHsKu4HzSvvdCXG5mh3H+P4l4VepEB8+rNg2cCh2M7rpz8
         Dg16RXjVkfr3iVOl+p4CpmO2rEGCVtKMUb7czbh3M7v7xIrd4k3yRBfZiuTXwB5Pt1IO
         AfVEU0N2I7tGZsDoIOX+Tdh2bBJxSGRZSHms2iizrGV6+S5uQBT8olXBor7kXwZ8tZMp
         8xgQO77eoILY15OD9xJ+ZJSDh6mLsPtA5CoV01z4oj46SXwqKz+q1AX6IOgdb00iXcwH
         5C+w==
X-Forwarded-Encrypted: i=1; AJvYcCXtVj0wuvbz+YHZwZC0jseNvrWAUir94CdEvdwrOjeRtE0g0Xq1nuaTn1/G6JzmWDAT6Qs/a1peUcls@vger.kernel.org
X-Gm-Message-State: AOJu0YyonpcYHW6joDhOHgBF5o2GosOy1yr2WPaCUBZKjPcltDPBbYEj
	ycbQJ9vsmbJSDpfUwpRPrd7OwVSlWCRVGM9Y+7y4Heizpriar2v/hFHVqKJq92NJALJESuiq3xA
	7GF/3rTvnfKXdT7H3IZOYGl6EHMfM6LfEFHMyVlcVu/Kj4O/BqJojjSPyw8JftGhx
X-Gm-Gg: ASbGncsT4Qv28uokpD3+35PX3ARX+xgxV4v726SDylssaOfd4BHVrgkniCpm/KuWtkE
	ZG73m7OZSE+sePsDFFpYJ69I0emzGBPACwp+K8ucXKGzhPrJxxn/g0HYXUawbw/okQYwlJfL/D+
	vJKLhH2uI1pzCxfyObOvuLpyc7/V6Nr3gq5WSvFkrnhvpGrtjvdqg/NA+tUu+3w1YddaRrUCcAW
	ZG1bToE2SgW+gywPgQaWwmC0kogo7zK276l+5YfChf0htX8/sCnh8kj0nzAM4h6HXnCudXeBkJ3
	LUuV9rHwG259jq5evIjA/A1oO4vZmcHkwCeVbtiVj+bQ3eSxfFkbJfKH0xZgCYh8kVOHYgTqVyR
	wpxAhXFg9ElUrK5OwAn9gqxDPoMqYICojJAWZVk7/Smlhjf8CqONG
X-Received: by 2002:a05:622a:a17:b0:4b3:4640:13f3 with SMTP id d75a77b69052e-4b77cf98445mr37107071cf.7.1757679043719;
        Fri, 12 Sep 2025 05:10:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEK2hXwtWFU78DBNvsjwVtqD2w0onEhQqn5H+I5mFQLCVEOiGDGwbwcAr1yHapP4m9rqMpxtw==
X-Received: by 2002:a05:622a:a17:b0:4b3:4640:13f3 with SMTP id d75a77b69052e-4b77cf98445mr37106281cf.7.1757679043091;
        Fri, 12 Sep 2025 05:10:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a32f66sm1080568e87.138.2025.09.12.05.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:10:42 -0700 (PDT)
Date: Fri, 12 Sep 2025 15:10:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH 1/2] dt-bindings: display/msm: dp-controller: Add SM6150
Message-ID: <droyp5atpjauyttqkwqzk64kkghg6jkkubvfz3zlbrodyzlvoe@fbns762o6vcq>
References: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
 <20250912-add-dp-controller-support-for-sm6150-v1-1-02b34b7b719d@oss.qualcomm.com>
 <sx64y6vfov4yag46erckpbl7avwmqlsqt3siebckn76m6jqxjh@f5lueyih6n3q>
 <d3743c52-4e84-4729-9f64-af856419d504@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d3743c52-4e84-4729-9f64-af856419d504@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: au2_gvXeEGjjuPCzuvWnu_vqyju9aab9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfX4CT+GCbDef8s
 KQ1wwfKi9YGyD94Ejzp5ZLCAp9HOzTJj83n2FqMzGPl/0Yr/MQbFFbILdkbqsCTO/pAww+3z0xi
 +bYNK+KTxqUrj2rutxDOEQO88GSJwWWbNds0EKHmC5FhqDJZF86LYh3yDjmJUgODLYLU/FJv14n
 pFDaaUmA1L99gSl7Ku1qi3Im/f6vNHolwDiZ6pDkRAGEzA5Zb7tfXYaMFYGsNhq04Ica7XFSP5r
 jhHfJxVqiT8c2PNsefOcWf5WQkDwgT3ug3X42BYfmtzVsiMxTKeZJirinoc/IzPMsEY/WFt71aM
 GxpsRPN11fzWm1nmEwlP79GcdOd9eWFVr+HmvVJ1Ul6eAkPlI9EAzDdQNXdApukZ+lPdzbpGdeH
 t+UrgkNr
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c40dc5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=8AUIyt3r8poIyOMLCWoA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: au2_gvXeEGjjuPCzuvWnu_vqyju9aab9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177

On Fri, Sep 12, 2025 at 07:54:31PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 7:46 PM, Dmitry Baryshkov wrote:
> > On Fri, Sep 12, 2025 at 07:39:16PM +0800, Xiangxu Yin wrote:
> >> Add DisplayPort controller for Qualcomm SM6150 SoC.
> >> SM6150 shares the same configuration as SM8350, its hardware capabilities
> >> differ about HBR3. Explicitly listing it ensures clarity and avoids
> >> potential issues if SM8350 support evolves in the future.
> > The controller is exactly the same as the one present on SM8150. HBR3 is
> > a property of the PHY.
> 
> 
> Ok, will update commit msg.

Please red my response again. What does it says to you wrt bindings?


-- 
With best wishes
Dmitry

