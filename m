Return-Path: <devicetree+bounces-239510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E295C65864
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:34:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 223F128C4C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39807309F1D;
	Mon, 17 Nov 2025 17:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J7Z75D88";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G9R89chR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FD83093CB
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763400869; cv=none; b=qseSBwDDpTZIaBYuuWbwgMAQ2dz1hA/fAmiYTEqNlC59M/89GNDvJ/q6lJMtAOg1C5odg3WlaJXgoh17OSwvQ+9QIlmxNUu4yHC87igrD80x70OEMhSDDC8rWqE5+QUO7FlYtMYVBsyAREgQFulKkPDFApflpMbrcZucS8CDnGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763400869; c=relaxed/simple;
	bh=gVUY0Xv5dUtiyWTE8tWxGtpdbyrjF4RoiY4TGiauS94=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KbJwAwkDy6bZJMsK4Cj92TK/LxWVvvtcVw5349XaWBk+PL1Cd32CIITjT7gHaPDjkKYMPkO0m5ubV+LOvs67gY30pdKw30DSFlrKe/axL6KMeS2BFaAWwmGD99j+gcQvv33avlk0OmlK+VZ43wHcBs07xWfuXtlC01OQDjVE7dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J7Z75D88; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G9R89chR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHECYZm4166696
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:34:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sqq0dUy1JpIIId8WEAccK+hBBemZQgH7944I/ceozwY=; b=J7Z75D88vwh/HyRS
	KWUZucf4RTTE5dLMZx/EOtLcA33NngwYnWdc7DOBNx82g2hrBYgnDUFuc1g4AIDs
	JYsNP50yUkxNugiibEn6UZ0ropVLNv7TZztocRTI/FRJgYNsBZjP/wC81lUYuB6z
	qkkH7S7p0Tm8EO+XANL0XKGgaCsNlmwcw8A9pepdWO7P1lOg3aoQqQVhwztzLLFs
	XtBZshgogkylIt5+xQY4hIgk6s2FeUrQxijDRH7nKxgFSqbjzgVUJIfQmK0n0eAO
	yl8mt1VXlkH/gVlDnzX84WK/pRKpihk9A9Z0lTxi8VbRSc0eZz08qb/rVuqaZ5Nb
	Ifq2lQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag593rku0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:34:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed6ff3de05so144964141cf.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763400864; x=1764005664; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sqq0dUy1JpIIId8WEAccK+hBBemZQgH7944I/ceozwY=;
        b=G9R89chRycPekry/lOFIRaOARg91mXbVzi6tMwHSpz9e4BEC7KLhayHGZEKdtT7aH5
         hQ9ovcbnsiB4EyTjsBbfZUxTssxudG4rmUCsv70UACP8fG9RB8v+OgdgFpvzHnb8fjPz
         FUPpyS8O8hK3dWsckWrGwBiFLvfuutnN0lV/cpTM+jICLfgufqZXukR3/0uQkAil2vNj
         MC2ppaAYpaSyu41hy95MMN4ciYDlgWTlwyoew9v/VQSSira72hRSpxIKlyOlQO1jqjC3
         U9qLnF4HPQxCKFlS3fWeKv9o/Okha+37tSOy2aQihHjIcaLS7idAMeW2oiHHHItHl+F7
         Fdxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763400864; x=1764005664;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sqq0dUy1JpIIId8WEAccK+hBBemZQgH7944I/ceozwY=;
        b=jDNgGdHxAFgpJJXeLjG2mIaeUfkTuU3fVuwKwT5JkZn/C3l4341YG/P8VGwpZ1BiqL
         GUCCRfXW5UlFtm4Hd9yDTy2gm6a05On6ZoyFUxpC8MbI5BRBIT5cv3Hw6NyQOzCIIyIi
         XXVIGt2Wj72/6HOqeUeAVipGIZg8el6+2JgkNGNGAVyc/CxtDBKyc/uFX7VG0bzBU+Q9
         E9BDMYY1dSpTK9Ft1MmgAIaQwWlUEWpsoNRYQ3Jr8jPpUeAuzzRHbZj/dR30CeuI5Mhj
         PXkXCjGieDERBY4KFJFONtXg6xroTW/FLHpwVW9tDUTY4C3k0xjj8+IAev5ERbmPuRGp
         qQkg==
