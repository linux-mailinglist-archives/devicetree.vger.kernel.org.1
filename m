Return-Path: <devicetree+bounces-229284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE28BF59EE
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 11:49:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0D0E2501350
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB91B32BF23;
	Tue, 21 Oct 2025 09:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QCS9WO1R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088382741C6
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761040070; cv=none; b=ZsjHqUXgxPiFSYD1ZKTKPhaXpBBgWHQAlrRvdQ81L/WuHqtUrPRFnL4CqL5I3lVa0PXIcr7nzD3Dci9/Jju4zVRDWs55htgkwCN7VcnYVpb+OGxUdHfCc3/QpWnu7y/idO+QVqfJ1r2RgslmCxaLDISK9ydWJ1G5Ouahkk87fAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761040070; c=relaxed/simple;
	bh=LWUSgs+ntXMLNrWNlpepE0odeSrrzoevlr+4MiZjHNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VCal+g27NLyDmXT/9SUKlMOk5Rrv3CDhYPauJMfeYt5Rm0VXdBTOfnGZ8nlsr0+tCBpmOWTnppgKcgP7Ff8S9CWvUn7KzkqFHIybx2iBGcOlVWtax/DecY0HZAi/A9FkeillF+AxhGxYj3H9zTCNmi9fizvAQwKgKOxPuaObb0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QCS9WO1R; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59L8AF88029395
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A5Yfri4rZctc2WzJB/Dz4Ckun09407Nsj2ZILirxlFc=; b=QCS9WO1RKabpMbvm
	D8Jk99WmZ4BnPvq4/b5MbVO0qRmbxhUHq0bcxzRwHGDAEKBjxp+YU12o3tne3q4N
	oHtXkdI9wFg9jTNXVUipuyWveVQFzkoeNtmJnZdRy5iGN26M0h3hDWuU8rS422/y
	HZqHZWzWNuQvGFnMep3U+FfMRvWFWNU3vROqfQ5pu/F34HMlX7HLw814yLxSK4+Y
	DqRWfceRUvgum819OoO/DnmXOJiNwM+bxCRuPfcEklHbFCxuLYPbebSf5Md1+6Ku
	q/dnITCtOWDQnu7oDEo9S7snScK3dCpxT3RMWgGjhVFqCXXwd9G+BAOyJyqK5w9y
	dnwJKA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49wswntksu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:47:47 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87c1c70f1faso21488666d6.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:47:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761040067; x=1761644867;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A5Yfri4rZctc2WzJB/Dz4Ckun09407Nsj2ZILirxlFc=;
        b=Z26xdE5lcm6mgbh3IkTMSq1RQFnMf6L882NydzXH/LSLwiHihYEyig2aikFXyVLWma
         H8Hz2VkB2vofP/FI2NUq3Z0+3L/uWecCDwWzK1l4TH32r+d/Ve5fGro2DxSd8a+Y3ton
         qTnZ70QfUGmhhuU/Spbk8RAuXxv+eKSkIRH92EpnPWosAE8Wy8o2BPPXF+htpvn5AbLZ
         wQiQP+BUvNvdCAx1cXErRqbSOXIoWupFJUmW5MsIx5EOZVZ4P6gCatn9boFVfFA4FjoR
         PK2BeuXGaqzJtS2nVqV1lAfupukn+TVcsCOM5PujKobpqqupMz2VbBRzGObkz/DaTcvd
         X6ng==
X-Forwarded-Encrypted: i=1; AJvYcCVTBAhXIDL97u3T7NUjklC03wXjGFMD3b4rlEk/qqeuPG0UPFIUXTF104lwjYrF5Zr8JazNUbNfAJe2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0jzfWgA7auwfDeCY83kLt9u7AzJNKXvdk+L7PaMMqcCVRQdBj
	s56hF8IBUU+BaNKuRBr2b8wCvQxIQHNdwdzgAA1QzwpfHzMcrU4sBgSQaXP4VbGp6k269OAa2Tu
	+RZ1qd/iEtWJlvHEAIRbsVr1g/5cHoxhtZ6V0WK77Tk5AVJqgGUQNKFVCloOg2D4U
X-Gm-Gg: ASbGncv6n/WhKg6n6hQQemfDNWQlJ9ffOKcPYQ9OpzMiuw5LO0TB40ohkXHVXTu+f2s
	jeu03N3KVyKEFaHrLaviBpi0XrkrSzEdZlCAoI7qA1VPH8GAmccuKTU94lNEiE2hmXll8swFZIi
	IxeImSsbjbsrAtFA5qz25UH6bYvAY7X9jKYlQE/KObTKbi0BstyVqEK4BK3HzqtIf+gQgKULZ2c
	BI5dYEV1UGSFSvfSgePONTRtTPXGEm2kpcemY2ioYceDyelPPaV+RarOWOotY916fBHmS3sGfR2
	ilK3qVC9Mr9MBKWrAsKJAw85K43lAO/wZTLjoxvS7pBb5HgitU0x0t/9g6+IJ08i/qepyT4aKeF
	WvQHlkzrOyKByKUX76hDmzND7sHwMegDKj6lrje3mAtXNfITTV8dt0iZN
