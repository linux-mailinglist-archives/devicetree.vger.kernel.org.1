Return-Path: <devicetree+bounces-149622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EF0A3FF46
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 20:03:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED12D4259B5
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4073252913;
	Fri, 21 Feb 2025 19:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QmkvTkO4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9741EE006
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740164614; cv=none; b=C2h44QdnWO1lNzjqT4ByYFg8T/6bZDA363qN8aRXfscQ5RilUEb5Hnbm0jTDwc41WwUDoRMVJPZoXtrE7FB88rK1P0QDxPnc/dDnXvg0Xg3mU3ofk9bNxj7MGiufA5Oii8KwRZxh3Cw3vCAyON/eTJS5WzXjJ0Bs1TVmF5pr8SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740164614; c=relaxed/simple;
	bh=HqPF4+t0U3+VICuHr2MMMkWIevGm+5cDUFST1b+1S6M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a7XbGICBZgGhR3SmvkIsTEoSQWfqScqyFNM7DuXikiidt/fyEQ9LyBzrBMjfXHjXPcr2lSMod8CdE0HBG0hYu+gJA0mU4mUKak2CAIQCtEhpgQ0mEHK26UdHpyAyJCe9cWXWs83WFAsIP0WkTOef5KVmuRR3BkZzWLrZETdSVs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QmkvTkO4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LGvBcp028993
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:03:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	874MfgMIlUvgyTuHZ9EhHcv3WgxH2uNjqVh1gBPjDWI=; b=QmkvTkO4FpTd9bqv
	2gOY+mSY5cOmDVOwaQ4AsSnSqyHbNyHZZBtUt1lvsbHP/XrFMFKMsue57y0p7FXH
	/pVPUe88UpICfYGQiP6p3mCuQUyou9rxNFpxrmUmLekrhBAPfHRZA1iQIajKlaBe
	oRyuo59kD5+ERG6Lf8CDs4tC5v04MUV3Fs7CynnPFdCGRzlV5UUE1cV9ArFSwm0i
	g9MOXTvG17UrBCxnau/awN10inZjFrt2Gq6sTdy1sLSPgyszkWQpW6YDe59ZfXUV
	6Sn/clhMlXh1t9t2NmehzJSfXJEqMfJZs/PZ35n0McThNYLAWSnHxHiqkkwArIZr
	d0OEKg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy1aya2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:03:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e1b2251f36so4093636d6.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:03:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740164611; x=1740769411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=874MfgMIlUvgyTuHZ9EhHcv3WgxH2uNjqVh1gBPjDWI=;
        b=DpQKml85RyG+/yMqR+qUjgjGOHDSNSA4lWzYZ27LD8LMCZChbLpzyRiFr81ZwD9QUK
         cpOIugS7chf+nYQS16BPadugF3DEaqwPt+Uz81V3TtRkkBYZvZ3dvD3eycR8tiqqKxag
         Me4Kd0lwrXyTut+ptZpAN0bRkjcRBxDrxVNS4O/7pnTHeSbygyKTby89aPVKdHIAzEux
         fwfJAUq6SbTlDcs4kRAifhLAJvQygrMRF/qu2SfFDgqUEDIXDqd8J5Mi98S+rno8Yp26
         z8R1pUtFo6Eh5Cbs8sUdGaLr4npUsLFFCE5VjSC4yU3iA9f324N8Nj46Hds0OPvvoq5k
         TmDA==
X-Forwarded-Encrypted: i=1; AJvYcCVrZADAiIRKlq5k/jes98JSRjeZSfb470j/jF0/CA33omtZ+o4zVaESKgrgbBoSZkuChf2yAh3ho45a@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3PzXVV0OKSSOLs2SQRAhje4l+rXfMBJjnXMQOodJ8gkf+3m7H
	jtmBZED5xfu140wsyW5BmVhwJ7V6FxDCo65pimx0wGwbl5zcrzRX0Qbzrbh5hQYvp4UPjNNRUX5
	lF77pqIy+2mhJzJYC/HRtp39x6YbTw/fuL8fKwXAYYH1L873VFA3ir8Fj//J4
X-Gm-Gg: ASbGncs3Pd6MHO3NiyIPdy8s0TqbRx/WpQxZ6XL4qUM1DNvFMNsGWbRo/Wlf7TDzUde
	cUC8ElDzEr8xPgR/vQRdwhC2EQ4QiaAaDVrvyfLAq5TLWKsea0h1xGZuogNLWeJH2yBq4KaUer5
	l5ZvTRE6KaJUMUtFGYAUz4YmmKjvGouBEeWxiRx0pXhfUD3+ADE9/og+ybwJTRCo7EXGg93wVhT
	VDBTFdpe897rKXQ/qcHZ+KgPh6Hg/JiZPULQyL5VEZtJ8I+AXwhQYm3DuohR6EfGzMGexXO520n
	gNyLUasgGs/mfYzDht0XdT/FPqVOgEY0yeSCOKDmkg3RYsO0V0iljSplCrIVKOUSTtgPjQ==
X-Received: by 2002:a05:6214:4005:b0:6e4:4f27:7754 with SMTP id 6a1803df08f44-6e6ae8019b7mr19814726d6.4.1740164611166;
        Fri, 21 Feb 2025 11:03:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSAKEMe6WySvB0jR3beWBB9DVJckgwZ0pCEh51Yko1mA5B0fTJzLtYCqsZejAHtIgYg0qOuA==
X-Received: by 2002:a05:6214:4005:b0:6e4:4f27:7754 with SMTP id 6a1803df08f44-6e6ae8019b7mr19814516d6.4.1740164610746;
        Fri, 21 Feb 2025 11:03:30 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb9da9f0desm1009014566b.105.2025.02.21.11.03.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 11:03:30 -0800 (PST)
Message-ID: <e03f3e0b-5e1b-41e0-a42a-5cae0becf7c7@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 20:03:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v5 3/4] arm64: dts: qcom: x1e80100-t14s: Describe
 the Parade PS8830 retimers
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
 <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-3-380a3e0e7edc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-3-380a3e0e7edc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Xog1FbbuBE0Ob91xngsMABtlfoNs7QJK
X-Proofpoint-ORIG-GUID: Xog1FbbuBE0Ob91xngsMABtlfoNs7QJK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 clxscore=1015
 suspectscore=0 spamscore=0 mlxlogscore=947 mlxscore=0 bulkscore=0
 malwarescore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2502100000 definitions=main-2502210131

On 20.02.2025 6:42 PM, Abel Vesa wrote:
> The Lenovo ThinkPad T14s Gen6 laptop comes with 3 Parade PS8830 retimers,
> one for each Type-C port. These handle the orientation and altmode
> switching and are controlled over I2C. In the connection chain, they sit
> between the USB/DisplayPort combo PHY and the Type-C connector.
> 
> Describe the retimers and all gpio controlled voltage regulators used by
> each retimer. Also, modify the pmic glink graph to include the retimers in
> between the SuperSpeed/Sideband in endpoints and the QMP PHY out
> endpoints.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

