Return-Path: <devicetree+bounces-227727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 82857BE3E66
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 16:26:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E9C96508BB6
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 14:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C9E33EB11;
	Thu, 16 Oct 2025 14:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KPP33xnO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFAC33EB03
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 14:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760624692; cv=none; b=Bims7kDEUsTKpmBaXZ85xo7YiH6Z6gIUOZ3o3LZ18i6V1IzFWkqf3jWYyfomL4R7fYdSN0gmf1RThy3Hx1HOH+RYThu1g/yZ/ehCWfvTikKQos7zuKpBlRhIJnyrtw/1tyBUNwaQuEvaftVX52AEbVHHX5zBSnKwwihxT1QBV7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760624692; c=relaxed/simple;
	bh=NzwL7kMyuDL8HK7k0VWDNm8cZ0DqXRQGUdp1s3bKqUw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cHUo3JX1ce84z8tSENrw+z5mgUEaZ+yJAHXjpGjFpWGLoa22iEM6m3WTNZUX+RSgpqjdlfcHcbKM1x4GHwgUOZPapD88kdblHcUnpGa9O8Kf8mh6AdINlI/jv3G1z99ooA2v2MfJ/fphX4uMBkEdK3hEVINGqNJLkMo1qvv74s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KPP33xnO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G7GPo2016735
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 14:24:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fYxFtwVPrpEIQI1zK10YVWHnFZH1g3euqyuaohsvw1c=; b=KPP33xnO7ExkhhSu
	BD1z255otm3eHH5m8BsEP0Z0gRPr7is6fOtzKurPP9v0yMIrCJESQZ40AROMQ4Yq
	UGJESLKBhZNop3kalGH6B8+tU9vRij8KlQDVWzt/WoLF93K0MIkWnTyVkXksvaet
	Lr6S7NWXCRgiFbsdhcySDkIFSLcE4quKSGLNNZ8QG2rzgEXsZ6RpUaIvuzj9IVu2
	u1Fd6plKcdTBzydT2bWxRC8RtEZL5s3uOhZMVsAAF2AJ990/ozcg2C8QlzblrF3P
	a9P/b4bW7nIrXD3e4AdgQ/rYwfvvIgsipC1OfpqsOD0bYzGa2Fr4ufrV1CZFSk61
	bftQaw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rtrtdhk5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 14:24:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88375756116so375667285a.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:24:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760624689; x=1761229489;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fYxFtwVPrpEIQI1zK10YVWHnFZH1g3euqyuaohsvw1c=;
        b=L+g+CddqOrlX0LDi24/z5iroENkzzK3WP1p3/cZZFHnAQmqc0ab5KE37RvOhVlJgjB
         ABC3N4gTEgHW9odMH67CBlT4ofLuXvhesm6y/dlZZub6WZSwblpYtFam7P+dRbSqDLIa
         w/hLTQTjHAV/EAbZ4McyBe3rJFtMTPmxEsdRdz93DoWkZEy/b3h4yEj2X027563n5Ovh
         Hq7IfDXx57Qa2vW+tJPeiQzYMr2OZGeoZg6WitrIauhfec0aERqNfgPZc3Pg1W9djXRT
         aDHt8xB9kbFJsqUGwr22wdaN90O+KDP7ftnfpUpQZqA1BOLw91LmGWcU/b7JIZGH91a0
         FFpw==
X-Forwarded-Encrypted: i=1; AJvYcCU7RfY9qka/XSv6ums+UoyTrWsqDr98On1Lxv1SVXapTMjYv0yfe75gdnHMn1KE3MnqWa4m6uBmZiCP@vger.kernel.org
X-Gm-Message-State: AOJu0YyFfmVi3oOGawpLln0lZaOiURqYGWcRIPPyPD+QopNBRUsES7Qq
	V3A4BtrGtTNRccGlzjAZg2v6bz3gbvcFcnZhWTZbTd0g06/Ln+tbQr9vALuMH49PWZv5vgu/QlJ
	2pi4DZjbEm0sV8W052UvWa6oQ8LsIglo318ZzzQcpDv6ReqZChWL3qNte5l3qMAAs