X-Received: by 2002:a05:622a:1ba0:b0:4e8:966b:459b with SMTP id d75a77b69052e-4ea116a557dmr18313271cf.5.1761040066644;
        Tue, 21 Oct 2025 02:47:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzeSwT4NYOPDSj7jE+oqcdo1BkVBK0JHZ61OGnrTRCQKhTR1Q5b2mB6h6qybPWjeA3f0K5vA==
X-Received: by 2002:a05:622a:1ba0:b0:4e8:966b:459b with SMTP id d75a77b69052e-4ea116a557dmr18313091cf.5.1761040066061;
        Tue, 21 Oct 2025 02:47:46 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb725f3fsm1027485566b.68.2025.10.21.02.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 02:47:45 -0700 (PDT)
Message-ID: <297c10fc-9b36-4eae-8a56-7556cc14b8c6@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 11:47:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: enable pwm rgb leds
To: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
References: <20251017-add-rgb-led-for-hamoa-iot-evk-v1-1-6df8c109da57@oss.qualcomm.com>
 <cb973808-005e-4920-a35b-3f02a402a78b@oss.qualcomm.com>
 <ada950ed-7b51-4e62-93ff-550c427a73fa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ada950ed-7b51-4e62-93ff-550c427a73fa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: JfUiidyCLdolpE_BAYdBETDu15G_xsMV
X-Authority-Analysis: v=2.4 cv=Maxhep/f c=1 sm=1 tr=0 ts=68f756c4 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tnXrPiAtB4-9hrzugQcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: JfUiidyCLdolpE_BAYdBETDu15G_xsMV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIwMDE0OCBTYWx0ZWRfX6DW/a1lTFulj
 zHTFr/zvi9FcnqHE1t68V1XFEXF7y93TGE5sIckasuxqIfAMsAAYdOvCVdyOjLqCauDmaz43Abw
 Taol4BwIHQ2+3keyg9j4HV59r07cgBwsS3FdYaUAgru6zL3FqPtojE8zxmTv6RMSC2SCH47YKkt
 aMSCsS8ohEqgMycKbX9ChAaTimDlS5YZHWTAX8MKupzdCIT0I9ccz/p0yNq2JOGUXia0aLqp97P
 Som1RH3a1QkMKChRn5rvuGsEdA/UzWpqvjsm+MgsY2nvUPgAEl3Jpl8zgESLiQOkuZdMjhWcaaF
 +6uj2qH/yl6sHPjQLdF/B/UxUelXBItk+IE8KIf3UG3n8/eGLta1baFlk5TSxokDjiECK4GpJIm
 0D1ehvPLtNe83aclTvswuksbkb7d4g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510200148

On 10/21/25 8:29 AM, Tingguo Cheng wrote:
> 
> On 10/17/2025 4:09 PM, Konrad Dybcio wrote:
>> On 10/17/25 10:06 AM, Tingguo Cheng wrote:
>>> Add red, green and blue LED channels for the RGB device connected to
>>> PMC8380C PWM-LED pins.
>>>
>>> Signed-off-by: Tingguo Cheng<tingguo.cheng@oss.qualcomm.com>
>>> ---
>> Just to make sure, is this a "multicolor LED" consisting of 3 ones,
>> and *not* three LEDs that are supposed to communicate different
>> functions (i.e. network, power, disk i/o)?
> Yes, it's a multicolor LED composed of three individual LEDs within a single package—not three separate LEDs for different functions like network, power, or disk I/O.
> However, there's one exception worth mentioning:
> The blue channel is connected to two sourcing signals—the EDL indicator and the PMIC PWM-RGB blue LED—via two resistors. These resistors allow selection between the two sources.
> By default, the board is configured with the resistor soldered to connect the blue LED to the EDL indicator.
> To support software control, I’ve added the blue channel in the DTS, enabling the capability to light the blue LED from the software side.
> Some developers may choose to re-solder the resistor to connect the blue LED to the PMIC PWM-RGB output instead, depending on their hardware setup.

Ehhh didn't know we had to save money on onboard LEDs..

This is really inconvenient to handle in software, because if e.g.
userspace configures RGB=0/0/255 to signal a notification, Linux
may program the light pulse generator, but the user will never
receive it. On the flip side, not describing it here will not let
anyone use it.. I'm not sure which way is worse

Konrad

