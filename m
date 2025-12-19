Return-Path: <devicetree+bounces-248236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E19ECD01AD
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 823C83010CD9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF433246E4;
	Fri, 19 Dec 2025 13:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LTKRMoF6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jRKAbA4u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B3E320CA8
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766151831; cv=none; b=qaxYVEN1adX9nuzkWoL4jcs08juBDs3TqUMBNMUnNPETkwUD7xqe025aFV/9R84F+Uf/EtiknioAnCpUuV6XsWz3saUYzEDdaCoqTEFBvp6+pefIwcSAmJbVGztuQXQc+OBPTDbH2UeZnmhjz8bqWMbFBAmRfYU5vzcxv0F79Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766151831; c=relaxed/simple;
	bh=oFLsgKIg2EZaknsWgbNEO2r2tq8tmVeVCyF5A1Joi1k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ETPWRB31iM/IPkTzxAhhY+mGzEqjKEf3fU3WUcxtS77plJ9a3rSUX7o6JYMI5pZ0/ka1IStyGQRJ+WKk97kkhMvK+UIMOmkPtkkRbfOM8bNB8rTXyEodegy6MrveLXesE/ru/8L0ibDc9THCgI3guafsu+wiusFhvf/s8ENXsOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LTKRMoF6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jRKAbA4u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBwYp03700758
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:43:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KQbe3hZ6e6uBs/ScF4jML/h6jE0P8lWUgWjLsEOE81E=; b=LTKRMoF690rPMXo5
	Wbiz+Y4c+uCwbpZJVQpz46VffmilPUtftSvmR6922+WbVtfbE4Mizkr1+OFsXj0O
	veZNrPikLKRyqbaAlmbwKlUe1GeLl7nCEW3uT5O6oK5g0YdEdJpX5Sik2RBZ3Ew0
	XLjCjEjDcmM9Yp3NwGaoLOrOTGG0W6sHugUerhbpLnZ/wTXEB+7uMixVMqV7P7/7
	9sA+LP6SPyZcPdLxmJ5+zkMV4UfhbJ03dJFiugxSaV5YoUVEn29HjoyK5RMIkL2A
	wcDS5A+k5e44inl70b0nmsCukGHyrOHUKAA1xLI4+OcB/bzkHOWhl8gnUxqlddAj
	j3rZ+w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ejrc1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:43:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee409f1880so3306061cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766151828; x=1766756628; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KQbe3hZ6e6uBs/ScF4jML/h6jE0P8lWUgWjLsEOE81E=;
        b=jRKAbA4uSys5yqT3okYWNBv0Qho3Ofdujp1+VBpqx6cVYi8jgnwWCk1Dsxqm8baquq
         IanX+P2vhtU89ElCxPkWaELk8CwUGRpbrb9YJtR6Wi20yl5Mc+0w+d/g3qrY0gnR7UaV
         9dR1/yl7GtexVOADV/igXESGTwYCSAHwA8W04rXH3FzmlEJVcQHyogxYgkNSOUvayID8
         EO/E7kW18HMjQfOD/3Arj/uaadSPZH+1EGzt2k259aoYSSnoUNgq4RaL4NK52Z9/F0xt
         0pUEycg7Scy6Z5Fa+qDs4pOAEGgmyfLpIXtuaPB3ftkP0s1lQgpvCiw9Ro6v/c0UKhEI
         nr+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766151828; x=1766756628;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KQbe3hZ6e6uBs/ScF4jML/h6jE0P8lWUgWjLsEOE81E=;
        b=JbQVwLCjkAyqsIUtW54HIR4g/1q8x7JNuNvz23vieIGIHMYTCh6Nh7D0jQKbl9NaMe
         Hq6vU7tVB57IQqdBPPIeXYZia5+Dki2N52401QOHniHFq6edoLa42lNbofe9TN4XoAql
         Iz9UrIBHZOlTXbdKE7Ffu7aroABFHx7Epgv3PR3FK5n38tLueOvNyVT7Uyh9iH9s0V8c
         gnqYbJ9J6ZVMai8uYKQROJ10WLVPE1IW3UXNM4nkz6KyzLazr8w+8fgU+VMdYTEvL7+h
         aDj0j6j6qkV9iiAvApfeAuVAAIz6Z9Lq5pFte2Nlg67253dT89HqJvb7nXfS0V9RIs/w
         bl8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWjgJG2EZTJAlLdMUP6GDnAaj2BaIRGO7GsFrBm72bVo4Sc+6MUJCEE1QoARyRKftf8R/9IcqL9tSiI@vger.kernel.org
X-Gm-Message-State: AOJu0YyR9L5tiyG0c6VCgV05CJxPTtY3/RDPjfX+Hw5CQtAnLaYznvS0
	sn0Cz2GiKbeRbtvV55h+cNBbkOm5ote5TuToje8Iw5JBYbgRAJcja9PQIG56iVAudlQAMe4ZI/C
	lbeGj5vsSSImTaV5Mw0/F62vnbVYALTPKZlFXxlaRZ4LWY9xs13ahqCnKGmcbkDoM
