Return-Path: <devicetree+bounces-199675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C22DBB11AC6
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:24:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A02D91CC7001
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 09:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B5062D0C89;
	Fri, 25 Jul 2025 09:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jgBC+3be"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68232D0C74
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753435438; cv=none; b=s2GzJXISZfUqMI0CuEmDZfT1INvghjqemI+CiAoRVWRyu6hGq0hhCuMBacW38FF1So7v1iZUj0fmub1TricBi7xm2vmDpJtb9HClTQm0CwpjcZT9Spf8IXu33PqEZ/dRVZjIvHXY+IRltSGYQAWjRWdMJnx1v+IZ2OITefopAeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753435438; c=relaxed/simple;
	bh=Dloj46RLVL4mRBXYmPz0/KvEtFoPFJB/naJFsvdgGkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uc3E6NQPMoqIoOKgb8eyufXqWFsSxMyOazvFjqIVoQvNP4fqZ91HmQm0wh9NxeyhP23pnldjQwRwK2nnOwAy0SY2VtBHUrNYZhMIeRhReytull31O9pQvEvA/yyl86brFXSU5uTgjQBycsz3+XjLcehvok+QYMClLpwOEfXI8Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jgBC+3be; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P9Hj3Z018952
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:23:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dloj46RLVL4mRBXYmPz0/KvEtFoPFJB/naJFsvdgGkk=; b=jgBC+3be9f55Wejc
	gks88R3qugek5GEqHZ62QR539xCGy8pI/WecpsTt7WnvT9lHDhuSp2ffynAi5yll
	yTfff2L1rFUllvMA3nMfWgQozkCo/gy7P/LVsf3q3Brk/Sf06mh5hpPznZHnMX9s
	KYyqfhplTDXZSYhdIjN2j2NN0FQYEB6gElCLHc0i8lk6B4xxowevnBqYJMh3Y2YA
	vrBR45+vjuySZriyyc+xbvjZcuYoRPbml3iQ7rTZ1QRBEdQN7P7PycANS+nM8Hqy
	AnenL6Y5N6yZkjP2v/DjhiuePP8B9Xy7fI2AaIMSzf2cDgvbYKm2iYOsUwl+JS2l
	fI2SQg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2s1hde-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:23:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ae762426d8so1274721cf.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 02:23:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753435435; x=1754040235;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dloj46RLVL4mRBXYmPz0/KvEtFoPFJB/naJFsvdgGkk=;
        b=eLdMN/bZxsj7RYvSys5tljmKupSYJgbJn7tLGtZR8OwLR+Qx7v6frHoNvbp47k0WOP
         erDhjOneeGZj+HR6cq5N0vGLzTatdzirCiPACWHcGbSHdBAAQTcC+mB4T/HOOLgwkI9N
         TqvBXSewRt8WjWEMzOgm8+E4cQ+vg3PSJTdkZkgNMUkYxCy/IUEY/2nZM+Z5g6e7Sqa7
         HpNxSujbwPkFmINO3hK59SSHBflrEJqiTdhpjHmTmx+C3RdYz6fMg2fwV6OI+KOaGhqW
         07aI/X4i4Pu3LYZ65H5NrxvZ/eHGrv2u+73sm3csiap/LRS/v5Za0v0+EsQmPIGhM03J
         uhnw==
X-Forwarded-Encrypted: i=1; AJvYcCVyxEo352lwcGB51ZEEM6rG9JXrmKNdEbyjJ/sZfGkez5/XyYDFj7QiirKME42BPd84d3qd+lei3lp7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq0URLq7Tgee+66QBb2RyAZYpGlfDBq7gzsGkEKnDpkfYqqkwY
	eMpYdKGDo9WosNLv6kbBMWyk13UDRpCMUrWJ6sbUCfIziWI0DVFh7BHfyKJEVC448rFHyl3iCkS
	/SIFxCYUYGaObhBOM0bPpOQ4wo9qtWOStAfdlQKWy0VF5/Sa1gnDalyCJadrvc5bC
