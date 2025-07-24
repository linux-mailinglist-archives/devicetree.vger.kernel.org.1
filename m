Return-Path: <devicetree+bounces-199425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2B2B109AA
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 13:55:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C799E169237
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B7582BE631;
	Thu, 24 Jul 2025 11:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JtWQumYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746FC1E5729
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 11:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753358130; cv=none; b=Uuka16fe3L6vwl6lK4HWfoxq8nZNu+RFr8cqvDXoWGaZFCyqcUCOZzrrDP8MlBYXgC+0F1Yc0xYMIyTC6gFbBK6XKz3Hq/FditvysuALRdBvKJgcyvAiy7n6wo4EE3yh3oapdMNTO/07RkcnpRtesyWWiLRspjWRaB8vw3w9ZzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753358130; c=relaxed/simple;
	bh=jfCb++kTsyb3iig2h1ycKbyRXElJw3YUbi8qzbAl8/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hRsffKrxRGMomhQqrRL5ssB/LBqrqnY/iUMsmywpe5suGgUegyvvoxujQP8Xs+IY0tiZQXHW6/FWMsUoy9YyKWO8ejCQKix84NYnR0YCgceibqIzPfyM60upU5J673fslpgdrnKjd7M6h/iIHPZJ0KpsxENH9DCXsLPQa3hw0r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JtWQumYZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O6doRP028522
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 11:55:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mINbh0hT0mOMLjUaQwlGXcWW
	ToNWDwkhWfpfbCEFXxs=; b=JtWQumYZJkZLJV4AipaSDwxut0syaib3lRas6zal
	9hzcGjFLqShot4RHdNHklOX5WV+cPhH47AAe8yqT0jX2d8dZgOUbuVwDQN3OKcIo
	pBJnKVL2u527aYZm/oNeiLL+semul1dK55OAdm1vjxvEljN2GLcEAIlh/uo/IQnN
	M/daUF+SHZ/V3H5qR5zNd3iJ5CTzl317BIg/R3VLv9vHtebx4LuqPL39ye3qbMjo
	dn/BtO5izWiF09IRSUhHoca91PjSQQn6OGqTH3NALZKHEmPZ7bsVy3zkYTl7E/Si
	5rnvn6vHyUC/lAVtRld3HfnxzmR/Bbwj4BInBbpO5p/ZKQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483frk0wyp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 11:55:28 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb01bb5d9aso15052166d6.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 04:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753358127; x=1753962927;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mINbh0hT0mOMLjUaQwlGXcWWToNWDwkhWfpfbCEFXxs=;
        b=hOVLebRkdRc/v329BgMtYJCRx3EGqUTtiZsCIMefuKWgGkvN9MofdkimcIo7q8o9J4
         oH/vUi2vTq0Hls77+scKX38zcqw7TfhynD2boVIzl12lel9GPrlbNkBT721eeIm/Xa6K
         ckM1f32thEwMkc/8iCWeDHciO97KuzR9+DC/Yn3sn5hHmbGY7lVdsUrtqpc7NL1K4UDU
         PlOlerEQM617yeQwO0bDuRWobEwG0QRy3KGmzFhmla7mK8FMEGhufBgc7+f7hlHoSiAV
         Di2+/9Ghmpk5AapZfOcjwourTYlgDlZQO7+P3HfLJXFDhyfv/IjTtL7x0RtFwpUqFiHF
         wAdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUR8RHi7kSz+wchMP8sTjVhEpU4sSAVGndhyq9TJm6oWw1+Q1KRlNU4Vvmi3q4FGJsz+iGUcUFuStH0@vger.kernel.org
X-Gm-Message-State: AOJu0YwlnnTcTxfOBdoIhn7zbmyGyCCDci+M8BpcpRjrEwcyMy3eJvK2
	tBr+doFvUJkQAZzeGWhQtOfAP0Ztt+3MwvQ0nRt3vXFW/1mueonB9UrBJuGVJrOBgxFSFCitfEu
	X4aKwMrXHPID3PWTM57Dgd5HiwvHiLUOcRROSMACUwl9Ss3aqQws1HELTwCUWDgM7
X-Gm-Gg: ASbGnctXRgtMYFbtnm8WMZEdXBC8JTn69UEGl6xWPcU6+RExaGBc6n+vqRWSP0w3CnR
	6RSd8S+qQJunHNvwbdmh/u2BdRfZL+xAvGPn7tbhUSkXI7v92XPOciEt+YlDDj9o6P6oFDKnwBZ
	+zXOFKbsMQWAGS+cvLvddS8MvngDb6KY3c9MTMQJ7SDc28HuTNLnXsH7AAc6FDv146MXAR/KGoC
	nONz7LAIRFWLhGSZsm4N30KAqPylacU/CZZH3Ez9fULLGzTDuQlmnMHWsueZTf6jhYZHp1xBkI8
	CxFhUaW9FoTC5Kar6pOVcyQJ1GQaVXzdaSeP7l4LT2JlOrPiqHZNv/UoNfSvWIkNHPwqBlLq/j/
	kGD0raJOGZSUTtzWyGiTZr/1G02nEfm9uQOxBoFzdGrcHkzxa8GQQ
