Return-Path: <devicetree+bounces-203745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5371AB225EF
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 13:34:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BCE63A6F47
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E732ED151;
	Tue, 12 Aug 2025 11:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g/0OW9j8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42012EA48A
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 11:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754998491; cv=none; b=VF9LmKiGPhTbCMBJklexpIpY8fCjT5mKA+DOLh5TqNOys/+yGtvnnlE8ZeTW5OinI4iwzLDJgVJJ7MV+Hxba/gqu6x6CdzBoXDMl348A/tBlN8iIUqLMyJDB+u0Pj2/OdVg+FfkZrPi8jrxDWHpQebJXUpev/mGTcN913nWzkaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754998491; c=relaxed/simple;
	bh=l6AqCHJZBSuWqDTHRUXKjCevAPLUlPN/JFFEsQsXJQ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DwTaZa4Etv5hD1wPPWGJecK8G1sHFjIUXGl79lq3RTjPE4k5iSvcMFemYFdJKDOYWmWwbbkp05OXEzVc++IPi9rX3ROFwPz0NV4iSh513iXG8xEC5MAUhWSNbiCpGSSITQNNWyhOjns/4iR7UWLxokiV/1XMQ/TEKAXNbAhW4c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g/0OW9j8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CAwcTB025379
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 11:34:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z7EwvYjw7Dpgat/rbwEy3MVniY54/bim139PINd6hgo=; b=g/0OW9j8WJ5IumSw
	7QkgsIlkhtHhcPfhmUEOXMrL4kWrwMkjX0nd/FK0HrklOEmqbQJOdjkBncl6YEff
	I2GSZw4nxlCNC7iBtng2mG6iHFhvfTYaScWbU36zyC37L8GB2iXGPz197/YQSoDh
	ABWsHkWpJ4F1kF3DEkz23p/piV9T+4b29XzeSWbxO3VPfJQjZP1Ru8mYVivDspys
	q9tlW1cQJyMzd/T0CJsnsJF4Jv87CDQrmLdM8hFM2E4pHdtde0CsWvEvV5SNNSBt
	vzlGwjzdB25H8Ous0+KsQqMWa1zfQZkqIWv0IMEr+WxhLG469C9aZzkzSfpqdPQ9
	CliSow==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dw9sr4rb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 11:34:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7073674bc2aso19562406d6.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 04:34:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754998487; x=1755603287;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z7EwvYjw7Dpgat/rbwEy3MVniY54/bim139PINd6hgo=;
        b=hmEzyN0T0dvY1eHbhvItfFf2BC4R7yDLGtDp6oBs/WL9EJCaqqQng9rIMkzKJr0gwB
         0JCZqvVFJ27SxrBqVH++j8uxx+BTqPUptJ2x7ZT384wxzjD/0sHLQ8Y+KSoQAGR3Zrfx
         ZPybvBdIO9oOEb/6UnbNSQcYczjBfX/Zk1RFsxFew2YvucsLXMnq2kJAf3uBEnuFhm5A
         FwyAlG0u/1o0HeR9uoMtI4xPbZ4r/zXdDH/AEUVMsKmbzKV+Kn53YbtfBQbzfee/t7+v
         F2BC9ofcE9j4AY80R8BWToSZlYAg63KDwOiS3oCnOM1N0/umzwFBxV5sy87oRXU+HxBB
         WO+w==
X-Forwarded-Encrypted: i=1; AJvYcCVqNX/6rSxYtY/j7GBYajhD/G4q7cp+8icl7QENY4lAc+hhrfowjZFZzC+9d1hvSWEA2cPUH1rproI1@vger.kernel.org
X-Gm-Message-State: AOJu0YwwCARboiAPMEaUe1wq5+PhQjKZOTgn8PUupdtt3UUG8QZZIT4d
	oVpeoYiUoX8Fc9uuYx0xA/x7tkBBHn8ylUI9UQOf9Q48jNiJumqTBavTV3vglpm8XsC19Hrmqp+
	evkoP3/gZIWJLypfgAoHH5dbFiwPVg7yf/Bw95Kw2k6e9bcTVO9vew5RYPhzyxgyP
