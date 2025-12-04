Return-Path: <devicetree+bounces-244269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C20CA2F6E
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:23:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 630693139508
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22163330D43;
	Thu,  4 Dec 2025 09:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hnL96wqU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KP+DhpPh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E882FFF95
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764839829; cv=none; b=ZwlArc6LFXXSzePF8iAqMafiG5XkVZz2NSWVSzdlaavEmhtcRipZgmP7xr+7+S/I3tTzt/xhWSgcCHbwoR70T/ie2QmN/1AZdvIi0EQ6d0U6c77qO9DFq7LnlNMS6RnD14UzdrtE+CO4CEhCKKv/C93xjZpPZCKtad7Uv0xDD88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764839829; c=relaxed/simple;
	bh=SMUsPkXRZIEHqd9ZQP6HWjjeIV6tB257Bo2GR1en/kQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NzXO32YWiOmiXiSjaPV5f0VTp/VvpprZxugvehAdfdXqw5MUa1v2oAOvVMtcaCPS443UD3TAHvqCnt9Yo/0Cn/hBSfGLx504iSoKm1olBbFANohkvQCPaM2j9usaCoyQefkdW8AELlm77lSoZRW4ltqRJEKuUJi4r1/M1rsWz74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hnL96wqU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KP+DhpPh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B48UnUE1046691
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:17:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0U9QIgJeX+XL1L7BzeMqcqfG+cdlqZzZuVJJDQreQ80=; b=hnL96wqUN829L2zt
	aeSg04edaoGf/6r41/ZSCLRUlTAHDDKjurAOwRnz8My/48G0NdCESRAjG0+AF+wV
	XfDAiqXGZ+vDOPay1/bp/obTP2panak0PSc3z9+NYthhUHMuloN3aRLQaq7rIque
	0r56LG6P54HNJAtbFhCwx4s3QjXjwo5qa6f9dd4MK+K0SPqPB+xJi71yVB675cEz
	VlaGWNGCc28oPkUn5jhoOpQUbhNhhehdOK255IZQKAiHRVLOmDE6rHn+gr4Rm6aF
	L6PZxb5L1GR6jxMxJpZXl6VydvCY1r+s8qsDyT0+2oFxgsocyYv94vDDifztbpTI
	myuK2A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6uvr4t9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:17:05 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso1010491cf.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764839825; x=1765444625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0U9QIgJeX+XL1L7BzeMqcqfG+cdlqZzZuVJJDQreQ80=;
        b=KP+DhpPh9Ep0YK9HWklaUAuM1Auxcjj7vDQmlSoBGw4/XSBl7I3xBB113gi/NgkAMy
         4SKFpXSXgFtoarEYaljJtxU66oAnFs8s7TRLGUMsBSaHe871yJIm186HO4RXOD5jqD2x
         oOqAChvf+0kw/KX4Zb3pM2XINJsAoOva4c5uwfTyiCyatbAnnuWoeVvmyvFatBEDkT/e
         gcUBmO9MIIddAYEqqn2ruhYXt9IYXCxR2sM3+ua2AzpJ0TAgpE8CKp8urpy9/wi/eJ51
         fclOcpjfh6dRWu6SIYGDdHhBVUygDVXiGyO5czNawBihwUa25QNRaGdGpERrukiEhGQ3
         Bfgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764839825; x=1765444625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0U9QIgJeX+XL1L7BzeMqcqfG+cdlqZzZuVJJDQreQ80=;
        b=og0RClXJmLDhPU1y15GEppcW1IZqUH1fhIKy9acASK2P1bZ/xYcUDpUJsUoJZEaqH6
         qX6PrrhjvYPNRBLDPK4mm1PVEjuUJ9EQViHV7G8Q7Ldfn4WfUZW5Usqpd302+HcFDrw1
         1AZB9K9RT/x85DJvwPIQ6imb6j8Ef4pNYoXtue7wnrNhnU6fykpRAqCuK8PUeMPUWeGp
         e6ZFWNBPPy7z7bEBCObz00v8mp+Lw+tki6MYostBZVOVqP7q1PZER4+BK/ve/iQxM6Q8
         +u3Fi+9LuJemdniSUhfC5V7eKXmWYRcN4XFVdFBAmVjs6QOj5LoX69WqT3mnLylcLp59
         XuKg==
X-Forwarded-Encrypted: i=1; AJvYcCUvrFwBTJ4D9I4DPvdHjhsQasxlYQreEixrX/8qoI3YthYI547c/11oRLth7uTI7jLwiuLf7og0868t@vger.kernel.org
X-Gm-Message-State: AOJu0YzUpzmjzVkGx2i9kduFdrQkssYWirhY2au93URTdiRFM56fsKE8
	lcMuq1CxfvhlS32QXFEnUrImxgVrtd0Wd4w0f1JgdrE6y7MeZWC3pum92Td4JnitOsQRMyMBPYF
	u9zRpoyJo6zEDYePxdtvuuSia2cRNw5mXTjAmn1b+ybVadtKzYVpyesuLiGUBRvOY
