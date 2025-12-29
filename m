Return-Path: <devicetree+bounces-250215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA62CE6DF0
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:22:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51759300942A
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DDCB3161BA;
	Mon, 29 Dec 2025 13:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DI7f7SS1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RpjWjLdm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077D62E6CD0
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767014541; cv=none; b=hiDF8oHEsYsbut29XGJ0WZNKTQ5FlRue25ryhXdSD30mkp9870ZbyXOdA/39M6uCIwtnLs5i0oUC0DizilgVW/eiflPdV9ALOziWO6jrSVzmaxfQfJTpVbJsnSxxSL3Zr0IttGYfjL8fCnENT3EMXJp3BZDO8MroWdff8wva71U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767014541; c=relaxed/simple;
	bh=HJqevJYAY1QZEuReRtLCKo0yBk0YcaGD7kh1FWQHyc0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nF6gEPF397pYTiWOATY8jl1Wdmz3c4NtmDcKjDIR3/hiSNksYlqHW9qCm8Uyxluzr/UXnMCwG/751p0//drodBpKOljwOfGzromnj23S96R8q1PqdywBLwn7l+1SuXdYVd5YsBCQX8AULF5gamcam8kAlo2/kubFVhSBomWjVhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DI7f7SS1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RpjWjLdm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTA522h956363
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:22:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HJqevJYAY1QZEuReRtLCKo0yBk0YcaGD7kh1FWQHyc0=; b=DI7f7SS1+EnsEhjZ
	cBCVIMv1rdkzLHA85yRF0q49iVULv/gLs4M16tz8gOCJFmhEqJvwSrMWq4VNP1b0
	8DwOPjo9SL4ZImtxT3N7Y41eQEWsc1nObUtAUPb33vcGoBNExQvDXHKkjbXRhDX2
	oOn7pkwjcB4PJ+kXdGSMFaJ9Qs7ILCRYhZtScgHtS2eXcjr+APHSYpGM6zywiygn
	vynQvtfwlvTjfvcwjUOTvlWeOyU+bgjrixzihUkcU4POUqFXcjn3+gdOeIvTEQRZ
	i0NJvvTj0FBUcX4uUil0105DPBkB3vWfPMLEehBDbyTW9YDv56stiEAmwAH2FLR3
	Tjekeg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk18bgx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:22:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b9f3eaae4bso304737385a.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767014538; x=1767619338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HJqevJYAY1QZEuReRtLCKo0yBk0YcaGD7kh1FWQHyc0=;
        b=RpjWjLdmPgeLc3DD5idzGPG7zEliIwa2L8/jOi/G7NwZYl+EaD/jNE81LiYGI0u8Ox
         Rd5eftJJgBeSnUasVc8PQzpYBZvCiyXTKpC+lDovctlUSiWkAfK7cjvpn3IPo6pTZvcw
         luzfOKDpXLwUUgwVtiuTLva2VkMzI/b+vhAAjuJ3DE2dO+eP9uZaBfH2DQQH2cLDgepS
         4vcDI+HJT6A9a+xXX21hTT9u3yRCdpMn6V5B85NFlOeoeHrRaOruljjWFZTuT1atsaD6
         gAQUV/Ib4w8vO1CS4klCR+0Zucukmhtmi/SbhXHZL27IZmAOt1PYgCI9CLkmGF9KCYsP
         lqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767014538; x=1767619338;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HJqevJYAY1QZEuReRtLCKo0yBk0YcaGD7kh1FWQHyc0=;
        b=niNBuRMgLOt3Q6Fxk77v5+BmZ/mRa6QBuZMVMm596UASvlqeBh+3xCZO0ZqldZFTdh
         3VHJiRcqz87h42V9wcV0NbcW9ZTMHYoXdl3z51NZqUZP8sjROEyItOzxjpKLcbuR7KB1
         5sr7nPiwIWn8TKjblpJwaQ0mWcxcxIWXSIbgf0iPeoCS52wcTLLf1fBTrFvBko7/MfUF
         K79rr8bm6weKDC4I5636mUdG5oRRYRfV1Pi9ZNI7ne7GdxyyAMtPddShBsRNnoMh6R/L
         YXSkRIhnRw0+5zLHtQh6dI7GpvMkFmdvjg+60Lu6PEDA5C4yysW8MHlEWFPbW1CD5p17
         91EA==
