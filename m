Return-Path: <devicetree+bounces-229512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DB4BF8B46
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 22:22:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F2711897AED
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 20:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D22426C3B6;
	Tue, 21 Oct 2025 20:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hBV30zSU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BBC22561C2
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 20:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761078122; cv=none; b=uwe6HdrrPwPLv4JY7jCGqUgPn9YYTj6DbrRqVlF+Ka7dSIi1qEDYy0bD/GqRvy31P/M+kqpqDlOu1pp7efg0t4BYXOfbPBmzOTeAC1LtgEvwhJsqu+5dw0c7Y7OzvONciiq5fuPi9z5pg4qN/KQzMry/wA8bozLQeL8g4bjhK6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761078122; c=relaxed/simple;
	bh=mEZXhTwzQ6zamixvVZuTYhTDWMuXgP7sdkSYV/2gvAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O633J2HnaoSQDXO8uhoziZhhDdBChFd3i4U5SyLFPUGqddseMxw6YuCCOMB1nq5l/hwM/89z2g2BRGLoXgORBWVbIc8czpepymmi6i8H4pG06m2u8B3DZ1B4UiEx5+v7pIHpU5PGsl649bG8bFR5KEcv0JwCxTU7RdOz0gOm3hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hBV30zSU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LEXGJt020635
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 20:21:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eM8vsS1Fj2EgGJzHKnEsypCDm1Za4pqWpIHUVJFKPDk=; b=hBV30zSUakfpmIbx
	5/HlyYtqhz4d70KQwHniE9dhqdldMs7St0cNT5qfSmx2HxK13EMW5fCQxDSgD88Q
	OOdJGLedLJTLrD/8ROvetPWsHmS7HeV2S4Z8HRrfmE2ZHZlyO1KLbUQ3obTsssQe
	troOM3BUgjUE9n2KPS1duTW1OD1HjVG1xM+YCxUg7qLUH43SvreytEOiauMjrU6z
	NXg8eKiZwKhZAvsajQbOpSP2tTLz8jsoM21Xsa3xvePZJtSeCb6Jnjc1i0yto6t9
	i2Q6bZtmzR9XWvTXbzsc6LpfYcuvZkk5n+UBZp4FgJ2lHNTVFDhXl1Tx6zH83pbB
	3OWN5Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v34423sp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 20:21:58 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8bb76ee59so9394981cf.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:21:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761078117; x=1761682917;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eM8vsS1Fj2EgGJzHKnEsypCDm1Za4pqWpIHUVJFKPDk=;
        b=FmD6Uqn2MIctstyWKk2Ode5InFoXdURtihPG7o8N9xaig1P0bjmMN2mhrVPGuYWP8C
         p+EwasVgNhYgC4Z7owQM37PetXi/AVAZp4mobuUuweYy/s2Y2zlP73KCWac4mpYqH8Q4
         e9W/0vCpMINnQtJQ9P1CFpEsH0LExXiZowLEddxgWsNOLxjUX8RimPFXdPs8qwJhi0DH
         fpZZ6WePEqrgEKcZZeo2qcW3cWD1UDbe3xW0kTeMwHfeiXhqtAjgZOsJHofFLu6JduCU
         HUE8539o6MPzRirQoWpJ0+0iBYBaqvVexNolNlORqbWoX1jV7T6CR+m5jvsdCs0aLyka
         QJlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUllJqOtdwvPyFaPQ4OIhm0tLpewhIUrKszmINO1Ti9yefP/uQozFn8Y3vRCn/iGuk/uJTJH4yGeLq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy4F6rY2Jdc50n6d/pOMMoUFGs9pVVNeLeIuNCo94fS6k/O6Hz
	AdpeURFPse+FMXILRScjmp0dTZhkLf44sRjP1SFY+Ti2L1ODW4eyn+258ZucgdUbvaBTlCiZheJ
	riCV2mnioAlCzdLvsGsiWqjxgM6e+3J+q8U31XZP3uCfD+ewPlJ2Yivp4Rmvs2aLa
X-Gm-Gg: ASbGnctzII37mjK1PKKU21NmuZmFwYm9l9pDvtbtq+4zkLywKxEECVq3HrTKRxz73iq
	sQBxL58W/qGyEWcNzVLURJtc15swLHS6KDqwx4NdiX4psrklr3bsEg/s6XRh+upYdfnwMOSdBCr
	9C2U9EnojDhA+zngASZVEuaWzUuY5VroBDpwjEVJcYhgWcJ3RlCfgspPQ4fOaD9FKxBHptr+lVV
	bqpZrwgafM410fg6qlYbrCKyDmj+uTL8nc4Y86LuB1SJja98lJREwelrS+OUjVEb7AT6ykzansj
	bk66TBO2o+6RO7OePfUtpO68nvTsonhL8Zkb1GkqfpiBaLn2gwoNRBS3+9++n4CN7NzgJdd2DW2
	7pE33y6tGuZ+ss7Cz6A+s5cmcag==
