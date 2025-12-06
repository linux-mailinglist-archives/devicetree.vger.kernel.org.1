Return-Path: <devicetree+bounces-244961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DE8CAA9BC
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 17:10:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 769B23007C99
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 16:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADE8E2FF178;
	Sat,  6 Dec 2025 16:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zesh350t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PoPWYrou"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD582F12A0
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 16:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765037449; cv=none; b=N9byOmg2nMRUQHdjPFjNuPuka8o9T1eLB+OoyyU2dV4dWLCyCJ6cocQyw07RupCZJ6jOxgOnaBzByax9tcCIaLy2+PCKGqUR1hNnvWeeltp1mj8FL/Giway1heXi12FWCtwLIdaNupz+uO3S+3/YV75MBeYAdugXIk2S9VIvpAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765037449; c=relaxed/simple;
	bh=0ZE8Jfb1gslOWBLsAsVh3legGLIoOmDzXgppKZKZCjE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=mHDh+pR1qS9OnOGQ1HzxYYahwd/UN2lKsUcBPoc/HsI2pUOo40VM8Y2SpRnk/ERwM1t2f54jhIfEkeLkfoMF6NksNiComMl0bTFsWYWarVFInx7XHCN6dZEHKKA4DTf1cLnOo2Z4i4TlkUQLdO+YpvYCWevtLhSe3eXpmjk/Ls8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zesh350t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PoPWYrou; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B64CDQ72272434
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 16:10:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o6sTSmYnZ12jK2IzQcfjxY9zJ9YOdaK/5r5QyG9+/88=; b=Zesh350tHTRUSRQx
	C7DwTh+Da6FpRwodhJVF/lTnPHmAqnIVCy2RRIpf33/3aDE/0UPn728b2aHFblJk
	GsIVuqTZTdSOeTR7554aS32s+bSU1or0zTEhZF5c1TUEV5eHTxIqJbEilKK2DJrE
	qCPvbOjHTn9vVaAIpD+0OjW/pvtFQl5S5jMtoqXF0iWi3e1igpScxh9wAgr3o2sI
	BRW06oQocrk2Ew9XtKjChRy8h3sWS1dognp69PuIG1qEQKOS7Rs493WRNBGSQb13
	kd0LFGBE6q+b0bym7alAIXMuPZC41RLv7srnMrxdhvbwM4Jyp9EFCQ69Ed0gx5wE
	ShUrEg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avd8e0xx4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 16:10:47 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b609c0f6522so5403030a12.3
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 08:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765037447; x=1765642247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o6sTSmYnZ12jK2IzQcfjxY9zJ9YOdaK/5r5QyG9+/88=;
        b=PoPWYroue+dF1cQszD0FoQ5Iz8AKLIqCUXci8TVpsp2z/7NI/FWe/Wr6OY8KMuxhJg
         6vtkS7qQEM8U/odyXQU3uTExDCTSIVQAOjs12xRQV/7C5dstJI2QCapgFvpXf+BVhaCi
         hcB2mi0+2YB2wGbhzcQ0jBWE1/EEk8pLnBcgK1vX3gcCMWIN13pnIE3kp+yginxzE+rl
         FawWSNf5uh/lVZzdYUf2+5AjPiBz9S8zF6RqP0OlrsDueXKxcXTpCIoiR3QoIq5BXpMh
         s4WlaPcrynrsNy4dkVXHjauSytaxVpnCqGGbTsndP6soVU+I4wjZ/cb0E/D5lOOl7XxX
         sU1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765037447; x=1765642247;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o6sTSmYnZ12jK2IzQcfjxY9zJ9YOdaK/5r5QyG9+/88=;
        b=JHlchpgytD6+xaAu3UmPq4D1jcsbuDSkypXisQMpVhTVXQg0y9cYsaJSfavufuG4qh
         EVdfhhUMhdfSDT396JYyLPyjdU4bLcG1RFnLkqLL3y2hb3IiQK5i01/rNIIJ/EGUnYcR
         H9X845BMxsr5JiRpVbH6hVeGZ2HowOFGA5kv9AhHpAjHa+iqKfWVgmCxBzHyw0BaiZSv
         VsEzI3SPmz73RaqKmc4N3GJeG9XORlvxOAgKpXZDcFRd+XVAsUaFnGBixY74KgiwWdXt
         AMF3gfEBf9Ui3YcGjmxX+TwGsDRokaaqOU3xIewQEuXhspiaFRbO0ylDv/P6Uppz+Xdg
         WS4g==
X-Forwarded-Encrypted: i=1; AJvYcCUJW0/fUtbUIoE0il3khHhgvCSbA2Ji+8wHGcifSIs5HU+xxehNzI89GDIDgZYM0hkAYIDu7Zkbj9uq@vger.kernel.org
X-Gm-Message-State: AOJu0YwmUZK/cJfVze6ITlyR4xnsmFyqmqUlxUiGnUNNB2By1UDn1IPP
	kxJ/0YPapA4XQSzKO971vEra0o23axjfGVbLjKq/ES3D5T38pQKTlwLUPWxdMgU/5Y41TfagzSG
	PE0dzOZAlAGz7KiwtI6vlYe/q1OoCXYiyE4StigwMa5jtGQ4NtWR8GqObstStxDmQ
