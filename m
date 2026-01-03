Return-Path: <devicetree+bounces-251194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBAACF003D
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 14:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12162301D592
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 13:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB99272813;
	Sat,  3 Jan 2026 13:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iPtoOfie";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="giKo9bWK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4281123EA95
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 13:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767447741; cv=none; b=e5zzo/QZksu3UPJM98HMMU1sbmMyn1NHVdJM8kL7Hi+K6y4PvvjTjptWdwlQCmUheKlpI0s/ek1jW0p6zfsEAUVoJiT7BJ5Mj1pbNTnsDI+loPozLpZaXzV5UQcvgiLY3usBx9PHVZVVYJaB7qlC4Imx0JXpPvp8iBxybRbqabU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767447741; c=relaxed/simple;
	bh=bFeyXDpn7sI13hj1UQMegxwyXA4BVNRZfrb2CjhenQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gZmdy4pzBKn4IYV/nh7n9lawU7EehLjXMP1xqnOxPCXV9kv9Z8KR5jtZrNH5s3dzZWK9dOLi32AEP3z55QXfIEbl3T5f8JZTwsE94P9fRjrESU0RrtKB6Xgclnezvlv3uNnU7rLok/TJuSY9vDkao3KGvio6ragzFJJRng+cy7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iPtoOfie; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=giKo9bWK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6038l0ak3204312
	for <devicetree@vger.kernel.org>; Sat, 3 Jan 2026 13:42:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RknnBF6iltN8X5ctZkQUvZCW
	3lKMVu0v7JV4Tc11MUQ=; b=iPtoOfie1bzgo2etJwcMI33qd3MaPsf3BD/Xzdi3
	KqvK0QXyOET5uhAra8IN4kZRFwlalcsP3Ew6t6A/AzRFKh6OlVdX5vN9kFVRvipQ
	FMMy9sXyjIKyKWXt+bWPC1WmlYJ9gZYLd0bqkKGB62F+E64PH2MhrT4W7/knoCdU
	N2S21vwM44S6XP5q/zU5VnDRIELCZ1eyOPtRLOZ3oXasnM/zUP4GEdiT33qNf4qg
	N8gEa35izIe1Zzu0X7ahUM7q/gMl5frSW/G8uzibsFKG/iuCXlScq/H8s8P05Ciu
	fssdPFSlwrESY88JK95tbDI46jftksVgaCnelwNEw79txw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beywdg96p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 13:42:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f4d60d1fbdso415048441cf.3
        for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 05:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767447737; x=1768052537; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RknnBF6iltN8X5ctZkQUvZCW3lKMVu0v7JV4Tc11MUQ=;
        b=giKo9bWKnsXBYAm7rZFPYfR1042AqVmVOPh3tcpOnr4ozKUWh2QeHw1uZYZTqtswhm
         QkBvurqq2Pr5iptnGLrYJ4WaABF71MPX8eZZcuz155XuEDzQ3NAwy0TMUDylbKuYciT/
         LVzbsGijXO3PzCjrz1/hhQfN2r7R9lHCWCyHkFGtSxRQNlCtxbcWbqBXsgEBpjQGx0cJ
         tqUR8M1Y8NTHAUjNJraIDQ31UFzZGYi5JMuBPNYoPqBJwPqDTTHzyx9Acrjm2aNcEy2/
         UXBtWh/S70DFPuwPpfhLrkXD9YwB6o8jM4TS+4a616TC/sy0LLwUAjovBqhvUterXZC5
         CBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767447737; x=1768052537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RknnBF6iltN8X5ctZkQUvZCW3lKMVu0v7JV4Tc11MUQ=;
        b=JIX0yBN4jaYeubwdfTN1nn0gCCFLsoaDoAVxsdzhpf77ajI8jJYisk+XPiuSoRgNE3
         nesCmojB5Lu/FCvtK6v2exqtJRdS3KbrxBLz3sSLZQ8gmmlVcn30cXwcF7Ac2fG72W6u
         yjEozpAw64E660WVJsudNprqHetcea7vW+lC4QVppsdp9RrOOuMp1o6dshXajaFOQOlA
         l5QfREbqo+h6txQWgpzr9ID2wAW8viFrAylY/xAxfmq0gcWeRUwoZiRv7V0bBLGwGyjP
         jBdSBVPsickUyLG9jpyGnnaCIVzUI4m4dE1q7KxCVs2uq6n6WWSSE2UJJdTqVtMSAaKq
         lGJg==
X-Forwarded-Encrypted: i=1; AJvYcCVynQNhrfKOMimiAPjTz8+/OmvbkG9Ftos6G6xYoO8Q0islJ+pC0NKcnZONUr7eSkeo34B1KXeP9EY0@vger.kernel.org
X-Gm-Message-State: AOJu0YwNUdWvozaUzXEZe5kQ5iLzBP5mWuWIga4uCrbawGGn12AdqBxA
	0iS6DKuIYBpt1LSdEJ+ghrwCQofvfBW8twKZKMtgYJGUHX0cob3G1Lh1/nzQ1SpAzIfimKz84Qs
	6Ben5sa8TXeIC8Nx7UQ1R+lEOqHB4+4MDonWxNxZuaG3HjiGSSzXn/EJ+HuJRj5au
