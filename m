Return-Path: <devicetree+bounces-222325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A80DBA81DC
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:28:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C7AC3B0C82
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC5B257849;
	Mon, 29 Sep 2025 06:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BTzPoKIT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69798253B40
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759127282; cv=none; b=jYBITXjdeOtDfGxNvPlV18BvxB/8ngDtJr6SPU6/4nVa1Pzq7zNlFhjXov40K0XCE3uI2ugTqmnI78MOdh2Lfvodh0Wnbx5GgSLvKBm4hNL8ivGFDIuAYPT7AHqdc/LZnQ2GuBE86hlgkuyUEX2arUyaaMwd4OWMlt3wglPT46g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759127282; c=relaxed/simple;
	bh=7MONXp2kxgmvXUrMFPJPcWOY5YJ/mSytwCSndhWpUr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hFrW9zTuJ/D4CuI7SZMTkXdvMLU/3xDdLmoqWezxkB3PGIkUtaPFgGKdMkc4z4qGOT2ZcXwqcwRsIGhYxoIeKiQyG2gAvrO1Ye36Ba4UpB7BjNRteIfq1L1anXTibrPob5bEKh5YXJWhm1eBR0r2TDtdUKllsnu+azTIE1vPnc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BTzPoKIT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNAJog031290
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:28:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aoiySB9U8Vv6U6hO1VDsQsux8dNMt7jx6n76caS6mIU=; b=BTzPoKITsjHcE/Ig
	+gEuoJQqZWQkBnXTNjXpQkAuxDJy7kI0tKw+W2EUdfdtYH3188g0KQANVZ7EfnVd
	gEGwbi4qQDZXg+NFwqB2iWj4DMNQUV/HvIRuTmZF4ZHrFoFIF4Qmp8f9tZAh09i2
	Fil7I7ajvt2czV86ezHNTTCZMwI0xMNnxMFMGFwz0W6AmsQuz7GjDv4vqws3JRc/
	A6AaGsnAkFZ9/2Tjn+uZhZgf/Y7lBLhOmkBtlp91+86228Kl8YlQNcDGeJtlHaba
	y5hpQV0KjClPvzyGYpKY7DmYag84CJ4zark0O1ew7c9EELGMhBm099B3l7gteAsw
	pbA3Pw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e7gxm34y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:28:00 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b5535902495so3138740a12.0
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:28:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759127279; x=1759732079;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aoiySB9U8Vv6U6hO1VDsQsux8dNMt7jx6n76caS6mIU=;
        b=p8B3fQKMc3pvkhQqRT1vqK4t22GhP4DcZrABuKylr5aPmxaF2gW6/1fxAoN1iHYUvk
         +wM475R9NDEpItsJBqlmfLYSnQ6uBSDqXA7LWQFmopDE4SLR465dNrGkRMtJ7+JbvflE
         DSMTX+87JWbVZwoRnt9UCIbNVXXKzN+/a22zyKgMAEF7tYB4TnDEl2b7tDoEIXqzn+7+
         rfn4K6/+iYFndAHPYMZ078fspzp8QxTBwe6vA6CKyepjpKE06OixRhq5kZSeIZ9SjeYj
         yZ487jY7ZPRsv7w9fEmV9Y1FrIInVpZ/qeN9DRDLd5L9zegddW+L0pvccQTAvv+Dim3x
         rWOg==
X-Forwarded-Encrypted: i=1; AJvYcCVsJcgtQoiYXMx7R+tD7ZL1N9voWc29nzZ1hnNitiwTWLHoReAnEp7lVNHs+CEj000KZMVVW5SC/2gE@vger.kernel.org
X-Gm-Message-State: AOJu0YyWi+BKVhnu5x6ByFgjb16lUoSMGxwK5ZKce1YdD+vaRnzMXZFP
	qSP60RaxIvxG45X50tusgEURpSLtC7B12e/ZEF/MhafT5vr1bCf2aB2/QOaG4W0MlXfIUAP+GWl
	vSIaL/11n5fWIcHbz4nO4daI6QcPd35bNHz+sihKjyUoMp9C0rWSD3FMf1cf3rZSa
