Return-Path: <devicetree+bounces-255969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F469D2F12F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96383304F64C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6494A35CBA7;
	Fri, 16 Jan 2026 09:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hzv8ym0I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GkZUBTdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD76359F97
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768557075; cv=none; b=Wc8xlN7hi2Uyew+im+5NyePIo0572WQudvOHlD74GQEtfhts43pbvG5xh7vM87HMbiYjUS+Gcrp4JPJzMIuMqcZoRZz7p33cll8vpmchvKvXRgOk29GCgKYu2VpSHVUPfnWBXbBJBHAb02as/r1toZLY87DzknvIAbWYz73zR4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768557075; c=relaxed/simple;
	bh=SW7TUx9OJbaODdBqBX9kDt83LgGVLSIRHq89fu2IJeM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lDHeAjvIlUcT8VIhk1SV5MGzPJ0js4vJ+aaD81PpSSdIMpPgXGhV/Ay0j8hubLyT7X0DDEqV4iHfE1glfJ9LK9WpVVyQx8cRHMvYbbvOiAHJ8Jo2iEbOY9Yqs2lZm5QPkRHaAbXwWNWsstOMFqULKu4s9niMQibpSyyR/oUyht8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hzv8ym0I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GkZUBTdO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G847a43075431
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:51:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JyySEoy4cs4LSscoZXS7M1fbq2iJJdJ7HX00v7rwAvw=; b=hzv8ym0IKZ0ZxlpU
	m+jmdi97m5AkdI1y2bewZrci7G9ye3rGRUUoLjB/KtQlYtU1k253U/hWweCS8sOH
	WhogKRLYsevGHH+cstY214AzhyJsboeo7t7ApVlD1vz93C97rTx6Z+PbkXm6A92I
	Psmoxqwj6jO0oDfRzka/rh6FXlDihlNBkECl57yM0KqNv5/4ZsbWvk2lnd6A8eDH
	WQN6d8fEKKbqS/IMbF8SQUWeEAJHnOcT3uS/O7nW1AmGAi77QJRqFYXV5mEAqGX3
	TQg+6TZgjO5bXuotZaSrG9wQtt0jgeo4/TIVH8Wi8SWVc6ABNmTp0xFGnXIhDE36
	92j3Jg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq98jsprw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:51:09 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81f53295ac2so3656541b3a.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768557068; x=1769161868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JyySEoy4cs4LSscoZXS7M1fbq2iJJdJ7HX00v7rwAvw=;
        b=GkZUBTdOVY8ZU56kQymfOK8obN0glC0Y9LNGWtjOfFQU3pHA9thonH/g9HPQv2YML+
         Sbjl6+wAxJrTeWkWgwAECvUfquCiORlHWhiJsDl5mZy496ZtMncRNCuIyoQG6WdcF+BF
         8IpMZGR69HqElFqGMI+JV7onPgc7MnShVVVPaUGtGSsgH5y96IBJ2TSo51L0nIjI6Z04
         EvupcnTPyK7S5dvSrqUxXbZ6PV+CnbHax1hsRE5LHFhrunOJtgdnUWXX9XlDZW1E/IX1
         xw3LPqWJ5iineEN9TVHcjhO6fZci8LtfFbV8rfEH5uTnqc4iRMvX/n1t+t/hQOm4JzBP
         Zejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768557068; x=1769161868;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JyySEoy4cs4LSscoZXS7M1fbq2iJJdJ7HX00v7rwAvw=;
        b=Xw1CXtOuuiSZxQWKKbfp4VVbTDsov9O3T8k1xKRnY2ZLAbimumXZp7sDgOPvpI6vjW
         lwdE6/Srgoyu2wYrNczlSZ2SLepec1J9IPvG/mrN1P9S6PDVoNNka5bzxOcHIKUMGTvZ
         Fl5c3nSu+FxIF8ZyU7PiDen8RfSE4+zy8taTfa1qd2qnBicXxh9viHfQOyVxN47f1dAX
         jIBlzXr6+b8f18YJN4eXMdtIX7p00v3HHJdANkxwfyspgV82vmEVRSvmOq+qdRykXw0i
         dQgErW8Ut3Oz52Zn4bBVqW3f5Ta3rGES+W3ZiTVK3tOJjd6Yi01PNA7N/yBPBjKQ6+YT
         Vc9A==
