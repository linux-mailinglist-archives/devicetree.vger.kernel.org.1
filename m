Return-Path: <devicetree+bounces-175807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA41AB1F53
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 23:49:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47ECCA20AF6
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 21:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E31C262FEB;
	Fri,  9 May 2025 21:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aEBfc6CA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735062609ED
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 21:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746827308; cv=none; b=aNIaWXu6kcdp8XSoR24+R571yVnsM7/dGzvZP+PS1k6B3k5ZuNSqVL2sSg8f29n2BmfLZEL9wVksoSPGnzLmoZIxJUGM1Sf5oLbJR5CQZ8MGDz3S97GPPiR76qfwmcZZPxEz/q0+QpCQoWX8J52d7c0XpuTNz21z7PY1OXZ9/Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746827308; c=relaxed/simple;
	bh=jMiO8dfIWqztSqyBC/M/E5+POfZySH8C5EjWZ1zmoKs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pslfYmmMAX+V3CWZrXn4k6BYW/Uutbxmj+G/qINTi5KOaxFKInVs5UUNrmDWdT1dCH8vREfgqZlL4jsLBB6ILtxLJtu2hGvIxdsakzFC0af547SWOcAaMrXs3J4Hu1vuCdSb2kdZKTD3bL/EJPbDyS4b5fut0TtKadrS//TI9fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aEBfc6CA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549DBHLb009212
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 21:48:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fkn3x/u1u+KSHGaXD2ujk6gLEDw1t6RvipnTJM9byJU=; b=aEBfc6CAEW/1P5VD
	rf8YMFtCf/5+TPYoyKd1Od1YS51NRKX6BgS+KKDzeoO9dusIJLged2z5xf5xV5cK
	AQ/ogyrCkhUEdF3/+5uaw6CKeAyo6mejDWfZ+k+dV1ZsZIh8sU7efEGnfOm3DKlA
	DF2BQg5bi4Vj5nRIjuGH3c4CQU0uesd7esPtIQwEPY12H8rp06qv3jcNJOS4rJaN
	gimSPQltAo04eIc3ECexxUkScmRLR5C/Kvn3ViPZXmGYWTyYtKt8v1iJ3yQCpqgj
	a82tG9Qw0p6o5d46Hi16fnmFDuHSpkjDWnBMWu5HEN3otQQPsPuNom2nATaBoAcL
	TYO1FA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpews55-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 21:48:26 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f543e296e8so6698246d6.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 14:48:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746827305; x=1747432105;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fkn3x/u1u+KSHGaXD2ujk6gLEDw1t6RvipnTJM9byJU=;
        b=MydPVF4hKDjF3A0H65C9/sddW1omgdegu+MrlpmlNtQfARajKqdyzyGF15ZdqvnEjJ
         FtogZws1vQ/71CFrqFm0/sFbAebIUsg3eFLi/aBCQDfTtW4iqIrQm6T49eSR8wF4QzUV
         26M6SNRngbUmvQLP2wYm1FrbeSCce6lzJmW/dfEf9O52qPmZj2iaJEfVjb6kUA8gd+nw
         MOSume9ucQDRXtSrJtL0/hMLzUe/IwfV+r8GBk8wda/XP87PeeHF6OmV/1/Efm2jds5X
         l1mttS+1K5qfgnXj4SIE9IOxIkQIhXIyiqgmgWB+veFI0IKVPnJHbRQy7i2qToh+3PnZ
         G2RA==
X-Forwarded-Encrypted: i=1; AJvYcCXLCeNVyPiiAIfxiSQdMoE1kIZl+/7jRHl+F6keVUZUIs+6BXYBKhlxIILH0A0NtZesPBl1FCIt/PKj@vger.kernel.org
X-Gm-Message-State: AOJu0YwqLNmbjyYlJ1vbdUqS5LJeEjzpj4oroALpkIkTpPHVtxq924eF
	gmxrMeiXl+/rc3nX4xPEtJ3bgcqyBO5v74qPR5RQc4MMEWCFkMRMSJBvQeOhEOgNWiwzr62iQfv
	rvLzViJVjzMisl6fuLPEjbX+Fccyw8p1YBu70mnrOq3ACLyUqu0rIC3+xk74J
X-Gm-Gg: ASbGncuPhyDaxakxO08T7pCUf+Js3bBS+Yfn3jCeYIpGNf0nblYw0i3gIjVkDvvgKPd
	dEZp4jIqbNIx84NBkyVk4w/QjtMLbFCDQi8CgwLXLegJ1hho6qWYbppJSaVgCD1EXb2gRYv3yW7
	xgW6kgMo0yX/Ure0JX61No3M3JKXj+buyYFOWyX06ZY1M/FrCghfrbhKpdniLFZLPYMfbwV48UK
	AOX18tkPcGU4rA4l8862IS/y3SjOH6Q0EEuyvcWWs4PnHhoJ1o//e5kFxlGecufaiUt1NVUwruw
	+C7Topssv1vyVZ1BOL2AnL1ynhksQDCH06Gbg/8aPl5YuzktBa48zn3I2CSayyFcgHQ=
