Return-Path: <devicetree+bounces-118677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D19689BB350
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E9C71C223DD
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 360FA1B6D1B;
	Mon,  4 Nov 2024 11:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j1OZnMeQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B328A1B4F1C
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730719535; cv=none; b=EEdgdPScperRGXPNs7Tq3TyY4QW3SW6qlS7FCj8PHoXJiA/RAhlgP3IjJlwnMdUPvb799+trrW8yYUEnj6ckZ/ilwQPVLdQFCtADzEwXz8KnuOQxZ8OPHYtTlnyR3ksI6ULAJg5XivQkY4vwgHyxHGOC+DZTCikixleQOfUuZZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730719535; c=relaxed/simple;
	bh=Tmgmz4GR+9cwFu9AC7t02k+vRU80gzDp6e6LvUYKI8M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pw5ogZTiyAZ88QhJTYRd7AyQBT8RPLHO07t5q4FGBO4EF69xvPBxr1iTXQxKZ+1jjmANxjnEUQ4rb94FKiEnj90lMTiRUj2bqquilyYTeuvFHhWogSX9+UtVfEvWRUMHvUU5iUCwsB5qYhO09e5zN5a/DoFIRADtSpBmZRFxH1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j1OZnMeQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A3Neblc003006
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 11:25:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jcdE780GkitDhih7tdyFso9EhnKjR+Hdo4ZyfDFdfjw=; b=j1OZnMeQuD4xnZIK
	NbRxY0NeqWiPKOnXwUEQKj9RDggmuIfn6DqZnAC3tEyl5JRhCB9NEDcUZIphQKJn
	nJOmFsSDcb6993y8AYE7Q6uX/Kv+sl8ogBP0hasfggmf0DKHMbynYRTJnG3e4Tib
	3JolegVu9l7Q7itMCD6HwbDMuUDssuAgC/28JszQm7ctD1pqHzvJ09tQAyDwx4p4
	SXXxVNL+281LYDAU/Yj0uppbXrLzyEQORiNqQw0GTcKXEtQAKmH7sO6zLUfcdrfz
	IyOGLJbamnX6G/3hD1DMC/v1v9IpcIKXDV8LjxBFkw6av0bJuey8e304+1OwYISW
	YoWArA==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd4um067-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 11:25:32 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7180405a9faso388986a34.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 03:25:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730719531; x=1731324331;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jcdE780GkitDhih7tdyFso9EhnKjR+Hdo4ZyfDFdfjw=;
        b=uew4ENUxuYeRHTHG39EpBWu820Av6TncbG+I+R3XkPjQfTfmb4TqfLvohvm6LvYcFj
         EHgHU8x08sz7uKYJDt/qq+VEn72rfK2D3qlJhOklZyUuFxfp589l5GB9014Xi/kR63op
         BPtKrM40cNyqt4AwgMeFHD13V3vWrsgW/p5zU8osSf9/yCDi6CYq9uTpmgQtSWnrYnUK
         geyAbUGdXZKhQkqVq41ykytFixueo2Q3Rs+sx5gUL2VCSqM7eLN6xaTmJipysGkaUO/g
         UnUvkOrZrAQ3CPCUBoThcWvkDQUqOYxx2AN+4b44IrmBTrywiUIRvPzILIYbXz+/qXT4
         2AAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWE+d709AF9u+YjeiPZnlT1Hi4EF9n1ALcD4e8eWub8PJnAPIpe+8bzvkfS+KelFvkoMSfBpRqcB15e@vger.kernel.org
X-Gm-Message-State: AOJu0YyfeIV+/roBobPCdaL8JUBvNMOszOx52CgTjF2bZ9uGlpWgReDN
	t9piVXieGddsEwRbOLGCRRVkULgjQ2ciwTYDu8DrboXubPYxm1vFUD4Ng8Lo7GMH4UHl7SWsVu5
	rEtrsu5XfXDepmQPGN4ee6yq+gJRRoZzIXDh42c5ndZcN0GiBiAJXQZKG2D3Z
X-Received: by 2002:a54:4583:0:b0:3e5:fa82:9188 with SMTP id 5614622812f47-3e6384c4e83mr6722870b6e.9.1730719531615;
        Mon, 04 Nov 2024 03:25:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEPMHgbkvO9CmVr31mXjUPHasBRdXrgCQTzj8H7KuUj0yd1zFTHMB4QY9AUiy468jryHZwSgg==
X-Received: by 2002:a54:4583:0:b0:3e5:fa82:9188 with SMTP id 5614622812f47-3e6384c4e83mr6722859b6e.9.1730719531272;
        Mon, 04 Nov 2024 03:25:31 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e56493edbsm539687766b.38.2024.11.04.03.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 03:25:30 -0800 (PST)
Message-ID: <dbed68f8-ec8e-47e2-a2d7-e57363b23e20@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 12:25:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/3] arm64: dts: qcom: Add X1E001DE Snapdragon Devkit
 for Windows
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org, robh+dt@kernel.org,
        dmitry.baryshkov@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, abel.vesa@linaro.org,
        srinivas.kandagatla@linaro.org, quic_jjohnson@quicinc.com,
        maz@kernel.org, jens.glathe@oldschoolsolutions.biz
References: <20241025123227.3527720-1-quic_sibis@quicinc.com>
 <20241025123227.3527720-4-quic_sibis@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241025123227.3527720-4-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: YBRwAXTC-xvJFSLtLGynxO2jXPCWg_ZQ
X-Proofpoint-ORIG-GUID: YBRwAXTC-xvJFSLtLGynxO2jXPCWg_ZQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 mlxlogscore=970 impostorscore=0 suspectscore=0 spamscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040100

On 25.10.2024 2:32 PM, Sibi Sankar wrote:
> Add initial support for x1e001de devkit platform. This includes:
> 
> -DSPs
> -Ethernet (RTL8125BG) over the pcie 5 instance.
> -NVme
> -Wifi
> -USB-C ports
> 
> Link: https://www.qualcomm.com/news/releases/2024/05/qualcomm-accelerates-development-for-copilot--pcs-with-snapdrago
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

[...]

> +	vreg_nvme: regulator-nvme {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_NVME_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 18 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&nvme_reg_en>;

these are backwards

otherwise lgtm

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

