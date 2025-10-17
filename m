Return-Path: <devicetree+bounces-228103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F4ABE7EB6
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 11:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C09FA4E7181
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08ED32DC76B;
	Fri, 17 Oct 2025 09:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eWC4xYmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5442E2D661D
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760695075; cv=none; b=fsK7oJJ6bH5dd7AgCwYIz7WZCwbbFjqcBHncqKwFgfKRA2MSJ4PHGdnlmGJtAhe9sohkD2ZzKUc369Ik/qfmMYugw+FcU/NFPSomHEHCWQrXBDrb+qsAEFZOlvTm1EPoB0O4luzFtT0Um+oDPMFEWG/EW8A6xzrpfy3tHlhr4Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760695075; c=relaxed/simple;
	bh=79n+Qc5yBix+U3wmFnS6g8a/6+I1OaBQNl/w9qZHo+c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=If1UO+SZJVsnaevEILFyIhTXWOn+2HlUzVmc6zbEt20oDb6aPZGjXN5afK3ZgRA1w0Y2tY/Kh5uegKgZ5jQjEBoZ9iyIOTOaaX0vwhyx/CFKh91AUaicmp+ksy5tGbA5rGxYNSqa8yLK+zGG2OCZTb7T2xqFc/NUdYeoZquqZFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eWC4xYmJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H86ZFS020220
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:57:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZIs6t3bvk1JRGW3dHYxMA/phlwEXTSoBjQ3c0yvwb9U=; b=eWC4xYmJNDSDSXpD
	oLv9F3SyfQXF43GJxe9B4XT19cWMzUJLWOuV69V+TTnNlRUuIBmdrGnvuQaejN7W
	jxgm5gQBM12gFJAKBHCrCPPTj3l3WckIEMYeUpGbTUYQKug6AQsqlNF2A4QM8FPK
	gHSA52Cb9lEtnT52KMgHa9ERYWazEon3O4M/OudfvHj+cD72OBphNbekX/KqoFNR
	QDvjGk498O0zkLvunJZfXZvNWzmLeP0X2ldyygaesGjMt93xoUgiUAa7iK4vRSNV
	13xEsjFb9ojoaYdONuhW7j+Gw08XPOv2T08B0YaY2UcY2SsMCabVIAGXOToTLkLM
	42fA8A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49tqvpn6rr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:57:53 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87c1c70f1faso6524086d6.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:57:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760695072; x=1761299872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZIs6t3bvk1JRGW3dHYxMA/phlwEXTSoBjQ3c0yvwb9U=;
        b=gYHGesB4LfWgcIujy1YuaHmSHMdhNnGI5RZYpA+8lZXaxsC61aMOpJ4ltA77ISrsJO
         xjsEm3QoFFJBQh1PAWxxLHt9tNdsrU34JuubTeVtkX5wNMF1FOXI5+nFMl4z5y8G+NfS
         rBw8aENjHAA3QrQEfineKxq+YSuCVl0IOILxEqlbdIMK4Rq6W8Gn7qgZlQyVTMgvPpUz
         Zrx4KDXP5Tcg7LP8wj1RTAZZOv19YNt2MPlL+pViXzHPVulpPPnZMN29x4UNtfIumiQl
         /RiFxBWNkO1d5f+Od6iJNXOyuyfKckBZ9tcxmfUPhLB0dPMtfKainGAeQIFuDbNJf1lS
         /XqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTUxtrSY0aOEiyYQtZ7O1x+FYtKRbTwMQlkHWbasfGbElPjHEXSehPd8Y9dLx6P9ZH/Lkw/HTjVDjn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz37s9hiyfHnyv22XpnA4vXr4gx8H720tTlPF0mXmvGitVyn6r6
	HHf3ykg/QZhnfJnkPLoV+4VMtlmIu5RIi49HETiahq39A1lshUUvir7PkCq65FMLGZcaspgMZi7
	Wc4+VLWSX44ldCsNrR3MCsEzRMqSZWc3/d4x5IyHJCUccnYGO2lI9F4WksAxcmX8k
X-Gm-Gg: ASbGncuwF7eDkHYw6RTbdl59K+/dHEj/fh2EtYU6B+mIkvK6Nupyd2ZKH7ni+oP5/Jx
	Q/JZZM0U+g2UR214H85AqcgC1tY4TmXMkE19hTqxrW2FCmMnsawZt0KjHHgv8+SVcAHyC0RVHdB
	du3wlaogqoHBrsr6OijK5PP6LNLniW2IXGMmbK9BJXUZ0TWCIJY0azpoP9nFgayagkTTOsCOC3/
	v7j0zjc3OBtYAHHxY0DvQ0Bk1ky2lZjREnDOgzexmIy+BboClmdBNUdDg3Lc5I4cny2U41o5OJP
	lDwv3tNViPVs8UYhHSy3c/iGn+6xILVjCawCdKYLQb5BUvBWkb9C3D9GnYOmyvHLbqB0xpTAps1
	75wZ6mT0bg2d0U1OqvDVUasiecpLJJDH7t8Zbv39kRenTEZprwmmqRXQz
X-Received: by 2002:a05:6214:5093:b0:794:3dd3:a98f with SMTP id 6a1803df08f44-87c20554074mr28562616d6.1.1760695071630;
        Fri, 17 Oct 2025 02:57:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+uuhZ2faNWvGjsfla4IBwM8DyZoVgJS2ll2X9Y+bS8GMrP2glkecYidQ6wG3U6fUy/3KYNw==
