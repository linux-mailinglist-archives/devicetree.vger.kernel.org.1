Return-Path: <devicetree+bounces-220591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 413CBB97F63
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 03:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7250B1AE22B9
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 01:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D821F4C83;
	Wed, 24 Sep 2025 01:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fdADJHtk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DED01E5B88
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 01:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758675623; cv=none; b=iZSu8KIYn4Fbqn/+zcWGn0Vt3OwE/A7buUelYCwbSbUd8nevMVpa91lBPhUSWsPrY0wzaA0O5guxh4Z6oFYncP+vjhnMtPWTCLr/vD61zDaWhBV9WcEzkv82PMBh4Cr7XigjflcWjIG847sW89/j1LwMcf7kr/1M96jD3EbDGdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758675623; c=relaxed/simple;
	bh=aPg0UmtWDWWN4/58XT6GxNp1y+uyLy8yBlL0KKGR5cQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=PKj0GpYacvR1QIFyevKeow/8ho2AftEkohtnTQeVvPGOHZngTU+wHEs1TU7LOZqcKCn6BDCRvaEZv8AXc28QWb01RdhF2m4TnlC/UGUpLSTrSnf4g+EAJP2Rzs/mFbCXxVq0/UNIeLXkt+Zvx7rk3pbPUeX8DYSHMeTKUuGPa3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fdADJHtk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NFMN07001985
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 01:00:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X2zvsIx0xpsseLnuqD3wgD1uVrKng7sqp3Iah6620cQ=; b=fdADJHtkDZluEdxf
	dWy2qaD1z6tiE0NDephEw64aP6tE4TUKhFxUpOnASzJfCsajURWkEQgWLmCSSA4o
	+SmlVg7B+MVPs/l/omMhm8Mf9EYVjUAqNNnzkVpXhexxfcJp+yYoRK4L2EXQyXkJ
	ragWJMOYEpGZ4R7sC0r1R5mUTuEw7uqvT4sBodFaG0IITK4ourkDoVXPAT9U+P/w
	7p5IUliSUv0Vo3SZh7pU15QAVON0Oe13AfYqYUV2crBIzWJWLTzzu/IUCmI2sOCw
	vaDZFybNnROri0cEDaIdbrsqbRA4atH/kIh4lSTSXSzPCLcSSMTaXTQv3gXmfoX6
	0nWlJA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fjesg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 01:00:21 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4f8e079bc1so4320582a12.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 18:00:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758675607; x=1759280407;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X2zvsIx0xpsseLnuqD3wgD1uVrKng7sqp3Iah6620cQ=;
        b=UUHPaeB5JJbrXb0n1GlvKQ8EZIynaW/SPFpueuGBgXU+jN89StK05yUXvgf9HEKA7E
         sTQGgxVohdlwH7G279ZP1AN1rgTWtqpeOpujqT+v6yFpHfQKyd8BF4sSsyJ6/0CnucQo
         mWs1qqtIhCMSfVtGZ48k/zI3P9sLo5BDbGeeFw8y0dSiuP208LXKnu2HhCd8G8gyafBA
         YfhozwRbyxLR2H56EaEy5uiO8k+i2gAu+rIPoVdvEThvI/LsFt6M48/Hvy3gd+Vghdsf
         LDgcwFiRcTzhLR8bw1qpR/5TT4dsDxdTpbicTEUvNkHrenWJ095Br9izQ/IK079NyeIF
         gCzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVND3cQa3PKWYPnt3s2pXHkCyilTw2DjJEkREmQ6vvVBCoVVGg5PYxttVscZYobpP2PoSjIOb4bnCvj@vger.kernel.org
X-Gm-Message-State: AOJu0YzU6MD3iq3MWXAc3Bz93tSgdMtICqU4E+pbnGaSilMTcOdhFmC3
	P4Ws9iRQH1JBUyXoZ6XafxhdhmY6XCfs0S0P4r5pfneToQ2ZOAS3IdN8Knti8zwKc1bvl9EpCog
	Yz1LEVrvqJoHj/KKJuhOu+W3uoN2kkzhFTMUykgr8oxnXhAZmoNrIO7aUIA+gciy6O/zTMRXp
X-Gm-Gg: ASbGncsSfAP+XmZLFFA6xMwgun9VJjKjf1LheMmnivPR6um5EKFAV9p2/rlwpO9DkuZ
	+ZkwjKo72vXM4T16SOMTqcG3n/j5IwVC3IbybUq8I4CZeFsAGc4JoUOeXf6c+BzeWldnG9EOa0A
	HdgANDP0kO4/AEjhXyL2ifWjA0uIoXJ0drHTKDfH4G7XjnsJ9ozAI0IYEtLnVkAjL2EZN1CdPQJ
	rs7M5QDtW5ZaBHtlE5F8WPhSdGJCPwlTNVrfAFJWeAKPrn3+b4KBSjCqGxlVLmaKh5OiSwjkKBE
	onYsLyhDBAWNzxlpiumId5bZ6ysnbgev/heLxrH7nuQcPgAs+xfYFswdVWlJPHDN2yksDszfDtY
	5uep3Ig==
