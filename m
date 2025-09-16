Return-Path: <devicetree+bounces-217881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E11A2B59860
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:58:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC7C1188CD8C
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F059B31D74F;
	Tue, 16 Sep 2025 13:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="osr0DlN8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643552EA17F
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758031043; cv=none; b=N0K3HbidwllAliU+9dGZbrHfqPgat7fxMqD871CF7g3NftDAUeTOAYAw6cdxgu4V8zAdO9brkSaeaqcsxNvhsrgdYfPQBIC+4CjJ1UwzP00EhL6XeGcaqcKNLRY+nOK5LEHOOf990p4xRSu7wUtqMekYEvMtkJBBIHdmyCJGjt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758031043; c=relaxed/simple;
	bh=EZixtvrl1rqBKt+UGIfg0P0b7+HT9wRSGmhgvCNmej4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NMo1MN42PlupEZfnulvzmEzjwJvt1WtrfRhXm/iiRObWb9+3yaxg/R/ty7JgfUzJ1GruZnaiRsIjjj/+rLZGZIgb2aVCM86lv7vbaKDpLZqPgNIh3wEfa79zJ7MJwi4uxjeqIBc7j0g+nNI2daXe/k5Cmph3My514rmPEJEUVHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=osr0DlN8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GABubm020444
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:57:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GICyQL3CHMsQbYNvbBfWi61BrYKwCgI38BYL5tUJcxo=; b=osr0DlN8eEm/LYjO
	p2aYTKBFdbjlOuhYriHYjC1HEk2yWXuZwszWVhlsMiyFMa7/6HXQgHm17j/88u7f
	xB2rvfha76uO0oRf7CZCH/aR3/sN5gNibwnsdlqceYyDUpp7DnhG/ztMj9LZR6vM
	MmzwxO554+PvpfcXtrrybhcRPHiPWjKYMRg6/b5sSi3HpVQWCIda5yChWm0t2884
	rrfaRZeLwa10BJ0vR1jTFJiV9Sj6yljg/6DoK1CTewzuxYl+358L9AhYgNTrQ2qj
	c/ZXCB9kIB5K3M4KSjC8lhUbvziMTDYhcjWKW3rLbq1yD4Ye/CSs7eirFcmWfgmr
	x/MVzQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1smk66-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:57:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-77b7c9d22d1so5300286d6.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:57:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758031040; x=1758635840;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GICyQL3CHMsQbYNvbBfWi61BrYKwCgI38BYL5tUJcxo=;
        b=ocSL4XgVuiXajwuytb5BpyIWOvcsUeF/zP4vAxngM43gEDOQ4uz1/ROd7RgOQc6BYN
         1AYKZi3b7VC7UFk2/oTLR9UcvDC6jcxv+cTrb+Clan9r45x3SrXlrR1+KhznKbzH06I8
         Ty9KTcmOuXnpH58ArnwBaMKEhFftN+OXPcK+ZhIsORHENbLt/3QRMU1LqBxuR5LAlIh7
         +yMgDUj99utUtfl4SOab7VtqFXySZPn2gtAWBYnW0MzI6LxBAViMaVxMs8UaBDwcHOjC
         woWWNq9LiznPFPeOi6olAfBUTTs9WVb1OzUs6BsVt7B/5bpBG0I7cy8z5pljeY8XOWLk
         L59g==
X-Forwarded-Encrypted: i=1; AJvYcCUJ4OLeiAiVUkOJgL1BCyg12svlWBxX/gzYzWfQqxaFHO8qbfcaTBX4rm3s2yzgJqFconPu/8RmTHSt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr6kAPjcSo/b1XjQW7dWmokwsSvRy6IbsUccPXmmb4ot5Kj+VY
	TLkor/xSkd2M8UjjPPA7dr5XaVnqPGJCDE/QZ/cwFKRPo5jN6C/AnPPhK0qKwRKgZ+WJd45ay9J
	D/LPL48gMr9wDqOewnORNz0SILtoW2XGnN5cDQhmodlOqO5pMZHFRQpmwKxi1WCH9d0ZzCuhf
