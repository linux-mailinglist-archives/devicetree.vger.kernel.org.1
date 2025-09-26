Return-Path: <devicetree+bounces-221902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A651BA3F0B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB37B17F356
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3ECE165F16;
	Fri, 26 Sep 2025 13:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BqhSdEwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D0213B58B
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894524; cv=none; b=gb9kBwL0jESw3Do7HqQGmq9RB9ICcI/AKGGncEIY3VvupycKhWTPT+hnfuVIhY4xGljo+YanolGayYmltLGNZ/S3ps0crYyC+svfOv3uore3ThdNrOv0A3Dcw4AlKB1FRbvSupH5/L1faXWNV8G+A6GJqeKQTelFFY+2CWBwbiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894524; c=relaxed/simple;
	bh=Aarm2UM5jytnaVhQwMjukWEv9YRVwIRMFnv161NzwC4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jkZAl7Qfnxsntcd7FPOZ3dBae19z0Y0dUeal90hn1w0B83AbrTIgbAr8c4l1BWOc9NfpA8QQ8NeS95J55UpMNgQJmMP4oK0NmsmMe4mCTlke5L2/3NaKfKibKD8/ZZjJNJxxv7+3L2fYCurMOx70gOwGs38OHoGsg5KPqd9eFRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BqhSdEwP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QBAite019518
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:48:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wWKAboNxmC/SVuUy6iZnuitUhacsSjdsbUrvric+Plw=; b=BqhSdEwPlmBAHBUL
	4s9CBwdEMGkCimFDq+9p5T9HiVz+zOqzTLVHi8aoDFx1gLTHcCdwd+h1vkffV4AM
	RYwdSNccD6TTSUjax1oR5XUiXoTOiDq46bkzDlzcctLsIxWDKLjBn9aGiKsYx3RU
	vim8NNK8PYQEkJbHOSVu1uGuEuiRjCKqyz0O8Lz0UhMPorS1GU0gvBxzBdUuMU3s
	s0o8Ap6zB4lj35Ay6KPeZryfkv3A5GC1CKcbhGXQB1kUquMXrxKJkX4nzNwzGFrZ
	Iy7/Xp3pVdyDO91tbxO1E1IKsqLqFqnbjLK7mRLATRsNL+RdITR1Sy2gecfyYY3j
	rFruOQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49dsqrgd9v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:48:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7958a07a5fdso4167856d6.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894520; x=1759499320;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wWKAboNxmC/SVuUy6iZnuitUhacsSjdsbUrvric+Plw=;
        b=gbbg9GoLbA21gjQJiTM8XZMF8WYfT7bf8gat72DhbXErf3Caw5IMHYxbJrSIr0lzKO
         vuwWpnhdeoJInVkAF4laHSWFkuJcgThYjF1922BkvdyCc8RVzDN2rUsEUmCzm/OMMQLc
         gus0NOzpuAjhRUY1b4u9g3ZCr9ENX3QfpqSYcMOCKfE+67BNl0Wphwpw0MHr9mFCMwob
         ao9bKgga6B3+R1cSrboh6DKaV+A4Nm/co8fJhJM/CRw/eB46UEHmCakjv9/++aK79qVR
         E+gWlMhPd9tx/elppuzmeLRAP8cWW+Ycv661kNDn0mjizB2/bhOwY7H5+rkKju13O763
         RrRA==
X-Forwarded-Encrypted: i=1; AJvYcCXt92KqoyWo0eRFSbubrp6c9ydBP/ulb7+1Fox/+QKtvYRbQF3O+Mxl/XaPU0UiCa+VbarROcrolmV+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz64/WUKPKNRGBxCK1380cRsj0a06oyrgRw/7kDgDu1Z+ezCIDQ
	hc/aRLo10rfY54YWa8Egr3WN/6KJ2jiQ881z96tswPoJrQ835XlqsHj7VgCq93ffPiLNgLbBATq
	D25hhjqQBMAQsy5gUwv1RT/mON7S9XwFcWMPn7QHOrzvPC4JsQqaJqnfYqPMLwIwI
X-Gm-Gg: ASbGncv45FpnKyxFrJ/H05BCwRkxiqVE+q5ie9lYQAtK34uwkwSUILhAIUdaglFqq/T
	bmVkB8lbTrYObffDDUoEe3fZkw2wppicP8LAJvDUL7hlkaWn152hZrESPwB9mqRzxFxGoIcgl/J
	Ks0vuUx642MDfoPpDFx6cN65IsXUMETkGnUfItMfT1KeiaDoDc/nGEC4z3M4LuMxbZC/fZ5iSw+
	pMARmyUxg49U88rdADD2l+TUOZcrjv61Mwsr8S0SV8jg8KDi2zMMjhJ+G55X52mHX4mc/jQs81f
	oHQC1aNaqk008MkEA2bZYyAQUbUbW05PjNf+W3kAcMcNg2PfkQ/WrvBwvVsz1lKJrz1vyvkgeM9
	20Q0Yh6zkXMMp/kpKoWifGA==
