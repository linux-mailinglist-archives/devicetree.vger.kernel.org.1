Return-Path: <devicetree+bounces-189530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 60678AE821F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:57:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2C601C22560
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE54025EFB7;
	Wed, 25 Jun 2025 11:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bDMG6c54"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B12225D902
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750852421; cv=none; b=Ja6NXH/AHm6QbnHvYFIhPrktmAv7spKNrlmUzw/m9tiwY2GBuRwIi8jF7EzKkwZXs/KPi9i53bU4ozlT3SMTP/bUX0/uHvXAwa8szdpuuwEBlObn/5ERHu6Bg8Yxy6etcQVgt3orq3hzIoCg/nlyrzB7Aqlf5BNeXHL3xIkLJCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750852421; c=relaxed/simple;
	bh=ezwL7IcLfiC4kFJ13xzLLXbczixdUL2ogFCndH/LCe8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HWd796OT/k4PkFHJk8Pr83juuoacTRpJKsmFh0oxUZxVpRMSxKRIg+E6x3Rnwowfe1mGvinNdPs2D85AeGi+1/gAMNxikQwnhkhXszgu1FfBIzwM5VotDlDdgAAYh/yG8SRehew4ZGpy9mLou7kKqOKX7oVc3py8e04Y76vXWv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bDMG6c54; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P9nIbe032752
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:53:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rpBfYpc7ZN75R9+3JLe6Gu0HFFL2Fa2gNQa9RDt5RuE=; b=bDMG6c54h/+r11KF
	WL64B8Stv0lv57lzMZ9+KASTQZkp8Mw5QIbcEjicTzQ33N0CpuQFy5xI2nOrR3eS
	eW2K4fwWibREch7A1Zz/L3tU5wF9JytOqmQaReKAEeQw3Qyt6dIkjdjqr98c7dyf
	I2r03QflIOeqMYUCgZG3sI6AuBV4tibQn+/dUm7zzm/CN4uNjZ99pTQoryK1Il2r
	jR4r8jvh6imvG9ypQtOJGNkWHpIkuxndFhqw56Ldmv7RhdAPlF1i5TLC5zhFIcaL
	QRdHnYLC8WcccmJdQa1ueJyqVKOw11vPv9hN3AwvvIfGwoj9COHPm4nz4UwzD14x
	JxL7ow==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm1xagg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:53:39 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb53b1e007so13323756d6.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:53:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750852418; x=1751457218;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rpBfYpc7ZN75R9+3JLe6Gu0HFFL2Fa2gNQa9RDt5RuE=;
        b=h/CxVzDTP7FK1cfTr8zEficFhns5GltdnPNfb/JrVj5UqRieS7SmG0RP2ZziP67Yea
         bMoGRIbyLlT1rix398XVpPpubmoJeW7poDojYmyQqKtUIs7+81qlyb+Au+nv8XKb139i
         vUl8ifZsN36VrzwSSPh5PD+WWKv7ASCWoppB+vbarW+XmgbWPonZ2c61tDVvCYlg/I3B
         VUzbJnYiYBbes7nXXHklCTdNjyRXhMnpLQIXVKWLT3cmGetyLFFV5V/uMfDQ69DqRQEE
         qADGcczirODr68xBg+c2UDGxqUdNsK5lbsFMPsyPly+RqjssSGVCbc40bz4HIdSbDUZt
         ivvA==
X-Forwarded-Encrypted: i=1; AJvYcCWId/tdjypohoLuas7GIXi+642JoVq3qazGA9T1DioJrVt4yLCWjINlutCXk33s3gIxQc140CyFkanR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1baL5ev6aIY6iJ5XSmP5LSBQSwl2fgPJNvXFvRpToCHOATHTo
	dfTRp0Dh5JtPs9EWFZ2UFj2svU0KJNUuipXZJPCr+Rk2KBitGmOHQV+YjasQNonl06++IjVtt0e
	7dnbV2uZHw0ldXiVOHEQcnPWEQHuaC+J3F1Vzo6uo6XzKJpDq/dMGfrzlYsT3vwiF