X-Received: by 2002:ac8:5d56:0:b0:4e8:9a7d:90eb with SMTP id d75a77b69052e-4e8c1ab2c39mr118226741cf.38.1761078117499;
        Tue, 21 Oct 2025 13:21:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHixFYbK42Dq8yGad0erFEwbVWJxy1epl4bH074jwzXpoHLLA1EBx5YyFLZLspcYCGSJAFyvA==
X-Received: by 2002:ac8:5d56:0:b0:4e8:9a7d:90eb with SMTP id d75a77b69052e-4e8c1ab2c39mr118226431cf.38.1761078116987;
        Tue, 21 Oct 2025 13:21:56 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-427ea5b3c56sm22096646f8f.18.2025.10.21.13.21.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 13:21:55 -0700 (PDT)
Message-ID: <29d6d523-020a-4eb3-80da-b83e7797d2a2@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 21:21:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/3] ASoC: qcom: x1e80100: Add sound card support for
 Dell XPS13 9345
To: Abel Vesa <abel.vesa@linaro.org>, Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
References: <20251021-dell-xps13-9345-enable-audio-v1-0-6f3f6bbd977b@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20251021-dell-xps13-9345-enable-audio-v1-0-6f3f6bbd977b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZVH5gWM77UWfzn2mLegHuw9YHtIpnjjm
X-Proofpoint-ORIG-GUID: ZVH5gWM77UWfzn2mLegHuw9YHtIpnjjm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX+h/Y9KIyVz/h
 /c9kwBG9tsXjylmQZ2VuyY+cx9ejhqiojDrlGJ2+J6nkNtl2OHzAoUdYZmhj09CMrhvGefWINy3
 BNUrMBmvPlF2rvQnIUDZAItVJm89cZA1OwAnf/LHBzAGlZT/CqyF23yQ4sdW24laTGxUp5mFqwP
 HHwFaN92vD2eUKeOOnvpMmNaI8l3I2y9ZFeNbOdVIcGbPqu6gyNCeWwwdz0x8MU1rm745fcK6Bh
 bbTMeD53UG7M75UhuAiptJTzcsC1aToxvPXgfnVgbVgUkZ/zxykGQ9yAtav+EbHJKO82JCRD1zj
 Pb6WJU0ksJHilA7igmRe1Bzg8VaRpo4hvoWob8OoSK/zHQpmb07ZuFp1I9GggFHnpn2H8/Gp8a3
 c5mg8zEPrSlaXvyeV0aCjbULV1DjVQ==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f7eb66 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=5VL5Wpq1lgPoopIZa9UA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-21_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

Thanks Abel for sending this one out.

On 10/21/25 2:50 PM, Abel Vesa wrote:
> The current X Elite driver for sound card is mapping the channels from
> left to right on all X Elite based laptops. The Dell XPS13 9345 seems to
> be the one-off when the speakers/tweeters are mapped starting from right
> to left.
> 
> So rework the driver to bring in a swapped mapping for 4 channels setups
> and use it with the dedicated XPS13 compatible.
> 
> The devicetree node is included for proof-of-concept purposes.
> 
> Sending this as an RFC since it probably will need more discussion
> before settling on the approach on how to handle this properly on future
> devices.
We have few options here, one is the way that you have done, other way
is to add a mixer control in the machine driver which should allow xps
ucm to select correct channel map.
This should also allow bit more flexibility incase any other machines
have different wiring of tweeters and main speakers.

--srini

> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Abel Vesa (2):
>       ASoC: dt-bindings: qcom,sm8250: Add Dell XPS13 9345 sound card
>       ASoC: qcom: x1e80100: Add Dell XPS13 9345 support
> 
> Sibi Sankar (1):
>       arm64: dts: qcom: x1e80100-dell-xps13-9345: Add Left/Right Speakers and Tweeter
> 
>  .../devicetree/bindings/sound/qcom,sm8250.yaml     |   1 +
>  .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     | 139 +++++++++++++++++++++
>  sound/soc/qcom/x1e80100.c                          |  49 +++++++-
>  3 files changed, 184 insertions(+), 5 deletions(-)
> ---
> base-commit: fe45352cd106ae41b5ad3f0066c2e54dbb2dfd70
> change-id: 20251021-dell-xps13-9345-enable-audio-799bfbd7e7ed
> 
> Best regards,


