Return-Path: <devicetree+bounces-171061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 889FDA9D211
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:45:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 738617B08D5
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D2321D585;
	Fri, 25 Apr 2025 19:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EOusTxbO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E287E14F9EB
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610289; cv=none; b=l5IGmxdJwXcS75vDgriRs0H55AC2dUcx8i14pUK22YK5L1JIqPnppiPj8GCxTpAQAjUG9exCnHFl+msqDJzlXT/H0/4/Imlm+Oj4LOTq2qnIJsmfK9ndHHKLor1ow4Ptk4NYLUie8VrI/c+ZqwyM3hU47xVN7XczQfcDPn/eZXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610289; c=relaxed/simple;
	bh=4Z53ukbVJUmyfgXAB2bPiq3AcH578EqdYu3zD+Dc7Rs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RMyfJnDaTChvbd9q8Bb2gA/ORqJHJnyx6Tbd2yFj5fgoj+f2E6gsFVss/BPhoYznzk6czxGeGg3RTG+zejM2RuDHYpZBjPZY1sNh0mi+XNh6dFJHVV85eNMmg6hdhawfZvMXujDp5d1WqhpxJZqRHtiAbS1jLjnr+olx8G0u2Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EOusTxbO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJtv1004029
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:44:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EWtJm4qKkcgZA2bNT3FImEgZ
	xQDMfs9D88FzDYAHh4c=; b=EOusTxbOrCzn0eAMlHrKGyq0ggqEMbAg9DiZhVTb
	oansQWQylDersZpjDVXHE3KW2i8YD2Yvn98G3zHbsXUSFs2epsQSA5B88Ie1nrYF
	TPPrrQxZoJCLfavjz82Fi6vWhOWXhXcdsfDSn8GOwLlcaxi8zrH6wm6ejfNIRQT8
	biO0spN8ZqWhMg35Rf9rEBOqABH7twlClWwMy+KICnAtRCu2x1wTNmP/iqvLd9L2
	Mh2H8bZ4f3BIvXQ8idyP+FhlR68vgrqo2xsBib6/7Zxi5nevbgSBXBp0/B1Xn9cr
	IEqSagkD/L/ZbIJm9VupM5nexKGYGfLl+Hp7l46Sbs9tmg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh2a6y8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:44:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476a44cec4cso46843541cf.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:44:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610286; x=1746215086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWtJm4qKkcgZA2bNT3FImEgZxQDMfs9D88FzDYAHh4c=;
        b=JH8YJxBWYYN+PHgg0n+3up40cRPvUjGyD5WPxtnWggqnSiMpCUCaj2AAiUIAj2OCmv
         nCvtMlG1kROG1mg1RliKerAW07bs86vd73PRHI2Y/RA2w08Mr8XMgNsdir/Z2Pr4FJh4
         hPZ+823P3TTOT+zbRujzMo5jbhr61D4DlLTYsOKzvX1oNZeBIIDEHGh/WxZ34P8jWQ/f
         bncdELuIfvcLARzlTpk5q+stDi+Yowk9og66uEQPehem7165+LjGASKK0M1QDOULnk97
         8KFhHuss8bciFBms/k/LmySG7ewiTxd3R9HbSqaYd3NG4cQCzIsxN+0RDm0tnp8BVjjm
         LGrw==
X-Forwarded-Encrypted: i=1; AJvYcCVKPAfwzQBfbdToyBQIUx0aYgQG57GOc+039AB4NMveuN6lEYMxWvrywWJzg6+PQLumUg7OYVeyolYY@vger.kernel.org
X-Gm-Message-State: AOJu0Yycl1u4c5ZiyX0TogxviX31CiWW47KHQasP+sFy63+vM0SAa3gY
	SZcow8zDRM2VjBYzzzm+CxKYbhxuCDnsJjpUOlCbt2wcbwkvjfWB//J22wWpgYrRLnPoRxTf1t+
	Qi7hfyTYd0SMizX4vHinNAhhQQKaqwgdYGCxU2prfSr3/EaCxZVV9bAnJB/Tx
X-Gm-Gg: ASbGncueyCoSkXI6zhT/Uf/6PT9fU2ybo1FzNR4zUhpdzV8ufAuJygt1ScnDqAqCmqH
	AUmbKJxCSitI9SC8B6hhgFPzfO/4W6P91A5TPBpYBepeR7Xyoi0pMUMkA840T87KmRCSez0TsoO
	ARsb6C725nANXebDxvUj6Tw22R8kIOgJUjLbv2RMZXGL9AC7LjXQoH38uNRWI/gSr/h7/7BE6vT
	tZPVcNApTkquDA9yuJpVUg8haVC+PXc8784oX6R4m1Tic7/zKnsqewn/4gZxjM4z4Bcdyk4B1yj
	7vjnYUv6wvuJQCiPxHnqddR6nHsqJnLAzG+JSuj6xFC/5N6SG4wZAiznKdkggMAEmaVqjKmLvu8
	=
