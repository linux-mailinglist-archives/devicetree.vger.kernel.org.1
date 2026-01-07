Return-Path: <devicetree+bounces-252375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A82CFE1B9
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:57:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3D55430BD6B2
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF8332B983;
	Wed,  7 Jan 2026 13:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lWviJchN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ReiK0p8r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7AE32C926
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767793655; cv=none; b=lBo0z3sVL55R1Pnn6RG7YxEPolvjxMTJWwg5qTwyI3HY+37gQZNDiFeB/gW/QW2xZvPt1D1AZjQCOWzI+UaIP55YawhiRwKkOOobHf9U1dJD0Q2OGJzm7JyZUxFArPWPTpTTdHELsegL/8+fg44+NbNboWjc0gXGl+cEQ0wm8Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767793655; c=relaxed/simple;
	bh=VGE45WNxQDTO014blHHjIi5tZVWuHW3PG7dXHce6NLg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fpSHDkPDbRADsP81GgwJpBdLoSBd8w0l2VIIeTsLheIrwcK2yoABOKcMS1UpYCZL4bDbncln6Yuf5kVQh1iyYflr6WHBw1fC3eesfzt6CdTOCwuF5ZqY0/VJED7+JCfkl3iD/Y+jNnZp8+mjXAyiGQLxpbkBNaWEtiWM1wzZ93Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lWviJchN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ReiK0p8r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6078gxQU1980411
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 13:47:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UgZSlnstuL+bWNOM3fLTFdzNQEvh4E0HKjNHVKtgJqc=; b=lWviJchNA/PsdJa2
	68HBFGAAEZATXJ31rW+2RG6l43QqyyRaxzF684XJltEXQSM/ozKObb9cw4aBVQpH
	aWTUCpkY7u9lVShSCiU8NyIbZtzl+Kb5NljkVbDKlx3x6xLL3ZME8NFKgL2XZNHz
	XWqL3dpqT74RhVzHVCJyvzBDMRPw2zZhrXr1qGLIPo04Htpt+kHmU7pzXK121ySt
	46ymjU6S0c79H1QjB4Qn33d/6CC1z1vlTugIxOV6l9O+WuApMaVjuEbkYi1VJN2d
	sLswJmRgRDpritd/ExnaDdVPkFVGh3WOHJxQD42tNFMuka43qg7ikNffbNf8XaD6
	YpCB/Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhdavj8as-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 13:47:32 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f34c24e2cbso4409801cf.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767793652; x=1768398452; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UgZSlnstuL+bWNOM3fLTFdzNQEvh4E0HKjNHVKtgJqc=;
        b=ReiK0p8rv6lbD4R1+H4CcSbkWKoBEZEQNOz7h5ZTQiuh41UBCPzS9p1/KiRx/nEar3
         KMwiGmXLRR5AC18mK8Osi3xUwh1sQkzaDYt5gmiHzb8MHg9lha0O+5uzRpaB8so5X8IZ
         XuLcD+UBFYXE96gjcxccFSkBd3Bd4m0t+Jd0mf/O+Um8w7lggIueVoOzug30GnCu4yfq
         XAWg7rIhP6sD1FFzau/xX9CIIr45q7SHRVyJ3nMsaYzq6CwjilW6TWIPwuTJY203MJth
         Tvw5aDOnNcOiLNYU50rjkwlTyQt0jcMNRJjMwPe6uWUj5IXKFQpKOb0Pi+AcDg+QtHQB
         9Obg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767793652; x=1768398452;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UgZSlnstuL+bWNOM3fLTFdzNQEvh4E0HKjNHVKtgJqc=;
        b=OFOfl/G6bpuRHORPpn+EsbgdfFZnA7kKCW9GGt7jRy9VD8L9QncMv8l/doCGaWnpOB
         4AeO/2DiWEkGUW7bP7c1PhTAp47KeSBC6zhC12KuxzorWgviH4KioOynUFnFwu/ytT7b
         OifWrSXOC7QVLVUx+tbft9paehCAVJMeiEIEDPtDvMv7FcivgxYNPC0Xj9RDc5U8Gueu
         yggAv0yDhDmg3DJVrr1sepeCQ5pG+slK9o+XSjLcHtAtzxQtGYDbGk/xLzSHncbTuif7
         VZ7qh+yq8A2v1zYjO4SpGexuWRhOopUh8Qn1POXcUxtdOUqHcjijEyiYXUaC1sw9lLMW
         RH8A==
