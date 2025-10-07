Return-Path: <devicetree+bounces-224137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CD0BC0F68
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 12:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 174573A215D
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 10:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E030262FD7;
	Tue,  7 Oct 2025 10:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fcoTYRP1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1633186337
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 10:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759831524; cv=none; b=BE2erVDyKCRphFobQOdQFT+nN8d617l406wz4c5myOY5QvcRS70poggu8jhP6Fh59NJ2N1QIgkUdvjKVOYfUWg8FGt0J9KudKNN2Rq6IShNR/wIsohB5blyn2BLfoOGl7jl4OG/dkcgTMmhyhK3qHGB4uXaHvlMOmsSbh0u1HM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759831524; c=relaxed/simple;
	bh=Sa9j8HUMO81oEGnNcP2btrssXKd5FBC/u7yBtwhyH2M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XnYENVf8jEMbwPyQYz1YS3pEPBRn/zUUw2i+rSt47sIODS+VldVHizPntyXvaP2+HIL6FriPL+G+FwATikkzw+7eR8yoN2TpZ4Ecpth9ME0iabRmsEThFOtDnr2ZxmptG5dOLTFu3us3pkF2QWLcwOMePmwmf1sk3QTGNL+Y/Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fcoTYRP1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5972jxoS006757
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 10:05:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J75ZyhzShJWXkd4whYVjIvNIWKQpo0mAoFePUHF5M0M=; b=fcoTYRP1OK9YZevg
	l1/7RmWvGeVOvMXsSXlPsp/VCJ/JzaYX2irH9DJFfbYJW6gPX9VqiP/3VoTSN9+P
	+f0dO5lkrt+05bGOdOuGCKJ/NCCekI4cnO7zKJkbaXQ8fxwoFSriXhqHaoPkNg+3
	hjwhzHhHgtZwfiadxt8c6Sdu4k9imTBXnLSA0I90IPAj0vAWNCsSamoLJOKuhwK/
	gh5/lfV/3ydQWiDXcjKJnj50ciIL+xVfpC42XHuPaC+EiX0IeMKq1kUF2+u97lp3
	7R+ox+24EUvHwVEqL8C3h7ttiyALkVFVLwQJ/8IoRS9z4Qs7mtwMOKB016tKjAHx
	DxLz4w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgpwgs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 10:05:21 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4dee3f74920so10543401cf.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 03:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759831508; x=1760436308;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J75ZyhzShJWXkd4whYVjIvNIWKQpo0mAoFePUHF5M0M=;
        b=b0Jwch1S+7+XI1jasjO9p7Nju3Fgz+zEHO9YP1px3KTqOLnClIy3Uih7XxmDwjiCS2
         rgx+QayR9TnHzMUU1Xn7+h0Uhq3XBfrchk0cz/6h2ZwzJO4eiY0JrdDXzqMOcPlwQXn3
         PEr1ntgQ1JqipePQaNq9Bkq+nkJO0jxlDl1L5ehoODslsNd67GdYuG+WBwo4cFzmqRDv
         2fjQ8gNJauJkyhjQa7+C1Uy77U8qYVzsPWy+qNU9SbGmMHr2tf3dvM5uxUrtyz6Qcpfs
         BshylD+KcvPVou9mf4DyDPuHrm7AUFXtwZQoUo+NasWc4DONKXbxUKFNz/owd+s4Ybzm
         LIuw==
X-Forwarded-Encrypted: i=1; AJvYcCXs0WInAqVAfYDWNGy/1EeU5+EGtx0mM5ASZBooPQXup4t4FqmdAl/mQWcP+cJzLhkW8EIEOYum9Fxh@vger.kernel.org
X-Gm-Message-State: AOJu0YxQiwmcE6BkFLBuo9Vigupou8AOgWhJwW4CAR5TRvf5uYnzgL2E
	CdmGYFpK3KOEyMC54t4vWYmBHQCWzjntk6i5rfllr+d6NaLpk56ALFvnBzYuFsNIX/3/wxzildn
	DZnGrUzXkRqA0jGb5QMcLLpAkvGhkCvl9H4tIl3LizdxrZFBRv6CFy2y/81opQPwe
