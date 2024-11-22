Return-Path: <devicetree+bounces-123629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 058ED9D582E
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 03:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B91B628160A
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 02:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F57815B149;
	Fri, 22 Nov 2024 02:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l172e2LS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939D815ADAB
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732241738; cv=none; b=qvdFVxEUCft2SNwp4A7e7OlQowBEM66zVBlhULOuX6mGGFWMz6BnnGBnwxClc0nG9pdGvrTFuuX28zc4W7dfmyunODGFEFwIBqHTjGN+etn+dSnuxCDBpgcWy6lUuNcwNsWL1QnMQHdSyoPp6TPYz0Oc0wEPId+z292SqLaXK6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732241738; c=relaxed/simple;
	bh=VxyaAawq635VFwxzjMATQmgnv597ejgjim9U2dP1BzQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HhUhOyh2kIyaT9J+2H2QDhiARk0z0SGrpSHmzgryo7sZWL11h1Zd9kGJF7oWso1yp1D+3YfTL0gT45eI6jjPaZf3gOTWb2ezLI8usiNEnIrp3sc5xfv8RR1bJxkoaXJIwGuwlFU9jUEOkimIJt8dhVwUF2hsyk1OtzQ/fNXfvFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l172e2LS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ALHDggn021069
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:15:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Soz8pIZ6jRj2Y5v7S/U4s/n0e2OeYV7kUBu2uRLlbI0=; b=l172e2LS9szWZQOM
	QajQ9SZ7bgA5U+G3V724DLiyhJ5jTmibJ5oz3KXVtgJt99IT0mRj0rXsgb3xyCU4
	MaHTri/szhqM5bJ4atc/+P3oyljhPcTLP71Mf7uU5VyndU3G5yJlkTwyv1QIDLct
	tH3AjewNVks6Q2kcWCVYyzunDTLKzre2+BA/0Kl5ZVtChNSTtzmDY5CYMNU8q3bg
	faVl4ONiOb/Z5+6qu9TqWmcoI7gXOAhSqyL3fdzsjypXLli8NsrMcIlHyQHqWL+9
	JLH0D7Q+/YM/pZBYch4kEHrR4hLJhe7uDxm+JX7SovFlpr96iM0MBob1dxVsytHS
	3sxRZw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4320wk2rw1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:15:35 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46093edbf1fso4159221cf.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 18:15:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732241734; x=1732846534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Soz8pIZ6jRj2Y5v7S/U4s/n0e2OeYV7kUBu2uRLlbI0=;
        b=i/ow7IyYYiYNCN3nMGxGwZyvcORCxuLDXTQ4yDnLptKT7nfAxFbz9Gx0Q75IKMb4xA
         u/bL+o6UkrtWA2+ABiH66OVV2sfBu6wchNMCzF0LQLmUVkEqU2xqw4nM9eqOXUyDBJCr
         Tl6kQzqKATULX9DBrAzRH5ghOGW2USkeZcL4dw8tOWMt0Vpe7G8XRa4kXTo2LVsu9ZGA
         8QGI9LYVckyvxbV1qblCgcgRkZz2FBSScu3yDQyxSCUexGepkdwf3JESnhO+sO+tKPQh
         M4fWbisJ4QBWvkD0+Y4Nn2Htncy59h/VW6ZJYM11zinFUM0kZu/kyBUegauiDy1jNUiS
         wqIA==
X-Forwarded-Encrypted: i=1; AJvYcCVPG6/GO83jseg6iDAcuU0DRe37hFOmvDlKdlpel/Cn+ndS8SFM791zL4eNrILt+Xyf1iiifSsZWodw@vger.kernel.org
X-Gm-Message-State: AOJu0YzQmtfyXLJelgPbKHwXGqReZMGSHuDXe3C1ar+kkrS8E1Gv/wE6
	6/lo0deUQJCdHcAEousvwmiFRk91a2gEV7lCEvIK1tq+Jwt+NokwIIjZWce5ybpPrPGZv8667qf
	lELpAPm3QqApe17jqQtAwablrAT2oiHz3Kpq53O68aDqXL/RRnsM0vSAh8Rms