X-Gm-Gg: ASbGncv9eCE7xvoK9mbJHsvDX4QH4g+GAp58S406DvuNtE5pmvnC2idf7wKwJr8JV/f
	KufVlXLX7flcH0dHHoPzBoyvfftila9HwxMQzDXvF5FkATCPQDRtGNP2ffs6DxSjF7BzRkLhOwP
	KGJLTLWRuGFFwTqXGxrIWpmNRb+IajygC9boxamkVWABUR4uNsoLSKjQL41TwGtkN/7UQ4I3CCd
	SQ73oI2Y0Rk5jff12YJmcz5AcpR/e/UtOg08CARnTUtPx94PaIsrVNcVD8bKAYSPc07/urfsSBV
	bxzW3Uw8cuf5Bk4eFWzQvyunmFjACvSP/Z/45pgba9ok7eM2My9qBQWtDVdBekJM95rmYhoihqh
	L6B/BpYTpEi9s7YcouuyovPmzcre7iGX80QaXy6tsojA4cg==
X-Received: by 2002:a05:7300:b0a8:b0:2a9:97bd:a844 with SMTP id 5a478bee46e88-2abc71cfb2bmr1896740eec.21.1765037446802;
        Sat, 06 Dec 2025 08:10:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGBUiVy9ceq0w+zFGZdt77CsGP9QUEEwN6v+h/m5a6bGx9ZanfK8WOLASaDYz7J6zGfR424/A==
X-Received: by 2002:a05:7300:b0a8:b0:2a9:97bd:a844 with SMTP id 5a478bee46e88-2abc71cfb2bmr1896723eec.21.1765037446284;
        Sat, 06 Dec 2025 08:10:46 -0800 (PST)
Received: from [192.168.1.3] ([122.177.243.159])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba8395d99sm35322770eec.1.2025.12.06.08.10.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 08:10:45 -0800 (PST)
Message-ID: <377a0412-e49d-435d-8136-ebcd9fac9e7a@oss.qualcomm.com>
Date: Sat, 6 Dec 2025 21:40:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
 <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
 <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
Content-Language: en-US
In-Reply-To: <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDEzMiBTYWx0ZWRfXzV6iAyB3ODrm
 puGNYUCScpdBMSujaFwfaX+v9SC0TQQdXYDcYWfQatotTH3yhhY2miB0tOd12PtM/i5CDiDQ/IE
 0zc1WO3dD/QQ58p1GxTfKFcMt6FWvxi+DNO+dokT0MNNBMttOWnvN/Hlp05aQl76xlf0Pgv8BTy
 ei+qhFlUjHpaX2WvR8yP019Muqr1WqxYoukI20Ok1BZkeV1k1yZ8WgSv2ReA7tPmeTwEtTLSv1i
 a5zJMVUaSAbOZJifwDuNhoQsTzGvg7QrplMbihtAjKoxU8ITxCQhjyaRPd0UajCOfInY5Elt+B1
 s/Z8Nq/Bj+NQNV9UEVL5k1hxG79qcx2P/hSYr7bEqcIiGhGv3mKjzmIAllMW+/fuDJPf9TV0hz2
 c0FCKHI9SF+JsckPY6ES47JI5Tx1fw==
X-Authority-Analysis: v=2.4 cv=BqaQAIX5 c=1 sm=1 tr=0 ts=69345587 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=mGeNq4HQZpM0LKVKY7z1pw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MsxH4LtXGSFWTCPOqMgA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: n5CoQWP19jmOFqoDqa0aExfX3KPix50N
X-Proofpoint-ORIG-GUID: n5CoQWP19jmOFqoDqa0aExfX3KPix50N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 phishscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060132



On 12/6/2025 4:32 PM, Krzysztof Kozlowski wrote:
> On Fri, Dec 05, 2025 at 10:55:36PM +0200, Dmitry Baryshkov wrote:
>> On Thu, Dec 04, 2025 at 10:16:42AM +0530, Krishna Kurapati wrote:
>>> Add squelch detect parameter update for synopsys eusb2 repeater.
>>>
>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
>>>   1 file changed, 8 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> index 5bf0d6c9c025..f2afcf0e986a 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> @@ -59,6 +59,14 @@ properties:
>>>       minimum: 0
>>>       maximum: 7
>>>   
>>> +  qcom,squelch-detector-bp:
>>
>> -uV? -mV?
> 
> If thi sis adjustment in ratio, then bp is correct. Some sort of
> explanation in commit msg would be nice, but I don't want to stall the
> patchset for that.
> 
> Assuming this is indeed ratio without actual SI units:
> 

Yes, this register values indicates % change in squelch limit. Hence I 
used basis points instead of uV or mV. Will update commit text accordingly.

Regards,
Krishna,

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 