X-Gm-Gg: ASbGncuQhzLIyOkkJ0cdlYmNmW5k4prtuJqMpb4aKYKj4ej0tF9LtThnIcSbAgvGJ7p
	QlTATkzMsYlSuNwiydpWOPo+3FfwpXvrWn3HjWd77wv4mHp8o6HJ+YZK7uk4nApQTC0UM5Tv2zj
	wsHEIKGtu5taoe3L4cTmuX0uWONRt9ggDKoErOJaM/KJQjQoXpcV6DQc66sikyrolut1kNcrShg
	xfE3iEu7zIcVDLM/a9iAqpyevc36X8sB1WgorH0/mGE/PoTYlZk5Q+TYmP3eVVxqbvWloGtba6l
	UO1i4pckKYLLJVWb2++tyR6kGTHu4z/VYY6lCDVnzQppNrtcgjKsenIYOHme8iMaF4L0F6zEHQ6
	IrP3kdWjNOvoje4dIoA==
X-Received: by 2002:a05:6214:20c3:b0:707:78ee:a179 with SMTP id 6a1803df08f44-709e269c1afmr4198906d6.7.1754998487473;
        Tue, 12 Aug 2025 04:34:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzDvAWuO2IQGQEI/z13SjmiVl51pWaN2v/9l3OeXHvu274wGmTIjjFgvx0MxKANWmQJcS/Zw==
X-Received: by 2002:a05:6214:20c3:b0:707:78ee:a179 with SMTP id 6a1803df08f44-709e269c1afmr4198696d6.7.1754998487036;
        Tue, 12 Aug 2025 04:34:47 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8ffa3adsm19991188a12.50.2025.08.12.04.34.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 04:34:46 -0700 (PDT)
Message-ID: <8d5eb27e-e299-4fd9-a591-2d90f4693838@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 13:34:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Describe the first PCIe
 controller and PHY
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250811-sc7280-pcie0-v1-1-6093e5b208f9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250811-sc7280-pcie0-v1-1-6093e5b208f9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=J+Wq7BnS c=1 sm=1 tr=0 ts=689b26d9 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KrzbkVIKgyrcCw90480A:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: iST4OfXsxHanGg3oqi8Wht53Rxd8bnqJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxNSBTYWx0ZWRfXwGzo02pyHdoV
 SSb3lRng8FNSeYudTIX2FiYDjZtzWuMEXK9tVdmFh5Cv7c2yW22jMQJtwJUROtWAggMFoS9CJA3
 A110u4jAvJyvUxFZl5ANCrnh74ihgdwovqJctTkEp3YJYV4YLOB+plOozzOF+AqeSJZo4taiNKq
 ksV9veXvujgx8jx/FItEq4GC268fsELBeKM/quStX9p4rL2Ojt7gDNTJRQHu3xHkSUkVzHbMsgY
 r7ap2cCuOs2nAprXFEuTUckOcUzJFvvQBLFdRxp35oH06pu1hvEB+M8XwnvfH76UeZXRW16h9ok
 FJPy/02kMTAdMPJTyhyopujbv5YPtG/1QzYGKNcUETKWxmf0t6QSrHxFXo2TD1st1oDGsPAUob/
 oX1Y7jpc
X-Proofpoint-GUID: iST4OfXsxHanGg3oqi8Wht53Rxd8bnqJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_06,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090015

On 8/12/25 5:16 AM, Bjorn Andersson wrote:
> Only one PCIe controller has been described so far, but the SC7280 has
> two controllers/phys. Describe the second one as well.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---

[...]

> +		pcie0_phy: phy@1c06000 {
> +			compatible = "qcom,sm8250-qmp-gen3x1-pcie-phy";

:(

BTW I noticed that Krishna also tackled the same issue just yesterday
on the internal mailing list.. would you prefer him to take it, or do
you want me to review this patch instead?

Konrad

