Return-Path: <devicetree+bounces-220271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB5AB93C6B
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 03:02:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AF7819027BE
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 01:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7681D9324;
	Tue, 23 Sep 2025 01:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K6mgVDc3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7EC114C5B0
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758589372; cv=none; b=dYcsVDSnpB0Hhq+bsr2o0nLQA3/p6V59VyWVcUYXOGJfno0GIItyFnoQH5R2J8u2FZX5UXoYB4amDEfHLcOcfEQw+ix7R03ao2+QdVSVwVMkTFBHKoZk5lorpQd9bpj2MDRyPCBMQG7FMhP4JHK7Kg9Yx0bpK3WR0SpW+LPgPZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758589372; c=relaxed/simple;
	bh=/wREhakS9idFjMBFdgBH/9xcwM7cylJ4oNqe9PN39SA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZoGaJ0HcrYSC5Qe0vWBO6SvvNao4g4Pf000XCMDdFyS5lmOfQQlfgnHBOR0qHPNdxrNbga759Gw09nmwUUUF8dDBd3Z0maSjeTjNmObX7zZSn32LlEK2c3CYY+HO1SuBjreqOUdcQdUeR3VoS/Bkh+jsHg+t1LcC5vu56/+jW88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K6mgVDc3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MIBM6h029389
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jO1Hn2IrqcZtq+1Jj6/zX+hsmwYf9XJSmw5T569R8N0=; b=K6mgVDc3DjcU/uHP
	6mQIORxFavj9i6bOju/Mzbgwqv+69i6VDoRmGyevoK6uL9zeZwc/FhEDtQfMryKe
	Lt16E+a9MBDInSgAGjGgID2c03l+ALXkEvsLuCkZzhWznsc6xg+8X11hG833Plxq
	ghkE5JZ8cpE3gtXTsftZHtGjMsPwB0YnS3wYPGBbmKo1s8U+j2ZnmrV/ZDFbScmW
	hhPin1o9sD+Dpjg+YCKl+AiZcVWEEt/VKIcsycnD7H2K1QoeV8Ec37Zo2q0XgdI3
	6j4Y4jKWirvKp7bDFrQSKe648K3PPIwLyr+JMgzQ2jUn4hwnk2USDCH5vhdsKQwk
	rRaFIw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk2h4y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:02:49 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32e43b0f038so4375598a91.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 18:02:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589368; x=1759194168;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jO1Hn2IrqcZtq+1Jj6/zX+hsmwYf9XJSmw5T569R8N0=;
        b=hfJk0J+EEW2fiEUYChlUTJPNGOv/HwTOQXlX6dbg82spdrJOWTDhCjiarcrv9WbtOu
         9PUpijfslK/5ANNu2WhfvOyKMAUCAydYw2P+5WvJ6JmVRjN5ErqJd/viZJ30TqIz0x76
         FNI5yK3hA+/y4fJjeaVeabXXXt/TVQXePL13D+m7fJG0V28f47N2Yx41NucI9TcMP/Gy
         iVaFRkelOHM4p/jrjzVpIoUxOLxjwfx/0U469O7GEV8TT9wwtbuDwuVocxSHcPmNcotV
         Rh0XRdTfFxu+w/NkHtohQ62pVxVXTq16QRUSYrO4bZqKV4jDpH7zDXIx3oJMIBbqtCJt
         zqug==
X-Forwarded-Encrypted: i=1; AJvYcCV7YZ7TmOWwl9Yr0KGLC7DA/IoMItZmItRcSUVndgu8Kem0DHle7bN50gCShxP9dhwdNTdLDMG0ymzP@vger.kernel.org
X-Gm-Message-State: AOJu0YwYFjfoAn85oS5qtDPmCVS8GneTXLJ/GQLNUdQUUQ3SqNJl4Ndn
	MR2rYv/ZeHIP6/+eo8i0k6FxWvZeUmi4IoN6yZ4BOjHAbBfRGVnJ8BFsh/RkSmaGj3kvZ3BIxKG
	QwmJSQTy3n42vBtvHF8Ff23t4aALVFSBG8sii4xTsiRHt5RGP9xuREvcF8s63NmKo