X-Gm-Gg: ASbGnctueulG2RIvEejTiqqmI7keLco0WoLl280R0YVUruBp6f9OYDiPvvjh9DVcKP1
	wNUL5AF2M1WjsaNkKgK+iOlPsSVWk5GkXYR2KUwx8x0HQw0QgpsN/KNlQsZefKGd9Kq+eVFSOz0
	9/uwAJqg3ZHVFpFma4oOyGRBbSqQ+jqamn1SqRzbs+/CDNw4yOhvF0QjvMv0z2bzem7AbFqkx7a
	dNwMbzjD09C8CKuOvF/W6RjncG9raCif0s4AkWOM2aD2ML3ChX8HUbY5BSXeIBSQjeA3gOm53cS
	c3yDQcUgpanMMyF8LEho8X+5F/YfhNiNVgfnLybxN8cU2Puxu4GKMxARtte3LTdgZG+MGFKS0IC
	9eiTWcTqlT8kl9v1RxRImAlu0lg5dIPLVFM01y4v4SmTWGCnVvOFtMOkOm0D2BWbQCg==
X-Received: by 2002:ac8:5a06:0:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4f01b14cf83mr50517601cf.5.1764839825339;
        Thu, 04 Dec 2025 01:17:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQLbXFzWb9OJZU94vVBhRpTXcpQzIV1HSqq5xzJ0QE2TLlv6RKK34659GBcDvh4F14hpF4ZQ==
X-Received: by 2002:ac8:5a06:0:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4f01b14cf83mr50517271cf.5.1764839824823;
        Thu, 04 Dec 2025 01:17:04 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ec2ff8sm796987a12.7.2025.12.04.01.17.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:17:04 -0800 (PST)
Message-ID: <d8a3a30a-d627-4085-bab0-b73a2eeaa12b@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:17:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/12] arm64: dts: qcom: sdm845-lg-common: Add camera
 flash
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20251125-judyln-dts-v4-0-a5a60500b267@postmarketos.org>
 <20251125-judyln-dts-v4-9-a5a60500b267@postmarketos.org>
 <62ce91326c0e1d5aef1ad5ecad9b99695f983347@postmarketos.org>
 <863db415-51e0-4c54-85bf-ac6a168758e0@oss.qualcomm.com>
 <9cdccbb5a3fb10a2d7de1e1d17d36018f40b18a1@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9cdccbb5a3fb10a2d7de1e1d17d36018f40b18a1@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3NSBTYWx0ZWRfX/FKsBRdIEuVs
 b0G2DNrii07ruIOPniolwnf53ENlGMkv0DejAfopaNSIeNpaJP5FE/QvxiQDtFldvb6bfMrspXs
 Nnm64HJsc/vaZstS3jUTgn1uuQ/qzGS8jIrFC++JvzXA5C+oQ8viCNand8p5uXiAgD/Eehfrh/L
 2JakOcrDK35pJHk4b/KC4435O8GxWH3rYCqtI4M1B4TVmkzW+BajLJyENd66lxlVBmnMNUhTCuR
 M2Y2/QZ8GM4R8D89QOKrPyKoHy6m4lCYCxvZDHNjKK7sUNzWyOv0PdsI12dlvwyFHgxkBsc9CfE
 fBWj7fhjlEmRmTlyg/zCGhP0VYyZ7feKsVJAYjE7qiD2XNL9RGdaKk3zpFB74qsRkxXxnC9u2ha
 ULdv6eobSyeFIrFThMUAvbj5M7ABjw==
X-Authority-Analysis: v=2.4 cv=d7n4CBjE c=1 sm=1 tr=0 ts=69315191 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ubcZd0e3b_FObW4-F2kA:9
 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: ruWRpE-mSscz-Rp3wGjkt4RO3ED_E6wx
X-Proofpoint-GUID: ruWRpE-mSscz-Rp3wGjkt4RO3ED_E6wx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040075

On 12/3/25 10:27 AM, Paul Sajna wrote:
> linux-postmarketos-qcom-sdm845-6.16.7_p20251203010632-r0.apk
> 
> 
> December 1, 2025 at 11:42 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com mailto:konrad.dybcio@oss.qualcomm.com?to=%22Konrad%20Dybcio%22%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote:
> 
> 
>>
>> On 11/28/25 9:20 PM, Paul Sajna wrote:
>>
>>>
>>> I did more testing on this, and the led only comes on if it's brightness is set to approx 150/255 or lower. In that case, should I set led-max-microamp to 60mA?
>>>
>> FWIW your downstream kernel sets up channels 0 and 1, here you only
>> enabled 1. Taking a look at a picture of the phone, I only see a single
>> LED on the back, so perhaps you're (over)driving a single power line?
>>
>> I'm not a milion percent sure, but I would assume the current draw
>> *limiting* register applies to the sum of the current going through
>> the three channels because there's only a single instance of it.
>>
>> Konrad
>>
> 
> I tried setting up both, but only the one that was mapped as `led-sources = <2>` seemed to have any effect. Also it would confuse userspace flashlight apps if there were two I think. So I'll push v5 with just the one that does anything.

led-sources is parsed into a bitmap and written into REG_MODULE_EN,
this doesn't translate into anything that's userspace-visible

That would instead be the case if you defined a pair of LEDs under
the device node (which is valid if there's two separate ones, such
as for some phones with a back and front LED flash)

Konrad



