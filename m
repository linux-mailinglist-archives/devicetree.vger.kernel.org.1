Return-Path: <devicetree+bounces-172355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D97DAAA4865
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:32:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA3904C5B91
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6884C25A620;
	Wed, 30 Apr 2025 10:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iM4E/UQS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF4D25A624
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009015; cv=none; b=tzgKkKu8aSiHdTmbPbpQWjsu88YXR5yuEpMxDadxbcT8jZgLt5waYrvsPv6SEw0hEv4fXTDYx+9Uir5KYN404LHRI+VhLXeCE/zGf3Nra7ZNTuR7mlpbGZ5M/UU42ys7iDjLUMvOU4zkKC6ZlgTsyDfnXgopghnMAuwfFJ2+MMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009015; c=relaxed/simple;
	bh=1Q2QXKXdAqsuyBrrruUAb/meNWYdaQZckDHeqG5YaDU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DPZn8Em2k9RUUDd5rCrbY3Kp9Q/4TRduelm70SaGNUgzHvMx5PauVhFnL1MULAqrtkNyES6izQOFLwCMOhOXeXdTK8LCTmviKtyA/qItRQPOZarHXMUgJFhf2h+//ZWPKky5e0RO04M9FM58ySQIpzEGndrffYRFXz59XLZraKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iM4E/UQS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U965MC018336
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:30:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4dMEDitlwliRXG+C7lDQReeUjMvhJGh+ywOSS2cE1yI=; b=iM4E/UQS/KtzSS/x
	SNEBJUQZCYLdSbL+r6w4OmeuO/tsWg85XMKWTJ1Cu9C7v9mMRp2Llw+UpfEtgI1M
	laid5A33cbbFEmqupnRbfVAywzml/Xichfm18kL6J7E5brVhvZtS5/G6G6QsAChG
	Ki7Lnxm4d7CDIXGGc8Fp5SCOCHFThyzJtFpCU7BP9m752hN7ayMB5lXZZtbGRe2K
	CMu2azS1sj9o2y2/9uPI21IxsZeXqZ6vaFVw7ExrtY1W9sbLsh05uYXxlCfI/X+V
	Sk0/C2cysih+EkpqlHpeGmbwYPlVM7+daW120GqDqm6rlfcqCsmIlhOqSe7S3h3Y
	h7kfpg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ua9r4m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:30:12 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476783cbdb8so15388501cf.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:30:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746009011; x=1746613811;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4dMEDitlwliRXG+C7lDQReeUjMvhJGh+ywOSS2cE1yI=;
        b=CMr7Sjc03MXred4AFghay75Dvyd7NtLyHgdasLtzy1Z6P00rh0zCh4fcq52IpPHUTT
         G6UMgdc5OCoUOfQUVWu+MeXDl2wfOsVh791eJJMj31SEScqYz5/o30XHNnVUxIoGDMtL
         kee1WY+JIusEEbCyNVF3mBHlb1O39JvOaR0NvrLDyJb5HTGJRrrNk0dm0P1aKlBk5YyY
         yUq7N+HuwmCScYpNnP4Qo2t8DrLEUwlOQge2Aj0lPNtCgv76ZP4J+fMmhzYddB22ErB4
         CJrqsilw1PBN3a2IFcU3ppcNC0dVW1AQz34UaU/MFGVGJ1xeS59eORiPYfnkTvvbWKlo
         5uAg==
X-Forwarded-Encrypted: i=1; AJvYcCVWufzSptnfsxJnTdAKeSKk75eRVqHcIHgImfBYt53YnUKYI7BE0w2ZYieTsaYMjpPKku5Dk4BXPw6z@vger.kernel.org
X-Gm-Message-State: AOJu0YzLNH2uW6asWTppGR57xW0DopipQN/k98qQA36L7XdS4AojDL16
	Q8OACcd1hAet736wkK6ge2+SrK2hzv3nlpBn2z/ejpNEpspiWjN4w2C4A+IbgE1CLdj/xI6/3L+
	SMeOVNxvl1vjTMxQmZvNdH+ol9WAE8fK6ikG1xT98w+Q/4AFfxYATVL6Wvgwm