X-Received: by 2002:ad4:5aae:0:b0:704:f3ef:cbc2 with SMTP id 6a1803df08f44-707006800c0mr78839526d6.33.1753358126516;
        Thu, 24 Jul 2025 04:55:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGd1t3+gJxk8pnw1F60NxFlYtusGeWg+p73JrUwlRncJWEKckPZk4d7/2qrIO4VrYiW8onn3Q==
X-Received: by 2002:ad4:5aae:0:b0:704:f3ef:cbc2 with SMTP id 6a1803df08f44-707006800c0mr78839116d6.33.1753358125983;
        Thu, 24 Jul 2025 04:55:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53b2286asm327797e87.32.2025.07.24.04.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 04:55:25 -0700 (PDT)
Date: Thu, 24 Jul 2025 14:55:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>,
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
        Danila Tikhonov <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org,
        Abhinav Kumar <abhinav.kumar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
Subject: Re: [PATCH v3 4/5] dt-bindings: display/msm: add stream pixel clock
 bindings for MST
Message-ID: <5nqzjnrivsuuttslzfecdwzigkqhdipy2wbjmgaa5mijr3w5hl@rbz47vnykzzn>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
 <20250717-dp_mst_bindings-v3-4-72ce08285703@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250717-dp_mst_bindings-v3-4-72ce08285703@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA4OSBTYWx0ZWRfXwc6UrwBBWl6J
 DcQl5N/xEdQZ6WYDui8PNkkcCW6ff4BzbzXjfvC4GnvT///AUesQQ9Bpl/a4Jq8n8WC4d/4pSSu
 giurxdR3UM64gDaqTJ+FYxplO7vw/wbR9V91gQLwOLBBr0TrtVx1j7WB+r0T/2f3F3QjtZnnPm3
 oagxsDdHfPHO1tDov5UOx03pwtOk6+jYs6CDezV99y3enC9AyDh74H16+LE8DhBDEmzzbhUTvoS
 KQwJ0oR1ClmQqzuPnTNqijjIjqCunJMR3HRIp2AOjtyvrhW3EwHaS0qZAsqR9okF/Ajn5kYsquq
 3UD/9VF7NlcHsEeGbEA2MV7CISM2kE+jF9rA5b9/lXVz1QZ3O7mqFf0HPf1LUcEY5oWjm9YkH2g
 vjkJnABBaGYqh7291EdMRsJA+Y3kRDZOzVi7NAjXFK9LPecywKkVorcvqkWVYcWE9OjqN5Dk
X-Proofpoint-GUID: S3YcCcLzW65LD4IcCbgvcSuZr7WdIfKy
X-Authority-Analysis: v=2.4 cv=WbsMa1hX c=1 sm=1 tr=0 ts=68821f30 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=TLo0AdDBy_HI3n6x0gMA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: S3YcCcLzW65LD4IcCbgvcSuZr7WdIfKy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 mlxlogscore=784 bulkscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240089

On Thu, Jul 17, 2025 at 04:28:46PM -0700, Jessica Zhang wrote:
> From: Abhinav Kumar <quic_abhinavk@quicinc.com>
> 
> On some chipsets such as qcom,sa8775p-dp, qcom,sm8650-dp and some more,
> the display port controller can support more than one pixel stream
> (multi-stream transport).
> 
> These chipsets can support up to 4 stream pixel clocks for display port
> controller. To support MST on these platforms, add the appropriate
> stream pixel clock bindings
> 
> Since this mode is not supported on all chipsets, add exception
> rules and min/max items to clearly mark which chipsets support
> only SST mode (single stream) and which ones support MST.
> 
> Note: On chipsets that do support MST, the number of streams supported
> can vary between controllers. For example, SA8775P supports 4 MST
> streams on mdss_dp0 but only 2 streams on mdss_dp1.
> 
> In addition, many chipsets depend on the "sm8350-dp" compatibility
> string but not all (ex. SM6350) support MST. Because of these reasons,
> the min/maxItem for MST-supported platforms is a range of 5-8.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> ---
>  .../bindings/display/msm/dp-controller.yaml        | 36 +++++++++++++++++++++-
>  .../bindings/display/msm/qcom,sa8775p-mdss.yaml    | 10 ++++--
>  .../bindings/display/msm/qcom,sar2130p-mdss.yaml   |  6 ++--
>  .../bindings/display/msm/qcom,sc7280-mdss.yaml     |  6 ++--
>  .../bindings/display/msm/qcom,sm8750-mdss.yaml     |  6 ++--
>  .../bindings/display/msm/qcom,x1e80100-mdss.yaml   |  6 ++--
>  6 files changed, 59 insertions(+), 11 deletions(-)

I've cross-checked. We need to stop declaring SM6350 as compatible with
SM8350, it doesn't provide MST support (and so there will be a need for
a driver update too). Other than that, please document DP MST on SDM845.
With those changes in place, I think, all platforms will be covered.

-- 
With best wishes
Dmitry