X-Gm-Gg: AY/fxX54TJdigFidygZZfpnbRk2qiKpGjLhdB/fGXHydSSnTOY/gqlV+44fng+7UexM
	+Q5cyaPbCwBRNU6GNi8YvsFN6bExpLhFePnO0MndxxLmZ/yYhbcEHsq7iRzSPnJbK40FzSfDDGI
	HDQ2l8VPQHuJlD2epCLcDtFmn2+SdD59xORL4Yh82O1hd5Xx+OF+e90/qP5rgChtK2o8ORx9+Uu
	qE+zbzRtwpdeRSynyjW+OisU6Rpv0L7dsWzQnbeg7U6zspvlt5+ZF0ls3f7cItJWZxrihE9kp1e
	TKoKi1dCCeOQ0SfZFDOmkN0dJ1XOYsJjLxAf3WWWrGIUax1/j48bnn9AqS534GMtcDe8BTxnYC6
	xeomMgjTWFKtJyg9idSqQubPKYg6jJb5m/heLQA6HQ0Q5I5dNxGNGNgwYlmTlClGgSw==
X-Received: by 2002:a05:620a:3729:b0:8b2:f090:b165 with SMTP id af79cd13be357-8c08fd0ae72mr313421585a.4.1766151827716;
        Fri, 19 Dec 2025 05:43:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3ECtDaeC8gTe02D89fDp/cz2mg8FoUJmBWG9ord6vjwL8dUAutfAtgt13sLbsPLrNUF+wxA==
X-Received: by 2002:a05:620a:3729:b0:8b2:f090:b165 with SMTP id af79cd13be357-8c08fd0ae72mr313418885a.4.1766151827224;
        Fri, 19 Dec 2025 05:43:47 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91494dd3sm2191576a12.21.2025.12.19.05.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 05:43:46 -0800 (PST)
Message-ID: <b67ad9fd-872f-41da-8f97-34a8403f165a@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 14:43:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] arm64: dts: qcom: ipq9574: add wcss remoteproc nodes
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, krzk+dt@kernel.org,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251219043425.888585-1-mr.nuke.me@gmail.com>
 <20251219043425.888585-4-mr.nuke.me@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219043425.888585-4-mr.nuke.me@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NmHJo4Hm1ZZuE759-o2cEBNzieho48ba
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDExNCBTYWx0ZWRfX2z9/22jUgCLK
 UVs2M6DuuTJgoemsd+8VOXxR2HreOcKoT/q/YXIYajRGT2jBgyHPqe1HWzanBqMMkjO2urtuRzq
 1M6FXPudJATTonWn0UGDRl22mSCdaT73Qji080Lgo5caGLQ59NAcxWtmWXqXL0c+ZL2Wi8lSydN
 QwuTKK53lzwbg0zVHOLiePAME9SXthuZuGir9GdfsWS84h5gn1d3tB3gQNar69OdgHzKEb08ZU4
 lFZInhR3G0ygCgJG9cBd93WbkdjbVHj4e09p528rqZFHgpx/cH409YHDIwBxFvbaYzsOrNf6jIy
 J4nnep5IYt43R0ubb7bT5jSFqiVJAAJZyjk657Ypp408PZ7Wsadm5DCP9NRFcR1fYwJZgx5Mm0p
 phqRhTXpjnwu+GY82C6svGV7U50uSxSDSX8bCTVS9WCJemFSaV1XDPVPhH4lf7zAiksELDKoOGa
 4L81HDcc8Ie7dxjDR5A==
X-Proofpoint-ORIG-GUID: NmHJo4Hm1ZZuE759-o2cEBNzieho48ba
X-Authority-Analysis: v=2.4 cv=EabFgfmC c=1 sm=1 tr=0 ts=69455694 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=a8igmC5W8dcvx-CyMYMA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_04,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190114

On 12/19/25 5:34 AM, Alexandru Gagniuc wrote:
> The WCSS remoteproc is typically used by ath11k to load wifi firmware
> to the Hexagon q6 procesor. Add the nodes required to bring up this
> processor.
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---

[...]

> +		q6v5_wcss: remoteproc@cd00000 {
> +			compatible = "qcom,ipq9574-wcss-pil";
> +			reg = <0x0cd00000 0x4040>,
> +			      <0x004ab000 0x20>;
> +			reg-names = "qdsp6",
> +				    "rmb";

Hmm.. this "rmb" region is really:

0x0 PS_HOLD (write here to reset the chip, if the TZ lets you..)
..
0x8 SSCAON_CONFIG (essentially a syscon which you write to from your driver)
0xc SSCAON_STATUS (same)

But we've been describing things this way for years.. I don't know if it's
worth changing, especially since the rproc driver really assumes this to
be the case

Konrad

