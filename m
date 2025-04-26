Return-Path: <devicetree+bounces-171212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F216A9DD3B
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 23:25:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D056172096
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 21:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29BB41FDA8E;
	Sat, 26 Apr 2025 21:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fgjrAf1v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B081FBE8A
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 21:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745702692; cv=none; b=ihtYLYhgrtKLNsTRif0RUSyvYJv/QPjiS87+oFRWc9DfsZNoAhQtPhnyMOehlBhruYdwEbZWo5tntqwMMU8q01hErIlbozjkIqPAjJb9WLiK3qg0+B8w1/qrT0U1MSi4mOqkc/1YhLDf+HS9ZMq3h8wuoJpOsuGEL7cPj7bb0V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745702692; c=relaxed/simple;
	bh=+e2jnoEU0KW0QXVKjWeyp4SP2tcdhAZ7keq7BZMyPA4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AEFsEsLioMpAaZftkbXWtDAIaihY5xREMCK0MwvLZqWdLnroAun9O4wSWA6zTN2PrrZqksfo4LUD+g1u5cqEIoS5WXIJFiVWOZN3ZzgTT6EFim2S0m9UYtGgvMmbGkcJFQIJrTpUk0qmKfmeczUmXRl/5IpVzkjlyilibDHRB3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fgjrAf1v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53QGN5GL013049
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 21:24:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WR+R0rhCOjYqlZUhhYUXJ0Rz5/y0uM5IX/cfP7qDHJ4=; b=fgjrAf1vO8jRmSJz
	tWe1iBFd3RV+TWEznsjja5vdAx2BbLr45XiDh37J0Ccq9eJJNjoqgwidMInDyk5n
	iWF6d5NgwymuNCuu3oMjEDDV6DV4Up5pMfI4qFU2lFsXTM6NPOgL8c+E8RgQ33O9
	I1FRyApyHBfU1U368E/0NMZXHNFW70cqho7CUe9MrpWT/7RSvoQm9y0Y21qRGEfq
	GKxqOKuMXwloz43augz0oGF5lUKjOtRvdqsEMPxiIrT2UZUpvNhnzF8hvNAY7Qej
	Kx06axuzKbf3o135CE4mf6cMtzHdiDHaOz+zkWjCnY9WrlCxYXjx+blG5IkEQvYG
	S6Iuow==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qq5a4ag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 21:24:49 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f3c21043so8773546d6.1
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 14:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745702688; x=1746307488;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WR+R0rhCOjYqlZUhhYUXJ0Rz5/y0uM5IX/cfP7qDHJ4=;
        b=Bpa1wIfoSUQX8R4YwxDZbLywdXoCb1CTP/99kYZQDSrhBuB0Mjnm2FdrVaGlaNTF39
         yaHWfcUBVSTSU1pBQ8oTDfreTjUZ/YqDXp+ss8v6fug/BW1z3BC5nubGmeHwbMCh9EcL
         kUQ5Ch1laajZcmbAwJ8OjApWeLxxfdeGPLhEpPOU/pe8y0FCeVN7LLEo8cGudwD3SmGn
         4o2tQfuy/s9am8Kpj0dSzbGxsFppM4r1DkjBug3IWrckb2fvxa1qiTqcR4oXjcu51jS/
         98Fcvp7en0Dw27FFioGRp3wUrtZPecZmcI9xlMxKvPhIQHVYN+jWywVkBL5YiYNkra24
         ie9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVeyblU8q2WZNOii9AzBKQ2OsGbnzxxCew0TH+tTN6D5Qt2M366VC8UD4FEsRmIAgn6xxkLhu25kRuk@vger.kernel.org
X-Gm-Message-State: AOJu0YxfsWbPofOYpEK3hYYiO433gjPqniovd0PnpqH8lT4fLY6M0OUa
	ZGOicLWB4MlykQhBNcJ8TQgNMwM/VIq9UUVVcgGatbslmxw6IrpaMs3goT97DFpRzl2h5WU1BIO
	a8nMiQe9jEmv9C+kd5eYf8CNF+vFFQGW9B8Jy671qw65JBC1+/b2j8oIC2Ey0
X-Gm-Gg: ASbGncsEN791Of6SHdqmsmJGQ28R4poy+OZEuDG/0NDU1TsQiIBIXwV6wFETf2YXmJs
	R6g8LgP/1/kpJI1dZ2F+kvvtXGOUMHVZ9J0sI0d3c3pX3fFb576h/XF7eNc+GqxxguaVUB722Ep
	hqcjZzd2hpMIZFSBWVcHNqG+4zWNtVA6tQbHHqYXbBnL+dy2xe81jP4DKl5sh5AsUsho24DVJKp
	z5edWuHTgobNUfCuL7Dm5v75xv9BCJJwjBFLKdN3rGh9mF0Z6OJEtm7qJPd3vcn99PEBgVyYETU
	S2euvmT7I8t8O7FOXhgc38wUvpoNMFbrWIkKt/d16AkTHSndhdFw39pnzQbPMRr6mA0=
