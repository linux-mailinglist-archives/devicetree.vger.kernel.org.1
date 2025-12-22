Return-Path: <devicetree+bounces-248805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21023CD5D05
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:30:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 21C0A3009F1B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA16314D13;
	Mon, 22 Dec 2025 11:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jyu/xtFB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TptO/QrL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44673254849
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766403053; cv=none; b=mbuDIZs796D4/I7TBnVuxj2BHMqD5JAERso/v3uqzHGZ0Jr+x+AoSCT8baHUFNv8cC+QsbhZEvzTWO7A812exBvDEFPZ7e+Dl+LhkTfdr0y4q7QUEr0DgXBNcVLORMQM3HFW5dX8DjifnGwBEtGs3yxvZr+OKrtB+milEBCVZwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766403053; c=relaxed/simple;
	bh=J+qGX9283XKPGj9VPHtYDwNAeHDm101bHLdCgphELnY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IuT5xNqeXfJr5y5LohZlaZvbo9kDMP+UC/lbHGukfBetEbis+IVWI3dQ0ro5bjKiE8JBgkezww5lAwpYzbTmDfH7l4r6DdzfQdpndTSdR7KnJ9Gy35Pd++WBisicJJl+r9Hxyt/0Vae27aVL9qkul8eoBcHxKz5ADpr0wbnG+ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jyu/xtFB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TptO/QrL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM6Zthl4117802
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l/50mFVpl+vSF+YtHUv7DBjqqeMMgq2k9/krZo1nbuw=; b=jyu/xtFB+JJlfTXu
	4vpZW5c1EQCPir+DUOrBQkyBUcOXOaY8Ktf8qFev6Ypglghs5W64ayKq+SWu3NSk
	XTF5s5xdawCGco7jKRvA1bdCb9Lu7e3rlVD2Ybnku0k7PteQ4SWzEVr6xXAlCY8C
	UXvCR1vURd++cNXKtc/ojdROLggCvTphV7+Q4j9muOVLlocJgCyyJKX2Umg1w8SZ
	4EZSqxpF1t816xgWNgNHY5JSZVQls6EVbVT5p2DKrA1N4YQLd9butNQY6SYOfVNg
	V97aISE/05SRQypPNmV7shaU0zOYmZ7EKOguJOQp5Ih74GZiMeq21UYgSyAiJBrd
	rqK2NQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b70v28u98-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:30:51 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed7591799eso93412001cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766403051; x=1767007851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l/50mFVpl+vSF+YtHUv7DBjqqeMMgq2k9/krZo1nbuw=;
        b=TptO/QrLY4gC4emiIYDMlNLClvNAVWTqFxbVFrnDGX3sLiibzzt0kmfrW94wjGAs6B
         sDUPlTvWRGB0Y5IHDz069QqJIRtO/ZchxLvD4vebNzHP8rofBWQ90UmM2wrMpiSBelzh
         4SaCXKdznHnPZjUoizPw22NaI7t+reeOamS4EVQeyep0y7zuZk0ovDON/rbGuDauwKzT
         IH0WgR57NQRuE6WJVD9wB9eq8nOWSVIn2haqPL8Yp09eBBxCXaWHDq8wOf5xs/rJgJa1
         nJo4BrCbBVDGZc0uJYxEahDBD1e5Uc4a6ycoaM0cy0KVFRwRK5tOGFLIRRXVfe3Mk39M
         O1Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766403051; x=1767007851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l/50mFVpl+vSF+YtHUv7DBjqqeMMgq2k9/krZo1nbuw=;
        b=uNSIrsF/0wFrLY4izzdbp7AcvtIt/FEl0sgDVww5hplIVjTIudziKjEzPBfZ7FpAuq
         E6lrttDhjetBdXG7PYZJ02dJySd3FF+RKgitBTqUHNltyWtIWB7+uSnK3upwCFtSj+Gm
         pGnaASelpbsVXeqVkM0DrPOpFKqWw9ct/DlzOBU95LybZXQiM4dYDufJ1zbX81fx/8qz
         0D2XwRA8/08GshHYwzomfpQ6ThwaahzmACPJFKmqzOftJ2US005ld//wQGVoof/5vU1t
         ftBCZ5209beZtPIbVVsWNBZ47z52XQdJxDeXL/pVe2B7DQZtv560sSRve1A2F8kqJXHC
         GYmw==
