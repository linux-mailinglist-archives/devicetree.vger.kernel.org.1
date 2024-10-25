Return-Path: <devicetree+bounces-115812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF489B0BA3
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:34:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55D072855D6
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE39216E0D;
	Fri, 25 Oct 2024 17:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="laH1Psab"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2A82161E3
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729877034; cv=none; b=J0VbuM7pHHv0MKyZdhx6J7PDgV+ATyhh4EK3Vtd99nlkzOvgYlXxpjUcBNmqEdT18A/MfAc70Kdpt1gM5ciO17GqPsMMtDf2t8Eaewy8NB44dW8aiJMW83zSJq3w56DRHo2fIHVCok9iVEMDvp6qg5C5vRAxstyoSirJFRYmQvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729877034; c=relaxed/simple;
	bh=tVjMxkeuoLbNCiz5dienRRdA3e+jQoW27GPSNdliseI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NJNFF/1EPzFTGaWDlVOb0Lwyx/qs7hhTPVHbSxvDhwJeNiSTUrch19WbkRjv9Kw5VFtN3V6FHvKELYaxHIC7iUcZOQ9GuqRjkSaOm5CVi/HHgpxjfZFL6JWkDaZ83RzOuuTSr0WvyMWGzhJ0YKMzm9IbSlVfaHFj4shr8ntWPzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=laH1Psab; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PAfw2a017391
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:23:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GGGNwzfw/zAdzm6vw+C/U7FiUNzebOvXXpb5oeva9SA=; b=laH1Psab+pd3c+Is
	GjA3b8PJlx5Er7rrp2hfX0czFl40XQ+JB48hwxHL//i+CwwLJ0WNJ9VGvhY27moD
	CqVgcF51dp/WWSJx2f6mB5X/TcQY7OF4py3/t6gbpF9M3/mfkUgn7v/UpIw9IvkU
	crtQHDD9jAcWtEmHdX1Wi3mKWKzRF/R66bhg/9mmTJhYTHlm8azZ89MP5Ch/VooT
	Ac3dTTKCv1sZq65nor5kM3GOoouhK21auwz2tGXX5hMPKj+9tcM6w3CVV+3X8tKZ
	k9gzosK7kBnzr+R+g2L4xt6ZdqwKfldUWhZxj932rhRjlAlW4roY7dd9Yin2c+h1
	aGefnw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em3wj0gs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:23:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6cbe944435fso3595576d6.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:23:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729877031; x=1730481831;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GGGNwzfw/zAdzm6vw+C/U7FiUNzebOvXXpb5oeva9SA=;
        b=gCGLBw38BaxADlF6kAdOJD63BSN+9tYwtx637S82WXPZGcLQiG9M4GDGJ2bqXKLZ1V
         puqtrhuG2SrrjQkDnu8+cnNh2xJRIKsXv8LjwVX7AfREuF09Nnw9ds+GYlWoXuhBO6xc
         hwwyE8CKGo+XbUfQHR+gtXfxD5fCkYj6jMNA0FINT7QwZ0sk3MDT9OGBWbowZEUjTw3U
         csvvk1qLxnE28T51RnBbLViwRj9L+ntvNKQe8Knx4kNwUjuI6djNtRifcTuT835bJDFE
         Fvc3CE4clkf770pRPfO6SKr1/mrGNlBdQWW4iMuQdKhM/UbTHr5vB9ag/9VHDWgJ0ovr
         gp6w==
X-Forwarded-Encrypted: i=1; AJvYcCVdvzJ8WEV6mLCagAinXPE8uE2RaOqA8hXSsOKJO3O3IYX6HhIOVfd3uaTt8rNaR+fxIdc/8TdZEcnf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/f/JdmUYPcxSPLjNUJESiS4tXuCiwH3OLnXnEY3LzazZjZ2cx
	cC/z7FXTLSsGkq0HuBFn+DUSMPkUx1g6YUPvLUvG1tFDwuZKl5VkjGFPLTjI0i1yd7mMOhgTRuq
	TTCyX+d/FPH9qpJyyiSZNxrGXIt+lUXFXfR/hF/F8q5dzmi4nuOlUSW8tmb/0
X-Received: by 2002:ad4:5aa8:0:b0:6cb:fabd:b12 with SMTP id 6a1803df08f44-6d18558937fmr1708626d6.0.1729877030744;
        Fri, 25 Oct 2024 10:23:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHJ1YuapeN8DAQSsD35vOkggkedO7s53T5L+XAzO7S8IU6jnNiaULiNK0DQhzH4JNwso1Sfw==
X-Received: by 2002:ad4:5aa8:0:b0:6cb:fabd:b12 with SMTP id 6a1803df08f44-6d18558937fmr1708376d6.0.1729877030371;
        Fri, 25 Oct 2024 10:23:50 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1dec818bsm93040666b.17.2024.10.25.10.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 10:23:50 -0700 (PDT)
Message-ID: <7620b929-dbf0-47f1-bedc-1ce87bf6e988@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 19:23:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: sc8280xp-x13s: Drop redundant
 clock-lanes from camera@10
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Depeng Shao <quic_depengs@quicinc.com>,
        Vikram Sharma <quic_vikramsa@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
 <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-3-cdff2f1a5792@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-3-cdff2f1a5792@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UIoMb1LgvYbxt4PKK8TIFU1nUbnSna85
X-Proofpoint-ORIG-GUID: UIoMb1LgvYbxt4PKK8TIFU1nUbnSna85
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 mlxscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=840 suspectscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250133

On 25.10.2024 5:43 PM, Bryan O'Donoghue wrote:
> clock-lanes does nothing here - the sensor doesn't care about this
> property, remove it.
> 
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x13s
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

drivers/media/platform/qcom/camss/camss.c : camss_of_parse_endpoint_node()

seems to reference it and pass it on to the PHY drivers

Konrad