X-Forwarded-Encrypted: i=1; AJvYcCWYjsQ6AR7Q287FODfeaZzYBLMGtbVe6rmGhDhY5UGX+9wxb3eI2gZgoS+T7nwwi5bPmGMJSN4Hu4Ja@vger.kernel.org
X-Gm-Message-State: AOJu0YzxqqUnxvZeLpDPtnc5cF3ECTy6xTxHNDNxr8r9ssY+xv8PwvC7
	z8gvlswGtR+vgdiTc9yXgJcVur1A5FCT7OvLGdwinv2cbrOKt1z0tKTluVhM5ATMFifHj0B8Uf8
	iQ0+0lkZyfWwu4z10LkELqdOArmEaRzfowJrNLzMNltZBeR9MOs+tyQqLVo+gT3BV
X-Gm-Gg: AY/fxX4iUsGNf4i15m+8J/sztpRQAqk+GCjJ3SzllnSAOdhuhN+lRcI6qOqCQq7r48Q
	VEXzFUIwMEByHg/4YDzpCXzZ0rJeasnndvUMx73LilyAmEUkDl4PGSNSufdS8H2uvQ5XKesIWNe
	XXXtlCXeuPuhu6Fuh7VX3l5lSg/i+7diQYA8IA3Eh1p3K0Cqsrd9jjNeS8rPoSX8X/84lhvZpwZ
	17pZMhec0a8o3gL8j8HbjZJEkU2+pwlxL4S+HoXeepmFlX9zoHsuZftTNQf3aMzGR4cgWyxekOr
	zUhuhv7I1tT6lIMUArQk/H5WsHcybkUl4BZVDH1aKQJN5pUoegLnSvOCcJ4hSRb3VN3RTJTOKmw
	5IPMY8WwG8WL+m0Hx/DG4NA8UJ5GFYvW7FDhSuhHxsJL2hVenR1S3PgEnfwZCT+NPldc=
X-Received: by 2002:a05:622a:143:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4ffb49a0042mr24372131cf.6.1767793652374;
        Wed, 07 Jan 2026 05:47:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEqSd85JPwhEJMYgx6YhAsjKJYD9xSuGfuAYyKuY5Za86pnaJzUy8cquRaa93zxCj87b0H2UA==
X-Received: by 2002:a05:622a:143:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4ffb49a0042mr24371741cf.6.1767793651855;
        Wed, 07 Jan 2026 05:47:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5e0sm4665696a12.31.2026.01.07.05.47.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 05:47:31 -0800 (PST)
Message-ID: <0b27c56c-3aac-4b26-80f5-f8cc52abb66d@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 14:47:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] phy: qcom-qmp-ufs: Add Milos support
To: Luca Weiss <luca.weiss@fairphone.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEwMyBTYWx0ZWRfXwo2LpV1aAXF7
 mF1KItZVueXYs1hoYD9EY4L98mx8A+1MraORRUm20s4Pf7WJ4z3pZc4VlUdqnhm2TjQ4LyQ2YLW
 i9Hi1859ppY6rSgkWJjwRtNxQ6El4ozbxM2tFDWJuLYyuSObLi2ZUym++q8vjfiXPGhmQ4aEEyo
 FPTfVHtoA4TithI9CguadYJa2vq/6V9LhuF2bDH+DPqs4oP8js/jxma+BLUHhW+/6vKnTvXnmX6
 ntemc8cvlAA/Mt5djotbc6taBnTujoseGWivAZs/+XEXg35YM09pZqQW8SaT7AhJ3qWhRzV9F9M
 uYmKFXww1bJzErejevcsjbLqzN/hw7R4ugPhhLEA1w93hI7f4PQMsIySuVKVoIN8tXqwXP3VYBF
 9WN2v5ziECjO7/6wkADQmptVAPb1rldyz4g2y7D+sR78XouDj7DXpfxg2w84pnAM5nKVW83WPUs
 fB2HtPgfGRiSKCnKyrA==
X-Proofpoint-ORIG-GUID: x6v7sQQWT4lGJXH_qEcUE6TWKuN_Qs0L
X-Authority-Analysis: v=2.4 cv=comWUl4i c=1 sm=1 tr=0 ts=695e63f5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=RTUAgidmgk2qeza8I2cA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: x6v7sQQWT4lGJXH_qEcUE6TWKuN_Qs0L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070103

On 1/7/26 9:05 AM, Luca Weiss wrote:
> Add the init sequence tables and config for the UFS QMP phy found in the
> Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Matches the latest hw team recommendations!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