X-Received: by 2002:a05:6214:5093:b0:794:3dd3:a98f with SMTP id 6a1803df08f44-87c20554074mr28562496d6.1.1760695071129;
        Fri, 17 Oct 2025 02:57:51 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63b6b1f5b24sm16496480a12.20.2025.10.17.02.57.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 02:57:50 -0700 (PDT)
Message-ID: <8fd387f5-5b4c-48ea-aa3e-f453ddd5b159@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 11:57:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-shift-axolotl: fix touchscreen
 properties
To: Joel Selvaraj <foss@joelselvaraj.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250919-shift-axolotl-fix-touchscreen-dts-v1-1-60e26ad4e038@joelselvaraj.com>
 <8a5eecdd-d80f-4955-8ab7-cf6fd991a3b7@oss.qualcomm.com>
 <267eb29d-b506-43df-9380-3d79798c772c@joelselvaraj.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <267eb29d-b506-43df-9380-3d79798c772c@joelselvaraj.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=aPD9aL9m c=1 sm=1 tr=0 ts=68f21321 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WFa1dZBpAAAA:8 a=PdSRdi2-gu5LpHnKsfMA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=MZguhEFr_PtxzKXayD1K:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE2MDAxNyBTYWx0ZWRfXyC/wZKiQe7sp
 JGsgosWBsYAKsFZ3nff+O68NjErmoh5X7E6VQTdy4Pp6OphmZLaC4sJu59Wt5FR1oZWFfz/5g6a
 AgXkEMzp7VA55pMqjDCGNk9vFBHPrIfFr6BOeRNn6yyRcLss/FazX/pdbV+5Wo0AJiH+AktOnws
 YR9yGLlHx5C1XjqGLk08qHpW/tHWjMdWC9tSOMy0JdTdQ//MsvskgsbRD+I1Ub5pMICgWDwk/CW
 rJKwUuz85jo8loPFEl+LspJwj39JioLwf3rj0b4J+OEaTEZTo5w6B0Q56XhbeZquPeRPEtfjMZW
 uDecUkbVsTDA0ZN1K7Vplquy1Eem3MhuD11s1FS8+0ol2tYRnXzI0YuahckIV/zaLcGBPtyk7cC
 dR39s1QxdIUagAEKVtv7o61D2dN4UQ==
X-Proofpoint-ORIG-GUID: XMmJqNQfnT2lpZ9vd1yJ9cahw-Zq0Bzj
X-Proofpoint-GUID: XMmJqNQfnT2lpZ9vd1yJ9cahw-Zq0Bzj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510160017

On 10/17/25 9:13 AM, Joel Selvaraj wrote:
> Hi Konrad Dybcio,
> 
> On 10/6/25 9:49 AM, Konrad Dybcio wrote:
>> On 9/19/25 11:02 AM, Joel Selvaraj via B4 Relay wrote:
>>> From: Joel Selvaraj <foss@joelselvaraj.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 17 ++++++++---------
>>>   1 file changed, 8 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
>>> index 89260fce6513937224f76a94e1833a5a8d59faa4..d4062844234e33b0d501bcb7d0b6d5386c822937 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
>>> @@ -434,20 +434,19 @@ &i2c5 {
>>>   	status = "okay";
>>>
>>>   	touchscreen@38 {
>>> -		compatible = "focaltech,fts8719";
>>> +		compatible = "focaltech,ft5452";
>>>   		reg = <0x38>;
>>> -		wakeup-source;
>>
>> All the changes look good given your commit message, but you dropped
>> this wakeup-source property without explanation. It's fine to do so
>> if it's intended, but please mention it if so
> 
> In reference to the touchscreen/edt-ft5x06.c driver which is used here, 
> I am bit confused how wakeup-source works. Does specifying wakeup-source 
> in dts automatically makes "device_may_wakeup(dev)" return true, even if 
> device_init_wakeup is NOT configured in the driver? I noticed some 
> drivers do:
> 
> device_init_wakeup(dev,device_property_read_bool(dev, "wakeup-source"));
> 
> but the edt-ft5x06 driver doesnt do the init, but directly checks for 
> may_wakeup in suspend/resume.
> 
> Few scenarios based on the driver code and my understanding:
> 1. if device_may_wakeup will return true when wakeup-source is 
> specified, I probably want to just remove it, because irq and regulator 
> is not disabled during suspend and this will likely cause power drain.

I think this may be the case

> 2. The driver has an option to specify wake-gpio. In which case, the 
> touchscreen is put in some low power hibernate mode with irq and 
> regulators still enabled. But the touchscreen controller used in this 
> device doesn't seem to have support for a wake-gpio (atleast based on 
> downstream code). So that is not an option.

IIRC Shift was pretty open about development collaboration.. maybe you
could reach out to them to confirm on schematics that the GPIO is
absent?

> 3. if device_may_wakeup will always return false since 
> device_init_wakeup is not configured and since no wake-gpio is 
> available, the irq and regulators will be disabled during suspend. 
> Therefore, the device will not wake up from sleep even if wakeup-source 
> is specified as the irq is not going to be triggered.
> 
> So probably no point in specifying wakeup-source either way I think? But 
> I am not sure which of these explanation is correct and thus not sure 
> what to mention in the v2 patch commit message. Also, there is a 
> possibility I am not understanding something. A little help from someone 
> will be very nice and sorry if I am obviously missing something.

I think this is intended for things like double-tap-to-wake, which
obviously need some hw backing if you don't want to just keep the
touchscreen online at "full power" 24/7

Konrad

