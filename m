Return-Path: <devicetree+bounces-224467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 601D3BC4263
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:25:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 156B03B2DE9
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C71B29B77C;
	Wed,  8 Oct 2025 09:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jpRRGqoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8903A1D2
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759915505; cv=none; b=s8Edmot+zRfXOXjde1f+V2qeTdY4nFhx6HPSBkHw9rHibgpbELEXVn3iGj2TV6k4PqeTimf3V2y+SPPEgoYDW91QbHRtFec5yw/Jn1l7kVD0oOrlDQJ9C6HCBDcTfHPpOICcfNlb5+EO2RU7FY0dMsYe5tlzarNj37pn+h96OZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759915505; c=relaxed/simple;
	bh=O6qH37oakVwtaoNReKarYY9VZ2pTe8/oJBJaPMHF0Y0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R0YhGMreG+c8Zk2xjQjnE+sGPrjuoEnTxKeOpfhSGVkSR9qQy+ufaCZ5QYJh5q5saK5e9h9POuBL9td/lLT6oIMiPevNbXpDxz3rZeUWtASR2qA21gDc+PUrgzI7usOLdJvKeAgjUUZWloOfxbzJT22msEMdfyPImQ7FSouIiv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jpRRGqoT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890NGw014182
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 09:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L95f1zinJTN+46hqsd1dIKLTDhMuPjf5VhEFjeoH9Bg=; b=jpRRGqoT+H5Qg8hL
	VuAWX6QnpzDcT893J3lXgIrEKENzGBhotyOouVCNa+2GJXL48gLRDJE1oQ06WQuq
	7Ht/XRo5owi7cUcxKA5eV3vrc6SHRO5i2QHNyPRTvGwHMQdXnRB4xex97oSE9JFD
	7aKb1YB4LiftcCLZRSP0oebgOiZP6klRFRMHNjM/5r+GFPQLgqLzNK0wJIx34x3Y
	DmqGnTxTLY3j4zEGVpLDrFdKfDP3yMDjupGMWEO8rz50BEqPfmjDxcS84UIYZBCG
	KPm+lTGDrxhhpoGNPH68PBsMpradQjquN1s3mllqSP9RIgk8DWg1gldvljnOIVb7
	JZsaeg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0np2q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:25:02 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-84fb3e80002so17208176d6.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759915502; x=1760520302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L95f1zinJTN+46hqsd1dIKLTDhMuPjf5VhEFjeoH9Bg=;
        b=MdGMT0bhcujpKFeT/9gWd28RB54PNB44jdSpJMjgtx1aUfW9mBLY9RlClkcULzlJVy
         Q4iMyxamPaHvqsiNxtRTXX+J6PCxZ6reTKXYCqMjFCaOYoEBbiNTL16OISkZH60BXA1H
         QxdLalV+ZSrShnH2/M+0NtevBXUvy6PgH2EbJwRSXWe1s6Y1B/2QZRefWZi9joER/NIw
         jNvBVY+zn21V6eTZZUrtaaGBLI1jbyNOA3LF06/Zp/Y1rPanud2tc38SB9wgpR+8nlUA
         yQaPUjz2SDM7u8l63CD46+XZWEO7RSn3/BxBbNeTteh08nKXZqO8ODglO5UIwCYWi9qy
         UT9g==
X-Forwarded-Encrypted: i=1; AJvYcCXtK34mwTakaBM2uNsooV14W4/wRloxVLNwc5KtkknICQWcOd5ltPSczNivomfeozbX0a2T6erbK0WQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxYB8ekmCW3qinUwZu+BQB17X0l0aHP5ql23sVhvrSOGzudrjEI
	RS2TJDS1Mda1xkEZKT7lg71+JY9s+Ok9NGXuSujvSu3QR6RzOwpOp5/qG1wQwiP1f6dc4vSvc0Q
	8rq7KVWj3R0YulHXRaRIi5e9/FnIBwwJ0kpO4hD/b6mNOC1hsSzcBrd8FPqUXAweb
X-Gm-Gg: ASbGncuXeUSBudrTRExzrsjtgqTeaGcF5i8lanVXDKF20tDqNb6zWaUIvnHLQN71mUc
	Au7xpfRdJFiy6Qvt+zTe4ayC6CfOA18EcHHK+4e8f6xYqHWjR3jjwfXv9Mb7ugfLfr8ABK7w94J
	RMSsj16lqlnXN2A09oHSci5E+1HrW8fRnoKZzmfJqpvK2hDeat3uiQbooyNm399z1LOYci+9F4h
	ljnOTVEAI+Jk64pZ08BSI4k/52L3X0mgrBRvebjvGAbL5hjEWlO3DklKVHp+FNk/W9TAT06vebc
	BQpngP566sTk+7g4fn/3+cbFdMabS1kTDsY/5ce/lEM3PRCZc0IZYbnySmdd3GfrG8+lMmyCfL4
	SzhnGj7zMAjsKegBh+wlZvg3F178=
