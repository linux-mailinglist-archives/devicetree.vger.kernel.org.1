Return-Path: <devicetree+bounces-169821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0691A98525
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:17:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A747D3B14F0
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAEB61F5430;
	Wed, 23 Apr 2025 09:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mSEFhe8O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1055D1DF979
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745399870; cv=none; b=P5dHizUv3tJPW4hSA5iHo0DHD9JoIAr1evfDh9KNDRlVRFUZ8v82addxzYvFnelYkzwVJp6eu3qVJ9iCvzZw3ogTwRA4NQb8DTOS1RHhjZ4NdEHFLQhXyI79MVJxHI8p/9eKuY0TjnahZgLCS+/h6KzupeWOuhBRohS5/ejL1OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745399870; c=relaxed/simple;
	bh=AKzrpDsMNIZcnF/wxqMPUPqqyJ/E6SssR5xz81lU+5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s3dmab7gmkJz69hmaWVlowOPnwDR4aF6+ZYvBDEzFsB/aWhYdw6FUpdpZdH5093MjBNBJlTIRFcdeQy8PesuwNXY/yBcgk7YoVfTGWP7YZ/oYS7FfcNTST8FlhnN/gH19d0Qv3zAvm99/ROD2NQB2wUDK4VVrvDdEgltrxgMyVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mSEFhe8O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N0i7RT003028
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:17:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N6MpoGAeSY0C+bmLW41QhXHM1g3lmo5Zw3R7rjEWbbU=; b=mSEFhe8OsAnOfBQg
	kiYXwPfTWXDus43nyReBNIFp3lQdfWgRkk0t54Kty2XwtXR55QEKr0RbOY7JXagC
	w53kzmwPbp+kNt31HDuzJ51ig1OmGP8JeJb8kUDoE2HelGIo/tZcflf9xJfXR/sy
	2gQQ7r/Ojf2lH2oWPVahGGP1L5Dh65OzSU2rOd8RL+bKZMjK3WJqn7GTD3krm73B
	KYpdxlOiLpDWHbFris7LRAf4BER1yXAfacQM6tFftwsZg//IY11MbCGIBX4p7iu6
	WZl73k7HF/y99B/FdRW++EdZYUD9joLjFQn3xKeIlazX/hJr7AAjvUy0Rl19nt8K
	7qVsBQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy1jnm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:17:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c76062c513so118986885a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745399867; x=1746004667;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N6MpoGAeSY0C+bmLW41QhXHM1g3lmo5Zw3R7rjEWbbU=;
        b=fK3zKarVzMrJL8kbOq2m0QJBZWsgQykSB0D50UTQ5xceJrwD76+v5PYHE78Od6ObZM
         wZiJlJ4Be8Td6xGDS+frxNsBsBiKPLCNV+Lwlny+Xvfmntm0WSpwALf5FLLsPvcXNp6h
         NlEOGFlmdy/OBjhRJxSjOTghJqrxKuR+aNgxcPA86v4hfW6bj3iVQQX7phnQuON/KSrf
         GxLqpdzdv3GFibV1//jFfdv6F05WKSoRtO5zb0gTvRJttHAwtXqX57XklXIuV7/myl4I
         hMq32CENtq1+EbNI6NqBT1pWZ56njQV99PJ8xBH1KNSfWVKgTlpkAaBbubQJeQi8uP9L
         C1Lg==
X-Forwarded-Encrypted: i=1; AJvYcCVjio/ZWJKOc6iL0GkNbdPFD/rTxzUQ/IyK/1+Nd8r+tO73gTTL3ru/VjY1V6ejubidKmZRT0/gayxw@vger.kernel.org
X-Gm-Message-State: AOJu0YyiMFBfH7JdOrXWUD0iIovZ+EnN56kkDMmbFfPNE6D7V18NWk3T
	1oOOMzBD+M5c90cnpLovJTw2/eE4pFpAaIb9Hp41ffJnBi5Ps7EtnexvxO81HNdlKjiWTdAClPf
	JEaz7q/Rp4WOgNjvtyiYGfUjmZcvSUSkTRz+V8/A6rDQZ962F6n3wLLYW9eQJ
