Return-Path: <devicetree+bounces-130730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B03609F0BBF
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8AB91888A48
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3E21DF26E;
	Fri, 13 Dec 2024 11:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U5Ych2/y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C831DEFF1
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734091070; cv=none; b=IvzjF7PTrhItZZ9nZGS3RU74/vq3qcUostijodgWZrm649xY0QjsgY5zePW0HxWjTZdMXhz4IWt4rZeeLcC6Le2PzcRMxcO9IG503bD4lXK4A9E6HU/+wnqBi/i4Fb1rQ6NVj9TwlXQDb+q16BS34vZV3ObFL0JI7wCwekiUXks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734091070; c=relaxed/simple;
	bh=hWxxhi/Ocb9YuWh9rCtFliyfqv/yGxNZXEi4SC0mxU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p0UWja+MSd6h1j/DGlfJ9bH2GN50mbBP85Ypg9iFw4mJDDGIMcbAc9uvus3fsWPGU3Js45rUZJ3ozY24Aao8/A8o2OKuN+DHrXHUvS/gii2MVflqwOCpSGN14972MwFiLfGvtnw/WUMiWFBeuQkCEgfd1LehoU4dmnT3DUbCDr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U5Ych2/y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD8rN3F022799
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:57:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aV2tOvQFCHEHOQ3Ctr/HQDJboIVm3LzcOhrYk8KNUTw=; b=U5Ych2/yWxlumiaj
	RDnF3haOepVeZGKt8Ek8P0eOYJx7I5eCYAGfbFB01S7m9KF6w3EOYNB9QVYzPXfa
	1QM+Q//DIUJ7Vgkmmp6QkO9aDmTZBQMIKdtipd1EJPQq8g5ffFYd4eKJL0UQD/hc
	PodHoed8HS8LbDYoaqld2rxtEPMOM+nwCkXoSmwVzzYpsjnw2taCEcqHTHZeZTza
	jSbf/mDT+IAQ3wVSs5kycduiuFiekJQ66N53JQDi/y4V39Kki+NQ6z1ULlZ074BE
	a1xjuclsombDccAiSa+a5ZB8LW63cfIXCm3GA5wP/gLej9LhsArk+Bn2ou3UmE8a
	WxPrKw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g4wnabme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:57:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6f134dac1so20546885a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:57:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734091067; x=1734695867;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aV2tOvQFCHEHOQ3Ctr/HQDJboIVm3LzcOhrYk8KNUTw=;
        b=e4CeCRbEUmdW+JKQyKo+K99GRzhyo3Asplzcb+8wnTKutjG9hv2WI7FYERJQ5r4u3n
         nChfECikNgR1xYyiprl4WgGFGASvUqc5684CWdR+THmO9NOxUzMgOhwspykxQW1yLCw3
         Ije3x8DATAhU3Ljop3ZpRD6YBxQyPGOOuGS6aCuSEBCOlwlDVELKD6sOLPKmoaDuyju5
         VJ1Vimi9ffX+OW2WJC9kGK7GXp25W1vCoaVUZcEJz4vnpRzr3j56wPjsilajiox0Ryqx
         DTRvZogdn+cXimqGyiksiPGEi6Qz8WCyLK/oPrjFt2JISFqy8OT3rt15PyhbPb3V+R0A
         fHaA==
X-Forwarded-Encrypted: i=1; AJvYcCW35YLmYMufS8WViolnl2m0VJuP0Oxt5c+hV442RlK0uNvSwVaXNXM9GiKRzxMuDGgEPFakYVGpRFDi@vger.kernel.org
X-Gm-Message-State: AOJu0YymqhDtYxTJ1V5+88F2Knj31ZGdvPyCIZRiposYGOzVgKz4OHPB
	si5JYA7q2CjpaLgAxrrInYUVW+BJNyFcEmxfFii4rr2noj0q+k6ZLYUAb1nh3HaeQAbnjzablH/
	7N807jc+PgXOzCa2s5e/nGlzWZWyD1S71gHwJA1tA8s4TjoHywFbYwZ5F5kHc
X-Gm-Gg: ASbGncuywxJP4UXThJlwvN8DX+vcaSAO/SDEV0tuxFi6MNpB1xdJH8QziPd1N7LxTO2
	tindx2yzZgXVVsd5n1p2EH/OF/MNwO5ODQSabE1Fs5Cq9B9H21h+mvvH7vEvKcrmM7nP4YeUEsM
	PmjRACdIkcPtAkFWYDrx3qtTBrHvM8ri+LbS6keMSx8DeLG57D3x1luTyvuXZbyhpCkR5aMqUUa
	waME+9XlWGCeKsPDV9gM5+BkfbuuF9hjquhNZdwMtsfJq/9byjIBxnuGHLZHQFM+fUdI54/iuJQ
	FxGh9/RPXpf5xQ0AYsbU0SNDCMSjaeG7/EBw
X-Received: by 2002:a05:620a:191c:b0:7b6:c405:b586 with SMTP id af79cd13be357-7b6fbf19210mr116122885a.8.1734091067012;
        Fri, 13 Dec 2024 03:57:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQprqSgLBubKgdWWbYTqCPgecNMsXyZimyUAw2EWk/tIKfoQvRq4J7ARIOzuIal/zHJt59kA==
X-Received: by 2002:a05:620a:191c:b0:7b6:c405:b586 with SMTP id af79cd13be357-7b6fbf19210mr116121885a.8.1734091066667;
        Fri, 13 Dec 2024 03:57:46 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6a59f7bf6sm471226166b.93.2024.12.13.03.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:57:46 -0800 (PST)
Message-ID: <58fefb90-a28b-4460-8837-14186d44ec1a@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 12:57:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/14] ASoC: qcom: sm8250: force single channel via
 RX_1 output for qrb4210
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, broonie@kernel.org,
        konradybcio@kernel.org, andersson@kernel.org,
        srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
 <20241212004727.2903846-15-alexey.klimov@linaro.org>
 <ae57068c-5d73-459d-b319-46a582ed7f3e@oss.qualcomm.com>
 <D6AJWNO2P6MR.1ZSDAC71W3SS2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <D6AJWNO2P6MR.1ZSDAC71W3SS2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: iI8y1caVrF-YhaFu6hCHVPXd-XfRKyUj
X-Proofpoint-GUID: iI8y1caVrF-YhaFu6hCHVPXd-XfRKyUj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=625 spamscore=0
 mlxscore=0 clxscore=1015 adultscore=0 phishscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412130083

On 13.12.2024 12:54 PM, Alexey Klimov wrote:
> On Thu Dec 12, 2024 at 5:22 PM GMT, Konrad Dybcio wrote:
>> On 12.12.2024 1:47 AM, Alexey Klimov wrote:
>>> In case of mono configurations we need to enforce single channel
>>> output. This is required for audio playback on QRB4210 RB2 board
>>> since it has only one WSA8815 amplifier.
>>> Implement data variant for qrb4210-rb2-sndcard with
>>> sm8250_qrb4210_fixup_params() that does that.
>>>
>>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>> ---
>>
>> Would it not be enough to set channels->min = 1?
> 
> Enough for what or to do what exactly?

Enough to make the rest of this patch unnecessary

Konrad

