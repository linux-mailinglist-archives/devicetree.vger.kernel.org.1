Return-Path: <devicetree+bounces-150978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD58A440B6
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 14:28:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49C5218875DC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D11B12698AE;
	Tue, 25 Feb 2025 13:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZL7DIzay"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF4926989F
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740489934; cv=none; b=m0dCHufmZd4cZYcYCnbWihdLjFEvoMiJDkPY6aKAOpmJYhzlYa13Hdh73NIzoJWLpAlqvLKz19bFOFxIqWcURdDBVpK337+ykxYfJ7B3DYbV1Q/ltPzJW/BY6GpjgpaReqKhWz1H+/PwJE+X66W8HZlFBjxAgPSkqoWIIoLbWdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740489934; c=relaxed/simple;
	bh=dvkgY9j8ojAQTguJ3EVyiu7M3f7f8wi6+K9BQusSw6E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XuXNZlbaO/8XWxMQ0dbk8caF93yqLoLvvVKW6Ufe760ip82K9h84Otoku+KallikNxvjZr1ae+yzPtxdy+8CbcHvkFB/cE9K5VUVeE8fLdSHNSOUbD0jb/JOwcVDRJEUsop8CCnLW3pZmGw9j7p56DIISDpxJkohvnb2K8+SOB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZL7DIzay; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8F7xj009173
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:25:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5mmpLZ8VgP/27nMfQFbOtx5Wu4HFcYY/tpK1+Z8cAM8=; b=ZL7DIzayGdXqCQ3X
	gy3YXrL5tm2VFOBaE7ZJowUtIdpLxOzumiu9cY4hbdQSNbucRU024M/HVmsE52dX
	cicgl5ScipIhi2tMnZq9UwzDrWb2iZ0CktuvMkYOLbNwmeKRy0Bz0lAE1FwjbkkW
	53bPWVQCpEK6fG2ywKNucP0ze+p/5mttq9A/EzrF7oJMYCPxx7ndi7vMBBA0g31p
	ofUwPR98+4MIGN3JBRli6tY/agoJvlL+1myYpyRUzr9NbSgG8nf6WZPwqAtNpikd
	zboO65KUlKUuglxgg33OC3i6GnK7a8jD9xwTbQ9xkLopmduVReSfozkWcY2rv7Yt
	gn+sLw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y6y6ryda-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:25:31 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e4546f8c47so12442486d6.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 05:25:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740489931; x=1741094731;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5mmpLZ8VgP/27nMfQFbOtx5Wu4HFcYY/tpK1+Z8cAM8=;
        b=U92QcpngPdPBiEjeCQ1noJGY1jKbL7M90JBi9jpjAxYSf/pa6TP4ZD2SSOM2pB96Ok
         HitGBIXGSmktED3CE5+ilnWbIIQgo4yrEu/RQXVTW17K9643wFHVT5VPcAVF0bhdFsdX
         aNDIeYh//MlXJUCSNLGfsG9vLfA93YhqbuRUkjHpfyd6CQ+1iKklILyLgzluL7NiWwXH
         TvPLhyt2yrjkFSDNwS105zUGzx15Plhgh0RtaBi/ofucYe63tLbGIJ0dEGady2TFqd4Y
         ZxhTYKs39ufCA7oaNqozEeJZhUmqyDjEwAtvrMUWWfCvY8yokG7eDqZd5XnI/P0M0kiy
         Shtg==
X-Forwarded-Encrypted: i=1; AJvYcCXQXqN6XiTHZ4bz/1rzzW6HasZ6EhRwHmFh3PtWeKmysQX98RVGpB+vv5+f6cO2HMh0DWpj0y9h+zZp@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi9bvgtZZG+uyWUgUZyuv8xTJ/0m87oy++gr7e7hBgAzGphqry
	edYQceiI0C9LDEwSz0kI/tzPRhkYml+Fw4xt03q8fh7Ivm0TtU7no0nUdvI4yxRurru/CmmXO9L
	qwlJh6zgdJx5CjHJvcV5XzbUzTH57h4Hu3cuuhrVRuZf+eLTSLw8AsUFOaMTE