X-Forwarded-Encrypted: i=1; AJvYcCWaW3jcPeUjceJmNysqFTE2bgvdN8CWbejvbyNZ9tW/Dax/Epfk3SA8U6ECDY8Mfy2FplIsOa/pgRh1@vger.kernel.org
X-Gm-Message-State: AOJu0YzSyh9uYlkZ9UIbXJ01/KBOvKZ/H8uGDRBOgRF/iVpNHE8lJyol
	HqgWjnF/bt4JG3OQPojMwcxZREb+lhLys3yn//uEahoLBHImswe3HLcKsnfMtEOK1gIzDG1ZlH7
	2G7HVxh8NBcZKnOhZP7/nNBu8nj/jfaL5+B70SUbziiv8hiMOgGcW4XRmJFxM1ZY2
X-Gm-Gg: ASbGnctmPXGmLChjsZH3ztZ/NZ47Ir8UI4gmLMnTZ8LAIc5t/XDM5cGSlTOKn4C7779
	CP9rjrqKs0yUOyf/Fya6XOzl8wB9CU04JvKjSVYO5veTcGkYBqwGpwsRZBF0I9YgCp0BZ9iF+JN
	mLA4gB7bULM3B0IHMbzRECl2OwYH3LW6EJ3YIA0GXu9yAs1LQmqpqQxr4CkkA/uZj692b1n0kqB
	2GGts+L30BZPYdrsXHsy+3raLj/I+1eDowWdqd2pGJaZ3CKgE+MasvRTZyNX+IZuVrzltQCOaRW
	lhS0Ht8mAMUkvQ9+qSA8HKsSO47Hy1VQXhOShphATB+eC8BiiB/tic63koXS/6QQyCc5W0/o6h/
	K7rFhDwIzNfW3vSAOjOr9LuCf/GJJxF5Khx/n2Ukoc54ltRBVsLVa9m7SKjglRsj90rIIYfOGSZ
	LnnTD/0pIKmbIx
X-Received: by 2002:a05:622a:20d:b0:4ed:b1fe:f885 with SMTP id d75a77b69052e-4edf2054e17mr193400851cf.19.1763400864361;
        Mon, 17 Nov 2025 09:34:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDsGNXgDrM+YQjWMr3KW+uuwO7XHJLec9fyQW08isuv8jIzJNYLVDJ0mX7QQZbf6ZlUCdYaw==
X-Received: by 2002:a05:622a:20d:b0:4ed:b1fe:f885 with SMTP id d75a77b69052e-4edf2054e17mr193400371cf.19.1763400863952;
        Mon, 17 Nov 2025 09:34:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b7a67sm3257940e87.43.2025.11.17.09.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 09:34:23 -0800 (PST)
Date: Mon, 17 Nov 2025 19:34:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: msm8937: add reset for display
 subsystem
Message-ID: <whgt46es3c7ceceoknpqlqmxvkplzlcxyksqf4do7lpcco2fbr@3o6apg4czkpm>
References: <20251117-mdss-resets-msm8917-msm8937-v2-0-a7e9bbdaac96@mainlining.org>
 <20251117-mdss-resets-msm8917-msm8937-v2-4-a7e9bbdaac96@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251117-mdss-resets-msm8917-msm8937-v2-4-a7e9bbdaac96@mainlining.org>
X-Authority-Analysis: v=2.4 cv=AKSYvs3t c=1 sm=1 tr=0 ts=691b5ca1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OuZLqq7tAAAA:8 a=4nVcwanjD9Et_E7zVfYA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=kacYvNCVWA4VmyqE58fU:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDE0OSBTYWx0ZWRfX2R6FGlNhLdNe
 RyjCJh7vaf531OXe3uvGCn2e4OSgQmFvbChFHvH+9cfp6WV+9r3V5sUDJSqGwXpP5ramhIX084G
 0NgLvqMSmp9U6xhlviAeT0wmaRGyIxbdCpFaqVH3T+DEgw9QoZF+3xocER7I6SJCjUzlfJwPB4c
 VteU9jrYjmVDJ5hOal2icfmJbvvYIXbO9h0WDdQSylgSEKLb/cdlX3OSiRUbb/s8ssWDuNtRHqd
 LlojiewdgN4+W25fu2+v5+uhge2izg6APlYbj4MAatuuLEUHydpaoS4g//t3qlKDszTbrtGOOCc
 G2DENemlYYMyEveyeRPlykdYx21Q+jmG0UJOJoF78hkPga5mPWStCatA0fUh2/efx3GHCtyGmWE
 3vKsXXu+ShXGWGtTbvrk8GJWtHM+xQ==
X-Proofpoint-ORIG-GUID: SynrnKnBgb6kGHJscQax-RIyjTQu4EE2
X-Proofpoint-GUID: SynrnKnBgb6kGHJscQax-RIyjTQu4EE2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511170149

On Mon, Nov 17, 2025 at 06:17:55PM +0100, Barnabás Czémán wrote:
> Add reset for display subsystem.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8937.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