X-Received: by 2002:a05:6a20:3d87:b0:252:2bfe:b65d with SMTP id adf61e73a8af0-2cfddc6a137mr6516266637.2.1758675606620;
        Tue, 23 Sep 2025 18:00:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0NAzGMlXuVw5j4OF/iTpNasadjCiM+4Mz3TJZj0Y3pZnZIJg5KRsof0hAuREl2zzoKFq8fw==
X-Received: by 2002:a05:6a20:3d87:b0:252:2bfe:b65d with SMTP id adf61e73a8af0-2cfddc6a137mr6516229637.2.1758675606142;
        Tue, 23 Sep 2025 18:00:06 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77eee36c2b2sm12958795b3a.78.2025.09.23.18.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 18:00:05 -0700 (PDT)
Message-ID: <31f61f93-2e9d-565a-cd5e-4f668ed7d6c0@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 18:00:04 -0700
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
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-4-wesley.cheng@oss.qualcomm.com>
 <20250922201449.GA1235521-robh@kernel.org>
 <554cd2ce-a617-9387-7379-a3c2b9de843c@oss.qualcomm.com>
In-Reply-To: <554cd2ce-a617-9387-7379-a3c2b9de843c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: qnbO7kSW2he2CWQvKP0pD_RlNG_KUZ-o
X-Proofpoint-GUID: qnbO7kSW2he2CWQvKP0pD_RlNG_KUZ-o
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d342a5 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=1x5KiYs_k_UboVqHg6sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX8KDXNx02u947
 al0mgowFIX2WjII/bOuBxbg4r47nDkxNSD6U+72rSe8CVrlRjFUlaVghfoWeK68oYMEzzgQg8n2
 YQaYreTgvAIthMvn8daHkOomBZjWKhf9yDSZHVW+Qocl8r3qNHQeh1gQ9Qqk8PDgybBICuJwmx/
 SFOKm+wz92RGvIN7YePD2KMsqDf5OjEWBjm5A3fYh5k5tTTKuB500OokvCHoYsrJ4jzwoTw5VUY
 Xdi7BBETYnk9Zix8yp79c7OyhWrBRsgDrmHH/36aKbY9DteZb35yBQESGeBJR5c4Aav2WtE7lqM
 +cjPfhXLrbsa15O2NgwunaLlyBQy6k0mT8VT4/rVcfXEsZbJHgEvtAcPmm0xGAyc3XVaa9SejPG
 5iXUNjNh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_07,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037



On 9/22/2025 6:02 PM, Wesley Cheng wrote:
> 
> 
> On 9/22/2025 1:14 PM, Rob Herring wrote:
>> On Fri, Sep 19, 2025 at 08:21:02PM -0700, Wesley Cheng wrote:
>>> Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
>>> the fallback.
>>>
>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml   | 11 ++++++-----
>>>   1 file changed, 6 insertions(+), 5 deletions(-)
>>>
>>> diff --git 
>>> a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml 
>>> b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>>> index c84c62d0e8cb..b96b1ee80257 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>>> @@ -15,9 +15,12 @@ description:
>>>   properties:
>>>     compatible:
>>> -    items:
>>> -      - enum:
>>> -          - qcom,sm8750-m31-eusb2-phy
>>> +    oneOf:
>>> +      - items:
>>> +          - enum:
>>> +              - qcom,glymur-m31-eusb2-phy
>>> +          - const: qcom,sm8750-m31-eusb2-phy
>>> +      - const: qcom,sm8750-m31-eusb2-phy
>>>     reg:
>>>       maxItems: 1
>>> @@ -53,8 +56,6 @@ required:
>>>     - compatible
>>>     - reg
>>>     - "#phy-cells"
>>> -  - clocks
>>> -  - clock-names
>>
>> How is it compatible if clocks aren't required now? And clocks are
>> suddenly no longer required on sm8750?
>>
> 
> Hi Rob,
> 
> It depends on the clock subsystem.  On SM8750, we still need the clock 
> entry, because we need to control the output of our CXO/reference clock 
> to our HS PHY.  However, on chipsets like Glymur, some HS PHYs in our 
> USB subsystem doesn't have this refclk output control.
> 

I've updated the bindings to keep it required for SM8750 and optional on 
Glymur.

Thanks
Wesley Cheng

> Thanks
> Wesley Cheng
> 
>>>     - resets
>>>     - vdd-supply
>>>     - vdda12-supply

