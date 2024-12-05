Return-Path: <devicetree+bounces-127715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D91A9E6039
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 22:46:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6376A1697C7
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 21:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 955231BD014;
	Thu,  5 Dec 2024 21:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hqteXwO7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F501B6D06
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 21:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733435200; cv=none; b=u9UxBO+8Gv9cHCAyNsoodNJG4y3xbrHrrf/TL7YGpNAedbnBieR4fEN7qyDYGPIu9VmFmziBBxJpYwKpxSRO78tZ6+Mxd/URt1aH22j4YUN5sl8B1qRvgOI+c7ZMaB/G/tsmsckPaedroOWlwcg/yqWFtLvMNy3gzE7fTejEdNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733435200; c=relaxed/simple;
	bh=NOvBU5kPr//INWOr0+0y9QOrcf9NtMLBo14Y0ptvaiQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gTYpYLxwMw4ivr1N2ZGLFRQrORnbptYUAKgJdp7bGIAHuHBAQ0/3QhJ8nwOWHbf71fYtCxVjiw8qMbQB4Kh5nog2abwMzdS7NWB0+ZmoM8E/cVONDlzKhrNHZCp6/WDUwofg0pIhHgnXYMzY17/xSGb66xd7UOyw0rcTVlzuNUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hqteXwO7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaOWt004432
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 21:46:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	klKiOTWRYLpHJsIA7V1xW4E3d1Zon1XQRRggfmfjlrs=; b=hqteXwO7JDZmSf9M
	LWy1w/6A7FepABguTaxfmzqnPT9yvQSZ4iSnwfar2qhLo+DJQoGajsw8TyL58G79
	CvT2G+wLgtND44LFSc9VAg1CoP+w8SCqQ8PUaTFGPENbKXn+zs+tUOqTj3kTzUw2
	s+j9VekxL6kPIQLn0Ez2PeCa+UJ6LNAEgwj8qhJhQ+Dvrpz4ojP94bjkjwpjm/MJ
	Tz+9h/okGRsOSZv5npRn6vJpJI1wljPu+hGg1uHTp1lMwoEt97y7K5k9CvLkA3xM
	pk15D0NU8lOIJskIpTbqDtwln3e/nQJgR9hFgtp6dpXTeCtCFJEfBDkXkEDjuu4n
	/Dmmmg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43a3fayv7y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 21:46:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46699075dd4so3462341cf.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 13:46:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733435197; x=1734039997;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=klKiOTWRYLpHJsIA7V1xW4E3d1Zon1XQRRggfmfjlrs=;
        b=arlCjOez71s4ebPE4RFMtxUnBvuqjnSOnPa9uKMiCQln9tO6z7AA9IZeFs6jskjqVn
         88lHSfR5A60iU9jb6b06BdmL/msjDXXu5ZojOWBsSnZDMdJa12a0DCbNYyP+PHjw18Sx
         q66iRAyaJe6ztRHagXsBdSh6hqUUR43QpS6hwZ2A57shAKkeZLV+jrmat7vkmptjx41u
         rGeMxZ4tVAW750GO0rjerzO3CItKoyWAzHtWbqTYaqC367liCzr/7vBnT+TDsOkdr74r
         ZC9X9Rx5tCHf4sOdK+2vciadbcn6GR3pgdqTFlhubtF4wlZjJg83s/i5wf7vku55P5iV
         E8tA==
X-Forwarded-Encrypted: i=1; AJvYcCWg0q0q4f0z+R7PGkK3GNGLIfi2OEzNoWqs4PzKY14ms6fzK71qxKi7OT0PfpYGyGhNmRl6BmzbDplv@vger.kernel.org
X-Gm-Message-State: AOJu0YxM5GtHCSpVTdqbnNnr6P+ybZLZ1gdXrfT14auxsyHhEpP7WIOJ
	iLnZSiLGaj2hMSL2in1kUhMRl/s7fGNATudAUonLoLgZzffibT1x2reYsjUW14Vqxez0DBFsSau
	tO+45oor+12iefofVNGuIiRJignOVZmcSJG5NK4QqKzZALx/JT2b1aHZJ1QJr
X-Gm-Gg: ASbGncs59JEocVb5fIYDzKpSOoa5HcJMnlZE5uAef9XAc+FL3RB9MZZbK1Ps+2ftRPH
	Y6h4mKXWmvKEGxp8NB4v/GSy99ozFODL1ja9Y78bLIJYIOYdHUHYZt02f1LYVv/9XcWjFayR2j2
	AGDuR0vmKSKAgqDaNbq5rXz7+Lepmw3h6y2ffjsNwnoDFom1nqF7hL9q1KhJXgIofxWk0i6Vdzx
	BLFIyf+COcazHLPzIh/epIUQvOVKXLmlnhUS5pgsQFQgEFYN688KTpuGKe3fyhmH6j2mqz4wZ9G
	y4nr1/EuDDRlTlgW2FqEglufiYIsIyk=
X-Received: by 2002:ac8:5943:0:b0:463:648d:56 with SMTP id d75a77b69052e-46734cbceedmr4793911cf.5.1733435196935;
        Thu, 05 Dec 2024 13:46:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEf8DilADacg13bVlIRhRs75Bxsdhk32J4YapDiQecr0yhzNtzVm6UbqIkKibQ0R0Bj6FzmCw==
X-Received: by 2002:ac8:5943:0:b0:463:648d:56 with SMTP id d75a77b69052e-46734cbceedmr4793711cf.5.1733435196578;
        Thu, 05 Dec 2024 13:46:36 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e58e0asm143634266b.5.2024.12.05.13.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 13:46:36 -0800 (PST)
Message-ID: <466ea213-5f20-4a9f-a9dc-751756792845@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 22:46:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs8300-ride: Enable Display Port
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Ritesh Kumar <quic_riteshk@quicinc.com>
References: <20241127-dp_dts_qcs8300-v1-0-e3d13dec4233@quicinc.com>
 <20241127-dp_dts_qcs8300-v1-2-e3d13dec4233@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241127-dp_dts_qcs8300-v1-2-e3d13dec4233@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: kMiG5ZtWi-L98go1z2Abe_7aga2yFMuE
X-Proofpoint-GUID: kMiG5ZtWi-L98go1z2Abe_7aga2yFMuE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 spamscore=0 mlxscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050161

On 27.11.2024 11:45 AM, Yongxing Mou wrote:
> Enable DPTX0 along with their corresponding PHYs for
> qcs8300-ride platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

[...]

> +
> +	dp0-connector {
> +		compatible = "dp-connector";
> +		label = "DP0";
> +		type = "full-size";

I was surprised to see it but yeah this is real

> +
> +		port {
> +			dp0_connector_in: endpoint {
> +				remote-endpoint = <&mdss_dp0_out>;
> +			};
> +		};
> +	};
>  };
>  
>  &apps_rsc {
> @@ -223,6 +235,30 @@ &gcc {
>  		 <0>;
>  };
>  
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dp0 {
> +	status = "okay";
status should be the last property

> +
> +	pinctrl-0 = <&dp_hot_plug_det>;
> +	pinctrl-names = "default";
> +};
> +
> +&mdss_dp0_out {
> +	data-lanes = <0 1 2 3>;
> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> +	remote-endpoint = <&dp0_connector_in>;
> +};
> +
> +&mdss_dp0_phy {
> +	status = "okay";
> +
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l4a>;
I couldn't find the reference for these, so I have to trust you

Konrad