X-Gm-Gg: ASbGncspChQcp+1Grn2UEO8l39kg2qoQjzEGVIcRf3GvWxKMxFGZeAdH+3EFH6AupcF
	ST1aWJ1ob3uL8wpPv3nXw1oQE7NKlHCNjlSpHHlOX8Om/2z1IKqxhLd8AAph/+BCGqcQwAQxC4j
	HdHZBujqTV2RaPowaO0mgv3dgiqwzBhOol5JfYDc/ABhlQhTtwiiQ/y4YytSOkpq3VW9pRK9n6j
	hjkGzHuMzKUT1E+ELvac3wenSgQTKHLEDPVWLiObPDJcoWSRLYMIiVpbJFFxLQgDKpVTXKDzAw1
	QPAgD9WrZVNmxBTE01k0SY7PsaL7S/rrvkMIXLGX2pTQHAc0fEkHp1FoARsBBTkl8wzth62ak9/
	9EB8erebaVqsYpltczRb1XA==
X-Received: by 2002:a05:622a:1ba9:b0:4b5:f68b:86a0 with SMTP id d75a77b69052e-4b77d06cb12mr133428501cf.5.1758031040155;
        Tue, 16 Sep 2025 06:57:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEx/IVvun0KQAKtNqHCv75Rapju/SmJgazDgix/mPxZhD+7Qis2vnTHkkgiNCjklXyICvOOjw==
X-Received: by 2002:a05:622a:1ba9:b0:4b5:f68b:86a0 with SMTP id d75a77b69052e-4b77d06cb12mr133428091cf.5.1758031039594;
        Tue, 16 Sep 2025 06:57:19 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32ddf93sm1149921166b.69.2025.09.16.06.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 06:57:19 -0700 (PDT)
Message-ID: <4d83b7af-ec45-43c6-aac4-148580a81924@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 15:57:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/8] power: supply: qcom_battmgr: Add resistance power
 supply property
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Fenglin Wu <fenglin.wu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?UTF-8?Q?Gy=C3=B6rgy_Kurucz?= <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-3-6f6464a41afe@oss.qualcomm.com>
 <gk2ho7ugp35kb4x65meqsm3aufnry6srr4p7jspf6xyn7ywzkh@vd5ca7txjdk6>
 <0cf4b0fd-e468-4aab-9ec2-38da93435557@oss.qualcomm.com>
 <5736df73-c90e-4f11-b461-c38da4e811e1@oss.qualcomm.com>
 <20250916-almond-pelican-from-vega-a8d01d@lemur>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-almond-pelican-from-vega-a8d01d@lemur>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 81f3s6ppeeTOGEtusqLCciTqmQbLW_f0
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c96cc1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=-oxkEHOTVg5AFfsLEusA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: 81f3s6ppeeTOGEtusqLCciTqmQbLW_f0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfX8wE3YfPOjp0c
 0JnYPsZf7xu4Qrl8nn93y3Uc5yd3aa2/aE8/y1JdeRYHsoGJ9RWK2O9FX3MM1C18dBsEUxBTbi4
 e40QiMZ94gjvUwJygZ9nzkYfmKwd2L/5mK1SeGbaJ+thZEdKctXgVtnDAonvBS4b3j0VNnyciFh
 JOX947mpQYUMCwWZX+0STNTlBX1l7gtd2kWdAVS8HvPuo7esRGhiBEM4zSURF/n1xfMhG1yHj0O
 Ssm6gA3tXqsLtbpKo02UddLqwRBfKJy0uoCpnmcep9jSRXyzBNNqVrwauVC9TSGwLKrfQZJYyak
 sYF0smVi3dTYy8EEO8DLb7T9tfjMmuSMpgS536xL3+yfcUz7Sm1Mom7DAzb/wCn10mSx+DDpaG4
 lN3j1CXZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098

On 9/16/25 3:37 PM, Konstantin Ryabitsev wrote:
> On Tue, Sep 16, 2025 at 09:59:04AM +0200, Konrad Dybcio wrote:
>> + Konstantin
>>
>> It's quite common to see someone leaving a T-b on the cover letter,
>> trying to say "I gave this series a spin" and then seeing the tag
>> appear on unrelated commits within the series (e.g. bindings or some
>> cosmetic fixes". Maybe some sort of an interactive (opt-in is fine)
>> dialog for "which patches to apply t-b/tags to" could be worth the
>> effort?
> 
> The plan is to add interactive mode to a few commands, including to the
> trailers command. This will open an interface similar to interactive rebase,
> where you can mark trailers as accept, skip, or ignore. That should do what
> you're asking for, I believe.

That is amazing to hear, thank you

Konrad

