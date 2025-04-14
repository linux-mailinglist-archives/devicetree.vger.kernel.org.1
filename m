Return-Path: <devicetree+bounces-166684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FD8A8802A
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9611F3A6D1F
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250B429DB8C;
	Mon, 14 Apr 2025 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZNnmEjje"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E85627CB2E
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744632863; cv=none; b=mKG52WXaWo0GlHLY1LxAQ+DKavcbxvifK/EUwHBZY035f0p3Gb3liwFrjltUyykFRsqF5lasddngApQTYabZr6gNq10RDUmh9/OrEAKH7NPtirSzSEPmFtp/AIIJcxaPz4Do5plQxSFGkShCml0zUwQ2bFG9aMq+mqtsJPLN8oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744632863; c=relaxed/simple;
	bh=rzumaZ7iog0sCf444cKDLVPB1GndQIrZZhy1nlc+LS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KcgaKMXNxXqkQMK70AWKNUFzxCFDWP2BdTd7IZXbVBlcfojQlWP539Ho+azATtODCc+IE/lY3kXdsmDBbwqiGr3a0Iw6etICZIQ6JbcdTDTr5Br3N46I+DZjdGTtmMHJVMV6Bxwat5qzdJ/6Bl2WerXVa30GYi3KYLokQvXYDk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZNnmEjje; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99tKk029074
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:14:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bGrXNa6dHXvr4kroK+MTw5NQ
	iqX7zWwS0Ak/+A0yv10=; b=ZNnmEjjePUV+BrjhfwfZTyG1deE26VgjPzjuXCo2
	YWBhbuGcHoo2EGQ7wYQa84DJiFY6uKeFTtqeAq2pA4PidWV0R6BqXsNcSSbf8MBe
	YF0B3Y7ghr7H95bhvH9LgPrqCSdABJrEiOPd5UpukkduE75MokYhKwkrc6nQwGON
	1WPuc2Z2hQA1rfj82vrIGp/zNwzMH2ygBfWAFOtNX7k6ch8kF/5ijpbVTnYBZTwi
	njM6B/f7Ox90/VGAKNDEnn+Z7cORaoJQxSkMSPUzkunN++eE+slgLMUCYwFYX4RW
	gTjDEUB0NwlU3JemWDeeJiW8oyF+fZxUNvumTEkU/zMIuw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs14hd0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:14:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5750ca8b2so678036885a.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:14:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744632858; x=1745237658;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bGrXNa6dHXvr4kroK+MTw5NQiqX7zWwS0Ak/+A0yv10=;
        b=lHGdKfoX6qKZV/S1MEbE6o8LOHLn2uJjOnnD014IclkjqogaBCLpQ5bOkGW84/PVNV
         kJuPiacbsgIGRZDfUoEyxrZM5bmj3SamQI4p6TxUYoZHoo3QpbkBIzGJScxon3HLlrcx
         8ClTwLejgs/Q2M4ahMhNvlSkHlQGD0HA/iDm13c74B/T3q7+yEueJzeHKPjYM6NBkAb6
         FP29BNKYXEX5CR/b98CPMnW35EM3sCRD/2P4WRg4F4RBVQAa0WYuDe6Ora7pKbzgjnwi
         CX+dJmhZ6ttI5ZyKvE6mqEvBStfhC1gtyhOxanRMCFI8TlN7W5HKmO6Ee8y4+sUq2986
         7eEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPhTl1VIyLFxV3UKkAfY/HW0C5LfrWwhrnOTAOqI68Nmgc1ZGDiE+OLhyg8Lq6BuXR8Gq/qh37aiGD@vger.kernel.org
X-Gm-Message-State: AOJu0YxlR4Mp6sjBgIaazGJPpap8lkSx4a3t1J248G5MduHxGOJHibbG
	wUGcJZkPvcQNJcKj46cHEDiPkUSocltlVgp7Zy7cBLzOL2YjHjgOwgXzjbC/duwfzEcP1mjU+no
	qnvTqqgyi/cXOAXz+xvjbnV4qOavwZ+hoONeMP0nvKt8SxvXcYjTjKMwUTal4