X-Gm-Gg: ASbGncuT5cUhwuNlKpSwftPr/R0TMHqhPbUL31u8ddtWtPcqSgRrCM3MrQFhZD3R7Kp
	bodqhqYRU+dSiiSCJ+zgL4/ATYYz68Vn/zCEA3LnV5qXnp37PkfsmMUqI+v2eFddQDc14uzxZbx
	zQfk9YK/ODzbeEKt1uE5roHzEE9qmhkD6VUvCkmZA+CoB02uGQ1AGU1myav9T8CQj8MzlxtwN5I
	hZrZvwnCwRSmBWwfrrCjm0eUeXkAcgs/DSDCGyZEle1GJIrHSYSl3dlYlRcedmucY7arWmUfnrs
	QRkFygWdkCVMMMP7SMQ9L3422b7M/r0AZhtZde+jBLSP3fVUuI17eQeM8y7k7QE7UxdL7g94fYa
	PV47LgZ3lrdRozsOo4chLdiv/5Q==
X-Received: by 2002:a05:622a:c5:b0:4df:194:b479 with SMTP id d75a77b69052e-4e89d3824f0mr4286571cf.59.1760624688892;
        Thu, 16 Oct 2025 07:24:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwoqSZ2hBru6Xko+64E79ey3lurH4UlOXMDwxvqHZlBSIPc76bdY6nqQzxg+YUuWg6+bXglw==
X-Received: by 2002:a05:622a:c5:b0:4df:194:b479 with SMTP id d75a77b69052e-4e89d3824f0mr4285971cf.59.1760624688301;
        Thu, 16 Oct 2025 07:24:48 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-471144b5c29sm29442725e9.12.2025.10.16.07.24.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 07:24:47 -0700 (PDT)
Message-ID: <c6ae5147-7ebf-4a17-9006-edf6f57a8689@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 15:24:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ASoC: qcom: sm8250: add qrb2210-sndcard compatible
 string
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251007-qrb2210-qcm2290-sndcard-v1-0-8222141bca79@linaro.org>
 <20251007-qrb2210-qcm2290-sndcard-v1-2-8222141bca79@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20251007-qrb2210-qcm2290-sndcard-v1-2-8222141bca79@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JOI7LzQ92teXPlDTKJqSbCGhdHmELnN_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAyMiBTYWx0ZWRfX0cPPs1ZSSQZT
 CQ7jmWx+S2OelGgMszPm37S5SVEx9zUmRXGl8deNwUx5AtzCxikRYh4LQxTlcCiJzP94H/760z+
 Pi6xIbAP+PIiBucf/BaxWUD8gk2+bgKCIpEbIxlaa2i9/jQEwjpW9N/lx/dnVxnVwv0PDjAh9jP
 l+KJaNx6gQQNygkv19SQfA+b6kEuvRyy7VRQjOB5u35kmy16cc6cczjwvz/r0/Cg5X+oSX9y2YH
 Qjh0H/2IcoyFiV/PoX9LCypGuCBhdSMD41e/yB0ZnMpxosPTL9C/q/PDe1iAg6TRqanhYylFMVH
 ydAmsRRkauFBRnN/aiFBcPUoOEh62P6kTX5QMUoWgvAQ9J0cZtIAyJZQTwz8Bpkexwe2/hHcDjE
 o+PwKeNd7+KtJBDvjHF4aGa7ZhSlfA==
X-Authority-Analysis: v=2.4 cv=SfD6t/Ru c=1 sm=1 tr=0 ts=68f10031 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=h-EO4oqJzKyq0k8zFzQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: JOI7LzQ92teXPlDTKJqSbCGhdHmELnN_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130022



On 10/7/25 2:26 AM, Alexey Klimov wrote:
> Add "qcom,qrb2210-sndcard" to the list of recognizable devices.
> Use "qcm2290" as name to let UCM to use it later. QRB2210 RB1
> and other QCM2290-based boards can use this sndcard compatible.
> 
> Cc: Srinivas Kandagatla <srini@kernel.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
LGTM,


Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>


--srini> ---
>  sound/soc/qcom/sm8250.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
> index f5b75a06e5bd20e00874f4cd29d1b947ee89d79f..bf71d9e4128873fd956750e71311a357d60099a8 100644
> --- a/sound/soc/qcom/sm8250.c
> +++ b/sound/soc/qcom/sm8250.c
> @@ -210,6 +210,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
>  static const struct of_device_id snd_sm8250_dt_match[] = {
>  	{ .compatible = "fairphone,fp4-sndcard", .data = "sm7225" },
>  	{ .compatible = "fairphone,fp5-sndcard", .data = "qcm6490" },
> +	{ .compatible = "qcom,qrb2210-sndcard", .data = "qcm2290" },
>  	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm4250" },
>  	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
>  	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },
> 


