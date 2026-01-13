Return-Path: <devicetree+bounces-254372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9795D17943
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D5BE3009435
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9F2389E1D;
	Tue, 13 Jan 2026 09:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TAhxW2FU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mtv/wUn0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C244336923C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295789; cv=none; b=HsodhkSkfaffXN83uNHHeGEgijfQdzRDMucp74BOlY4VWfeZwE1utwguItniJqWGnp56LJ6OMEeJDsVNDyrOAp7s/f744iKSbLgkxmAxjYOs1zEf4hB/RbyUhE7xA0Dq1anKYSCoHb8MkCTFIIpln/jY6UnbPSgCAJ2kqRwF7Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295789; c=relaxed/simple;
	bh=feyWm2Mb8bggzWn8E1h3bwqLe2hk2xe13E1QXg12S/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EAgOWTyjF6YoT2y/mQOMRiQ1SEVGKiKFjaded1r4i1Vr50AsrEqQMhOOQTohvH56RBuIX74Wgc4lrIPcP7ugEsZKG/X85ZpwEsYic/Qs0x+wal9roMYEGbdIvMcrCAVB+JYfNX2n7NJ2pUp3gXwWNHrsztdnRCAqbk/Rmh8YN50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TAhxW2FU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mtv/wUn0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D58wNI2834926
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:16:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QHVA9cpe/WzwiNxPhlR074r+xhCiARVtlgldEvRztgY=; b=TAhxW2FU8kLCBN/E
	mchTTZDaPPE7FVN8CAv5aqUz9BmwM2ZyTQRpcM0061t+t9y+Bkmp5KdzymLyGKth
	OdpyRmeYDX3pQ9kEa51HH4ryHNbJWXPDmOInngUO20yoaxUIoY3Ptd8shhy0c+ru
	ckYxcjt9R+4yMQl6imc7TqMs0GlOVS0GhGxOCEXlTz2bFaKWhxOydA/cXfI9Cpbw
	xdHkfxNVYEhUD/MOoFmeITi8elKlj/QanVOhFxaYLTXRdjgRISMsZaeLw72TLD3M
	9aqB0oZMbooQ4NKC2Ic+bocFyCNW3kRbaixefabdLeCZwBSItEYPZ0Wk0M2SbsKs
	9cv/vw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfn9rpn2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:16:13 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-890587202c0so15863146d6.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768295772; x=1768900572; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QHVA9cpe/WzwiNxPhlR074r+xhCiARVtlgldEvRztgY=;
        b=Mtv/wUn0AK3m4Y1Y4vrevW41Kk2FWHlJ4583yUZxF5FRA/hedMb0bmXPB5jeNcxgVA
         K0N5PIWBRXXg9J0T32iQAmBY9zPGCFp7j1WHbSRmBfojc//6ZDUEAcvjukTAzb+OiRvA
         s9ZjnqFG7EcfSNt2eSrK1DJ9EhV2D/lkqklqce8kBTnoCSrzVrsx8ituwpOcB8LNS/iQ
         Yn9EzDpGsMpIk7usvckWGYE3z05mA191RkOpzAJwO7oiJFzz7ueB3fwIhKevw0M95cTc
         0AY26ldbOoRR7JYjsapykvFM3Fmy0MtdOK75ohkv8vOWMczbRU7L63gfxo0qGI5yO3hm
         KS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295772; x=1768900572;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QHVA9cpe/WzwiNxPhlR074r+xhCiARVtlgldEvRztgY=;
        b=YrK9g+fhrqd+gjGXoEU8SB1CF55JPmixpbI6h/c+yymt4QNGyhNS7cmo9J3dlCyHeE
         UmWIujiqEIEvuLvlUVmCzWT4Imx1d2FbZH98RK53FGA/RJtz9ngU4EOWTF9TjGAWF5d8
         Mgv8rxZWynVvriNN1TOQ1DpJpOsDgxQ/RDyNHGG01jGLw1Z6H+NO3sxnE9/UHSitqJTn
         or0xppwlQftK7YTBYJXeahY/vyegR7+gv7LHD9W8JxX91jmOMBAYs+mHzddGRNDrpFC1
         Q7quyg0eI952O6pFRWLbCMczy+ZgnLatEZ4fcBYv+lMOtuXPiFYHTneJn+7mkRVxKBjV
         St0w==
