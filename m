Return-Path: <devicetree+bounces-212854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC699B43DEA
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:00:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6151D3B014E
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF2F304BB6;
	Thu,  4 Sep 2025 14:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aiQ840y1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D693430147F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756994414; cv=none; b=NjPLafJ3kxgqzeddFNLJgJSpMzpZ3lYIHyyZ+FzM+U1EVHk/EQ5UTp1bE/uyaDAdYmb4+aNPMI7JlDklE7ekL4s/sHFcvIHrVp5xipBcTD8vRE/x4SLx2zdDCf2sv3KpqRSLijYSE4CtwlPCFV1Bv0i/wjITFueLOVuAs2c/N5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756994414; c=relaxed/simple;
	bh=vu/lR54XEDQQa3fvTSvkK9DY3Ceu5L9G0y9ysxDeew8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DxauFCtKBzSCa09jqdpdazYkc2HxwXj4OBigBH64vIBVKP5VAC6iK8l1WM1KfeUMsY+/JMUdvepmVKkT70y59IpluFEoFgiDQQCiRn7SDTdW6jMhVadieSrdjyAtMkEpMeYYOCgcAzce8KJQ0OzkZ+IxhYK0EWBmUT8rQkXfZto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aiQ840y1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X7sn022976
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 14:00:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Uptw0dRl7YW+LaH6Bz8q8rzE
	zjyijfxJOm8LQWhCZ+U=; b=aiQ840y1T4XIi0S9YmR2pzI+Yz3y8dKMPxBebvek
	wIUG6dCbgwaViWfPR1j8EU0JQ6AzbT9R8BxsUo/OueC6QbyX7hO1J0TqW/xA8CSR
	CnbnkLaf98zcuT5n+6ShATUibRun6f9t4dnkhx1VOoRUni4HxHtqgMgrNfQ1YShJ
	DWLaytyN0omLp0xHm7Z9dDlSjKg/69yswSYYojRxK4/KvaoB69ux3VWc3aSfvmfD
	NOOrkxqmPjFwtItj80HfU6lh7KI0l/LK46dw0Zrrfd4PmzaKH5OP0VuDJTunxZpq
	B6m8bP2pBeK8DU3p28btNpVtsloLUBsQW9B2gFq19DFFjA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0eqtk7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:00:12 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3349c2c38so25540921cf.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:00:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756994411; x=1757599211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uptw0dRl7YW+LaH6Bz8q8rzEzjyijfxJOm8LQWhCZ+U=;
        b=NQxUyoQW6+X9OR9fbyxMiiG+r7BgO0JZV5hI09BkE6hyYZnxmGWnOut2EOfvKLngmo
         MAhojixrfruubKnRnZvqYwBw/t84P29sEKgIU59dKMsGvVXFxNWLPHLxx5l3vvr/8KKk
         5/B488oftEgDarQEHzh6uIDkC/Hx8RhFK0oqBYbHEkawVXZpa6IrRWzscvpCTt9Ny+qb
         rzPUtHmqa9ns9UzasMyED8aqPqWPNz3Ft1mfhJuM4N4JtiW6QRuaJYW2/HsBP6RVOB7c
         fulnL/u0nz7YkA7uY4rkYCKppX8veNDU01AnJnKSHc4ZHqms5I+v3qQtxPkmxLOh4Y4J
         AMsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXM7RDaG8FT7WebUPJbCCa1PY0ggX95/ZIPEWJbCyydUkwfxl7KErWA8/QsvmZmcAMDkczCffiXbOOz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7DV8pmuaeZKt2IqgxDpY/bheFbBE4bYOQ7+ItnxdmOLfJGiUS
	ZkQkTI57MZnrVi8RBfJgtfrMqUYW+nqv/TBUR5t5jiB6xKcmniBX4CW9x/8HKh3FC30ikcT+xmK
	ZPVqykffTAmO3R2xhrOadMJb9dbgLFurelV2sSMhP6XrMTe9rTA1ei/Ta0YQ876q2
