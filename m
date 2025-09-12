Return-Path: <devicetree+bounces-216343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 042A3B5469F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:15:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C4641CC0CCF
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0B5276038;
	Fri, 12 Sep 2025 09:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UXZTo3fE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8360E25FA0A
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757668513; cv=none; b=vB5y4ymeLgAY+IXnJpzQEVMhdGU12SbOBMFoQ0DiFgjKiHyso3sR/P7ZFjdOFE5P99zwCkb7j8KBKIpmixe7lMpiVqPIZcvw6XWx35fj79/OD1Lo0DU06TarspxmnjxWx1ONJSESm/xaCc9CmnyQ7welXRlfGUw2Y0ZMLQcM+5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757668513; c=relaxed/simple;
	bh=8hH52IQLTSY/6ETqGyVs/NjAsxJHI1nF028y2f3sR7w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dt55yRhNgmVi8KaV6ISMHb4RPPCbCwFEkDfA30lJlsjBXDEjGNtMiY2yRBSth0baY/kFmgU+YuUR1cFYoNMFKIAlYPYVYGVzwRUmyhyQl4rSbSMbN0bhvCUQ19hvhG8B0eAQ8N3BCdZeVpomwSQWfrXostDTll3zVekhRz2v+ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UXZTo3fE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C8uIku002279
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:15:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AZ+JWI9X0wZqgTIagWn90TQC4d6G/t4jpa0lbBf0/MI=; b=UXZTo3fEtGFWKdVP
	uzjrOa6CXlmqVLH9za2XzdBTlfkgdfzbg6SBRUJ9w67brX8aTaRnYpvY/vyZXrRF
	Ct0ANNZpEDZ0ELVE15S33vrHmh6+FhBL/gFUbUSM+OYRp6szMfMv/UvMun8AX0om
	/aWxPk46lOcIrDiaNVZP5cW0jumz/lRIcCizLXYwey766/7BhUheOqLZvun+laAi
	ehM8ZC0CMcuUnARK4uMT5iE0aX3Gz/e+/P+u5Wq8jbYrIMxKbGWcHwl8VM5Kt4ru
	C+0CCgdPxfFs4q9iUDoMZCocrkjR+Qrt58F92QEkPXWGRS3w2YHHTQE+CvVcwT5Q
	mWFi1g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493ydv34nh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:15:10 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-74910ab069bso2863746d6.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:15:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757668509; x=1758273309;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AZ+JWI9X0wZqgTIagWn90TQC4d6G/t4jpa0lbBf0/MI=;
        b=J2hqanLeA4N40SB0+I8sdEw1UwfNbfU8QbRwIg3Lxs5bW82v0GjtVCUm3PytxSneVn
         vhYh9UQlCRbpppnXv+G6tyNMOmOq+I0dEYT6GOHyd2aBwqhU16xNJL8YmbhLC7lKQReo
         xFNo1gc1bE7vJ03MiZD4+rO8IYCYF8uwz1o92qPmMVkYvvIqZ30ZrQkCKGI/zGeXMlIC
         vyhxo7TWG2sS0/R7ZFTNK53p9otiiS2M5ciQt4TgJsj1b7LgrdACeJq/q+xa5s2xnw/m
         EqT2xW06JRetCri932JEd1aG1m4p5ylC/I+/L1J7aFM9Twuhfmli6szWCsEo4I9xrxMB
         rsvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxfkOmJLF8k/rZoHnC+bndE95DMFWFol4vEWK2AVekzTWk550U8WUx7VVDG08MdD6qwHJFsedhdI9/@vger.kernel.org
X-Gm-Message-State: AOJu0YyOXC6kunVHIZc4zpsSvGlChxa80qYLIvguim+kgCgHV8T/VDWM
	wmGsH7nQfs4b6CiCGrGle3tXjP02wl9Nq84BdPNujSpcI9vFEpDQ9xfAEA0uGDzdATCsGGjFIHn
	kURWus9pXm07Kv0XpZnR+RVDnlGJZHn7SadJHjCTj7CfAG8PdgDuD8nJ2WpodyoNAZAvdn36T
X-Gm-Gg: ASbGncsEyXs1+Bj5FRZ/V9HQIiHf0uIUywOUKWihrMbNqOkuQf8FP0WrvKHX0F+z/a0
	vDAhPkWj75IKbgkFOhDPWlGVOjDkZ9JpNwDQdsWIvnDcKIiTZQqOJdLolasiM3pmcEJ91qP7WNf
	GhXVTqg658dQ/suy2NPR3X/YRm5tKr5LAsZ7xRQnX+wDfZPyy1epFDy9metHit0qt6RG0ikzbHj
	F/1w7MH/LghZ0xiSfH0ntUcOh8TxjDi2/0EF93sqI4huqrEYwiQVrSZseBavK1v20bXOV6VAQoS
	0cWfnfUIkWmfB80QAhNtUyhmHHtzpuJVeIN1rV7z/8OBpUWUSUnJ1Yldg5YHwAnTP/3kpevCo5H
	Xcj7lYdjscfE/cWtxfRT1wA==