X-Received: by 2002:a05:622a:1886:b0:4d9:c572:f9b3 with SMTP id d75a77b69052e-4da4b6160bdmr65890791cf.9.1758894520173;
        Fri, 26 Sep 2025 06:48:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhNBBgSVDYXxW58rzQ0pj1r5lmIfPVm2D3r3xaPN1V0a9k1ZbVxd4jsMfTaN5cvjszpC5bFQ==
X-Received: by 2002:a05:622a:1886:b0:4d9:c572:f9b3 with SMTP id d75a77b69052e-4da4b6160bdmr65890251cf.9.1758894519407;
        Fri, 26 Sep 2025 06:48:39 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f79a7sm366342666b.62.2025.09.26.06.48.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 06:48:38 -0700 (PDT)
Message-ID: <eea8feec-d097-415a-8b5a-c51edab2dc5b@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:48:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/14] arm64: dts: qcom: sm6350: add refgen regulator and
 use it for DSI
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
        Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
 <20250921-refgen-v1-9-9d93e64133ea@oss.qualcomm.com>
 <DCZZV93PMWRZ.1J9IZBZYP5RGM@fairphone.com>
 <4d815ed8-18db-462b-80d9-9768b51a9788@oss.qualcomm.com>
 <mmtoashmdv6cwwwdg7rpbk3kkrjddej6khdzlcyo5qb47lfunm@osemmb3z4m55>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <mmtoashmdv6cwwwdg7rpbk3kkrjddej6khdzlcyo5qb47lfunm@osemmb3z4m55>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: w9_01RuFNhM5UM1QMJPv2abagPZSk84C
X-Authority-Analysis: v=2.4 cv=d8n4CBjE c=1 sm=1 tr=0 ts=68d699b9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7uUkQgaaTnfZjgSPyt0A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: w9_01RuFNhM5UM1QMJPv2abagPZSk84C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDEwMyBTYWx0ZWRfX3GMXNRhwXNCP
 4bpnViVgCMCU/5mE3mIZILwpaeE6pzF3goLZfgdD9v3HXWGzwhh+0ZZUZbngtSqR6QsSHDP4Wiz
 fzqKO9Q/sAzwNcIMYocFEi6JsTTeAik8uisQydR61+Pj/zoiCiCa+U55IA289mBsYiXyf7Gm3EF
 vf+li4A3W2Yjfg7XplVvx9dTB6nZDquEoqCKlLaHkG+6VR76/eoFxDhxjHR7X83B1t8RPiTPCat
 MiVWcoDx0qeByKQj91l1VUxDcwmBJAsHGyw5ZUw2yH7WPnI6i3ZqaEEbOuKvU6uo0qK/QKg23Ac
 2IXKzMFc14gr+qvChSBluhlCVQ6GmAwHEIFOs95Otvfh6oy/eLMlQJyNAyFU6oJMLeZyOI9QY4n
 eNzCwPSrXauvwQ550Ws1hx8k32EusA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509260103

On 9/26/25 3:44 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 26, 2025 at 03:27:24PM +0200, Konrad Dybcio wrote:
>> On 9/23/25 9:17 AM, Luca Weiss wrote:
>>> Hi Dmitry,
>>>
>>> On Sun Sep 21, 2025 at 9:09 AM CEST, Dmitry Baryshkov wrote:
>>>> Add the refgen regulator block and use it for the DSI controller.
>>>>
>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 ++++++++
>>>>  1 file changed, 8 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
>>>> index 8459b27cacc72a4827a2e289e669163ad6250059..dd009569a6683a25f13b068e3e0bd8746b2ac501 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
>>>> @@ -1768,6 +1768,12 @@ usb_1_hsphy: phy@88e3000 {
>>>>  			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
>>>>  		};
>>>>  
>>>> +		refgen: regulator@88e7000 {
>>>> +			compatible = "qcom,sm6350-refgen-regulator",
>>>> +				     "qcom,sm8250-refgen-regulator";
>>>> +			reg = <0x0 0x088e7000 0x0 0x84>;
>>>
>>> Are you sure the size is 0x84? Downstream and hwio_bitra_V1.cmm would
>>> suggest size to be 0x60.
>>>
>>> For sc7280, hwio_kodiak_E5.0.cmm does say 0x84 for refgen.
>>
>> 0x60
>>
>> moreover, I see that there are two refgen regulators..
> 
> There are two refgens on each of the platforms, but I think the other
> one is used in the automatic way. The HPG only tells us about
> programming this one.

OK thanks for checking that

Konrad