X-Received: by 2002:ad4:5e85:0:b0:6e8:fd2b:1801 with SMTP id 6a1803df08f44-6f6e47bea88mr29484126d6.2.1746827305434;
        Fri, 09 May 2025 14:48:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSGc2XgNJYZeKKzikhTNArCWy0JPoDUUmmdsKTNg1QXI9xsFUIewBL4B3CBOAqNpYYGbz9XQ==
X-Received: by 2002:ad4:5e85:0:b0:6e8:fd2b:1801 with SMTP id 6a1803df08f44-6f6e47bea88mr29483826d6.2.1746827305088;
        Fri, 09 May 2025 14:48:25 -0700 (PDT)
Received: from [192.168.65.158] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fc9cbe496asm1899058a12.6.2025.05.09.14.48.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 14:48:23 -0700 (PDT)
Message-ID: <43dbdfaf-fc02-49f4-b2e6-5c08b1998d17@oss.qualcomm.com>
Date: Fri, 9 May 2025 23:48:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: clock: qcom: ipq5018: remove bindings
 for XO clock
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
References: <20250506-ipq5018-cmn-pll-v2-0-c0a9fcced114@outlook.com>
 <20250506-ipq5018-cmn-pll-v2-2-c0a9fcced114@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250506-ipq5018-cmn-pll-v2-2-c0a9fcced114@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDIxOSBTYWx0ZWRfX+zxXhUmjlbHJ
 Sveis3iHx+j1hnbHrUEOkQK4Kpia5WjQQI0tD6tftMcxWZcmr2ExiLfNmKCw+fgkFZVt1vpluQA
 C/6d9fnxEurRfNUhn8o2rBs6R2xSqFRWXVHnYs+cqvozLnX2kWjP7gXapRD7cKBIpNEcIUq1Pii
 QMceqK5Re3xhYQMJnZ89kCpyCiZpUWtncRcSQediWEw+9W3u+KcS+u4WFV8CrQxawc2g0gwvXsA
 f4BSrOZo/HOWtzvUn41XKBU3Ykrv8VDpqoKnCQ7E5thm09MemgbV5gdJDo8rjv9g+oI+JjAcQaG
 VJxkpbNAyEptzk2e9x6mYKN+VLGCZ7jBWvQujWxknMRMEQEqrY7cqU41jQMH7L0VsH/fREwWPce
 KiJF/fY0oIBxQ+JZWet3sTTBTLR3wYpt5HoESlRY7+vQDETsLQa6XBh8A/SL6DbbzVAino4T
X-Proofpoint-ORIG-GUID: 0xulJxLoguttIKIYK7SVyetisBWx2WBn
X-Proofpoint-GUID: 0xulJxLoguttIKIYK7SVyetisBWx2WBn
X-Authority-Analysis: v=2.4 cv=Yt4PR5YX c=1 sm=1 tr=0 ts=681e782a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=1mxAAckyurNBcPisKkgA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_08,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 adultscore=0 spamscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=921 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090219

On 5/6/25 7:43 AM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The XO and its source clock must be always-on and is enabled in the GCC
> during probe. As such, remove the bindings for them.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  include/dt-bindings/clock/qcom,gcc-ipq5018.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/qcom,gcc-ipq5018.h b/include/dt-bindings/clock/qcom,gcc-ipq5018.h
> index f3de2fdfeea11f4b8832b75a05e424ca347b3634..d4de5eaffee7b4cb81e0ff2dcbf9e6669c3da8f8 100644
> --- a/include/dt-bindings/clock/qcom,gcc-ipq5018.h
> +++ b/include/dt-bindings/clock/qcom,gcc-ipq5018.h
> @@ -140,8 +140,6 @@
>  #define GCC_WCSS_DBG_IFC_NTS_BDG_CLK			131
>  #define GCC_WCSS_DBG_IFC_NTS_CLK			132
>  #define GCC_WCSS_ECAHB_CLK				133
> -#define GCC_XO_CLK					134
> -#define GCC_XO_CLK_SRC					135
>  #define GMAC0_RX_CLK_SRC				136
>  #define GMAC0_TX_CLK_SRC				137
>  #define GMAC1_RX_CLK_SRC				138

Let's skip this patch - when we add dt-bindings, we promise these values
will be an ABI, leaving them in there, even if unused, will help
introducing spurious entries

