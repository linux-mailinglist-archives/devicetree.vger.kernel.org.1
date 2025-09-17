Return-Path: <devicetree+bounces-218520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C89CB81165
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 18:53:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9B291C2725D
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F0952FA0F0;
	Wed, 17 Sep 2025 16:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UQlP2VCw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB79281356
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758128032; cv=none; b=aLyHUc4O53m+SuFcSRj4i52ww6yzc2q9+9yxahDpj6/OJ8JJooIc0MZd+ezIJn9TnuVcm6I1u1HLLhvCsJOEZK3VSXnJC12EHxTlc85XJ3/tG1biOvh7U9SpZJeGBVpzvXdMgD/csIKvMFZF+JHigu2bHu0+xN+iqcf1wJXXFAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758128032; c=relaxed/simple;
	bh=ltrQIScJbth2BOI7jCtr9bPuyHDomsS1P1HFhlQhzuk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SWqpohjfkMoZ8DPQPkg5JiLG8c6M4THGypTCeEyKbkrdR3MVfzxTXakLksF/NGyWS5TuEMmB+pWlimtRqh+NbtnPOXO8qHsPAadW+vybrcHENkrGvwJ8iH2XilS1EKSScjs4DbrTRKfwLMs9eJ57jlNsvug78QveIw7QlFD6vZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UQlP2VCw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HG9NpM010782
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:53:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zISPrnAk1kMNIJNOJ4OHj5cC1XO7RgqNAjBgljmrsdM=; b=UQlP2VCw5C309/Ps
	V7jiW2SuaJaEWof3S6xqkCqJ+15DFQ4oelU0dGlGQaZMuAuOohj2veTBXzBYAnCB
	H/5quTtNaa/pdDB5qCU/VUwa7kdzj/5Hqvdh0zqgsLsh7KMxnLSY/Tn7AvaQBqqe
	BBb71o9jTedDXHEbECzFMXJLRy1IIpzonxs3O3Nf2bv3KoDkTey6n1SGvkiQNtn0
	JYK0r8AkHerOMIKGVfho7Q3pvxa/DCSRMe/MWrIGJcKaC2viyASZwdXrq0WUzVPj
	nDee9RseJj2o8cjB2jDQ/BZtigELvRlY+4N/byk5Dx2RplFCgxLJSnsHT6XeaNqq
	/9MnUA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxxu6f1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:53:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b79acebd03so40661cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 09:53:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758128029; x=1758732829;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zISPrnAk1kMNIJNOJ4OHj5cC1XO7RgqNAjBgljmrsdM=;
        b=JZ2GA96kMrnX7Fy5gOoTXQBqr8zUFl3TJT80vtmN69luXlIn9Ww1HSQTdiLcR1tWFO
         gUHA9r3mQ1BMRJPXtS7T+zOSwqI7bzq5j//ktJjQ8R7wnXC+kWI7Ir+Tum+eyfSlZj8K
         hV4AX1kXj1sigW0JUX8wwMmL+wSdJWua6IKz8T/ekqjEU6umuI45wSerZwnQbFHfK2/r
         doHVnTqsq+kh5wD87Ajml7zcKsjXu+SMQxJFGcBXbRMbgFVuuxlhGMZO4+lnuc9GoYEK
         l/VPKsDZ56vc9CxtzjpznfI0W2ZdazUIZejXMoctCXIj7sGXb+loLrGhMXMJtIwTkpxo
         lCug==
X-Forwarded-Encrypted: i=1; AJvYcCVJlTjj0IR/bvk0PpDE1KQIH5Pz/+igUVAYq1gxvIgpmdtui97X5FeBal0ve1baJKtzAZqH6MvIqWqF@vger.kernel.org
X-Gm-Message-State: AOJu0YzDRHYhib89IAE/PekxgaBhf0J8xxULKMjqSpJjzvb9N3qtPjwP
	FGW9sWIgIwpl0OG62x2QlLCClGIZ6UiK5fPTt8ebUBSlLKgnvB4zd30oqAMGk2I0zA3LkuufOO8
	fe1KtRss67ccaGcOVpUlgjGgRMuR8w8U7l9hqU8IYhHl3FamNm+SWH233H9JevmxZnayltu6h
