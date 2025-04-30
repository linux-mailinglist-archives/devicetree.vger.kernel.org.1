Return-Path: <devicetree+bounces-172412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AD40AAA4B68
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 14:39:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B2007A8CFC
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75DDD25A32F;
	Wed, 30 Apr 2025 12:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P0iMH8AR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9FE3257AC3
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 12:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746016790; cv=none; b=st2TBIIzKE4NE+LBo5EwBVdZhPXy1Br7ESp43SZ103+NqdZKkWQq/i6HXpIEUfxRkIABbSBA4GmGjnj6TSUQbESlPtY+KbYw6xAgIfpJnlI/fNS1jewml34+P1KplmOMTzkxK4M9+mRDiTeboQFuIEthhZiz+yqeTpKVFcxUENU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746016790; c=relaxed/simple;
	bh=EPNKpKk8JZWaARHFAYyvjGyRCL3qGuhrQzvghiPj5/I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fuAsNJZLImkqdJjDHLkFW+S9Z3O6TaWkfsVgMd7n5HbNP02MPrrAoa8QJwrcTmJ65Ci26qZgy8508qDS86mW21ISO0GcTKqMSKO9RKCLjoIS+67hbbdIOFA9bAStN5A8TDN1Wv6x/xBG12WYOPI1CuROhmealmfHZ7S34wDZWH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P0iMH8AR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U9B034021490
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 12:39:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LFs068+EJ0khJe1SOIZavrVMIyHZZWaL3/ptb8Omy90=; b=P0iMH8ARfBEGM2/N
	xQIsqOy1yqATbwMeMf8+4UsH6jqJOqYYmyiiO+qz/Fe7mpnv93aA6e+IgaRNuYtV
	9cAoOTlGL8eUqOpCGEfQ2dlf8+ObYzBSWfklyJZPLbSaCivSPnVIxKsoPsuvkqdC
	c83Py2UKCVzvnBAfoNLq1GKYFPB+FmlHMAw8S1hkP0KGXKjMMm8waqKZsrF6Mrqm
	ZpopmUFzazgswNPDrL7C+AQ22NIFNgROkwj/RH30AEypefJi8Kpd+Ng9bXhjXnbR
	x6e1iQJS61MKfcqkOgGHSGXTNR30d14JtT+PUPpEArMimXLsajQJLJLmIFPbhTAi
	DKO4mg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u727aa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 12:39:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so24374786d6.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 05:39:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746016787; x=1746621587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LFs068+EJ0khJe1SOIZavrVMIyHZZWaL3/ptb8Omy90=;
        b=AgVAtBW0gUz++61WHf6yuNSPW3yB9PnQXO8zBF5OD/QgDkfHgHL6Dy2tcZOKftFzXy
         FtZK0UENP91JPuAraD8w43sR83I1rc9A/Ifkftz1DJ+BmVSIatISZelT2XyXkZ6jTuhB
         0LT9bgJ3IWQjLvv8RHUgmfJMymMTRK8jaDqTTXjECiKb/0/YidzDSRllqziSqNgne9B3
         JbYnPJ3gUHSTuagHjy1qU3hFlXF6SC5vhDxbw6en0vPWGQsYakabdnuoDDbzUBNoc3T8
         ZRV7Ho1yowHcz58U9rYuOFGpO+nUK9tq1N8XJTA1QyzkcfP5nGZEf7WiSTShkuVzICV3
         EwTg==
X-Forwarded-Encrypted: i=1; AJvYcCVgqkvgtcR2gpQLk+pVBqN0qTNVOGhdkEBsr0yVrjHEgGhAHDHxmJdjHY1yTErYw7BmI84R1KmqCdTB@vger.kernel.org
X-Gm-Message-State: AOJu0YxF3/vYmtf2ptowvcz7YWGrG9RZyfZVLhAs5fgUj4ix+1TSxHLu
	c6zY5lSh5dLri0khwyn470LsBjJAEAuJmPAkcR/4pq8kmW8/LagLIWgbxzd9HtbvxCRQB9J0sKS
	E/Moc5H7v7JywQX//2SdXq/jnY/ETytOf0KfRf16RK3c4z06Y9V8Ur7A6APvh
