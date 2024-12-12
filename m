Return-Path: <devicetree+bounces-130377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E2B9EF4E4
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:12:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1EDE18941F9
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D91239BD4;
	Thu, 12 Dec 2024 16:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lHgFMnCa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2C7239BC3
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734022027; cv=none; b=SewDsDsttT6Con/5QM/BfMnmtUH0DXQz09DrEHzlj0nqrpHSbFqv20wjGSnrbi5BHHbrQgiX+Wtkj1yOVPW4neoQMlm5/RXPoEt5DjGqtO5X9swuk7eUsPxR+QDd2Bxl2SA9ugSQwkoxgsluFTDg3ukGwPUY2rjHljsL4sQddLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734022027; c=relaxed/simple;
	bh=gakp5Aj3FEv816mtcgel/jdY/v/jGPkhjk+8fdyuKqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cIy5o4LEB1sJR+bt2mqMmJSVsPN7nxdeOT4s+lib0X5QG6budfP//h5WssbFe/KHdpgheNv6nnY0Hx0Nrgl/VfgFdp4Lc3lJYx3arXVTEYv5goOTDpM8gPy2Vg83582n/y7nXiTtsVWNhC4l3trFv7ZBAgbaiU5lie3FNWTmGZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lHgFMnCa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BC7rcCA030319
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:47:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z4OtdDfHtUd2K5YuFPJH9FsYSx7IvdHrXF4yoTvVqjQ=; b=lHgFMnCaTEpWxUcT
	nc+bvY+Y6RoafPPoduGjjTFdoLoXzZHh4Iy7caYmn0uGPuFZ79woF07U9ANdioi4
	tvcTIQrcztcZCof6X6yVDA5HbAlf1sT55m8PyDBLSWHFnsJX2hAVQqS6+kOXZGck
	ThsqK1HmdJBjgJbh4wbUTqYxIAxhmI70y6qxOahsKF89L8qAJwYaqWbBDN8pHhCs
	E33Dm7QMfxKLwW7VccjlIalndkM7CxbNLW+vjbcjCRey0DAHcyBT5ovRG04AgnPL
	bLbm0llXi0Vy+Nur4boAi3HnF0B6MOTwc5TWfqfg3ujAVd2+RgATNk+/BzB0+tQp
	tJjgCA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43dxw4c1hf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:47:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4674128bca3so1477091cf.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:47:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734022024; x=1734626824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z4OtdDfHtUd2K5YuFPJH9FsYSx7IvdHrXF4yoTvVqjQ=;
        b=K0+6jL5T2GVf8osTFQ0q1h6IexDiCD0Lm0TCjCWCf1P5awl4sgX0Wmj/O8eG7zdHK0
         lCNAJnImNNRoIkaT+3wlORm7z0VtA+iHHwjUeeIjo/nOZT5nK6F9zJWahQ2iYWL/D0rt
         FhfUbAQVh/NyZ85ksAyhSUoaxWb3IaD9ExEpxs0CmXgMdHCGNcixwukXphhWt1hGUxqS
         IQTCClO7CUi8l2uP1/Gh4Lu4YDyrLadyLBpRjHT3pWqhFEaQAxv+i9f0HetrqVblMIsP
         UVBgaxpybNAI888x3LtliCRkgkit3t/+z0JPv6IiWBMoWRK2gR6T8Owwqjq4qlxbIbm2
         279g==
X-Forwarded-Encrypted: i=1; AJvYcCVZzHGWryXioy9zvj2ORdwsQ2niFAMy/lc3QU0fZdv65Jr1pFWSWlPwoFVtyIbmrGk5kZ9oOkzRilMJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3kEI26vvlE9g+JLD07jQyizvEqAqnQpHWB296kP07Fbgv80qG
	mVtZ8WCwhA4CkXhoowbTs7dqZDK9ee410njMpsM1q0M01+Tq3+mFvF7bNlaFtiVBcA6pKUVDaCq
	BiqLSyUVYY+Msdqh21zGhN0xtlhzWoT2dhY5f1PhWbPGYVp7qy2xcik+qk9Nn
X-Gm-Gg: ASbGncvoP9S9N+J5aIDuSOxkJKE8E2BTgAr6g7Fk93uG/eKBq2yQWWmiTuIsWuNmJO2
	8ssib1s2caaDLje69orEm97KwMQ65z5DYj5SDZMZzoGrfT1kwVbFTVQpGZ+JqTGWt2mXeP2GUYr
	gI4A3eZgY0sH8nvg9aBZTd4ET4iFImdjnXVlCsr7nGG9K2LCPCNZaE+q1lzH0p4jru/aj2KwVHT
	ybI4ZErvSpi4O0XhZAwHTYrW0kpxfyAl9+g1w/cNSh57Tm9dg2llEG+/9Yp5U1nxL0CKzOb0T+5
	ScZdYD1piLdKKAlamfiHmrB1s0Y4MYjzznVgGA==
X-Received: by 2002:a05:622a:110a:b0:461:1fc9:61a3 with SMTP id d75a77b69052e-467a1556cdcmr6368801cf.9.1734022024022;
        Thu, 12 Dec 2024 08:47:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbmP4pXDhW5EBpXexeneOeQ1H0OIhDr8GB0bZnmXl6AR8XFHt2k4+lrHiAsVPutnSuge9M8A==
X-Received: by 2002:a05:622a:110a:b0:461:1fc9:61a3 with SMTP id d75a77b69052e-467a1556cdcmr6368521cf.9.1734022023575;
        Thu, 12 Dec 2024 08:47:03 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6ab7fe8bdsm311763466b.160.2024.12.12.08.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 08:47:03 -0800 (PST)
Message-ID: <1777f0c7-7cea-43d6-a7c0-4777bfb3f1f1@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 17:47:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] arm64: dts: qcom:
 sdm845-db845c-navigation-mezzanine: remove disabled ov7251 camera
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Felipe Balbi <felipe.balbi@microsoft.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241211-topic-misc-dt-fixes-v3-0-010ac10529b1@linaro.org>
 <20241211-topic-misc-dt-fixes-v3-2-010ac10529b1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241211-topic-misc-dt-fixes-v3-2-010ac10529b1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: HIZZYD6qNGeGrmtowVDzzXdgMbOFkYoc
X-Proofpoint-GUID: HIZZYD6qNGeGrmtowVDzzXdgMbOFkYoc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 mlxlogscore=943
 clxscore=1015 spamscore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120120

On 11.12.2024 9:03 AM, Neil Armstrong wrote:
> The ov7251node has bindings check errors in the endpoint, and the
> camera node was disabled since the beginning. Even when switching the
> node to okay, the endpoint description to the csiphy is missing along
> with the csiphy parameters.
> 
> Drop the ov7251 camera entirely until it's properly described.
> 
> This obviously fixes:
> sdm845-db845c-navigation-mezzanine.dtso: camera@60: port:endpoint:data-lanes: [0, 1] is too long
> 	from schema $id: http://devicetree.org/schemas/media/i2c/ovti,ov7251.yaml#
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Since:

* nobody cared for so many years
* there don't seem to be (m)any active users of DB845c left
* /\, even less with this specific mezz and usecase

I'm happy to see it gone

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