X-Gm-Gg: ASbGncu8i0ZrBSbDOkTGXRLzZRII+vkECBnHE+8jgZADTQGvDftJ1c0i6xyCo043wBh
	FUVc3aCQ1bPbSAU3TwA3EFEZ8jVZGmBibq+fc8o+gXtnNN3rGnb6pI/RIGZdS527DNoaqRYJ7hu
	jGx98B16LNUdkN6jd/VBGvjSpwMBa6DDEJCY2prdbL1+5VQ47YtlQ9EkU44SfFQd+oqK65El1z2
	sH/l14riE261MTbmplrMyhIYV+rNlkseiBO0Z+JHiAP7mE10rPb33bEq1sODXefTyFD/kUQB+sB
	8dHTAlpX9kUwDi2YN3uA6ypPxK9uqhKEp0hB10VOVbhNozuxrMi8me0OWQwNRDDZFGlqzHl38wU
	Od3WTObLauV7RkpVE9Q==
X-Received: by 2002:a05:622a:11d3:b0:4a5:aaeb:dce2 with SMTP id d75a77b69052e-4ae8f015169mr5405641cf.10.1753435434588;
        Fri, 25 Jul 2025 02:23:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgulUkKqOz4bY42aroheUkGoGh4nZBDDpLlQeXSeqH6w6hf4y0ytwWggsRf8Lzc3sqtruYOg==
X-Received: by 2002:a05:622a:11d3:b0:4a5:aaeb:dce2 with SMTP id d75a77b69052e-4ae8f015169mr5405431cf.10.1753435434080;
        Fri, 25 Jul 2025 02:23:54 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47cd650basm239257966b.58.2025.07.25.02.23.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 02:23:52 -0700 (PDT)
Message-ID: <adffdc2f-7dbc-41ea-ac9a-015af251b43b@oss.qualcomm.com>
Date: Fri, 25 Jul 2025 11:23:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: qcom: Add SM8750 GPU clocks
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723-topic-8750_gpucc-v2-0-56c93b84c390@oss.qualcomm.com>
 <20250723-topic-8750_gpucc-v2-1-56c93b84c390@oss.qualcomm.com>
 <20250724-blazing-therapeutic-python-1e96ca@kuoka>
 <7d444f4c-fa1f-4436-b93a-f2d2b6d49de2@oss.qualcomm.com>
 <a3846433-f1f8-4b83-a965-baec24ee5159@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a3846433-f1f8-4b83-a965-baec24ee5159@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -L9492SbfLnjjvEVSpFyortm4cpHzDw6
X-Authority-Analysis: v=2.4 cv=IZyHWXqa c=1 sm=1 tr=0 ts=68834d2b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=S94FfrcSPokYo2a8pT4A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: -L9492SbfLnjjvEVSpFyortm4cpHzDw6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA3OSBTYWx0ZWRfXwXJ9RRU2ldaD
 hJQ/UpO5jT3El1TA1w3fznzLQiUwafhb5HfE3j6d2G6j8PSDPKefnE5jMfYxxuRuuE4Vp9XMax9
 A73E5uP8NLR9o+NmMKNZLbuzhQiJMd3HHQK+8q8sa7NHwsjXEcHYBud5nYozEsBU5JQIsVqBT5Y
 DitkQsNycB2uobqE8IiIWR/HGLb23DbG110EzJMMUD9fQDfpmx9ZsaUBjEJFTCiljHyiJ8l2RKw
 BYjFr7URiTIDDERm6NXct5dvcu5rQdAbzcq9FN3IrRf3/dnusY0VG0QdHhrHRlqkR69gsjRIaJ8
 nvSzeTCPhAMIEaAV/TBaPBaJHlJnyhAV1E+2j3TMR852ljIImlkz634pyt6hsKxITBTSIRfkamq
 NokIIxlbyvJ8pbc8rwqyE93hJH+0H05CW8R3jj/YLdw0dMIWINHtod7BnwpOu7GU4s7xJ18i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250079

On 7/24/25 4:42 PM, Krzysztof Kozlowski wrote:
> On 24/07/2025 12:53, Konrad Dybcio wrote:
>> On 7/24/25 10:18 AM, Krzysztof Kozlowski wrote:
>>> On Wed, Jul 23, 2025 at 10:38:48PM +0200, Konrad Dybcio wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> The SM8750 features a "traditional" GPU_CC block, much of which is
>>>> controlled through the GMU microcontroller. Additionally, there's
>>>> an separate GX_CC block, where the GX GDSC is moved.
>>>>
>>>> Add bindings to accommodate for that.
>>>>
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---

[...]

> Yes, qcom,gcc. If that was missing intentionally, it is fine assuming
> you implement the rest of comments.

With the description addition that you suggested above, should I keep
this file in clocks/ after all?

Konrad