X-Gm-Gg: ASbGncvTFeyrKgzsmy5MZwWZEubbqVO7f0DMlfW6wE3q5Sfm19R1Yr0fWE65HtjcWiJ
	ogMb8g2inzGiCBitABrmZDE1gPXPiV+rXnsNdWpyzCe55nX1npDXAc/Y9yatf3DwKSoTt1NpPg7
	gP/ZaEtkGZhbbridPk4zxqQ26EQo5IEsFwo4QWddFXuecmjLfTihfjG1xfLUfK8Ozz4G8ROs/H9
	EpRCzJqsM2W47NeGja1e4MWS+FKlEd8gqEzATahFPFG+teWOhOVVtBaNVYaB1ABulSKvggUDo7X
	2tIvDlrKcA0s8wriHbRRZWvbQsc872LPDoBsrTHXeMEzKxX2UfTiAZW+fcpOuvQwcC4eMOcPpt+
	CkWFTRweX1lDHPQvKiQnO0C1MkG5zFj9iyRQ=
X-Received: by 2002:a05:6a20:e212:b0:2d9:c2:5ce4 with SMTP id adf61e73a8af0-2e7be066b1fmr17865338637.7.1759127279070;
        Sun, 28 Sep 2025 23:27:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0+hgjwMD2S0KLIaHpLLLlNzETvpPU2QOEdVqYskNhuhBWrT5uV/PegOpSnXKtl0Mat/ebyA==
X-Received: by 2002:a05:6a20:e212:b0:2d9:c2:5ce4 with SMTP id adf61e73a8af0-2e7be066b1fmr17865313637.7.1759127278653;
        Sun, 28 Sep 2025 23:27:58 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c55be5b9sm10167314a12.52.2025.09.28.23.27.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 23:27:58 -0700 (PDT)
Message-ID: <464b38f8-f91b-44f2-8028-aa0a17ca3e68@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 14:27:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] remoteproc: qcom_q6v5_pas: Add SoCCP node on
 Kaanapali
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-6-611bf7be8329@oss.qualcomm.com>
 <b7855860-410b-4d32-afd4-84d61cac4a79@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <b7855860-410b-4d32-afd4-84d61cac4a79@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zA3IZkblDi1Av7buIC910DptZ2AjKGU_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyNSBTYWx0ZWRfXyoD+aqtoOXD6
 CIKZ7a0cnaXXoeZLXdMyjLBFbj7u+iRSjJvyZjqukmpMlCJ8wrSH1oQQe0VVqc65yQcWZPp7c81
 YPUcQD2XXF7lJ98l8DjVBm4avaEVV997OSd+iBas8zF6CsOLRPmUToQH7Ab3uOquQvDBhmimXzY
 prQ+QDj+iq1e79U5kxww1JYmhhvB4bvdSxAf0XEYxVBp3rXCvbOhos/hDFMJD0hc92aDcdoCXqg
 AuGZCzkmdfqe+CeYizE56we21Krh9ZXFdoEbqIJaCScQ0fG6MnPx1BrsMwIoT4W77ax+iXsZwJN
 yCo0VdswqBca0Zmu2c6Os1qF+ZwEwkQZjbnM65mklUwFiNEIM51xrAZhymKCiaPfnOeD9ER5dPC
 PKZOkN0t0yxyyF/NKGpgzq611tCMIA==
X-Proofpoint-GUID: zA3IZkblDi1Av7buIC910DptZ2AjKGU_
X-Authority-Analysis: v=2.4 cv=dP6rWeZb c=1 sm=1 tr=0 ts=68da26f0 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=bJu89BRhDEOEog6wxuYA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270025



On 9/25/2025 7:42 PM, Konrad Dybcio wrote:
> On 9/25/25 1:37 AM, Jingyi Wang wrote:
>> The SoC Control Processor (SoCCP) is small RISC-V MCU that controls
>> USB Type-C, battery charging and various other functions on Qualcomm SoCs.
>> It provides a solution for control-plane processing, reducing per-subsystem
>> microcontroller reinvention. Add support for SoCCP PAS loader on Kaanapali
>> platform.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  drivers/remoteproc/qcom_q6v5_pas.c | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>
>> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
>> index 99163e48a76a..5007e1706699 100644
>> --- a/drivers/remoteproc/qcom_q6v5_pas.c
>> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
>> @@ -1487,7 +1487,25 @@ static const struct qcom_pas_data sm8750_mpss_resource = {
>>  	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
>>  };
>>  
>> +static const struct qcom_pas_data kaanapali_soccp_resource = {
>> +	.crash_reason_smem = 656,
>> +	.firmware_name = "soccp.mdt",
>> +	.dtb_firmware_name = "soccp_dtb.mdt",
> 
> .mbn?
> 
> Konrad

Will fix.

Thanks,
Jingyi