X-Gm-Gg: ASbGnctOCnTbgsrO3Z5bHpyhzVbyyg8wmzb63/mGEB8FsW9k2pmcfkdGwY6NKOP4hOf
	c15QJBGVGjffI9X1W7q/qHRDP+uLHTLBrQJFtYqJaVllPrDStmYBrfM04pxFHH+BMqn6QOZXgys
	gfGcs67tigu5MzM6Tg8KA6zMgEIuH+Vv5Jytea9rShTtv5VcfeUsgPnsO3QXETSOOAf6Hmu9LvG
	gZ/+NfFjL8OE3IjwnaquMt8a2NhFlyj1yhh+oPlSNuGMMItzCCE1LcL7Eicun+Diuw7fcK80NYd
	Gl50xmqhBmBUJTwVE3FPrsMRirmJlB6Fbv8TNNeA+2u5oMhH8a6/vAMOmkYSh9jpFvdOlaRm1ZE
	ayV5M7KAVnM92EjHEwc/IT5TS/dB+6iw=
X-Received: by 2002:a17:90b:4cc6:b0:32e:a60d:93e2 with SMTP id 98e67ed59e1d1-332a950f0e8mr897270a91.11.1758589368162;
        Mon, 22 Sep 2025 18:02:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlSOwvGDc4ZNG/GFMoIc8OAWT84NHpnX1KIVGYK3J2uWpSVJtvuEHH3EjH2XRE1NcabBx9jA==
X-Received: by 2002:a17:90b:4cc6:b0:32e:a60d:93e2 with SMTP id 98e67ed59e1d1-332a950f0e8mr897240a91.11.1758589367782;
        Mon, 22 Sep 2025 18:02:47 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfbb7b9e0sm13852534b3a.6.2025.09.22.18.02.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 18:02:47 -0700 (PDT)
Message-ID: <554cd2ce-a617-9387-7379-a3c2b9de843c@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:02:45 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur
 compatible
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-4-wesley.cheng@oss.qualcomm.com>
 <20250922201449.GA1235521-robh@kernel.org>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <20250922201449.GA1235521-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3fJeEYT5oIrLOKeCe41Xz3qRisfIyZ55
X-Proofpoint-ORIG-GUID: 3fJeEYT5oIrLOKeCe41Xz3qRisfIyZ55
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX4T9e3UJr8Cmc
 nvq6A1N3hgb9btTNcgjyKs+wueg7RgyuLpYQ7N7LsaqSTtope+zeU3P+IIxAcmsPINTqC+/TwWg
 8R3ozy458feR7oW4cOYjNsgsfwQM7/GgfgQBbW/38Sz4vbWwsInWHore4DJunV8gUhlk2y5NXrx
 6msdxHSNm6JpfCnbIyAoLV+NFWzUyqBffq7k4Kj25IGC7ELy51X4PpdCTfSGhT1fjSeEGtBGIYb
 XMOIrLI/uaES7dM0myCOqv29XTbg6KCVrX3CA22np2hg17g9eYykUQQcpErJKMKcsiRzGKuAQwp
 lQJYlMg06g8nNfEc7dLIIet7Mxci0C7Tg0v2XpC2HeGx+yy7H7XULauYKu/4GUQC431hmG5QUth
 FwOF1SJd
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d1f1b9 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=O8CPnEiu1cSv67x46V8A:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089



On 9/22/2025 1:14 PM, Rob Herring wrote:
> On Fri, Sep 19, 2025 at 08:21:02PM -0700, Wesley Cheng wrote:
>> Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
>> the fallback.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml   | 11 ++++++-----
>>   1 file changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> index c84c62d0e8cb..b96b1ee80257 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> @@ -15,9 +15,12 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    items:
>> -      - enum:
>> -          - qcom,sm8750-m31-eusb2-phy
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,glymur-m31-eusb2-phy
>> +          - const: qcom,sm8750-m31-eusb2-phy
>> +      - const: qcom,sm8750-m31-eusb2-phy
>>   
>>     reg:
>>       maxItems: 1
>> @@ -53,8 +56,6 @@ required:
>>     - compatible
>>     - reg
>>     - "#phy-cells"
>> -  - clocks
>> -  - clock-names
> 
> How is it compatible if clocks aren't required now? And clocks are
> suddenly no longer required on sm8750?
> 

Hi Rob,

It depends on the clock subsystem.  On SM8750, we still need the clock 
entry, because we need to control the output of our CXO/reference clock 
to our HS PHY.  However, on chipsets like Glymur, some HS PHYs in our 
USB subsystem doesn't have this refclk output control.

Thanks
Wesley Cheng

>>     - resets
>>     - vdd-supply
>>     - vdda12-supply