X-Gm-Gg: ASbGncu/nBK0LvrgvpBnZtFii8z0Q0iSzr0tA/oFsCATlY4lFKt4QP4nI74dFVdTgZl
	+RUPGbAFSH0Y5gPWpbCaSvlyR9uslC/8SywHLuulUS/wLbDvelvB8TV2UjJW9AHUI8wEeba7Ctj
	RcNwkC81d7LS8zNxK+zl23IEvr5MSnG19CIXsyWnGnPHUW4X4Sii52NpCW7BHuAFGjV3A0RJn3K
	rKu4ldv9MQNBf9rBsogDmYPN1wGifKY99s9bkElBF6nqEfNBxTkvyX4YrYbUg6X5QYyYHtQfUal
	udu77z5fqxT/N5U5QhunKsUyYPwDqQ4+XmzT6S1k3tAqqE+FERlgt4eryA4dMYS9ZHqBxQ==
X-Received: by 2002:a05:6214:4105:b0:6e6:68df:6052 with SMTP id 6a1803df08f44-6e6ae84f58fmr84420896d6.5.1740489931104;
        Tue, 25 Feb 2025 05:25:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdoCz4YcMli/dmEDb2Ah8B1cd1PtE8d4l4hyClg4l1Svg64+pZ1eu6Aex3DhHpvo7en1+AQw==
X-Received: by 2002:a05:6214:4105:b0:6e6:68df:6052 with SMTP id 6a1803df08f44-6e6ae84f58fmr84420666d6.5.1740489930690;
        Tue, 25 Feb 2025 05:25:30 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1d6b153sm141600066b.73.2025.02.25.05.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 05:25:30 -0800 (PST)
Message-ID: <af3f28d3-d3aa-4da2-81d7-4c3640ae62cf@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 14:25:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] i2c: qup: Vote for interconnect bandwidth to DRAM
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Andi Shyti <andi.shyti@kernel.org>
Cc: Wolfram Sang <wsa@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>
References: <20231128-i2c-qup-dvfs-v1-0-59a0e3039111@kernkonzept.com>
 <20231128-i2c-qup-dvfs-v1-3-59a0e3039111@kernkonzept.com>
 <5dr5ps4vb57xj2mfelgsxgoyrr3gg4ggwqggqchff6pda3ffsn@thxpg4h6kgel>
 <Z7W1EJ7uGsaTZMRh@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z7W1EJ7uGsaTZMRh@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: w-9Y5AJuDp21ju-gDzC5btXgFQTbkelL
X-Proofpoint-GUID: w-9Y5AJuDp21ju-gDzC5btXgFQTbkelL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_04,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 malwarescore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 priorityscore=1501 bulkscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250092

On 19.02.2025 11:40 AM, Stephan Gerhold wrote:
> Hi Andi,
> 
> On Wed, Feb 19, 2025 at 12:02:06AM +0100, Andi Shyti wrote:
>>
>> sorry for the very late reply here. Just one question.
>>
> 
> Thanks for bringing the patch back up after such a long time. I've been
> meaning to resend it, but never found the time to do so... :-)
> 
>>
>>> downstream/vendor driver [1]. Due to lack of documentation about the
>>> interconnect setup/behavior I cannot say exactly if this is right.
>>> Unfortunately, this is not implemented very consistently downstream...
>>
>> Can we have someone from Qualcomm or Linaro taking a peak here?
>>
> 
> I suppose I count as someone from Linaro nowadays. However, since this
> driver is only used on really old platforms nowadays, I'm not sure where
> to look or who to ask...
> 
> At the end, the whole bus scaling/interconnect is always somewhat
> "imprecise". There is no clear "correct" or "wrong", since the ideal
> bandwidth depends heavily on the actual use case that we are not aware
> of in the driver. There is also overhead when voting for bandwidth,
> since that can take a couple of milliseconds.
> 
> The most important part is that we vote for any bandwidth at all, since
> otherwise the bus path could potentially be completely off and it would
> get stuck. My patch implements one of the approaches that was used in
> the downstream/vendor drivers and matches what we already have upstream
> in the corresponding spi-qup driver. I think it's "good enough". If
> someone ever wants to fine tune this based on actual measurements they
> can just submit an incremental patch. Right now this series is blocking
> adding the necessary properties in the device tree and that's not good.

Yeah, the throughput of an I2C controller isn't even very likely to affect
the total bus frequency requirement, although it's a strict requirement
that the requested bw is nonzero (otherwise the bus may be clock-gated)

Konrad

