Return-Path: <devicetree+bounces-117896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 825A49B843C
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:18:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 426DD28462A
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1181CBEA0;
	Thu, 31 Oct 2024 20:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QLyl/b1b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82371CB521
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730405930; cv=none; b=DsfL8/4mPYIaxbJS+r0yWIKiwP20/TPnuRhZ+0y5yA2Q38v3aVjdgcl8KYCT6+RtHX5k6A0twpzCHzFTq576vx5L0q/YuRQRBa37RuPqiO+a/MACKn7Siy1cZbpOMQ0xiwZU06xA+U9M+YV2hNHA2wDSJ2VR5Q1zDbK1jotVO8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730405930; c=relaxed/simple;
	bh=ZtAVjPxgYxzMtH9aW8STEf1QR6wb+MN6NfwJGe0MZxs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F60P8V1VnqJUtIDM6HTjV4Oi6BBErTrvmRuA/CwdfX/7bDX6ENzbp5ZthWcokMNytuoWuGx9EXZWpmPiv04FWOG1X72xHD5V6dxAX524sR3FHyNdQPPzbP9/wIdH/F436CevnJAJf63mm8YqnOWgWD9Wxy6aQUmbQBD8qMqrYjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QLyl/b1b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49V9EXQk012841
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:18:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+lwChbtf4QlnyS3a2fLibTs+TIvRzaYRIdxAmVV+Nho=; b=QLyl/b1bFoZBbmDs
	U6x0dCHx3E85PrnOaN6+Jwpd9KmVRZB9G64Jbn+y+pamzB4FXO4opdY01bUeHtCJ
	9zkwj/bEvO0ZeaXsyJJqPMg6ZAnkcNOdkUlQ6cbVLci3movx91VCeSrtjBX961i/
	hC8lHaxtDGRiaxgb1H7jZA+h8IwH/UNkmoUR12sMc8vCVvEEC+9CMGrO2J/WSKuG
	KuokHUT/1gtHkZSjK0Qd9k9EY7eE4PQCfoYLOXkDQTBTVpsarLkKr+xAeb3HJxL9
	ZfA5ceIs2byOfiuqvWCAyV1qgkOjxzVYtX/fqldkCfH8LnJtsPtkSubI10LCpgev
	INApJA==
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42k6rpq3rm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:18:47 +0000 (GMT)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5eb75d21d3eso101252eaf.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:18:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730405927; x=1731010727;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+lwChbtf4QlnyS3a2fLibTs+TIvRzaYRIdxAmVV+Nho=;
        b=L5CHbYdxVLzxyGWszWui3JbTpVcPraOktK5S2TYghOzq3jQ7ml6jZNeUleHLUH8wn/
         HZhQ0U4kbbZnS+kLKgoXfFpkpOHcDFODo4H6UAy7QUw4MI05AcHJv4IOEF2QgYt6Ou7k
         2G4+Y5IWR3Nt4me+mgRqOnLl2viGcfsrv3b8sgxee1j/qCt4zddcDYK5wo7jqkG8pAL9
         gYNBCnQN8sJ1rndcgsW8OI+xHvXXaNWps1SKTTHUKHaTrORaMA6u2XXU2oF1a2miPsxs
         zR0yo2zCUeN8IbbdFkXBl1mXSSV9cV6oM2KYGRp0l2Sj2gEJ/7ZpS64T5ofIcB14kC9S
         GDeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUj5TSq4cEfo/2+OmY5Mbc4EzsQh0eon8gl9BjdX3AEFTz60REapIUw2W/GhcD15Zr0V5rZ0FbU4oR@vger.kernel.org
X-Gm-Message-State: AOJu0YzFrYYJgopnBo+h5IUmRL9kiBlXzOWgDfiTVg6nSASd29aetL+l
	AozlRfEr0+PXnS9bpYuRPSjqSnlHorc/JF6kUpqx770u9hGpDC+1PwmMvtJFLY4u77D0a3ZcyaY
	NMHidoGEPhOF35ONoFithyWoBMPLS9jJoPQSY9t4crUKKsUrsMYhK/8gnDiOD
X-Received: by 2002:a05:6808:1488:b0:3e6:24a6:f148 with SMTP id 5614622812f47-3e6384a3182mr5529872b6e.5.1730405926956;
        Thu, 31 Oct 2024 13:18:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKrXFnhagF7X7syfI1//VxiRkYcsCZRZNjwpIrrX3+vJvnvmLryqItYJyXUaawNRnQpQnCnw==
X-Received: by 2002:a05:6808:1488:b0:3e6:24a6:f148 with SMTP id 5614622812f47-3e6384a3182mr5529869b6e.5.1730405926612;
        Thu, 31 Oct 2024 13:18:46 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e564c4f45sm100262466b.71.2024.10.31.13.18.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:18:45 -0700 (PDT)
Message-ID: <e19d9f78-361f-496c-be81-e1ca1f0efc05@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:18:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/3] arm64: dts: qcom: x1e001de-devkit: Enable SD card
 support
To: Marc Zyngier <maz@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
        robh+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, abel.vesa@linaro.org,
        srinivas.kandagatla@linaro.org, quic_jjohnson@quicinc.com,
        jens.glathe@oldschoolsolutions.biz
References: <20241025123551.3528206-1-quic_sibis@quicinc.com>
 <20241025123551.3528206-3-quic_sibis@quicinc.com>
 <86zfml1tbv.wl-maz@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <86zfml1tbv.wl-maz@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: hRzUi1QDKfXfPzXuc4yHu4L805Hz1sxV
X-Proofpoint-GUID: hRzUi1QDKfXfPzXuc4yHu4L805Hz1sxV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=946 priorityscore=1501 spamscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 lowpriorityscore=0
 suspectscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2410310153

On 30.10.2024 4:52 PM, Marc Zyngier wrote:
> On Fri, 25 Oct 2024 13:35:50 +0100,
> Sibi Sankar <quic_sibis@quicinc.com> wrote:
>>
>> The SD card slot found on the X1E001DE Snapdragon Devkit for windows
>> board is controlled by SDC2 instance, so enable it.
>>
>> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
>> index 432ffefc525a..f169714abcd3 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
>> +++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
>> @@ -672,6 +672,19 @@ &remoteproc_cdsp {
>>  	status = "okay";
>>  };
>>  
>> +&sdhc_2 {
> 
> It doesn't look like this path exists in the upstream dtsi. I guess
> this applies on top of another series that isn't exclusively
> targeting the devkit?

<20241022-x1e80100-qcp-sdhc-v3-0-46c401e32cbf@linaro.org>

Konrad

