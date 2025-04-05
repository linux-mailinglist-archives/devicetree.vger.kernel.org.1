Return-Path: <devicetree+bounces-163371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAD3A7C9BD
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 16:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A77C63B9D80
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 14:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AD8B6A8D2;
	Sat,  5 Apr 2025 14:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ic6VdYU9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E893D3C463
	for <devicetree@vger.kernel.org>; Sat,  5 Apr 2025 14:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743864544; cv=none; b=fF3bJyR59GAaRf8tvtkM0CnG49ZE+qecNXYQxFfTWPVo7GVldZF3U4BOFXf1AIM13cET0kh8CKGUHN/XbacbdiJrc0eOEEhwtO2xrU6B6pqp2c3Xc2tW0adrVkVcUz1MLEi09iCYu89rQh15a8zCDIM6JMklAoQO5HjTEdolS64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743864544; c=relaxed/simple;
	bh=cMQjM++Dxc5Sp0/UX+qLKMmSrpRpvoeH0ZmSjyYi0+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gmw1U0NjbRGp+FwlfdUOlbtiE1b9izGWkg6/9w69Vjzitwnvi7qa5kdVixpPxPWvKfsumWBZeEZUt0EzmhsFoIZgBsJL12w6T873SHHlMIVotTGkIJJPez7FsTE84lnF5/xRum3RxLxoFmm5rnkzJiEu5uIj53AhIC8omrUH+gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ic6VdYU9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 535BkeJF001644
	for <devicetree@vger.kernel.org>; Sat, 5 Apr 2025 14:49:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M+PEihR5tW26XOtjKkNuGBixh9BPxadJqebcLYBJWDI=; b=ic6VdYU9A10z6CuU
	UoeHanu6cMwKCA3TYWexR5qTJ25J0UdLeur+q3ttTzYaSW7ZluL176OQnn4oVhHq
	gWLON3KUFtL/3wSgg2l1cZvhGmMf0XZ5vCmAt+rm8c6ocgs+CgM0QAAkXROW/w9T
	MnldOjyiloX1KHqp1vVYrHAEBztXepmsN/bBYxYnMz47POU+S0u+lYPLfBXv4uu2
	mbYwjABSSw4yNJrodffY33eItMuDT84Yu2sMSsQGuogry0bUx+bZrBAEWCXLxmc2
	gm1q4eDi4c98BrKVYETAk1wQBnXta6dhcghRP4r4UZn8m8XGYRsr/fzb13oaNucL
	VbrA7w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twft8kph-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 05 Apr 2025 14:49:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c760637fe5so516686985a.0
        for <devicetree@vger.kernel.org>; Sat, 05 Apr 2025 07:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743864540; x=1744469340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M+PEihR5tW26XOtjKkNuGBixh9BPxadJqebcLYBJWDI=;
        b=cag2iJGBfy6rmA84/omauy/jfF9sqeEh9QWrjznMkHo0RYUmw6oEeEaPuLe4R3+FlP
         ggGnNkij2/d7LXsfs/Bz+EULBiTZaUNrH2lZCfhXWzJi2fwXzk5432ifjle3eZxVbrnz
         y9Yvw2QV1yq8l6KGcq/YPuAsWK3dS4xTupxXlPSTO/gj5XJGOZMyPRaQw440gwSkTCtl
         KEwgeb5fOFJX+Amb7e1zH80yhxUE66v0s2gXp8CAg75WPSsNQwmb82jLvRlD1vI/bQ5j
         HE9tiDQKv8A58lGyMsHyV/89tnSz9siZYisXCh90fol569p5UIqogNyKZlK4OrGALXuo
         jOcg==
X-Forwarded-Encrypted: i=1; AJvYcCWX6QhkWLf5ilF2zvv09f9BqIV6hRWZ7pVuXMRF69OL7u/oZs/GWp+RdDbjpwGVhAIiDUOSJ4GRWoa7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3UC3aFhKMUbsXuQVzykTyUjGDvyTCIoOSWHQR2hWo2OjQ3wEJ
	MtOlxSelil0UFu+TBBJePiscP3YQL34YITTD/EqfbOSMlzLobInPgUgh5f/ddNCM9Bg80tkjLUX
	i7/kNVueK2sDtQSCxC1Xosqi9YNkmC/F1pd5P/b87++vEfqLyFgmGId8cVkPQ
X-Gm-Gg: ASbGncvaPPs+5b1YDxVu76m2l1UIZ2TH1G/KDYbZIiEV8cWJXVCGkZRMgO6vORfth8X
	N2d7XDp0/4z3Vxj0VZeYNqkKjg0KjF2DDGqKLXQ7ausVKiHZfUb4rQXfcUxURrHzUaHXPzlmYRG
	6NZEZkGqvWy5/X0wezTg9pUobr+wOfx4ey4pXuxQYTkMVQ+yNsSNHm8Fo+8mfW5ARtSxCUe3M87
	UPLvCfF/NNN4BRI+kQhjOqQ3mJWkTvKQrAGcIANR1Wrvh7vNUM3NNrkUO4zJrCWEDtNTqw6YHLW
	k8oMYkdc0BLDfBgrKqHZ7q8yTyGzf9mRA8RniHJJSVCgH1JPEoRNVuH4fSYktJ4lIhIWuEkbkEH
	ol4h/7RB0qNgfu7HfjqfHoWfNSJWUGEE9m0RIfIAElT9yqXxjaFHaPBx5UH0s5nXxnUkv
