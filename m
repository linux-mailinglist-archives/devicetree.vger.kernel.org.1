Return-Path: <devicetree+bounces-130408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE389EFAC8
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:23:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0BC5188E366
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF61E2358A1;
	Thu, 12 Dec 2024 18:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KhpSIOeN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE5F23588A
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734027270; cv=none; b=ou2Ss0S2Qi2xEv7RoZKvnHGrRvuYrlbQm6okzXzVwT/NfAUipwxNVS3GuVDTJN4hTJTw1fTO+RCZSjVFqGjiEzRnDmPzlSKjwqawUE+tDnJmTZr7gikWHtqUQ1nGapFQU5NfuDsaI8pEKIhZI66eFuM1Z0Zw150WJ3qak7reQMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734027270; c=relaxed/simple;
	bh=Sn9GVodiqQXusNkw7kIy8Xvi9IXwgT0D7m6ej9XhxbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AaufWHeXbyvUdeIpFfCcs86eiNUlxJsC7BzI+/8pzJotC1VUNwWXW4BiE7n+NuJ4aUCnMM/tpE6iEyG9GjvgsMOyNwtAfc8wcBlf2jMN18bFyoB4aJoDLbKg/rHA1cRTwAyom2wV5FQCPFSfQ3f1fX8Tv2RPufp1E2fCPHT0Y1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KhpSIOeN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGZa5T032190
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:14:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6o34CuDQjqWiE8aD45SAkl6xdvZg04LXk295AhQ9dnk=; b=KhpSIOeNJqIpvTmS
	Z1vWCmRrq94q/A/BDuVv8giCFroqTGYrviWy0Kt3BSY2UyZOjUEM7islDrxBKRLR
	N5LmBgSPgTppk78NTQfS8jzUmEp/HYIMNacwbHiX1VmFa0RCKLvjAw5gKrY+Ryon
	dc3qZfzDIgrVeSq1IafqxNhoWmmLnNt2i3NZ2eZPE20fhbEQ5OrVeGy3lt4yv4nv
	GgBZpUGXvduSGYhqMF/xXpaPJ8zxI9/YjEr7FcUFnFZ/Zl0Nlusrft74cNVUQd6l
	I9pgraVZgf2+/hfkMktUjwcU8nHZHvkV8U8jdNrZUPP8LTK0HF4KmE6Y7u4hSlxA
	ZmVFzg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f6tfd3tj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:14:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4679fb949e8so1111781cf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:14:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734027266; x=1734632066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6o34CuDQjqWiE8aD45SAkl6xdvZg04LXk295AhQ9dnk=;
        b=CPeu9q8lua1AzQUN+ZuEHwSYKEVPArao7iOpVevFoTFJAP8OJt1g27xALHk6b/G5s3
         GxqVnMukO0BU8skDGdW8hJEKiTrkAmglioqgPV2HhP4ONQmbs6DzbDsbrmjnfyTBjc17
         y1dbOcQxDHS+Gf4a/w60a+mFzMxWJBtzCPjTVhFNW54UjdhHqJ1zkDIRFPjBgyZAE9e/
         JOoZMUe6Vw7K/4Bl44kNM/nlrSiqoHowB5Jpx/xFoBn5WtUQORs+IB/OyFfX+c6U3nwJ
         FhjSOeunMYqt1uloUKb7PvLPri2P9izVp/fCETiT+x1nvaCgGH5bZdls4kX2rgLg7B54
         mdfw==
X-Forwarded-Encrypted: i=1; AJvYcCXFmZ2Tokp4r1pQZ6NwrjNLHvqmMj4J+2T7QzBx8XwPA7s0Hb0N99MWEhFlywQvKMeKpU24hnL34tTK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7erf2dE/nWvhevXhwbxW4lb2s5BJtdf65ZhHhrPVAfrQ8fNTc
	f9XJcRIqwFKZfGR+Xig9kIRPamgQylar8+/8s+NfiX2sRMu0N91lPTuKueiHTZU7ivwcogKCqUk
	n3Ldg+LfXqVfTThpEEyuDeeMfgVWsWUzC/q89ijfpi0HVTQPqO1SeuJDwpsCa
X-Gm-Gg: ASbGncvucqtNa6aeR3UgOVz4wOlCvRoMzZkrrWyFGxnxlLJPyMCOVn81sRFvXrLG2Mz
	jHF5xxnY5VqeLnj647Xb/qxEOSCGuZVSpd0Qp31h7XbbIELF+9sjHRhmNW5uSbjCzzjxt7iLxr/
	CH5vdwlr+hf+Wsu0FcYFEipX4wcD6UdDd5aPurH+9JwaDU46RBYwt/41rORJY9ObkwW1ir1/5nV
	bn//gaXljVqXTHUYa/Rj1y/I7gC03WnZWIzTRTe+dtOxrVIVMIt8dy4Buw+1iFGwoWDnyQkH+nU
	SkkMVP3oqqWZ+qhDiPiGERwLRrzeAC0tOsffjw==
X-Received: by 2002:ac8:5a42:0:b0:467:613d:c9bb with SMTP id d75a77b69052e-467a163b4ecmr8813961cf.8.1734027265777;
        Thu, 12 Dec 2024 10:14:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKbq+dtOAlzlx2ehxizjdJv4gj61PxcCVIU8dDvhWJcrDcq8P5cGakB8RjCzSrBsZfln6jeA==
X-Received: by 2002:ac8:5a42:0:b0:467:613d:c9bb with SMTP id d75a77b69052e-467a163b4ecmr8813801cf.8.1734027265386;
        Thu, 12 Dec 2024 10:14:25 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3ea09245bsm7296597a12.78.2024.12.12.10.14.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:14:24 -0800 (PST)
Message-ID: <cc3edfc6-f53c-401b-b766-f8e560eb24b9@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:14:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Enable secondary USB controller
 on QCS615 Ride
To: Song Xue <quic_songxue@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
References: <20241211-add_usb_host_mode_for_qcs615-v2-0-2c4abdf67635@quicinc.com>
 <20241211-add_usb_host_mode_for_qcs615-v2-2-2c4abdf67635@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241211-add_usb_host_mode_for_qcs615-v2-2-2c4abdf67635@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FQ2nDEwPF5gaerEzIlSNrTEeFtdE91p8
X-Proofpoint-ORIG-GUID: FQ2nDEwPF5gaerEzIlSNrTEeFtdE91p8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120131

On 11.12.2024 9:26 AM, Song Xue wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Enable secondary USB controller on QCS615 Ride platform. The secondary
> USB controller is made "host", as it is a Type-A port.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Co-developed-by: Song Xue <quic_songxue@quicinc.com>
> Signed-off-by: Song Xue <quic_songxue@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index f41319ff47b983d771da52775fa78b4385c4e532..26ce0496d13ccbfea392c6d50d9edcab85fbc653 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -203,6 +203,15 @@ &gcc {
>  		 <&sleep_clk>;
>  };
>  
> +&pm8150_gpios {
> +	usb2_en_state: usb2-en-state {
> +		pins = "gpio10";
> +		function = "normal";
> +		output-high;
> +		power-source = <0>;
> +	};

Does this go to an enable pin of a vreg / switch?

I think we settled on describing such cases as fixed regulators
(that are always-on for now) - would you remember, +Dmitry?

The rest looks good.

Konrad