X-Gm-Gg: AY/fxX4HxXAccu+GSVspQAb5kBqyIpoSl3L/rXj5iO6veg36EeeAd7dAQGVCSTs2m90
	dEeq/bEonXyNWZdEb847ntOq5HOcRRmQXcKSAUONRjlfHpIkFiVEK4LJ0qdHcPuwCOBBSc8cOsf
	mSYtovcLn4UDHIr3tEyaWA8HmYydv5bWaA/ipIRly46xNzxj7vzy/uZpL8s2VDRe3tdzdU7pRAm
	IOy0EOnCrUiTUw87Yd9pPlurcnRmhrPdyv1vyK5L9HIN/MBNvxI6upvRYYFL8BFZTp3makT6Zxf
	h/lAhVTn0bU9xI2mHT9lgdmOYPqyed7nVEjoKlOeASo5VwlcQsaesfpeGXLUHxp3623irM4/Xho
	vz4L2qhx1WFnAF4wBpIH+UDsqr6RyYZpr/sBVOPIBPYDbOUHcL4iY9R1lO5if8QGpqM/VHNsSKx
	qNfbI26EYR+IN+0WTqtf8A8ZE=
X-Received: by 2002:a05:622a:2515:b0:4e8:a8fd:e00 with SMTP id d75a77b69052e-4f4abd6fd05mr666283531cf.43.1767447737479;
        Sat, 03 Jan 2026 05:42:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDlt7ad4aiooknmq+zB6SC15sSlDjU87miC0SXLIAcaQzxXQ8IK9WD0Kr5sJ7eNw/2osj2ww==
X-Received: by 2002:a05:622a:2515:b0:4e8:a8fd:e00 with SMTP id d75a77b69052e-4f4abd6fd05mr666283101cf.43.1767447736968;
        Sat, 03 Jan 2026 05:42:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38122539ae3sm111806061fa.21.2026.01.03.05.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 05:42:16 -0800 (PST)
Date: Sat, 3 Jan 2026 15:42:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] clk: qcom: gcc-x1e80100: Add missing UFS symbol
 mux clocks
Message-ID: <bbj2tax7qb5pj4ujl33t5xc6ylogf275lj4hr52ftu6lqfglww@s6dourggzexm>
References: <20260103-ufs_symbol_clk-v2-0-51828cc76236@oss.qualcomm.com>
 <20260103-ufs_symbol_clk-v2-2-51828cc76236@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260103-ufs_symbol_clk-v2-2-51828cc76236@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Sc76t/Ru c=1 sm=1 tr=0 ts=69591cba cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Tt4ZZnawlGJF5pWS1soA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAzMDEyNCBTYWx0ZWRfX9YrD5xzguWV2
 3bb7bnYrEaMCB6CBOefqvtBAtQUte8CKgDCMOzBDYbAAq6WOojKI+wGjfLfPdS5hTs8C8cyt9NB
 CMm0R1YJc5N3l07wIYiqS7uW/UM9HaHL6gxiqxzh2D/qJNA2XN4xtZZBAcXLPFJc+2ZJ9YXB80R
 i5iREQzAJdGW+UxjPXSYt6BX8Qq5OqzEgKezfChhscVZzn597UN9EwJmRUoKMPVzdXUwbnXmpcw
 7nNZA2ZKqyEgY3U0Wg/FSR+Z2KEHzz7r52zaDVZEt+KK7691ErW6aa5t82OW20E2XsjayyZhqv7
 +2Gg+qj8hxUsQzcl14VtN8X8agx0sY9T9vKDmMxQq9WC03s+Dawza8RcNmODCyEmx8phuyQpH0a
 cKMuR8iymtUVp8pZ5xzpW+m2I3tE72NagZBMoNgKWzqAawm4p9lb096X0n7OIpXJC/j6dT/XS1W
 1m3M/Tr5hkvwuLiDBVg==
X-Proofpoint-GUID: Hmzpei6v1zj_aeA8sZpD50IcOuP2jthz
X-Proofpoint-ORIG-GUID: Hmzpei6v1zj_aeA8sZpD50IcOuP2jthz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-03_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601030124

On Sat, Jan 03, 2026 at 11:27:06AM +0530, Taniya Das wrote:
> The UFS symbol RX/TX mux clocks were not defined previously.
> Add these mux clocks so that clock rate propagation reaches
> the muxes correctly.
> 
> Fixes: 161b7c401f4b ("clk: qcom: Add Global Clock controller (GCC) driver for X1E80100")
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/gcc-x1e80100.c | 72 +++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 69 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