X-Gm-Gg: ASbGncvUFmldkH8TH2GakK5n0h+bRgrLVkM06Yz5HGu0iqZ/LzjnC/r/N2ua5eWaCSn
	1MwwPJZR310HUOQtBhybhvRhcHborZj5f9CusiHBM88PDy1aewT2JZ7RgwtVEoILhpJgavU/DtN
	EOAmmKkRH4zdI4PF5qua0icuFtqptNsBlBTnhnVr5aJlJ8fXvw8dOl4YWXDiT4asMa1MqjRhrvQ
	h+/FAfaF511JLlXfiwQawDoCYLm6QtHFndJuoiZsL87JoCJF+zXuWekScRgGwygL1NAzM09RPRe
	kmyprIwCxKvdGSPyUY562sIKiZ4k9FTpr2kq7BFJPGIXKvJoeRxrdUzL29HbbUbM8ng=
X-Received: by 2002:a05:620a:d8b:b0:7c5:79e8:412a with SMTP id af79cd13be357-7c94d243c53mr151145285a.2.1745399866843;
        Wed, 23 Apr 2025 02:17:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEABNHbNld/7AqWPy7sbnIT+bbxyx29iTXjmNRAVaMAKJYmmYH3k5cBsxgVQJj6KzJZiibVZA==
X-Received: by 2002:a05:620a:d8b:b0:7c5:79e8:412a with SMTP id af79cd13be357-7c94d243c53mr151142685a.2.1745399866490;
        Wed, 23 Apr 2025 02:17:46 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6eefcfadsm782284366b.102.2025.04.23.02.17.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 02:17:46 -0700 (PDT)
Message-ID: <edd258d0-bb70-4cda-88de-7c30b3d3f5a9@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 11:17:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] arm64: dts: qcom: x1*: Fix vreg_l2j_1p2 voltage
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, Marc Zyngier <maz@kernel.org>,
        Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan@kernel.org>
References: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA2MyBTYWx0ZWRfX1d9gCtQjgR3I 6T6B4D3AAYk4w01Qu29XNtHHQW+FVtzmEfS5CZIJluUWDI8Y6BfmIglp/0gFMyvKuqaCsp1Toq3 2vPaSthuBqPV3lnJNRsSJ03k3WaSzE1Bhyenma0bhz3jBcIAH+Y7KgchPMikwXx4npJCLOA2Xdt
 qKADyV0w+s4Dt1Ft3GLkiywPzNFvuhU1csMH9l62J3m9tceVvGYXhOzWfvIYh0iMFg/szUfIpV9 CDGPuJ9fKaguw7zKUDQKIGb0q//c/qrZTyY/h003PITQDPI5uK3x/cnylAgNHE3NwGyb38gDxlu LGLpLMHanW4FJfEL7tENPRE58xosnJYSaTzO1NF7b02zJTuxEqfud5qcloUDcIx1JMoFS6nJECt
 +R7/zoHny7FIQC6N3/rNHJusUrmAQhuqTgj0btAzINNkJiNyuXZpQMhVsZP9FSR7uS/WEE7T
X-Proofpoint-GUID: dI77lHhLHjMOdu1ymnv6TqactB35M0Vt
X-Proofpoint-ORIG-GUID: dI77lHhLHjMOdu1ymnv6TqactB35M0Vt
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=6808b03b cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=pZTFxwxGdYtd8Uxr34QA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_06,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=999 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230063

On 4/23/25 9:30 AM, Stephan Gerhold wrote:
> Several of the Qualcomm X1* device trees upstream specify the wrong voltage
> for the L2J regulator. In the ACPI DSDT table, PPP_RESOURCE_ID_LDO2_J is
> configured with 1256000 uV instead of the 1200000 uV. Change all affected
> device trees to use the same for consistency and correctness.
> 
> In the other device trees upstream, the voltage is already correct:
>  - x1e78100-lenovo-thinkpad-t14s.dtsi
>  - x1e80100-dell-xps13-9345.dts
>  - x1e80100-microsoft-romulus.dtsi
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
> Stephan Gerhold (6):
>       arm64: dts: qcom: x1-crd: Fix vreg_l2j_1p2 voltage
>       arm64: dts: qcom: x1e001de-devkit: Fix vreg_l2j_1p2 voltage
>       arm64: dts: qcom: x1e80100-asus-vivobook-s15: Fix vreg_l2j_1p2 voltage
>       arm64: dts: qcom: x1e80100-hp-omnibook-x14: Fix vreg_l2j_1p2 voltage
>       arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Fix vreg_l2j_1p2 voltage
>       arm64: dts: qcom: x1e80100-qcp: Fix vreg_l2j_1p2 voltage

This goes to some PHYs, so it better match what it's supposed to!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