X-Gm-Gg: ASbGnctCsvpDBIBaIV3wrHnduja+yJNBbx4OMKRLggaMxTkFmoHKAFcFJsynKDwSffi
	1XeYmndOLGAU7NjO0w0hIww+3cXGTgMX5b8lYxDb2Iv1Ory3WNcMBtHhdFoVu+tLLq+pf4zfMW9
	dz3l4uqoWAGcu9zxZ+BtDlrAK45uwyVTIHZps0+6XCoTa7kDX1Ti+Sx1orRpnsXncUD7eAHXfCa
	9UuQzhsjaQCnOQ66xjaGL2d4xjumhkpsyQym26xbNtpG3ZVvUzGRDlbmQesfeCFNV0Qza5PKt1Q
	guuQ+35ZKMzuU1J+oNfUC63RrIo7oBIzT8zzyYKLnIoqMtOMHV25oiOFHkY7mcbXi2nNIuqeTNY
	=
X-Received: by 2002:a05:620a:40c7:b0:7c5:4001:3e9f with SMTP id af79cd13be357-7c7af0e0f5emr1701934085a.29.1744632857835;
        Mon, 14 Apr 2025 05:14:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxzp5iYZiEnUZWE3gvlgW+sXTiIEbnk35cNdFG+zRQtIEUe8+f5w9ReiZy8l+u4jZmVg+wwA==
X-Received: by 2002:a05:620a:40c7:b0:7c5:4001:3e9f with SMTP id af79cd13be357-7c7af0e0f5emr1701928685a.29.1744632857299;
        Mon, 14 Apr 2025 05:14:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d2386b6sm1128164e87.72.2025.04.14.05.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 05:14:16 -0700 (PDT)
Date: Mon, 14 Apr 2025 15:14:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v2 10/10] arm64: dts: qcom: sar2130p: add display nodes
Message-ID: <fd2dtxhbfvgpiwy7rc5z4hrrmuthet7bmp6iespdcvxgaz5uhe@ivg2gun7sb6q>
References: <20250314-sar2130p-display-v2-0-31fa4502a850@oss.qualcomm.com>
 <20250314-sar2130p-display-v2-10-31fa4502a850@oss.qualcomm.com>
 <c14dfd37-7d12-40c3-8281-fd0a7410813e@oss.qualcomm.com>
 <umhperyjdgiz4bo6grbxfhe44wiwoqb3w3qrzg62gf3ty66mjq@pddxfo3kkohv>
 <8fe8c0f8-71d5-4a85-96e5-17cb4773820d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8fe8c0f8-71d5-4a85-96e5-17cb4773820d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fcfc1a cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=nRcdhEhJI-3p1s1dT_wA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: OICRTkRMjRP_NN7BeUHOsklHkOohLdDX
X-Proofpoint-ORIG-GUID: OICRTkRMjRP_NN7BeUHOsklHkOohLdDX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=607 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140089

On Mon, Apr 14, 2025 at 01:39:56PM +0200, Konrad Dybcio wrote:
> On 4/14/25 1:37 PM, Dmitry Baryshkov wrote:
> > On Mon, Apr 14, 2025 at 01:13:28PM +0200, Konrad Dybcio wrote:
> >> On 3/14/25 7:09 AM, Dmitry Baryshkov wrote:
> >>> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>>
> >>> Add display controller, two DSI hosts, two DSI PHYs and a single DP
> >>> controller. Link DP to the QMP Combo PHY.
> >>>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >>
> >> [...]
> >>
> >>> +			mdss_mdp: display-controller@ae01000 {
> >>> +				compatible = "qcom,sar2130p-dpu";
> >>> +				reg = <0x0 0x0ae01000 0x0 0x8f000>,
> >>> +				      <0x0 0x0aeb0000 0x0 0x2008>;
> >>
> >> size = 0x3000
> > 
> > Existing platforms (including SM8650) use 0x2008 here. Would you like to
> > change all the platforms and why?
> 
> The last register is base+0x2004 but the region is 0x3000-sized on 2130

As I wrote, this still applies to other existing platforms. I think up
to now we were using a mixture of 'last actual register' and 'documented
space size' with VBIF using the former one. Should we switch all
platforms to use the latter one for this region? In such a case I'll
update this one and all other platforms. Otherwise I'd prefer uniformity
and still use 0x2008 here like other platforms do.

-- 
With best wishes
Dmitry