X-Forwarded-Encrypted: i=1; AJvYcCUD1j8t9ig3ab5U+JTxUeAxG8Ukb/1dMG1zzQQtgX8lccKWqrvkv86S5NSQcadv8a/c8gHc29MuyIKP@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkel2UJrbJOkkvjAa2N3Bz6nzcHumI1RvnSmv2JrATvOPCz8SW
	wd8LXxObALIDY7dXD11Zawzb0I5ySCQbtW+qgyEeVSBqYbVzevuWDUPzqUY6mR+VcujRUVmQ0RX
	BtjfMO+Ltsh0BlM1HZHmylFBNDyL4yVBORqt7ZlzPzVDGEBrfEaAVuJ2+SZ/Tn7uA
X-Gm-Gg: AY/fxX6+Nt8DFXW86wUD7kC2lzRBkRHxAkvlWxy4O1aS79kytmmXLGL0xFbyHjMSsLQ
	nUgInaZnRxPzyQbD8yUFNY/ob+OqwtFOJSya5tlJWiq0nf5eHMRPt5EUqTZTypteA0LFw3CFtFf
	CVzftpinlx04gQyTIXTliqZFb5UyfptNzWNFAbdIU9w4SH/fpztjZrpLUPnF7LIH2Y7cs6+8yGH
	5osY8mpxP/hPth8ipF9fFvR4BbJC5y/9sDyNj61/s4eCRNpOIN4mID6mj/80c5XpjKeui0UDEJr
	KDflML6P2MJmVpYmwomvf0kYcirrv+3kIo1CPkiPKWsyZrNBMUD0/0Pac3leZgkJKARChKHlY3/
	C5ESY4XCxh8jSONc1F0/MX7d4rHPhppv7NOdI0co3cnZslh61rFgW3zuJF4iR23ECEB7tsFI4OG
	ygqrmJFIwH+eWg
X-Received: by 2002:ac8:4993:0:b0:4f4:bfc8:b7be with SMTP id d75a77b69052e-4f4bfc8b803mr79264271cf.12.1766403050497;
        Mon, 22 Dec 2025 03:30:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwPSEdGj2eB0wB84JQpAY0aD7J8Vf/6//zqzjefaPQdLMbLICsvYwAoThyUi0Lcjt/sdy05A==
X-Received: by 2002:ac8:4993:0:b0:4f4:bfc8:b7be with SMTP id d75a77b69052e-4f4bfc8b803mr79263841cf.12.1766403050050;
        Mon, 22 Dec 2025 03:30:50 -0800 (PST)
Received: from ?IPV6:2001:14ba:a073:af00::4c9? (2001-14ba-a073-af00--4c9.rev.dnainternet.fi. [2001:14ba:a073:af00::4c9])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-381224de366sm26808781fa.2.2025.12.22.03.30.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 03:30:49 -0800 (PST)
Message-ID: <748385b8-0764-4665-baae-5876be334a47@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 13:30:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: Add dts for Medion SPRCHRGD 14
 S1
To: Georg Gottleuber <g.gottleuber@tuxedocomputers.com>,
        Georg Gottleuber <ggo@tuxedocomputers.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ettore Chimenti <ettore.chimenti@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
        stephan.gerhold@linaro.org, wse@tuxedocomputers.com, cs@tuxedo.de