X-Gm-Gg: ASbGncs/ZrNaq+sgAjrp3NMsUUBoPoT7z3FeCocRWNiqiiNhI7uPXvSj1lZ1g7n7Ibt
	dA/SiIi1VbCNd80ewq/EH9BXJp8dTUjAW9LexAnDpfO3vmCRbDgx4N5eUYDaYH68bGpbr7yi1W3
	ANnh6NcOaGS8N9G69HqvdigooaXnScyHTFnsrN+aCwMlgHz4NfQjkNp+WGjLvxZ2pGV2lUCqv+L
	uOeA7kKkFDn7N7vzyPIykwDna5/KCqFjTpbA333vHghc2uuFE4qW+EMaPLDMvOmvGrJwev7VM8z
	9fVUmPTiQe/ClgDquJOr1FZ0BcFRDX8=
X-Received: by 2002:a05:622a:54f:b0:460:ab1b:5ab7 with SMTP id d75a77b69052e-4653d6169b7mr9099861cf.12.1732241734389;
        Thu, 21 Nov 2024 18:15:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPk1lo1tsdbgqDNM7SSd71npxOR9gKFtFNgAppNMiNw7ZLX7BIToVocOUHAYiuJYlS0LI2Ag==
X-Received: by 2002:a05:622a:54f:b0:460:ab1b:5ab7 with SMTP id d75a77b69052e-4653d6169b7mr9099661cf.12.1732241733994;
        Thu, 21 Nov 2024 18:15:33 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d3be73fsm378301a12.39.2024.11.21.18.15.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2024 18:15:32 -0800 (PST)
Message-ID: <68366576-7b3e-4812-8e4e-ed0aa2b4cd01@oss.qualcomm.com>
Date: Fri, 22 Nov 2024 03:15:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: usb: qcom,dwc3: Make ss_phy_irq optional for
 X1E80100
To: Rob Herring <robh@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241116-topic-x1e_usb2_bindings-v1-1-dde2d63f428f@oss.qualcomm.com>
 <20241119171315.GA1805024-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241119171315.GA1805024-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LTVOwpaZuo60BXPbbwzAohcHIKAX9ygs
X-Proofpoint-GUID: LTVOwpaZuo60BXPbbwzAohcHIKAX9ygs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=469
 adultscore=0 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220017

On 19.11.2024 6:13 PM, Rob Herring wrote:
> On Sat, Nov 16, 2024 at 12:17:52PM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> X1 has multiple DWC3 hosts, including one that's USB2, which naturally
>> means it doesn't have a SuperSpeed interrupt. Make it optional to fix
>> warnings such as:
>>
>> usb@a2f8800: interrupt-names: ['pwr_event', 'dp_hs_phy_irq', 'dm_hs_phy_irq'] is too short
> 
> That's a good start, but what about all the other warnings for usb 
> interrupts?:
> 
>      13  usb@f92f8800: 'interrupt-names' is a required property
>      11  usb@76f8800: interrupt-names: ['pwr_event', 'qusb2_phy', 'hs_phy_irq'] is too short
>      11  usb@6af8800: interrupts: [[0, 347, 4], [0, 243, 4]] is too short
>      11  usb@6af8800: interrupt-names:1: 'qusb2_phy' was expected
>      11  usb@6af8800: interrupt-names:0: 'pwr_event' was expected
>      11  usb@6af8800: interrupt-names: ['hs_phy_irq', 'ss_phy_irq'] is too short
>       9  usb@a2f8800: interrupt-names: ['pwr_event', 'dp_hs_phy_irq', 'dm_hs_phy_irq'] is too short
>       7  usb@c2f8800: interrupt-names: ['pwr_event', 'qusb2_phy', 'hs_phy_irq'] is too short
>       5  usb@8af8800: interrupts-extended: [[1, 0, 134, 4]] is too short
>       5  usb@8af8800: interrupt-names: ['pwr_event'] is too short
>       4  usb@8af8800: interrupts: [[0, 62, 4]] is too short
>       4  usb@8af8800: interrupt-names: ['hs_phy_irq'] is too short

I'll address most of those shortly. Need to dig up a couple old devices
to make sure my findings reflect reality ;)

Konrad