X-Received: by 2002:a05:620a:28ca:b0:7c5:d72b:1a00 with SMTP id af79cd13be357-7c77dd61ac1mr391249385a.15.1743864540354;
        Sat, 05 Apr 2025 07:49:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEutc1kNv9JQea/tmH5cHUtkD2IZVayC2pgcE7eKc+f/LQTGUDJVkqGd0AbWMhRe0FcVGQgsg==
X-Received: by 2002:a05:620a:28ca:b0:7c5:d72b:1a00 with SMTP id af79cd13be357-7c77dd61ac1mr391246485a.15.1743864539939;
        Sat, 05 Apr 2025 07:48:59 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c4:a6bd:f097:4050:9ce6:5d7f? (2001-14bb-c4-a6bd-f097-4050-9ce6-5d7f.rev.dnainternet.fi. [2001:14bb:c4:a6bd:f097:4050:9ce6:5d7f])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e670d1bsm730472e87.214.2025.04.05.07.48.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Apr 2025 07:48:59 -0700 (PDT)
Message-ID: <bdd47a5a-c9d3-484e-b2ff-2167c54dfb20@oss.qualcomm.com>
Date: Sat, 5 Apr 2025 17:48:57 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] Reup: SM8350 and SC8280XP venus support
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
 <8cfaeb25-2657-9df4-5cea-018aad62f579@quicinc.com>
 <it3njgklhnedjzojafuxpjy3o5zfulgdclweyobv7kjgtpjmzx@6opje7yms4yg>
 <1dd6e03d-09be-4853-741a-4fb47b7619a0@quicinc.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <1dd6e03d-09be-4853-741a-4fb47b7619a0@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=B5+50PtM c=1 sm=1 tr=0 ts=67f142dd cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=fIlTlRh94wJvY906GsMA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: J4-gUdgBi_nteNIqsGkd6tyS9-nn6mUG
X-Proofpoint-ORIG-GUID: J4-gUdgBi_nteNIqsGkd6tyS9-nn6mUG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-05_06,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 mlxscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504050093

On 04/04/2025 08:24, Vikash Garodia wrote:
> Hi Dmitry,
> 
> On 4/3/2025 10:28 PM, Dmitry Baryshkov wrote:
>> On Wed, Mar 05, 2025 at 08:49:37AM +0530, Vikash Garodia wrote:
>>>
>>> On 3/4/2025 6:37 PM, Bryan O'Donoghue wrote:
>>>> This series is a re-up of Konrad's original venus series for sc8280xp and
>>>> sm8350.Why this is enabled on venus driver ? Why not iris driver ? This needs an
>>> explanation on was this even tried to bring up on iris driver.
>>>
>>> How different is this from sm8250 which is already enabled on iris driver ?
>>
>> As far as I remember, SM8250 support in Iris did not reach
>> feature-parity yet. So in my opinion it is fine to add new platforms to
>> the Venus driver, that will later migrate to the Iris driver.
> I would say, from decoder side all codecs are there now on Iris. H264 merged,
> while h265 and VP9 dec are posted as RFC, there is one compliance failure which
> is under debug to post them as regular patches.
> If we are mainly looking for decode usecases, then we should be on Iris.

No, we are not limited to the decode use case.

> Preference would be to stay on Iris, otherwise we would have that extra ask to
> port it later from venus to iris.

Yes, but that would (hopefully) be easy to handle.

>>
>> Otherwise users of SC8280XP either have to use external patchsets (like
>> this one) or a non-full-featured driver (and still possibly external
>> patchsets, I didn't check if these two platforms can use
>> qcom,sm8250-venus as a fallback compat string).
> It should, atleast from the hardware spec perspective, AFAIK.
>>
>> Bryan, Konrad, in my opinion, let's get these patches merged :-)
>>
>>>
>>>> Link: https://lore.kernel.org/all/20230731-topic-8280_venus-v1-0-8c8bbe1983a5@linaro.org/
>>>>
>>>> The main obstacle to merging that series at the time was the longstanding
>>>> but invalid usage of "video-encoder" and "video-decoder" which is a
>>>> driver level configuration option not a description of hardware.
>>>>
>>>> Following on from that discussion a backwards compatible means of
>>>> statically selecting transcoder mode was upstreamed
>>>>
>>>> commit: 687bfbba5a1c ("media: venus: Add support for static video encoder/decoder declarations")
>>>>
>>>> Reworking this series from Konrad to incorporate this simple change
>>>>
>>
> Regards,
> Vikash


-- 
With best wishes
Dmitry