X-Gm-Gg: ASbGncuhYAj+uYuPWw4E61mDtfV7F6bSm0PpXHqceiVUNnN4f4YKkPKF/Jy/ooLTxwK
	/dsk6oSMDvg6Oe8XOvck7ez48DCPTWfvkxNMaTV2bvpplpJhCgMKdVXLGnox0EV9Dpq3RZKuUpi
	0LP7LKVULg6zylC084MMhtL8Bi8/9TnOr3EMwIi/mzo8fYGX9HIvolIbogV/fUj5NubVOaoIAJV
	DvpTv05+KvdfqS/gZifaGbOIMLLZitjmozex3X3/nYpK7TRdsjZOJ5ShyI4hlt9QVvzE3ywn8jO
	jSboPzp0vq6pCB2vIZc8hemoh0ytbc52j/PDwCia47sezGKG4Q06+WeHaeDQnRqJtqo=
X-Received: by 2002:ac8:7f8f:0:b0:472:165e:91db with SMTP id d75a77b69052e-489e498d781mr11827861cf.4.1746009011539;
        Wed, 30 Apr 2025 03:30:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7lXha6b1LXm4abb6t1fB1qndIV4/7aB6CwAhaxwGXUOPktd72Ez4ObW6QEnJdW84G7irwCg==
X-Received: by 2002:ac8:7f8f:0:b0:472:165e:91db with SMTP id d75a77b69052e-489e498d781mr11827621cf.4.1746009011151;
        Wed, 30 Apr 2025 03:30:11 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acecf27a79esm205373466b.24.2025.04.30.03.30.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 03:30:10 -0700 (PDT)
Message-ID: <8ec19cb6-bf74-452a-8a82-285b2acd90ed@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 12:30:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/WIP v2 4/9] arm64: dts: qcom: sa8775p: Add support for
 camss
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
        todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Suresh Vankadara <quic_svankada@quicinc.com>
References: <20250427070135.884623-1-quic_vikramsa@quicinc.com>
 <20250427070135.884623-5-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250427070135.884623-5-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BNizrEQG c=1 sm=1 tr=0 ts=6811fbb4 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=J3B29TH01z4cvqQAex8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA3MyBTYWx0ZWRfX5rFZnFb0BMwK ui6Lq+bcCgsG8XyBsCteCjfxBPK6AdvUJ8DWM+0cJKSWYHZFr2Nm79mqEy6vk5sUQ16kXxkNSAl ahtcp5nybuZvhOkGNLhnXj5ElUxQ5ZL0AstomjXV2ArGCh3IpgPi6LhSF84/MxCmDdRtkuUThaD
 e3n7onjg3rHdcGj2AwXlzeckjtkNJHPntdMgSonDyMrYjlRireW2TJSQZlzPhl3aCpOtNN9E+EF CN9um7roISSE1yNpHd93rtPIvcBbf4n+W3p4MuXOHpavoHZZUGOU9COEU1f6MIVYRKgSrGLDoEg WPIfExe6oepWCzvVV4Pfo9CLsEU7rVe5Vnlxl3g4pOajXQog4+MULaaKUNlv+o/zkFPNir3/jF2
 rWxz9UFfAQgnfBgDfquUyFZAIxW55OrWOkFpnfV2IDn2N65vgijZ1mxmBvpr4yw0jSTFeJQ2
X-Proofpoint-GUID: pZGQS65Jlp4xXe1rHlNmFbHIx1yV9rrB
X-Proofpoint-ORIG-GUID: pZGQS65Jlp4xXe1rHlNmFbHIx1yV9rrB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 phishscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300073

On 4/27/25 9:01 AM, Vikram Sharma wrote:
> Add changes to support the camera subsystem on the SA8775P.
> 
> Co-developed-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---

[...]

> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				port@0 {

a newline between properties and subnodes would be good to have

otherwise, modulo the ongoing discussions that the folks closer to
camss are having in parallel:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

