Return-Path: <devicetree+bounces-178133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 012FEABAB4D
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 19:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D3D4179EE4
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 17:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46F5720CCCC;
	Sat, 17 May 2025 17:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JyTlT0+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFA420C03E
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 17:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747502469; cv=none; b=WJ2Sm+NakQYBC7NwFQJij+a+75diId0E6gtAJV7dPpEZbcOV8UktRHazVPCq6U7yPUdTlVGrEU3qUnMnTzbXvR0rdoyAMeOIm2KpLE9Y3/Op8DNyLcXE478DqTO7uQ4TM9d+yiVyn8a8KKmmOtX42mydKHu0WdIV2BT+BjBFVTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747502469; c=relaxed/simple;
	bh=kM6b80Bkv1XCI9nr1OXIWLdlXNLC1th4jgNd+WyRqLI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qiQNNfMF0FauJVoYR8LcKI7HTZ4LbSuRGfayKPt7BY08JKCX+6mjNuyazRsm+oPSPmZlSG+cWwIA0DghpJ7f8Ly0YFbQouowW6M7PYCb5PL22STz6AHRZIPed4c1pUvBcIuFJPKOSsFs92VQwvTj/bxYrL+2z3W7WMy5wi1Aw9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JyTlT0+V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54HELRWG005605
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 17:21:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LD3N/dB9dxL0NuGVYuOpUsqBzwJF+cAwfrUr6EDS96w=; b=JyTlT0+V41ZCgI4Y
	Zo4c/pHRZVE2qs3/EIcW3tJni/qVANZfA3kghmEQfuo9pJDeqWFy+Zkpu5jjB3DP
	2psrc/Uut6+0YnIcfOIyBMLV6p3EVgcZXOfXRinfs/88EpiyrUBnUtEXpTRtfsPe
	3CGQ2Nu3dn4nXK6BOaavaGviyPPMXAMhl8zbwepeN07HjuPElXny+myzvzVBZAJa
	apopSYbFQIe0N5m2Oh52bIRLTS+yH8BIxpRlFjKq5tUi/chS2y6vmfE2HlIgL2S8
	9HAgvcjaS0uyEPvK0BTJYCl4MUrd+ogUG+XdEdMPStlHsAwVoBn7R811GTrM8Yt5
	NX9A0g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pkmm8ugy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 17:21:06 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8c263ba30so2272956d6.0
        for <devicetree@vger.kernel.org>; Sat, 17 May 2025 10:21:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747502465; x=1748107265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LD3N/dB9dxL0NuGVYuOpUsqBzwJF+cAwfrUr6EDS96w=;
        b=xOH7fMQ+gkIcJ4WP3dicv67IvSVWVV4iQFEupw/5uu051GBYXt5jjqkJSK285QZzTs
         lRozy1jCyihWBlkxe/96ZNerZBDW9o0qAZrisvDU3g/dFBAHBAYxtq/8o40GgItq8JLa
         yqgyq4fgVJ7ANkqj6xv9R274fOwftTYHLVN76AePvslq2ll9cAO8lF+9yuSrhl7/2mVK
         DHOK56R1dOp2nugWd7Ey9qjmuGxylkmXn9Y+fuAtW+bCLe6QHET72MHcHpvrXWapXPyp
         e1nsI9Z2t2Xt7TFM89w4TRS4pSyVL0nj4YAIAremZGemh5thpanwCQkPooFxKh4m4Vo5
         mt5w==
X-Forwarded-Encrypted: i=1; AJvYcCUI+kqbEyBMWKWEi2f10BQe2qJFcu1TKFmfKLVRZKFI+7wm7J2l8vXZtI3rA0+yla9/f1JcR/c02jK3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg3zJEHRGUYGOqk2rl0oysuQza7+leyDXBWkd/5d8h+M+fzy+5
	ev9IcbIEia1qHg+n4s8WfNxwsyxrQJmK2LUTChDF9mflY4yuiIRVb9C6zG5zXImT2auXQVbfQHC
	atvqHT48arbHVr78Gff0sC3FjMud+qqaXBFCGZdQFu1HigbJgfRLxt3ANgotT7ysX