X-Gm-Message-State: AOJu0YyMJTvuFxV0f+GEIlsyCJFGmMIP5tVKFBTUGItBBowqnc92RniY
	IHQQMK8+o/WXfg4IZIPydC2t2nyRmM/Ekc14nHuLM0E8jnU2FXgod5IHtRenOgu8C6DFiSga23T
	iUSZrx+kr+DdMKswMYbkBBipfNr9PKpl+O9LOhI8WqHfOP+tKfH1IDSwrkFjNXww6
X-Gm-Gg: AY/fxX5vxOPT16xloQHAqdb+fpH2YVjxRBDRkdCh+NPkNwoup99l1M1DtHalBBUTCYW
	XH7CA4fuAYEA9wTk/8dNxHVT8tUd6h+COKtsz25tuSpYabvNXFxAzlOKr4fXayOd74l52FaArWc
	oGX24rGscXmQj6k4k2tNI1sajnCDH9qbvw/VBqmJG/PWt03AWGeVN8I5lA5+YmO7qCuBDdGf47e
	9K2Dy7NUWh94pVPg9O/tM+CEwhsMFz6hTgDU9zQt3IvajZjPseAYuEk/zyN9KuIfiY4hkMrJY0g
	b6xxSowboHUVc4Qg8gHagsX2JFJmc3L6riSDXiaGS55NskgV/TY7xVW6xSyi+EbEzG07UwUTQYS
	OEHp5Bn1PcLzbjmV1cZw69gUZLV+fZ0y+O8MjVpWaKYVCp93ItN2mK7IwzN2QHNzYENc=
X-Received: by 2002:a05:620a:1904:b0:8b2:fe27:d2ff with SMTP id af79cd13be357-8c3893f8db6mr2027435285a.8.1768295772423;
        Tue, 13 Jan 2026 01:16:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEw+585N4c6aPZW7SqtnL9QzcQpGl6ytB1mSY5dyyJQ2dLHnlHRFCzCA4kZT5S9sxgE/4KRmQ==
X-Received: by 2002:a05:620a:1904:b0:8b2:fe27:d2ff with SMTP id af79cd13be357-8c3893f8db6mr2027433385a.8.1768295771979;
        Tue, 13 Jan 2026 01:16:11 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be64efasm19038208a12.21.2026.01.13.01.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:16:11 -0800 (PST)
Message-ID: <433fc01b-0e59-49bf-afdc-a23e815cc563@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 10:16:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Enable download mode register
 write
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260112151725.2308971-1-mukesh.ojha@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112151725.2308971-1-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0Oz7WV3jgyckZUiOB7xY21WPpJh6xHUv
X-Proofpoint-ORIG-GUID: 0Oz7WV3jgyckZUiOB7xY21WPpJh6xHUv
X-Authority-Analysis: v=2.4 cv=HN/O14tv c=1 sm=1 tr=0 ts=69660d5d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1x7xYhVcW7TDj72elYYA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3NyBTYWx0ZWRfXx7RChYxslXIv
 lT0tHyHqGkLo9Dg4sl2qQ79SHwCiOEicU9frk0cSZ63ftp7eZJXJ4waaGvZZrgGchCv4tMKrKhA
 ElKoaaOsJQQ52YyyfkmiA+FSPtccg/+VW3oxARALE6G29fdgAnpvnEGQyo8vCuJcyli6HjqOukq
 YurN5K33kxk7K/6K4IWlwYZs0XzwOEryxa5RRcbRY2pT9Y+8fHO5KXqDduZ84TLFvQJvsJ9BgqK
 mbbeGNJwvutpnAuPvuwHUujLnWzv9QYLwOEg2qlAd6pZNgNQ0KuAFs94cmb5MJg/kHC1e4jAT6t
 xe2R76BpXZNtE2Yr7G3hVGq82vByeF7wMu2l/PkEtXBtlh+mRrsVFE3HhSAy2aeRZcd2+mp4mP9
 oT92gjOvipRgWkvWNBZc7pQKYEuJKphcN0NajpSb40wEiAaNUys2aHyzhECHRaasMpLqP6utAHH
 mrVAZlch7HoIANcghxQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130077

On 1/12/26 4:17 PM, Mukesh Ojha wrote:
> Enable download mode setting for sm8750 which can help collect
> ramdump for this SoC.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