References: <20251204155212.230058-1-ggo@tuxedocomputers.com>
 <20251204155212.230058-6-ggo@tuxedocomputers.com>
 <b2ofd5pxifqhznqo25byc5jksneeasy2zlli5jpqezllj2ja4j@tscydfwesmk5>
 <3f52419a-2494-4852-96cd-dd5607e45760@tuxedocomputers.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <3f52419a-2494-4852-96cd-dd5607e45760@tuxedocomputers.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vXZ45aK9OjNfJE97YzA-yyDFAlwevlD-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDEwNCBTYWx0ZWRfX1codVtnIMMvZ
 6kqhuA7LzVVOUd00tp7/MAk1oBI9sPazs2eY/lJAhxd6wXeG3B96fGOyPJODqFj93227jOuwYI/
 QT6OA+Kx+DQejMkuv0v45rHoCDJSgXC9aRF+fZVWU49+29PtE78RaeRpAh5FiJ4YCmYmHZ/7Yjm
 PxK+anz5mfSeyWWJSq1tbasIIJkrucaK50vpBrgHfyjwthz4VVHNUciBE0K7muFoKweB7xjLOz7
 yEzrUHUH2QGyMH5lwtMoG7CMZpnWXgDSukgwbfNbUXF8Au79O1gIO/HorcbfqY7Vj1lT3DkES02
 DducOXes8m96TDHfSgxs4sBwKXw0MgeX2wXdkk49fRUfr+Q/+xf6LI8Mr9Sf+JPYig+pX3gE9q8
 8J8+z3jxgQqjLCnq54OKa856ek/4lcHxgdTMeytbUdf5Y4938m0+i5GgtYsWrfoFS3zPJNq5QQJ
 o2rFy5C+xl6Q7jci3Rw==
X-Authority-Analysis: v=2.4 cv=YOKSCBGx c=1 sm=1 tr=0 ts=69492beb cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=yDUiu3_GAAAA:8 a=tXVFJDDfIfXu0v-9UuwA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
 a=gafEeHOdjwYkg5oUpzAY:22
X-Proofpoint-ORIG-GUID: vXZ45aK9OjNfJE97YzA-yyDFAlwevlD-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220104

On 22/12/2025 13:29, Georg Gottleuber wrote:
> 
> 
> Am 22.12.25 um 01:32 schrieb Dmitry Baryshkov:
>> On Thu, Dec 04, 2025 at 04:52:07PM +0100, Georg Gottleuber wrote:
>>> Initial support for the Medion SPRCHRGD 14 S1, which is based on the
>>> Qualcomm Snapdragon X Elite SoC (X1E78100).
>>>
>>> Working:
>>> * Touchpad
>>> * Keyboard
>>> * eDP
>>> * NVMe
>>> * USB Type-C port
>>> * USB-C DP altmode
>>> * HDMI-A port
>>> * WiFi
>>> * Bluetooth
>>> * GPU
>>> * Video decoding
>>> * USB Type-A
>>> * Audio, speakers, microphones
>>>          - 4x speakers.
>>>          - 2x dmic
>>>          - headset
>>> * Camera
>>> * Fingerprint reader
>>>
>>> Co-developed-by: Srinivas Kandagatla <srini@kernel.org>
>>> Signed-off-by: Srinivas Kandagatla <srini@kernel.org>
>>> Co-developed-by: Ettore Chimenti <ettore.chimenti@linaro.org>
>>> Signed-off-by: Ettore Chimenti <ettore.chimenti@linaro.org>
>>> Signed-off-by: Georg Gottleuber <ggo@tuxedocomputers.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/Makefile             |    2 +
>>>   .../qcom/x1e80100-medion-sprchrgd-14-s1.dts   | 1515 +++++++++++++++++
>>>   2 files changed, 1517 insertions(+)
>>>   create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-medion-sprchrgd-14-s1.dts
>>
>>> +
>>> +&gpu {
>>> +	status = "okay";
>>> +
>>> +	zap-shader {
>>> +		firmware-name = "qcom/x1e80100/medion/qcdxkmsuc8380.mbn";
>>
>> Please use the `qcom/SoC/Vendor/Device` path for the firmware. In your
>> case it should be:
>>
>> 		firmware-name = "qcom/x1e80100/Medion/sprchrgd-14-s1/qcdxkmsuc8380.mbn";
>>
> 
> Ack, but this patch was applied 2025-12-18. I assume there is no way to
> change this before the merge into mainline, right?

I will send a fix later.

-- 
With best wishes
Dmitry