X-Gm-Gg: ASbGnctJoND69GO5jOixpNMBF0hv0UEfZA0isYasXhLK2zCpXliSywnPRTW4XCXifwI
	+utI/t2WxZfcTfz/Q5yAJ9lTaOMriCYWFgUGW23hQ3SCxG8Lsp/j/jukXoipI0DSyElXKxGO1Bw
	I6M+3KSmUSwedXdBy5CCeVg8hXSBotZdcHjDx/QzpESmwO8X6PZZQw5zuJjOKgexCdTMNUBuelN
	T9mSgdsFCYbyaHqBeHw80PCFG8x2c1BInobudOdLJgrjnp5LjKmtzbdqnUg4VHZlmpLChrvkBOk
	FfSF+5ukocfHNgOpWFx9v0YkvXvbK+PAeWqvxuqsMYdIf3ppdFFfRrDYM+WZJiICZGJwG82/ZMJ
	N0K78t7Y3KBp0H5L3jFy6KhBg0j4v6gtvzz87wbgAykIAFsmEbMeK
X-Received: by 2002:a05:622a:5a0e:b0:4b4:94e7:72ff with SMTP id d75a77b69052e-4b494e77707mr66824521cf.30.1756994410426;
        Thu, 04 Sep 2025 07:00:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwARaMkXqyukGrdjdAD2h8y2fUXhI65qlFW8+laMCPTiKqFhNTFQRZKJrHyCepIok7qk4PTA==
X-Received: by 2002:a05:622a:5a0e:b0:4b4:94e7:72ff with SMTP id d75a77b69052e-4b494e77707mr66823511cf.30.1756994409513;
        Thu, 04 Sep 2025 07:00:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab5dd03sm1244263e87.28.2025.09.04.07.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 07:00:08 -0700 (PDT)
Date: Thu, 4 Sep 2025 17:00:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: apq8016-sbc: Correct HDMI bridge
 #sound-dai-cells
Message-ID: <h2fb4pz62uol24jmf44nopmq4h7jw2prnpttgfs62znkztosdz@hbzc73urm6ze>
References: <20250904084421.82985-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904084421.82985-3-krzysztof.kozlowski@linaro.org>
X-Proofpoint-GUID: HmvWFCoSqiGvu2odD7Bsne7tOuDSviOx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX1V0wdZLL/8vv
 CORPSSkCnjz7fHzRqQmuvTrKjft2/KkCO5r6QdD4VDloRltYoRnrjP6nGlzS9eWfYQHMuRbSBn9
 ZwASLaO3tIpFkV/oMtNlXvToNmdeuSVeJ60v+rZbM3WxPJCCrrLFVuqNf5dw0WX/Dc7uL161SQF
 O0ZWm3HiCF0w1Q66vRVmrdX95gbnfo+UnxBydoSPc8GVnxrVN1/2hiND2lJwwq27XhnYEgJS0qr
 TYUZh/d8ckQaGb3/P9kJkZn24z96R1qyfg6mNQIztdbveNx7tVNssFtF7hBGbzCNWEMEiI0OQUk
 HJJDgik/HMuYWcuQ8HIUqbBcF9R4szttq5grHzVXKnl7jjAsfyIqmvQTex5WnvOtYJ73LBgzhbc
 9pBKKX2N
X-Proofpoint-ORIG-GUID: HmvWFCoSqiGvu2odD7Bsne7tOuDSviOx
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b99b6c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=zNhK7oAxo_OHXOIITUgA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

On Thu, Sep 04, 2025 at 10:44:22AM +0200, Krzysztof Kozlowski wrote:
> HDMI bridge has only one sound DAI and bindings already expect that
> (dtbs_check):
> 
>   apq8016-sbc.dtb: bridge@39 (adi,adv7533): #sound-dai-cells: 0 was expected
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