X-Received: by 2002:ac8:5991:0:b0:4dd:1a2f:4881 with SMTP id d75a77b69052e-4e6eacb81b2mr24861971cf.6.1759915501945;
        Wed, 08 Oct 2025 02:25:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcl92uBxojrfpj2u3iG0FrNl5442DC039WyNm1j68+Zrj+5/i7kVxlNXd9GuFYpT6YjzjlSw==
X-Received: by 2002:ac8:5991:0:b0:4dd:1a2f:4881 with SMTP id d75a77b69052e-4e6eacb81b2mr24861671cf.6.1759915501248;
        Wed, 08 Oct 2025 02:25:01 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3b8df3sm14262621a12.13.2025.10.08.02.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:25:00 -0700 (PDT)
Message-ID: <6e5f63d1-8e07-45dd-8e98-6d843246ac59@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 11:24:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: Add support for Huawei MateBook
 E 2019
To: Jingzhou Zhu <newwheatzjz@zohomail.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251008015404.4906-1-newwheatzjz@zohomail.com>
 <20251008015404.4906-3-newwheatzjz@zohomail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008015404.4906-3-newwheatzjz@zohomail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: H8_4jIdwp07bd6m65-KI9ehFzkRNTBuw
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e62dee cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=-X776dc9t37Bx4c3_TkA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: H8_4jIdwp07bd6m65-KI9ehFzkRNTBuw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfX70UVl9iBWvid
 KAaBd6KRkJH0YSDvIb2F+mx60UVNGFNRnPR+aQ1b0wfF2oh5hfQGnNKS7tZE2gP0Yc5dk86O8vh
 E9KJOqB/yHG6wo2UkTY10ZZ4Uv/uXATmwwA5LVMD5ICySG5MmDWX4lmjP88yr/Uf1y6nxdZrLOz
 7/sRKm+zPMb0dm7BjKQxwwoZOb0gBx108OTaZGvKD0lrB0hdJwXTrF5oVe9qMlIHFJKOJvF6Zoc
 ag4YP/tz1AM1m9Xu142xah3PMf1I6X5xOI8pObIaDjTqZ9AYNFPeSgiPIOT0pvfhJ8G7xtQvd99
 45yIvAle4WYehZYh+U9sMmJJg/AbautqBAUIb4p/XeFtQz/ZbOowC3stjY7MD9JB7cuxonl0m+Y
 b0gexPlNuSTGmpKepBWCBWtEaOwTQw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

On 10/8/25 3:54 AM, Jingzhou Zhu wrote:
> Add device tree for Huawei MateBook E 2019, which is a 2-in-1 tablet based
> on Qualcomm's sdm850 platform.
> 
> Supported features:
>  - ADSP, CDSP and SLPI
>  - Volume Key
>  - Power Key
>  - Tablet Mode Switching
>  - Display
>  - Touchscreen
>  - Stylus
>  - WiFi [1]
>  - Bluetooth [2]
>  - GPU
>  - USB
>  - Keyboard
>  - Touchpad
>  - UFS
>  - SD Card
>  - Audio (right internal mic and headphone mic not working)
>  - Mobile Network

Just some cosmetic notes

[...]

> +&pm8998_gpios {
> +	sw_edp_1p2_en: sw-edp-1p2-en-state {
> +		pins = "gpio9";
> +		function = "normal";
> +
> +		bias-disable;

odd \n-s inbetween

[...]

> +	mm1-dai-link {
> +		link-name = "MultiMedia1";
> +		cpu {

a \n between the last property and the subsequent subnode is customary

[...]

> +	slim-dai-link {
> +		link-name = "SLIM Playback";
> +		cpu {
> +			sound-dai = <&q6afedai SLIMBUS_0_RX>;
> +		};
> +
> +		platform {
> +			sound-dai = <&q6routing>;
> +		};
> +
> +		codec {
> +			sound-dai = <&left_spkr>, <&right_spkr>, <&swm 0>, <&wcd9340 AIF1_PB>;
> +		};

'co'dec < 'cp'u < 'p'latform

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <0 4>, <81 4>;

Would you happen to know what these correspond to? See e.g. x1-crd.dtsi

> +
> +	cam_indicator_en: cam-indicator-en-state {
> +		pins = "gpio12";
> +		function = "gpio";
> +
> +		drive-strength = <2>;

strange separatory \n-s here too


lgtm otherwise

Konrad

