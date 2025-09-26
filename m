Return-Path: <devicetree+bounces-221888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCFBBA3E36
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:27:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 513767B3E80
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 506D72EA736;
	Fri, 26 Sep 2025 13:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QLPBysvb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED711D7E5C
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758893252; cv=none; b=mudhb2luAmSZpO7alvxb7NcpXuYCRxw24DIQrHuffJ1+AS9EU9jUO7NLcMF5cwr1nrLcd6knnOVydurMynUWaReQSxTXEUN9TfWZPRADvgv3Mn7y7Q5+mzjJ+NA9pr4o9dGgbCVuTda56bLMBps9W6Zw1O0ud3LZobJVZTuoCPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758893252; c=relaxed/simple;
	bh=MClL6ZOoCXuxx1RDtmqkqa6SczgkMum98AA3U884PbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WnneK/ZhSP/EoIxkZliWLwm6tnRXHo66jz3N4OBZTfVBtPOT8rMnYji8/X6sMxuUD2QgN6Tra9w1EzVRIrU3dgRCcivhWdgIdo2RD1Hi9FpdCti+GTTwJXQeuEry90nePG4tA/tgJrZnUHRhr5JBp8D7E2JkKg1h2lpoQR8Um0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QLPBysvb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QBZvuD032500
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:27:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t8/ksjeEymK8HBnfUn37iS94Fkf2ZpcygrXIiyllIqg=; b=QLPBysvbkIh6XVAG
	1e9ABxb/Z/SgKaLC/DtdqOZdp7TmINkuhqAGhKINOdLy8fIgUBtc6V64uLFweBop
	QsdZW/rJ7lUdVaFftl9VksxEzoGIX17yG+AUCI9ng4HkWn/rwl49oHdyw/L+NoA5
	4GHzrBy/uH3FERLDvCOSR9lhJsVgumHx1y3jaujTSKkhCNJyZiQWEKBau/WEIN7d
	oi13XKKbGnk203whalEDx19Vl1K7xzkI+t9U2gYjFKcLsHAU8NkANAoGl8tNXDVK
	pemVK2yayROUNRkcenAdAWpJpDBZJXhcXCOtQIuYXLcjvMcI26faNEzabJrDyY5w
	SSVklA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49dt3g88yt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:27:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85e95d986e2so33144885a.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:27:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758893249; x=1759498049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t8/ksjeEymK8HBnfUn37iS94Fkf2ZpcygrXIiyllIqg=;
        b=TNvcct2Vwf3qKjnIVx7tZ56nKLyyHDxV0PPPzYhHp26coLVXcQ4NM0oZg6I1EgCVrO
         oE+tCXDtB3Y6NO7a0L78RJqxfoZ6FH8mynkbBcChAtmnx4k59CgO4v23uE6Lw9NQsInX
         XSwt79ScRE939LswlrS2qepwn4Ym9r7NfxVwBDgw0EndLBhn5l02/GIexM9V5BEnCDNc
         6nrxiDXLakXsy134NAGX6Duw6oXycQzQSF/Ta2HGzHddjHNAh6mNz4pZAXZvyNHJgp89
         HCq/+7OxXVX2fzzMPOQd3UpRPnRnFeeJPCnjlRbq8IENJoxkF2OX4kgv1S0AI4bK97qo
         y7RA==
X-Forwarded-Encrypted: i=1; AJvYcCWbp1GSIDhZhsFyA1oinpgsaRQAaIo7bTHA1YDJdHINdw7b/YyM2U0mdPF64NUjslE3s0wzcfIL4grG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx48jSGxs945ONwCAK7Y7ynmT82DSeodjCNxgF81PmuS+lkYAJi
	c0bmQg7sp7fpHTkDhiDS95rmpeEbHJ7vEol6BhXcg/8qobaT5EO5OOSu6qtdB/6rtjeXN95kUkg
	INUhft/GdNb/ZFgCqhnHDLsm7pnNovWAh6I0FxpTA7eyrX0tfqRXHkhumzxh4W1s7