X-Forwarded-Encrypted: i=1; AJvYcCVnjf1Rgl5iDjqapYkW33DmczNwurFrQCUaQYYM0tfdkzDufhJ0ch2FvL3pQDPBn4XHzyFeAS4xsbp/@vger.kernel.org
X-Gm-Message-State: AOJu0YwI7x+aGXWKWTckUCd9ImlMufDCKKUhLmEqyt3lr2MKb4xXsMgQ
	TtJmMQ9G7d9FvUqKocNZJed8Ijp9eZ4p+QsX5Wpy5pQDyA4X6uGekNDvSVQnbR/KycvsEmUGOur
	cu3UgTH20ffuZGeQWMhrMn33+kn4TvBorJbSA5zbFUw3obqSQVgWHU9dQ6HeG5XQ3
X-Gm-Gg: AY/fxX5ha8kU5cQPKc3iOecpQIT22HHZySTq644kMAhs6qpcrw4ONiHyTg8Mg5HZFjj
	WYSgTqx1GhCs4Pbj/8QDkv/0tgyhfMd/aqEcBCrZ1fZl0D1R4U2XG4jTdtc7lFsZdHVbbPK4OyN
	i+g40Shitbq2ldf1LYiSTTPugdUVggWjqSgn/h81BTN9Hhvvtr3KZKUrZE4VAWK/BtcFqY2ThMQ
	xz6wS3dJUN5tAZRA8W64T/iFG6O72CLLsSrtxt1JKre65gXNzBKp2Cs0ArwaE+P/u6f1+Ct95em
	Lsua4M1OvSZ834dfDxdxXARrnDj28Ln4N3v6OQW3vr8Ha++EcZ0HWvEacGBkCvuIXEjFQsBnWlO
	h+A2FZM4SOF0yJNsqQ83FdCeZ5qnFUMKnp7oHbNYanGkroTzHFtUaCdk/JSvwCoa8+g==
X-Received: by 2002:ac8:58ce:0:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4f4abdb158cmr318186851cf.6.1767014538352;
        Mon, 29 Dec 2025 05:22:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGB9vPODytiYPIOYJr0ojiA+7vTk9wG4QHcB35oQO/bx33xSmDZ0T9A6JaTvdLxFmBKp6uCVQ==
X-Received: by 2002:ac8:58ce:0:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4f4abdb158cmr318186461cf.6.1767014537822;
        Mon, 29 Dec 2025 05:22:17 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ddffc7sm3340618766b.43.2025.12.29.05.22.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 05:22:17 -0800 (PST)
Message-ID: <0c7ed58e-4023-48f3-948d-0ca2811b331d@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 14:22:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: talos: Add CCI definitions
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20251222-sm6150_evk-v1-0-4d260a31c00d@oss.qualcomm.com>
 <20251222-sm6150_evk-v1-2-4d260a31c00d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251222-sm6150_evk-v1-2-4d260a31c00d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: WI8yi63-J4J9UOHns6ykAptiptJFuY_O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEyNCBTYWx0ZWRfX+GiTL0UN+DuG
 HlU9dKKA/YC8MPXACOupU6LJ1H8O59S2Y2oX3vhfyi8//WWbufbMpL4h791WsfskROasOAf7f9+
 9hpd9c3dUaFJ8KAc091CTCvxH2FDEaLsumhh+0gQJmPtrhlv/xgkAwrTTUpZx+0qtMqcIRN+MtF
 heiptuHwV1wKMobr7M2LCeMh5SDHMYfO+Muf+eajlWfk819/oaqrzPHe1M12lUpFV3251XkpXgt
 AGGl+0Wa+qySfJNvaQv9rL7tCqke5fLVI4lY4KGIvIu6M2NOl/tz3XSS/5u8BmxsZ9zWdpy7ulg
 SNTGlUnyN/zRDBQh7wmcD23/6ERqc6u8CRCtJUjp8IiZGgK4hX6ySPZeTF96Bl8quiu4bEJUP1p
 H6btj+KPKERowlFYCGS9pWgl1EyBYNqCVcv4pNdAm6pw5ehVyzThDufvYYjB6LKEWGwaE4j1EZL
 rmumre7dYgmkOuRBqYg==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=6952808b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EdBNvarzL8_vv18a1hgA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: WI8yi63-J4J9UOHns6ykAptiptJFuY_O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290124

On 12/22/25 9:44 AM, Wenmeng Liu wrote:
> Qualcomm Talos SoC contains 1 Camera Control Interface controllers.

"[...] contains a single controller, containing 2 I2C hosts.
Describe it."

Konrad

