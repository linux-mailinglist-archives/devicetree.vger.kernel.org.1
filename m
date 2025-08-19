Return-Path: <devicetree+bounces-206477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D24C8B2C5F9
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CBB2C7B840F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E761733CEBD;
	Tue, 19 Aug 2025 13:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LCJoZEPA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679293375CF
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755611096; cv=none; b=NMNJWH8pC0CR1LX4wvMgfzl/xfArwff6RVr0KVV3DC1UEJV9kUqdAfK4Hzn4wPmdCHwrRpAGp5YTsoOHmeKRQmaBSoOLNBOhK/4LVjpofBH4iOU/sGUIum0w0O+K0G3kSUD/xbqEBqn8kTA83NQ2SYag/0jE5m0994a+6AbBM9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755611096; c=relaxed/simple;
	bh=AYZbnwOPwzJWkM+k0OVBmKQh9N42C+v/pYFfjHMLRVQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DaeSpAeMK8vNcWNUPNsELJLMJMa3m7Z+NiZQBpObN9/bv6DpJRv/CPaSaPsa/h8jCAoCbBpYDqEBISrChTnC+4Ld5kRMgkR4SK0lHgoMvPCS9voJqw0GV/cdX92TCUqAkaKwAl1H4MKFxM+eZxim/w9Rc0ZGAZkDnPpRnlCzOvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LCJoZEPA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90XuH021748
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:44:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BKkqlT9s5AsaZO6RLR2Htiq0L1b+P8/Jn+4+PCx41u8=; b=LCJoZEPA0r4iImFr
	6lqcGcSyDRHxtSf5Wj7D7YzR89GkKGrwZ2Q9bteGEnCbOvrXHXxlrEX2LIJeVrB5
	qp7gvxNok511+XgHciddoxcrIQsxWxY2C1cV/TnY4l5ciDBCHLliBGPgalEOLxbC
	CWL0MNZQAkXO0h9w6p2INoEjj9/6XK/aYlkcXuB0k/JOUO5MBGvenyOMaylIp2yl
	gvGl8/oispfm7a6jCFR5aCUdkcAy5w3ArmvqfR/E9OUxAHQc0NIexQuDkXZeLv00
	FXZp0/dFep7lT+IiBT9H0OLYWM1h3o89InSqwZOZDqGgNjw6dSqwNQwAHgl4LNnO
	MuR+ew==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m71ckdnb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:44:48 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a928282a3so185240226d6.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:44:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755611087; x=1756215887;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BKkqlT9s5AsaZO6RLR2Htiq0L1b+P8/Jn+4+PCx41u8=;
        b=T/IGA4PsjjnExmiGbYOOq0WUu+uvMZ6DjdlbP8Mbslh4IX+hpjJjwDqAfLC8lqPVLD
         z0UkWGiSHQ8KLPGs0kIaOpQfZmVcPIM5kH5QfnXl9UCGIkYQJCf9p8d0AaLmvHe4g/du
         wQSCJs+QcQd5aNYlmS6yUawEjcPEAEdEpDv+5qZNB7e6avGc2KFjeFEeYKxJKn6jKACT
         zLF2eY5acheDKPbukGiZbtAfrD7IIG+LCurKnPMtxDXhqTuFdoPeJOBuD25y+8GszLfV
         Zc351MocuL37W8sBoa4KUI5e6rXOGwHGwkoI2C+rkqDSWY24Kf7Fd240WUzh0HYAqDo2
         EeMw==
X-Forwarded-Encrypted: i=1; AJvYcCW5z4cNrc5CqJdJlsslVZOcMLkgfhefoHFNepFamh5vF4kcLOJ+jSgLL1zGPM51d+YE7gKOmV50z/Cn@vger.kernel.org
X-Gm-Message-State: AOJu0YwNaUhYXg+a05n8OD8ahsAeJhh27tnFJJcJ0JPBENqwcB6ea64L
	TztkPzyRLgdFRzq0CyqoUtiHHo3C1qHnsy1QMAtqscRsz3Ng9fY6Zsv58S2riWcvIuqy7F8wHlj
	XhAFI1buoF+nrS8u9907SHFXdYlRXuUDnKJcl5TvbEbvozMv9V5i/3stGrsuYXpjD
X-Gm-Gg: ASbGncvWrPXh6783JOpsrO0Gn+BxzwHGsaGGSwD1OmmycF1JKPy5JF/JXYeMlwjc0hE
	dMlSNYUFlBlTqRmp8jMOSAOGfWZj7VuuwQpPpKGROZig+GsjWSTR6V6uNE36SX0xeoIDGO9aAiG
	c+If3RSGS4J17BghQ/nDi/Xt1D96EmrT5mlfe5Ey1Us+26WMFs+O/fiZ28YYoC4Ah6kxhhdlDgT
	XcEd9nscsJCVldPiyEgXUg8W8CJYU88uA6IZMwOLp6ltryRaTDgfjaQersL2DKvj5GqifwYt0p9
	qCjpxFsA3CLwfvYsHfFLxgRiHF8FDw5gl0BxwdzjPG+s/o4GsBzUpoco8C80dWO7JS4=