X-Received: by 2002:a05:620a:4723:b0:7c5:687f:d79d with SMTP id af79cd13be357-7c96071e76cmr432500085a.8.1745702687799;
        Sat, 26 Apr 2025 14:24:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE91mB/OTCAHM6ZPMMnYcSN+AYgw89fz7uJMpE+BIsfhFRJH7wciNvcBCPhWb0E3BpFD0EuKA==
X-Received: by 2002:a05:620a:4723:b0:7c5:687f:d79d with SMTP id af79cd13be357-7c96071e76cmr432499085a.8.1745702687493;
        Sat, 26 Apr 2025 14:24:47 -0700 (PDT)
Received: from [192.168.65.152] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e587f1csm343657866b.79.2025.04.26.14.24.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 14:24:47 -0700 (PDT)
Message-ID: <dafd9a80-9aec-404a-88bb-dfc91c8ac224@oss.qualcomm.com>
Date: Sat, 26 Apr 2025 23:24:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add support for X1-based Asus
 Zenbook A14
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        maud_spierings@hotmail.com, dmitry.baryshkov@oss.qualcomm.com
References: <20250426130203.37659-1-alex.vinarskis@gmail.com>
 <20250426130203.37659-5-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250426130203.37659-5-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _F8ccT6DYz3sRGjfKKKLc3-8jlV_xoEW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDE0NyBTYWx0ZWRfXxhZkLY7GM5/0 mpclwL6QaXlrBMtz1Ss9B+wH2XxZXkh4I0HYIdXa+GWW6n2ta4zGC67mvqDwfhH7QKxGtgC4i+H g+EFkqOrUYYYdrjUpmGPDX7DIsq382cPq3FnViTKK3RKDgEVEvvvDrubwmKNY6SXjvXeBMxoJw2
 D9z2JPhk6qgRy+b4YzJs90FE1lU7AEoT4uW6RW2VrWY7nRU4J2ykMymteze78Guk8CwK6dfExIo wo/fRpJlKuJzkYAt8s2wOQNB+v0I3SVLyq/ottgCJg5OyvH8mn2OhekyuLd452QURvmAenU2BOI 5Ji/oeNOuUc6U0aFiiLEawvvf58zedwiQkICeZEcenCQnn6Wj1f9ab9mI2u+2kWcFy3Vb2MJtGm
 B7fE8ce3LhhUnHrFt4nHuKKBtC5KslUEtcGvmf5ryNO/eGKbZu17W5g0eL6G8KSHk6tWImNI
X-Authority-Analysis: v=2.4 cv=QP1oRhLL c=1 sm=1 tr=0 ts=680d4f21 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=04dXdBH-sfCwm-JsXqsA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: _F8ccT6DYz3sRGjfKKKLc3-8jlV_xoEW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260147

On 4/26/25 2:58 PM, Aleksandrs Vinarskis wrote:
> Initial support for Asus Zenbook A14. Particular moddel exists
> in X1-26-100, X1P-42-100 (UX3407QA) and X1E-78-100 (UX3407RA).
> 
> Mostly similar to other X1-based laptops. Notable differences are:
> * Wifi/Bluetooth combo being Qualcomm FastConnect 6900 on UX3407QA
>   and Qualcomm FastConnect 7800 on UX3407RA
> * USB Type-C retimers are Parade PS8833, appear to behave identical
>   to Parade PS8830
> * gpio90 is TZ protected
> 
> Working:
> * Keyboard
> * Touchpad
> * NVME
> * Lid switch
> * Camera LED
> * eDP (FHD OLED, SDC420D) with brightness control
> * Bluetooth, WiFi (WCN6855)
> * USB Type-A port
> * USB Type-C ports in USB2/USB3/DP (both orientations)
> * aDSP/cDPS firmware loading, battery info
> * Sleep/suspend, nothing visibly broken on resume
> 
> Out of scope of this series:
> * Audio (Speakers/microphones/headphone jack)
> * Camera (OmniVision OV02C10)
> * HDMI (Parade PS185HDM)
> * EC
> 
> Add dtsi and create two configurations for UX3407QA, UX3407RA.
> Tested on UX3407QA with X1-26-100.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