X-Gm-Gg: ASbGncvZd0prfJ+6y1xlsbnN6CZZec9Dp9Cr9adJysfCo9HRNYR1VxRER6lsibGk9lC
	AJRCqQKSk4EbqNx1oFlazHqZlL5XqXZBiFvPGQi2ZsxlASJ50RVkhu+q2lYxM8vM4myc5KV/cZC
	fpxAM9ahmQNGZGYMMh1SlOFRmU9U8cDVSpxY8GagqCEUHrTPfw3NTvd1aAYsnOiyv6UlI/BF4yB
	sfw31C3N5gbRAcGDcsOgh6mSpCKB0yx7N84ViEDYq6MzDcxZMul6rw0/R8cw/4knBibRW63+oFl
	gGaYE0xlg4+UpFlRjVJARlAJCY1I9cwTs+R8rt7gychWbtAaQ07aR1pnlv9AX7B81g==
X-Received: by 2002:a05:6214:48d:b0:6f5:3617:556c with SMTP id 6a1803df08f44-6f8b0834f7cmr47221196d6.1.1747502465594;
        Sat, 17 May 2025 10:21:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEL/rKen6YM5r/g0Pxafk+XQRuIYGMxqfn1DIef0c2Cb5fAVGwQZBFB3zwu/wHgNmNKd2SnVg==
X-Received: by 2002:a05:6214:48d:b0:6f5:3617:556c with SMTP id 6a1803df08f44-6f8b0834f7cmr47221086d6.1.1747502465285;
        Sat, 17 May 2025 10:21:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4967c9sm318992566b.129.2025.05.17.10.21.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 May 2025 10:21:04 -0700 (PDT)
Message-ID: <a2ada2f8-bf0b-4730-a28a-2604a405e491@oss.qualcomm.com>
Date: Sat, 17 May 2025 19:21:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] clk: qcom: ipq5018: keep XO clock always on
To: george.moussalem@outlook.com, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Lee Jones <lee@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250516-ipq5018-cmn-pll-v4-0-389a6b30e504@outlook.com>
 <20250516-ipq5018-cmn-pll-v4-1-389a6b30e504@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250516-ipq5018-cmn-pll-v4-1-389a6b30e504@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE3MDE3MCBTYWx0ZWRfX6WqPpcGi7HsI
 vpOowofJ+lvhBG75Bjy9CuOr9vsDly/khgjMvxktqh/Hb8f33Pk3hCS9mAAPhqaINnA71r40fBa
 MHdhomFYRkOIf+M0WoIMYc4qU3P3qSJ/8MorhDD6UNhB5mgVwVB2IbElv3wkwSzehoSFrhohOAC
 z+W2yRb+P8iHCNHx4OdrQk2fKm/gc0ckjHqWLxsWrR0+ZYi3Qf0vmbhpww7kjRxVkA3CyOSV9vY
 y/F7CcAY9rPTpce9Z/Fwu5sp18D0vq5lyL6LvRiWMKHJ2PxHedFK89qka/f90n/1Zr+OZAsMWys
 StPDsR+sKelL+NeauVOURcRrflJk64iF7GZtWYaz3p9xa/maifrpP/dI1buX37fw+jjWjPboJgf
 b+Jg1YqCqPuNV2i8RZXc4gM0Efm/uwEahY3D7HFlh8wXb6eUp1RctfEQOXXghnOl3jSeaSrF
X-Proofpoint-ORIG-GUID: AWyGp3Emm7uABg8Dt3HVHoZqWyTTlunX
X-Authority-Analysis: v=2.4 cv=PpyTbxM3 c=1 sm=1 tr=0 ts=6828c582 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=DjvbsIfDJYjzuW62fVwA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: AWyGp3Emm7uABg8Dt3HVHoZqWyTTlunX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-17_08,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 mlxscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=518 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505170170

On 5/16/25 2:36 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The XO clock must not be disabled to avoid the kernel trying to disable
> the it. As such, keep the XO clock always on by flagging it as critical.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