X-Received: by 2002:a05:6214:5004:b0:707:5313:eb93 with SMTP id 6a1803df08f44-70c35b98573mr26058516d6.37.1755611087071;
        Tue, 19 Aug 2025 06:44:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKefw+kYHsABqfVxmU5o4qliGwOTNEXsA5EmB2zAtUTekLaQCS80bnjjzt29xlDNuC7G7m8g==
X-Received: by 2002:a05:6214:5004:b0:707:5313:eb93 with SMTP id 6a1803df08f44-70c35b98573mr26058196d6.37.1755611086524;
        Tue, 19 Aug 2025 06:44:46 -0700 (PDT)
Received: from [192.168.68.118] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3c07496f432sm3787926f8f.6.2025.08.19.06.44.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 06:44:46 -0700 (PDT)
Message-ID: <990cb5af-3846-44a3-b373-ded62d3309b9@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 14:44:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] slimbus: qcom: remove unused qcom controller driver
To: Rob Herring <robh@kernel.org>, srinivas.kandagatla@oss.qualcomm.com
Cc: srini@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250724132808.101351-1-srinivas.kandagatla@oss.qualcomm.com>
 <CAL_JsqKG+dcMgp1QF4F3Oxh5Shvagg6cSde=g1JMcEAquZhH_Q@mail.gmail.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <CAL_JsqKG+dcMgp1QF4F3Oxh5Shvagg6cSde=g1JMcEAquZhH_Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ixW4oxTj16PyvgRPJtMIajuewnlNkqEC
X-Proofpoint-GUID: ixW4oxTj16PyvgRPJtMIajuewnlNkqEC
X-Authority-Analysis: v=2.4 cv=IvQecK/g c=1 sm=1 tr=0 ts=68a47fd0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=lVDL77IP-BOR7NVgOTwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDE0NyBTYWx0ZWRfX3UuHqbMU68IO
 nMubboOhD/bxfhIXBk0JnFjKYyJCqNtja+7VIUJz2MfDz36htimACGjgrNtYKskvcsmIYKbzHTT
 irYkY6yGTsIoruPlKMRkHrW0WBYSzO9W/W/hP3ED8uiSXfv3AHk+mwzYodH/uNNonqiAvyEKl35
 DjN/RRusxvaDYixC0VozRh+9wcwx5QgfMyRkYfst2ljsn1wYcOk9D6VJ5HSLyK78X8jdyzeDZvQ
 wJzoh/byMMopBSYGSST2oFD2Nt9JVwdIVfZz9tgYT1XApTNIqJZGwMYfGLSwrWQmCY2kkQ5MfN3
 QPfpO4rF+SyCpiqkGP1TMusu9xXL3I9WERUP72WOVymRRp5JB2bRcmpe88sQuQf1crGmz974Q+Y
 X/MWu26/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508180147

Thanks Rob for reporting this,

On 8/19/25 2:35 PM, Rob Herring wrote:
> On Thu, Jul 24, 2025 at 8:28 AM <srinivas.kandagatla@oss.qualcomm.com> wrote:
>>
>> From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>>
>> Qcom Slimbus controller driver is totally unused and dead code, there is
>> no point in keeping this driver in the kernel without users.
>>
>> This patch removes the driver along with device tree bindings.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  .../bindings/slimbus/qcom,slim.yaml           |  86 --
>>  drivers/slimbus/Kconfig                       |   7 -
>>  drivers/slimbus/Makefile                      |   3 -
>>  drivers/slimbus/qcom-ctrl.c                   | 735 ------------------
>>  4 files changed, 831 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/slimbus/qcom,slim.yaml
>>  delete mode 100644 drivers/slimbus/qcom-ctrl.c
> 
> This adds warnings to dt_binding_check:
> 
> Documentation/devicetree/bindings/slimbus/slimbus.example.dtb:
> /example-0/soc/slim@28080000: failed to match any schema with
> compatible: ['qcom,apq8064-slim', 'qcom,slim']

Will replace this example with slim-ngd and fold it in the original patch.

--srini
> Documentation/devicetree/bindings/slimbus/slimbus.example.dtb:
> /example-0/soc/slim@28080000: failed to match any schema with
> compatible: ['qcom,apq8064-slim', 'qcom,slim']