X-Received: by 2002:ac8:5f0e:0:b0:476:8a27:6b01 with SMTP id d75a77b69052e-4801ebd2757mr53531191cf.47.1745610285650;
        Fri, 25 Apr 2025 12:44:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFj/EOvmU5yPlegKK54B67ho9sFfzuilCfx7mM72u8/jsNd3RBXrgo3lDld6PGx3rB2v/FvcQ==
X-Received: by 2002:ac8:5f0e:0:b0:476:8a27:6b01 with SMTP id d75a77b69052e-4801ebd2757mr53530831cf.47.1745610285328;
        Fri, 25 Apr 2025 12:44:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d16a831esm8880081fa.68.2025.04.25.12.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:44:44 -0700 (PDT)
Date: Fri, 25 Apr 2025 22:44:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Juerg Haefliger <juerg.haefliger@canonical.com>
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh@kernel.org
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: x1e80100-hp-omnibook-x14: add
 sound label and pull out the model
Message-ID: <mit327e4qp3hch4xy6qmqmks35tq5w35rw4ybvs5s3q7osxbkv@bzvon2u3jsmn>
References: <20250408145252.581060-1-juerg.haefliger@canonical.com>
 <20250416094236.312079-1-juerg.haefliger@canonical.com>
 <20250416094236.312079-2-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416094236.312079-2-juerg.haefliger@canonical.com>
X-Authority-Analysis: v=2.4 cv=EtLSrTcA c=1 sm=1 tr=0 ts=680be62f cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=DfNHnWVPAAAA:8 a=xaY-34g60HBMI0Ihim8A:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=rjTVMONInIDnV1a_A2c_:22
X-Proofpoint-GUID: 7zmBP11vx3Hx486QL72Gf-oq_6kzJrq6
X-Proofpoint-ORIG-GUID: 7zmBP11vx3Hx486QL72Gf-oq_6kzJrq6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0MSBTYWx0ZWRfX4rjQAWs9p3sq EO6C7XT3gTkw0REXMx3R+I3/s2J7+UQzDyChhDnNf1wFCMpYsNTDDanUxqUA1KstBiJdFtKTdIQ Zlayij2Cn4XHyqP25oT3QjjOGw5BpSpBU2kQQx2xdO2aFH+7tX9GAkeOa0/F2g3H6kQwttqhicz
 hyx9Ci3EtMadE42q7UbwuXGmtUjLcaFtD4rk1XG3Se3x7+h72V+gE0EiFqgmkcm+IUONxbiNIRy XSTiQyB2tGtQmuuSSvd9JomlEuuo4LrFEpUUYmJPLcjkeEyzeiG7LxPbsofu5UHNQXdJJXnWQyL TSNYeUcgM+1yZrFl0U/U8WAQzoiz8h4YfqoLjjmkm3v6q5OrBqMJt/AMdHl/daVxA2lbgl3kUQx
 Sc8t74ev/BS4qsskNobs92F9/FhM5+mfT0bN0IgCsleUFF9g9yFcefMt+yQ3F+vKWeyypDNm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 spamscore=0 mlxlogscore=938
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250141

On Wed, Apr 16, 2025 at 11:42:34AM +0200, Juerg Haefliger wrote:
> Add a label to the sound node and pull out the model name to make it
> explicit and easier to override it from other nodes.
> 
> Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> index cd860a246c45..9595ced8b2cc 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> @@ -174,9 +174,8 @@ linux,cma {
>  		};
>  	};
>  
> -	sound {
> +	sound: sound {
>  		compatible = "qcom,x1e80100-sndcard";
> -		model = "X1E80100-HP-OMNIBOOK-X14";
>  		audio-routing = "SpkrLeft IN", "WSA WSA_SPK1 OUT",
>  				"SpkrRight IN", "WSA WSA_SPK2 OUT",
>  				"IN1_HPHL", "HPHL_OUT",
> @@ -1691,3 +1690,7 @@ &usb_mp_qmpphy0 {
>  
>  	status = "okay";
>  };
> +
> +&sound {
> +	model = "X1E80100-HP-OMNIBOOK-X14";
> +};

Usually the DT don't use this idea. Could you please bring the model
back to the node? The label is fine.

> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