X-Gm-Gg: ASbGncvXiskGhFNc/K8XXWKo7umMcLvkNoeGNf/cewRX2UI6xKN0KQfMfinJH8xV+Sc
	LguH2VzsVoVQ9/HRzV/Cw++QoKP0VgG2W8y72R/obSCtjkfcv6tWKo019mLDXAdYuifW5q/ITUv
	WQ6q8rdWUqdEuPf753rBVs7QzkTeHvgVKMKTsg3Pb2gvy1Inxrfk/Doa6R6/1Co8SyvhWRhoLQu
	q8mHc9DiokjR+4iuWqw64+lH8VcwOJOYjAW3jEA0f4CJ5P+fgXMDz8ZdZCrO40KAY/9hdfkOX+O
	Jbt7Jn/fsfrpMt2B68RFc2eegH23BXiuuLU80rPlO/yC7ZSWqXCuKt6iX2BymFv3SoXLTLZH46C
	h9mVCdVppeZhcGCL0gRn6Y3UXjXA=
X-Received: by 2002:a05:622a:2cf:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4e576a6337fmr135726341cf.7.1759831507894;
        Tue, 07 Oct 2025 03:05:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEt4FfkRc47pl/KPYAeRhUqt4T2owkGAF15yiRG2vKpb73fM3SZHRYcq5Zqrgq4lOY0C0bgxQ==
X-Received: by 2002:a05:622a:2cf:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4e576a6337fmr135725961cf.7.1759831507370;
        Tue, 07 Oct 2025 03:05:07 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970a4bdsm1357227866b.49.2025.10.07.03.05.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 03:05:06 -0700 (PDT)
Message-ID: <f915951e-1604-4043-8ac6-49f9b123f478@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 12:05:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] ARM: dts: qcom: msm8974pro-htc-m8: add Bluetooth pins
To: alex@me.ssier.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Luca Weiss <luca@lucaweiss.eu>, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251007-m8-dts-additions-v1-0-53d7ab3594e7@me.ssier.org>
 <20251007-m8-dts-additions-v1-3-53d7ab3594e7@me.ssier.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251007-m8-dts-additions-v1-3-53d7ab3594e7@me.ssier.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX3UN5NYvdwPY5
 tJlX3GGSdTGJ2hXPmdMwv1XZSvAmcSx9iHWSppvkX8Xk9qPwTPFg/xCFDeD0Y8Fgcy7N9I3I8eA
 E5+Zh+08NloB7ZBlW35FoiTURZnj2fHkB2dzhT0l3+Zt+Aq5pQlU2d/zxseB2EKL3tvHLuPMkcG
 MZdTYFfxOnlymrlQq6biK6SOqTtNOcgrVSSpZqDkwlHjp/5F6W9s9sdNREVZhSyze7YkN01fD9k
 n0cknix5nKLlRoJEoOW/rRrj/cd/WC3IOm9LInS3il6v7hmKQo86px5geZ/ClfbD5/Z9pcmYrZU
 MgnLGRFm94qLVnFycTSM8Ytthbc3/NkMjjsWASsSBE9UYM01cOm8/t4PofetaiPP3A1klfhlyP7
 TrlVZkdrZNU8Gz+p1F69edfUSB9inQ==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e4e5e1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=8poMKPHdAAAA:8 a=EUspDBNiAAAA:8
 a=0uX5jv6YKbm2qIkYBgAA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=fyZPtLC9JlAwSkJ5-iUD:22
X-Proofpoint-GUID: UNGz0FqDu-7FO45zDDwl-XtlGD6HgIUm
X-Proofpoint-ORIG-GUID: UNGz0FqDu-7FO45zDDwl-XtlGD6HgIUm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/7/25 7:55 AM, Alexandre Messier via B4 Relay wrote:
> From: Alexandre Messier <alex@me.ssier.org>
> 
> Add the required pin configuration to enable Bluetooth.
> 
> Signed-off-by: Alexandre Messier <alex@me.ssier.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