X-Received: by 2002:a05:6214:518a:b0:766:39f9:5e53 with SMTP id 6a1803df08f44-767c46cc9b6mr18965716d6.4.1757668509179;
        Fri, 12 Sep 2025 02:15:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHFLPs2knwRXVuLfaPYO2gi5ObjGWost5qrQbcgcq7H4G0UTAPCG0bAPwIvwmVi4F6AEwgxg==
X-Received: by 2002:a05:6214:518a:b0:766:39f9:5e53 with SMTP id 6a1803df08f44-767c46cc9b6mr18965396d6.4.1757668508674;
        Fri, 12 Sep 2025 02:15:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62edbc829b3sm1359359a12.28.2025.09.12.02.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 02:15:08 -0700 (PDT)
Message-ID: <cc8ba407-1d44-419d-9171-b6911f673772@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 11:15:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/2] arm64: dts: qcom: qcs6490: Introduce Radxa Dragon
 Q6A
To: Xilin Wu <sophon@radxa.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250912-radxa-dragon-q6a-v1-0-8ccdbf9cd19b@radxa.com>
 <56b5bacc-7214-41aa-b969-4f622afcd9f9@oss.qualcomm.com>
 <103424579111FE76+93c3daf1-4bce-440b-9048-74edb833031e@radxa.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <103424579111FE76+93c3daf1-4bce-440b-9048-74edb833031e@radxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDEyMCBTYWx0ZWRfXyrE7GbYGe59I
 gtzIUYCwhylRM66spzSF3ZfIlBDX4EQEAgaiQDG3hNkYedlt798pULxfLYZcyIRUccf8KGUjePz
 Og9wSneZ2SgwnIU70RN1axYCNd9tCpV2g1RwlJCArI28ZTswgSgVMmLgdS60c6IE+WG9LMQb1wv
 6joinIkGqxVYdsll9WeMnxUdX4EGG8tPcZIca8z3DwR1x28iT9DG4fgeFWDoi6guUDERfnT/yPN
 pWADc48pIpqjCKrCiIdV/LdSKZGW8oY4FxAMAY/FP+XedY65ni0O3v9Y3rbZsrL+ispp1t3ShY4
 oR2XXC+UY5CaWpGRgF/NXxluNIMx393KstoDRUKx+4ozzTK1Kzgj76VjXrcqdIib88X/E3Zr0/T
 imItLNij
X-Proofpoint-GUID: tjY7zFTiN_MJR2Mmc95zl9SpCFBpzkFo
X-Proofpoint-ORIG-GUID: tjY7zFTiN_MJR2Mmc95zl9SpCFBpzkFo
X-Authority-Analysis: v=2.4 cv=LoaSymdc c=1 sm=1 tr=0 ts=68c3e49e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=ksxQWNrZAAAA:8 a=oiU97pQBqXRJkV0Aqw4A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110120

On 9/12/25 11:04 AM, Xilin Wu wrote:
> On 2025/9/12 16:56:04, Konrad Dybcio wrote:
>> On 9/12/25 10:03 AM, Xilin Wu wrote:
>>> Radxa Dragon Q6A (https://docs.radxa.com/en/dragon/q6a) is a single board
>>> computer, based on the Qualcomm QCS6490 platform.
>>>
>>> The board ships with a modified version of the Qualcomm Linux boot
>>> firmware, which is stored on the onboard SPI NOR flash. This allows
>>> booting standard EFI-based bootloaders from SD/eMMC/USB/UFS/NVMe. It
>>> supports replaceable UFS 3.1/eMMC modules for easy user upgrades.
>>>
>>> The board schematic is available at [1].
>>>
>>> Features enabled and working:
>>>
>>> - USB-A 3.0 port (depends on [2])
>>> - Three USB-A 2.0 ports
>>> - RTL8111K Ethernet connected to PCIe0
>>> - UFS 3.1 module (depends on [3])
>>> - eMMC module
>>> - SD card
>>> - M.2 M-Key 2230 PCIe 3.0 x2
>>> - HDMI 2.0 port including audio (depends on [2])
>>> - Configurable I2C/SPI/UART from 40-Pin GPIO (depends on [4])
>>> - Headphone jack
>>> - Onboard thermal sensors
>>> - QSPI controller for updating boot firmware
>>> - ADSP remoteproc (Type-C and charging features disabled in firmware)
>>> - CDSP remoteproc (for AI applications using QNN)
>>> - Venus video encode and decode accelerator
>>
>> You have a number of features that depend on several other series, and
>> as Krzysztof pointed out this is difficult to merge/review.. Could you
>> please create a "linux-next/master-ready" version of this series and
>> separate the changes for which the dependencies are unmet, putting them
>> at the end? This way we can take at least some of your diff.
>>
>> If you still want review on them, you can also send them as [PATCH DNM]
>> or so
>>
>> Konrad
>>
> 
> Thanks for the suggestion. I think I can separate the changes that have unmet dependencies, and mark them as DNM. Can I send the new series now, or am I supposed to wait for a few days?

Since we can't do much with this one, please apply Krzysztof's review
comments and tags and feel free to resend

Konrad