X-Gm-Gg: ASbGncumHSoUCijQmWw+sDfipzSy+okX0rHofDDDO679GpFE6Lq40wXFMHK3M2RQqFH
	Vd8A3np8DPnHZlibsfEiuf47mOx3JYtLbHzPYJsNEre4CGezDdr7U6Vs7Z3BWUEd/NWr9DN45vX
	RZye+aKCZ7E00rxfF6IDK6n1/G6dgmKLUluCjaMvyX0Mn1ph9keNYLSqqRH83ZDWNGsdn3uUhhc
	XANq/l0NPGVPvzBIrm3wV2D/Fd+K1nO42iZA/FFSC4kCOtg6i+PXZ75y8p70Xzo7UMAquToWr9U
	zGeJsCW5dK/f39j3RitPNhys3ce/YxEnPV412BRBqUlBUxXRufi86YXV9qZdsAWscY0=
X-Received: by 2002:a05:620a:2544:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7cac87ed1c4mr109530185a.10.1746016786826;
        Wed, 30 Apr 2025 05:39:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzy9QmlF3UAfzA9JatwWwapnmKlyl6GIQvIPJ3qNu0J5MVk7h7Gpa4KEY9LvySiGhpANkstg==
X-Received: by 2002:a05:620a:2544:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7cac87ed1c4mr109528085a.10.1746016786250;
        Wed, 30 Apr 2025 05:39:46 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4f8814sm935494466b.69.2025.04.30.05.39.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 05:39:45 -0700 (PDT)
Message-ID: <5086f0d3-d097-4668-b195-5ee00e84aad5@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 14:39:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] arm64: dts: qcom: qcs8300: add video node
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250430-qcs8300_iris-v6-0-a2fa43688722@quicinc.com>
 <20250430-qcs8300_iris-v6-4-a2fa43688722@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250430-qcs8300_iris-v6-4-a2fa43688722@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA5MCBTYWx0ZWRfX+kYWVAunOxHX UHogqFJ/uDdKaznwIz7N+utP7dz4f6KE/Mdm8HxA6EyZeTb2eOamwJaqLBZLSx6yVJ9UEkFDq2w r7dSHIT13SIOKK8w8V+XFP3P93ygbhiCWdGONYqxI+IBklv7DGoZjVu7j2E/VhQU8t7p+kudZvu
 KXyH8eXOzBRC3QuycRusXI813tBag0j/CelnB+lF7HeWWZDLUAN8aviRzOIy+GPL8ks5V+IuZC3 pdc9i26oHcvXBHyvAfCua+FYrrB0vsM/jW0xj8TLthgGrGsn2KcZEM2mNxASdr57njH2TgyJf4f 2TLgxJsg9UHm+H8zx4WWxGq8Ku5TaQVNzpoOwZ/sNMKcONk1OLL+ZS069vf+A/v8PufrD4h3gLD
 jwwtqNFQb9SRNVYlBkTdhO8bsBBcWU8DV+O9zHptgqMyeyQkj+k3t+Gf3Pv8xUOCA3k/27HY
X-Proofpoint-GUID: 44WlH4eDYGGeXN8HbLgQBZT34vh_uPK5
X-Proofpoint-ORIG-GUID: 44WlH4eDYGGeXN8HbLgQBZT34vh_uPK5
X-Authority-Analysis: v=2.4 cv=b6Wy4sGx c=1 sm=1 tr=0 ts=68121a14 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=aRA5hjehiSxC-sjywyUA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=799 impostorscore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 adultscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300090

On 4/30/25 2:17 PM, Vikash Garodia wrote:
> Add the IRIS video-codec node on QCS8300 platform to support video
> functionality.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---

[...]

> +			iris_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-366000000 {
> +					opp-hz = /bits/ 64 <366000000>;
> +					required-opps = <&rpmhpd_opp_svs_l1>,
> +							<&rpmhpd_opp_svs_l1>;
> +				};
> +
> +				opp-444000000 {
> +					opp-hz = /bits/ 64 <444000000>;
> +					required-opps = <&rpmhpd_opp_nom>,
> +							<&rpmhpd_opp_nom>;
> +				};
> +
> +				opp-533333334 {

533.00 for this one, 533+1/3 for CVP, it seems

Konrad