X-Gm-Gg: ASbGncuu8SEQseh+K+vL5PxLo2L3iSOjRTI+6y8F/WSy/M7fnu00XK5tfPI0QLiP6LZ
	+YhlU3D4aMq8Z4HitYlkVESC5ZmmMvx2IkdNHaoiLSLVMYkFeFlGvV+nS2xD7BauI/CjR0Q/CKi
	aT5/yi1thfIaYQ2pXRv3w5NmJ5/9SIK5SOqmfdjf9ogW81/qtyQbQ5GFUyARvTLNS1YCeAqtW8v
	EDHHmdA6REy/SEbMNrmBxzZJHfGgK0t5pLE2bNMMW8QP8V/rDxVBrMclivajtGoEM058DQKt3Fo
	oOTk76JrEj8BACJMXJmaBFZZa83qmYrKFhcHfTvv1j7yDey+TqJ0ksgt2DFrtEvhcE87M1xv6O1
	zuKbPVuR2TXBLDrGcCHwIYw==
X-Received: by 2002:a05:620a:568c:b0:85b:27dd:84cc with SMTP id af79cd13be357-85b27eccea2mr478562985a.5.1758893248619;
        Fri, 26 Sep 2025 06:27:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFz0ZOL7APzcqCaK7Mg+0jgxlw42jENUTuNml2I098P+orgcmCXHakc2Xh3/amKGZ80bY+MQ==
X-Received: by 2002:a05:620a:568c:b0:85b:27dd:84cc with SMTP id af79cd13be357-85b27eccea2mr478558785a.5.1758893247939;
        Fri, 26 Sep 2025 06:27:27 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d1671sm374952666b.3.2025.09.26.06.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 06:27:27 -0700 (PDT)
Message-ID: <4d815ed8-18db-462b-80d9-9768b51a9788@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:27:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/14] arm64: dts: qcom: sm6350: add refgen regulator and
 use it for DSI
To: Luca Weiss <luca.weiss@fairphone.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
 <20250921-refgen-v1-9-9d93e64133ea@oss.qualcomm.com>
 <DCZZV93PMWRZ.1J9IZBZYP5RGM@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DCZZV93PMWRZ.1J9IZBZYP5RGM@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=df6NHHXe c=1 sm=1 tr=0 ts=68d694c1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=qxRITnKSTm-n5raOyfwA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: vE-AzNYmsKB1UL56XS5GOLV_ZSVMrF3r
X-Proofpoint-GUID: vE-AzNYmsKB1UL56XS5GOLV_ZSVMrF3r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDEwNiBTYWx0ZWRfXxxDQdEAGcCk4
 JbYUuqrN8TMtqVeI1CRACCtenqxWO7GZLl5kNZNGkmW15PcNS/ZYT+h4cpB8X9nQz9NM/tdivZV
 l2lpC30RSSxXd3mg/AWL2nn+b61YKPWtVLtG1mAZswYcNxauI1FYxhae6kwdSCMxNZVHlmNZISn
 77DQZmheZ1OypHaSr+xh9BkCUxOlyNr56rWlbb4SV4C9oQ1iOzj8c7qetAaipN09iQ1SwfyDLwa
 ZBahKh7atyKsnua8m0uoTzs/B4GHnCbCI7WLDijIU86pK0Y7ygLELix6PSolcro4NNxlIdeUl0j
 CcP0i3tJrW512YE/7owtnxIw3jWvUFMfO3W8tffIydUHxm7AQPup3eDpZvHLnLLYve2l69uPLO6
 STjwLr2aCJz623uPBpsW3QapJ9iGuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509260106

On 9/23/25 9:17 AM, Luca Weiss wrote:
> Hi Dmitry,
> 
> On Sun Sep 21, 2025 at 9:09 AM CEST, Dmitry Baryshkov wrote:
>> Add the refgen regulator block and use it for the DSI controller.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
>> index 8459b27cacc72a4827a2e289e669163ad6250059..dd009569a6683a25f13b068e3e0bd8746b2ac501 100644
>> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
>> @@ -1768,6 +1768,12 @@ usb_1_hsphy: phy@88e3000 {
>>  			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
>>  		};
>>  
>> +		refgen: regulator@88e7000 {
>> +			compatible = "qcom,sm6350-refgen-regulator",
>> +				     "qcom,sm8250-refgen-regulator";
>> +			reg = <0x0 0x088e7000 0x0 0x84>;
> 
> Are you sure the size is 0x84? Downstream and hwio_bitra_V1.cmm would
> suggest size to be 0x60.
> 
> For sc7280, hwio_kodiak_E5.0.cmm does say 0x84 for refgen.

0x60

moreover, I see that there are two refgen regulators..

Konrad