X-Forwarded-Encrypted: i=1; AJvYcCW/tp6lk/rxCoA0Z+5YlEOVQVaprTqhbEpKN3nQrXfuNVxe4PcBpR55crhT6kOT+TfW9UOVN/JAHBpj@vger.kernel.org
X-Gm-Message-State: AOJu0YzR32NG6d7+Jms4RD2aTZEKbu0v6blf44tHpm/kHT65n7fFgchA
	aUXsP8odYkzgMQyR4hUBHW9Cn6PPDq4nu2SIECqz2lYb1uK0VqFZBEC8BePQa16QsYdfAkyJkGj
	2chpvhKHjR/7MslAs4hfEkxw/g1L5HLlNsPBEC2q5MF9wbCnREguqS50n+K2bLPMK
X-Gm-Gg: AY/fxX5CM3/kHZ6LfYJQEVZHY/WACw56dRImyFRLiGEfdRuMW3q6096JSGCaA9L7ew8
	YT231QMKrQv820SiRXAhZ+C+Cu7FQ6g2bznEXjTPnZ8HPG+YBsGumEOoNFecY/1+U29F3V5Hl3o
	G7Na3AeznUKQhmFsmay2X9iRr+GOClhlwNaZy/At2H+oxND18orKuccu54DjMhvEWYy1FxIkaNy
	wsrmHQ14JkGMHSquFgeheRZcR4iO32ZvaYXHFBiLOXsrknRWEd/My/huTUOUcZiZmXK0Do4WK49
	UorO9EyQM03fx6kRC/3yTHaSITagPT1Y5lUNwTIuCX8OJjBtUtr+fsslcuG3EVhhTKIasgjbUDb
	dtbxfxB9IXd2xYLqGp9EboPsNn6Kpe1F5WOCuvX3yig==
X-Received: by 2002:a05:6a00:18a8:b0:7f0:ead9:578 with SMTP id d2e1a72fcca58-81fa1780ff6mr1812569b3a.2.1768557068541;
        Fri, 16 Jan 2026 01:51:08 -0800 (PST)
X-Received: by 2002:a05:6a00:18a8:b0:7f0:ead9:578 with SMTP id d2e1a72fcca58-81fa1780ff6mr1812555b3a.2.1768557068045;
        Fri, 16 Jan 2026 01:51:08 -0800 (PST)
Received: from [10.0.0.3] ([106.222.229.125])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa10a03ffsm1625170b3a.6.2026.01.16.01.51.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 01:51:07 -0800 (PST)
Message-ID: <54b29b03-4166-60d9-d553-d0e655749da4@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 15:21:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 6/6] media: iris: Introduce vpu ops for vpu4 with
 necessary hooks
Content-Language: en-US
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-6-8d11d840358a@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20251210-knp_video-v4-6-8d11d840358a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=asW/yCZV c=1 sm=1 tr=0 ts=696a0a0d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=blWSk0AuXjsE0o78ys1YMg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hqVnMPCZWYgSQcfks7QA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: Xz7RQdzAp3WJCwL4yz8H6Jibj8Z7TEzL
X-Proofpoint-GUID: Xz7RQdzAp3WJCwL4yz8H6Jibj8Z7TEzL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3MyBTYWx0ZWRfX4M3hpdSBbpq4
 nRrlfWwZl3xXmQbPJZBGlpKYlVv2KsdAYV6P2rbCVhtxQZh+RqYMFY0Vm9hQ5HsuwyuGpsyKPvp
 HZV+H5TrCWUbILdZu2I6LGOE/p0OlHdjUN6EoNjzcwBrixcjsXIcZU2nVC34SkkAaH3IE9bxrf8
 3ppO4KeOE6KsFRjlVzhCWkqioNh9zI+LzZzUK6wMUQnC96M0ZMG+Xw0fYcuP/pLUUE1+TegOhUI
 /Q9aS9LwpC//Rea3QbceyVTEzG4Za7ruXl1jfeI/bXldNbooIH895VWKzbX0hu5fgurqm12PaAR
 KY2sA8hGkjWsvSsIQsLLb6RC+va/IdtTS/nVaKR9qySZp+HAANmyU+IU+edV2tx59tWCVoXxUWH
 ISPpDYA3KOeyHxRdiYGUftpexPD2LtSdoPIPyYs8lltNns+A8g/Kx/6VtVGoQBMjO2lQyj/usVh
 YKycbluJeSDEJ0z/0uA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160073



On 12/10/2025 6:06 PM, Vikash Garodia wrote:
> Add power sequence for vpu4 by reusing from previous generation wherever
> possible. Hook up vpu4 op with vpu4 specific implemtation or resue from
> earlier generation wherever feasible, like clock calculation in this
> case.
> 
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/Makefile          |   1 +
>  .../platform/qcom/iris/iris_platform_common.h      |   7 +
>  drivers/media/platform/qcom/iris/iris_vpu4x.c      | 369 +++++++++++++++++++++
>  drivers/media/platform/qcom/iris/iris_vpu_common.h |   1 +
>  4 files changed, 378 insertions(+)
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

