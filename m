Return-Path: <devicetree+bounces-224200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D07DBBC1962
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 68CB634F327
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA832E173E;
	Tue,  7 Oct 2025 13:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rv9836Hx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314CB261B99
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845343; cv=none; b=qfL2ssIzsqrFIXmwKfVXyaO1+4sF4hrzqFnxV/4h5IM0pvvYsOQmZiQIPbm+uo2C4DudFgf/4kK140lHUFqc8X6/HppcJo/2qfcw3U34BSZ/EkMD8BlD24pEuRj/EtaYad9vUrlf1Poo6e9bp/Q9sDSYc0ewfpUBxxd5TaXKRY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845343; c=relaxed/simple;
	bh=N9qdfaqqehWWuUI73ra8Uu9gFKR3Pihqz6Oy79KUWl0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QNa1pN4pV9sg4h2hZ5xKcUlwzEOYFcDJHqTk/XTGUqtDs5ooc1JDy2rFN8SVZ4UfEfqCvkaYj5Gh/9k83K8yW+EVVzxgLIgpkYM5npID7HMa3voXAkYfChF8qt5PeBpPDbAxaAu9Um5ZcncNuzAaYhHLkKaMLo7/j3DRLtzbAvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rv9836Hx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597Bv7nf025014
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:55:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZawunH39fsjLdjYkyzjOOeRauXShTP9A+eqv2749nhA=; b=Rv9836HxAh0K16UA
	RT5Fg1NE5UBd4f7azIwbcPwjlzC3WLWStME7D3uRAHaX3QqU1BzQ4GACSY5quRW9
	txeNwzrePS+NA58J713RFPUXKbQ7Awfhra33g9I9UFf9NroG2gCs/QnVHkjTmFY0
	dyp+wwytoYY4zwKiXtTN0vMThKT+3s+TjBc43sw+Yku82WIIpgdPNdwQBjyYFoWL
	p0/gYITcccsdudY6YY/Zb/V4wBw5D5s/PVBYtmF1JQCldKkdws3+wLdIoAh3Lq8m
	K0wTjIkHXyUDW4KPvYi9uHcgrBMw/pqLkn+ZLJ6OlEQFNZ2gxa4TM5uLPtpxGz5F
	tfaB5g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxn7prp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:55:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e231785cc3so26197771cf.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:55:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845339; x=1760450139;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZawunH39fsjLdjYkyzjOOeRauXShTP9A+eqv2749nhA=;
        b=B/lK6P5ISpi8JeLNWFmg0cUuA+zjnH5KUxz+GWODq8UyrqnpQJdqOCzvEnJeLzsNNq
         ZfgdkIrjP2aqpkxMomaKZyeBZqnUDwF4n+ibvGgtSI7Id5IJ0GcsDAJMBZzas/Kjpd0C
         B3nAJ5UvIXFJN0TWXrDWSL3VNrHXRtC5HgLycgQlFttD31VOIkdyuv7kDQkFzYvZgpY6
         gsyMZlIziP9HEyjVgJdsMWioa/k3CNoD/vNUCoPqlVu+fI2hS9ZBsgD/612AlpMu29OR
         8iLhotQMl++wibOXz9ofYhwEDdpAI7wYFNGXuFTqC3+GVdiYucGV9bOSvLOWUWB8pdAQ
         pjkw==
X-Forwarded-Encrypted: i=1; AJvYcCUd37DoQyWWTdH47uh5NkTPk9Y+v491IpzQACCF6WUZJjSy/Yg9StOvA7DwVzDFlnGnm5eCEhD3gQZr@vger.kernel.org
X-Gm-Message-State: AOJu0YwV0up8xvHUNxVs2qBeWXP7e2pdgwoAmWlRerxaPOBG+o7oMBMX
	guAWTV1zjKIY5kROKLZsdSVIOo5TWBKlnMZ6dk+JpoUXSge8y5XkWg3n65XJhisnS95hEpckUM3
	2AiWrPwm0WgIKmiTtRRChp9gpwtJAyWewmFeGIEwnXn20+DJtwU5XJdCQA1mQWcKJ
X-Gm-Gg: ASbGncsLrn8SfFAnPgv0DrY2mNJO5RIEkox/OdZoaKIloDp6GFNbrIE/Ueqm9cCrCF+
	ws7ptJL/FeCeGo53A4Z+OiugnoQV1TeSpU8SN9Xa3+LNbN6/GH5LOxfLnQROziqB0jgmY1Ljajt
	Mj69IjcIqmHgpGhzcV+MFIlBZVs0+AoyAaz2PCqMUwROvXncCC/G4wMUSYp5kx14ym+v1PlR/oD
	m1bUOYMuWKa6CxdsM6pAIV7d0UQ3cL2VUBmHV5PXUPGqqAZ5Rr4658qEE3fPzxUvgSnNCyE2s3v
	uymzXCpy6hPzktoCYuJBnylmQjveEpzFosBIPY3gtW7QlmM2lzya4R0rwrBvZJhHDLSpLfVM069
	+x3bPbIEvPaFC3su+YGKbekrF5HE=
X-Received: by 2002:ac8:5a96:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e576ab6f37mr148761171cf.10.1759845339202;
        Tue, 07 Oct 2025 06:55:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/aNH7N1c2ZiYNPq20l0pNGWjN0O/b0Y5a0V5Yj5aczYTN0tC9/XNNjnxTio4u3+gGdP2blA==