X-Gm-Gg: ASbGncul+StWrthlIGiygbEG1OH+RREwZInsGtitwwjwM/7dZL0NoNIhRPn87BiOUs3
	4pCj/8ZWxMs7Hd98IeKQGVv2lcZ4yTl7xE5+rirHq7y1KCVw9RRTLgbf/moe8jLnktXNsxeN0Wh
	967oCnDDscouXrS15m445WbjyhVRo/IgETY8dnFkyIndUFffK7+zFzGxCquMtlYmEPM3SHIkmCq
	JaaY50jgF7WRgvEpClfaWOKU6tAh+XSAwF6HC4wII+QoSsWG8vY3REKSn0tJska0IWVgZWaOOGH
	EAhlv575DtKncMHHhx/76MfoAVwmD2RTqwODjKKPmiL94KGkPGCUi+gOD79akSdcAUrjcFpMZyG
	AyV0=
X-Received: by 2002:a05:6214:4b11:b0:6fd:7ed:91cc with SMTP id 6a1803df08f44-6fd5efb09c5mr13509906d6.8.1750852417881;
        Wed, 25 Jun 2025 04:53:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtUNbNDweMw/wcVZohRow5GcDNe3gsLWCuGoCCIVx8Lg72/lWkLkSlgE1EDQVopkmENdTUdA==
X-Received: by 2002:a05:6214:4b11:b0:6fd:7ed:91cc with SMTP id 6a1803df08f44-6fd5efb09c5mr13509766d6.8.1750852417479;
        Wed, 25 Jun 2025 04:53:37 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0c4d1b611sm90591666b.43.2025.06.25.04.53.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 04:53:36 -0700 (PDT)
Message-ID: <c5d7f0b4-f167-47e9-b2dd-5e7004ba43c1@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 13:53:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: x1e80100-pmics: Disable pm8010
 by default
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, laurentiu.tudor1@dell.com,
        abel.vesa@linaro.org, bryan.odonoghue@linaro.org,
        jens.glathe@oldschoolsolutions.biz
References: <20250624225056.1056974-1-alex.vinarskis@gmail.com>
 <20250624225056.1056974-2-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624225056.1056974-2-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685be343 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=xaO6kdGjeppNSHvH4OsA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 25s2WZwB0othf0JNxGXRbDx_CMUukAMl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA4OCBTYWx0ZWRfX7beyOU68nBAM
 Nna0O2DDHmmEVQuVKjPD9R29xojRspZbmh8WNXjMchsVC721ju8RZjWypIBr7AMnDOk9mTYEdTT
 Rggvt8NSen0fbsrmZis3sG7qvRgFuQ8AGh89keQBaxlhuPseO8KxCKea11UA7x6NFeixHzhq2LG
 hghhFS3uLK6TWcoFksb6sYnc+NtlUcBPtc81go1ye9qhTnM6TV/4AWgDtNy2fCc3/PR/rD3Sq/b
 7vs45NCaPlRaNwPW7/ZxkmP4HajO54CWHnkTPIyp33JN/AppLh4KzTHj8j6zj1Q6BgvUJUE8m8o
 krjbTEFgt5jefjfV67Ai1YYvUeNh990lbkS5GWpyZzJEe0OMLflixqOfRgATqn/tXsDI0/xbbaW
 r8j/FEo1H3EFWCyci7qsYUH0ZoyDuh0uytwPwUTZ68euhP9U8tSyrV3gH15KPWEQoME1F5VZ
X-Proofpoint-ORIG-GUID: 25s2WZwB0othf0JNxGXRbDx_CMUukAMl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_03,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=715
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250088

On 6/25/25 12:41 AM, Aleksandrs Vinarskis wrote:
> pm8010 is a camera specific PMIC, and may not be present on some
> devices. These may instead use a dedicated vreg for this purpose (Dell
> XPS 9345, Dell Inspiron..) or use USB webcam instead of a MIPI one
> alltogether (Lenovo Thinbook 16, Lenovo Yoga..).
> 
> Disable pm8010 by default, let platforms that actually have one onboard
> enable it instead.
> 
> This fixes dmesg errors of PMIC failing to probe, and on Dell XPS 9345
> fixes the issue of power button not working as power off/suspend (only
> long press cuts the power).
> 
> Fixes: 2559e61e7ef4 ("arm64: dts: qcom: x1e80100-pmics: Add the missing PMICs")
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