X-Gm-Gg: ASbGncvAJllkwjhDoRgSUvPDAlcD5WaAAc3AJioq40TZozSTtxRb+n6BlQJwyTHkKdI
	odYlC4sjr2czljwiheM4PQQmFq/IP43uIokuY9LfOPVeSuxJCHsr+GRs0bKfoARICcRDqeyz0nb
	FagkmwEFdW4x3tIFHG0werhP7l65VunRgyMrvD6j7lQMTUZlo0r8F73fSTtYFhgrxpSUjWgdR+l
	YXBnUdOn9P/DA/b3TnI5rks1ZH9PyzWiNmHLK2Nd6SCSk7PXSk+QH0PHgYnX9T9OcEBkp1wqDSr
	ln1bLAME5RDBYxRoIowLWxIi0Ubh1yh6QkOS3peQMjV5TrkO4VzTNXz/4PuFhqk1pdU7jNHJPaY
	Nz5m6z51LJzbj9KZEzjotfw==
X-Received: by 2002:ac8:5f0b:0:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4ba6646b95fmr22816581cf.2.1758128028445;
        Wed, 17 Sep 2025 09:53:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0KeX4y1ACER4of/dK+LtnihqN5EgEkRY1llWGm4ZqHa1umkk5r4MN8DGPNmSnNpymFos9xQ==
X-Received: by 2002:ac8:5f0b:0:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4ba6646b95fmr22816171cf.2.1758128027790;
        Wed, 17 Sep 2025 09:53:47 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fc5f44fb5sm8536866b.16.2025.09.17.09.53.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 09:53:47 -0700 (PDT)
Message-ID: <5eacca64-d79d-479e-9a08-cceb495ad145@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 18:53:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qrb2210-rb1: Add overlay for vision
 mezzanine
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org
References: <20250917163534.832523-1-loic.poulain@oss.qualcomm.com>
 <20250917163534.832523-2-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250917163534.832523-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX0mIv1fdyGTBA
 +xJCzY4bw8yd+R3B3GEBC655wPlNfD08BBz1l34TRZkCNrDzFB1PKVyD14Ssi9s532zzvfO8iug
 x7F4ToUKVOTZAxCZ/z0qw7UPBF8CaRwlU6SxSohQeB9CA1RqW6x19VzBOhxw5GD9zNMFdWKObOG
 NajQRD5+qqzcMNLohS27ckrBFzwcNhqDMzPCw4cER0mf0/tgEFddLqhuqOX+xRfDSuJIezqh9hw
 SlrslQS3XnUTjSNZCCscZHErMCCucKurVFZGcXs9sYxnd4pAPn8fUmMeVdJe1Dmj8ddw+hbsyPj
 v6q7gB2AGKiCJFoD43tZ+n5U+VU/4aXnlxILSqoyHa/bkTuRXq7exrkIPcfvAIsIzDnhVoEqfF5
 OnLBV92D
X-Proofpoint-ORIG-GUID: V4gNkSiiCdaJvixKIbtCV7aJ4yhsj-G4
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68cae79e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ykAyxcz_jJqhd-Ot3kEA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: V4gNkSiiCdaJvixKIbtCV7aJ4yhsj-G4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 6:35 PM, Loic Poulain wrote:
> This initial version includes support for OV9282 camera sensor.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

[...]

> +&camss {
> +	status = "okay";
> +
> +	vdd-csiphy-1p2-supply = <&pm4125_l5>;
> +	vdd-csiphy-1p8-supply = <&pm4125_l13>;
> +
> +	/* Add PLL reg */

hm?

> +
> +	ports {
> +		port@0 {
> +			csiphy0_ep: endpoint {
> +                                data-lanes = <0 1>;

Odd indentation

> +				remote-endpoint = <&ov9282_ep>;
> +			};
> +		};
> +	};
> +};
> +
> +&cci {
> +	status = "okay";
> +};
> +
> +&cci_i2c1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	/*  Vision Mezzanine DIP3-1 must be ON (Selects camera CAM0A&B) */

double space

> +	camera@60 {
> +		compatible = "ovti,ov9282";
> +		reg = <0x60>;
> +
> +		/* Note: Reset is active-low but ov9282 driver logic is inverted... */
> +		reset-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;

Please fix the driver then, see:

738455858a2d ("ASoC: codecs: wsa881x: Use proper shutdown GPIO polarity")

> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam0a_default>;

pinctrl-n
pinctrl-names

is preferred

Konrad