X-Received: by 2002:ac8:5a96:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e576ab6f37mr148760601cf.10.1759845338476;
        Tue, 07 Oct 2025 06:55:38 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970a4bdsm1403765466b.49.2025.10.07.06.55.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:55:37 -0700 (PDT)
Message-ID: <e58978d6-dc6a-468f-91d5-29d7b0755e79@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:55:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/13] arm64: dts: qcom: sdm845-lg-judyln: Add fb_panel
 dimensions
To: Alexey Minnekhanov <alexeymin@minlexx.ru>,
        Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-9-5e16e60263af@postmarketos.org>
 <de1a7ecb-924d-4ed2-8034-721b8dce69d4@oss.qualcomm.com>
 <ac2d419d-a1b4-4b3f-a07a-4f5d047901aa@minlexx.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ac2d419d-a1b4-4b3f-a07a-4f5d047901aa@minlexx.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfX6w/4AdlQt1+a
 K6Tfxu7oTSDwab6Q5WqMOyXsxojE0M9kXcdKRl+ikrO7/UliEen7XX6Vk1jeVrsSPqymS3KrQVD
 WWwKGZTH9VlRJAw+i9RL5mfIZsU8nSLr/H8CVIkALS5Zi8Q5S7pO1V1ccBdwAFyN9tehXSf1sa2
 +aRmLW2840KR7OptopdAldxpfQnup/7L+uUkUxaW5rPDidF6WxZ1Uqt5WirLruCFTB0rt9sZt43
 tJs8yEJzy5XW18aARGyOdwwMlDAHXjdVymNbc+Om07ruTLpbpdJnL1A017cepj2Qp/s3o3R5oiu
 yuaPwZWnOepulBejrwX/U4PhgF448FOsX0NAfsRDQN07HBQsX670kRxzqIBs7ZZ5WADeIJmCrm9
 ZeIHMIyPJ/Y5j9t2+54qkpge205Bqg==
X-Proofpoint-GUID: -SzhRwPl2IStBN5Y1A6L0glTigTTqd4N
X-Proofpoint-ORIG-GUID: -SzhRwPl2IStBN5Y1A6L0glTigTTqd4N
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e51bdc cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=Gbw9aFdXAAAA:8 a=k_tMZpwa-Rke7L9fme8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001

On 9/17/25 4:54 PM, Alexey Minnekhanov wrote:
> On 17.09.2025 16:59, Konrad Dybcio wrote:
>> On 9/17/25 3:09 AM, Paul Sajna wrote:
>>> Add display dimensions for proper scaling
>>>
>>> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 7 +++++++
>>>   1 file changed, 7 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
>>> index e84b45ed82fd13850ea7ec1f34ddac5b59fc1434..8c1692f86e6ceea7b718361965e78f95d39373bb 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
>>> @@ -23,6 +23,13 @@ framebuffer@9d400000 {
>>>               format = "a8r8g8b8";
>>>               lab-supply = <&lab>;
>>>               ibb-supply = <&ibb>;
>>> +
>>> +            panel = <&fb_panel>;
>>> +
>>> +            fb_panel: fb-panel {
>>> +                width-mm = <65>;
>>> +                height-mm = <140>;
>>
>> It'd be nicer if you moved these properties to the actual panel
>> node (the DSI one) and referenced that one instead (I think that
>> should work)
>>
>> Konrad
>>
> 
> Hi!
> 
> First of all this code doesn't work well for upstream, because it causes
> errors with dtbs checks like:
> 
>   framebuffer@9d400000 (simple-framebuffer): 'fb-panel' does not match any of the regexes: '^[a-zA-Z0-9-]+-supply$', '^pinctrl-[0-9]+$'
> 
> ^^ The subnode is not allowed by bindings.
> 
> The whole reasoning for this little hack is that the upstream
> recommended approach to solve the "unknown DPI" for framebuffer issue
> is to put width-mm, height-mm into real panel node and and reference it
> in simple-fb node - sonds very nice in theory, but also doesn't work
> well in practice, and explanation why will take a bit longer, please
> bear with me for a minute.
> 
> If we do as recommended, device tree structure will look like this:
> 
>  framebuffer@9d400000 {
>      ...
>      panel = <&display_panel>;
>  };
> 
>  soc@0 {
>      ....
> 
>      mdss {
>          ...
>          dsi0 {
>              ...
>              display_panel: panel@0 {
>                  reg = <0>;
>                  compatible = "lg,sw49410";
>                  ...
>                  width-mm = <65>;
>                  height-mm = <140>;
>              };
>          ...
> 
> Then, to my understanding, due to how fw-devlink works, the panel=<&..>
> link from simplefb node to display_panel node creates a probe-time
> dependency, so that the whole display stack probes first: MDSS, DSI
> controller, maybe even Adreno GPU, *AND* panel all probe first, thus
> making the mere existence of simple-framebuffer pointless.
> 
> Additionally, simple-framebuffer probes succesfully after that,
> creating "second GPU" entry in as /dev/dri/card1 making it look like
> system has 2 GPUS, which confuses almost every window manager in
> userspace later. Normally, if simplefb probes first, it gets unloaded
> and replaced by MDSS and does not cause any chaos. In the end the whole
> situation looks even more silly than the fake panel subnode hack.
> 
> Therefore for upstream I'd recommend to just drop any fb-panel hacks and
> to not use panel=<&...> with reference to real panel either.
> 
> It would all be much much easier if we could just specify width-mm/
> height-mm directly in simplefb node, but DT maintainers rejected that idea.

Would adding post-init-providers = <&real_panel> help?

Konrad

