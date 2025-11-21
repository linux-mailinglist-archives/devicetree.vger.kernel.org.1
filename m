Return-Path: <devicetree+bounces-241016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD6DC78AD6
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 7B342328D5
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A96347BDD;
	Fri, 21 Nov 2025 11:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cy+CFsfP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G4smvpry"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FBA346FDF
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763723164; cv=none; b=nxDynZMzXtqBSpmXEc5+d5krArpsrEImkgn5cJi51Vd+jTvjYUSPuo6iPL/fw9rinSvJkQWhg0rhastDNVkpdkJThPWCKT+uFF+gRmxBfwRPh90EHBiZxOhN8oATuePAtWz5QS8Ay0WdXWfIzdgVhBGR5zrX1kj2z158rEcwCz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763723164; c=relaxed/simple;
	bh=SZ3wQXAgWc6lIuN4rikgzfO7DI/kAsIjPnQw7aPtW9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vCAB/PIsBe0YlE9YMekMdEdtlGAcdeVDnBzYv+c+2X39Y1SxqvboBIP9r/elzy5tvGTI96XJ5Ow0LvBqfAOVIcEu0lX2n1hmu374W+1zdYfhAE+vRcayBLj7sXAWFZ76vYGH+ZeotqlFNN+Vmv5GbhcZiApUCqsg+Hl8rZDPGYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cy+CFsfP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G4smvpry; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL9VwBr3048209
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:06:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1lwM4B3DhGX+I6P/NFpZd77ifbn/0WqeZPjM4Wp6rP0=; b=Cy+CFsfPbPEiH1Wu
	X7/9xlcAjc5hfXxqxBnFeObbcvP8OUGimNmcJubYNQwaXeWQiEpG7ZZ2JVdzMwgQ
	4W2lkRf9JlHL+Z1MPissIWGKr8dkkrQcLCFD0CfDuESj5muwUV3hyyMonhFirZto
	Z+ElMRt6RGvQJgkZGjMkfk9A+22j+Rn5FJx3OZtxKsnc0idq0w/tyvKqZy6eGKZX
	Bb1YY7ZRjUqVNW8ybd4qGIakcvev5qAZoA5IYW9mZOnDhXh3vD9TuvM7ttlmpZPO
	NDIdpAHQbx2MqiEywza3dmjkxcS6IRKVUgD5dYfX2b1ZwatyZ1nsDbh2cGI4fv0N
	NLfJDQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajnhjr9jp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:06:02 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b96038aa68so2204899b3a.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763723162; x=1764327962; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1lwM4B3DhGX+I6P/NFpZd77ifbn/0WqeZPjM4Wp6rP0=;
        b=G4smvpryYbPKdT+2TQU90NsstyrF+Ly/ruwkd+SJToi9u5/EiBt/pYBDN2aUsQTq5p
         xGSFC/wFilqpcqp8x2ogwrhbqKtkuZW7eH+uXIl9vNorPZ5fjGPpXW4URmGPex2HS0TW
         8kLRn0J6tV5c82SvtpNPy/6V/sBJ5SSoMYeXUUNBx2WQE85ueoDwRDSIr5tEQmgf04R8
         m6h+NrYOiZ2YXrqRql1hDjxoxBBi+E6h8ngXCPT40luW60bfkzzgud83oA2NZgaCglm8
         3h9NfX0ZplG83z3fdUl8fThQwhwDgb+4neJ3mYWbLJxMVBxxBNKIWT2h9yjHtmZuPht7
         aUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763723162; x=1764327962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1lwM4B3DhGX+I6P/NFpZd77ifbn/0WqeZPjM4Wp6rP0=;
        b=p5Rly4NA2GutDu0ANcTlyLgf1yOF2kpeqpor7lQ7UuvYdhvGwfFBIN8hqln7Y/iQrg
         p4E4IzjSy7u73Irm7GVSNY2bAsjqk/0W25/wUhwWJMS06BRGkpYDjAGr+16B1JmsZlja
         BGO6LSG6cflpgaWxXgEd6gdiG7rVLCqu2Gdl3ZHUw0Yp+uC3VON1BNaQKjx7ZQRexVo/
         8OIHp6M/N0SXbJsx0lnL2bDnw+XX2iDj7WDf+yBXr5/00Xdttzanjr5Y8DDqhCnBaZ6a
         NcFng2RNoQyUrLE25cQKThsjcoqOm/6bKRVeQOgeT5+EGKHKtYON1HAyQldazBYua1H9
         1/WQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwqJkaTLXG56QLxfPKLOMbBI3nyqvn/rWwhoKIQM6w9vObZN6fuQ/vC6+I1CIkXQjLuW3aMzW73EFf@vger.kernel.org
X-Gm-Message-State: AOJu0YxMH0LDPyaAqzLEtp+c97lDqAl5xrFH5qN2Hctk9MWjuT76eug9
	/XnU7AggakCVbJbayMSH9dhRnXBRtx4P5uldx8Capk/Bp/PG0yj5NfUXiduQpbBeArewv+TJixC
	BmpA97/BWceLU7UeYAiG8la+5Y/YmxZlrfCCfPi2g7y/fNEpbb8/2JgOpwkmmcsE3
X-Gm-Gg: ASbGncucUho6IBfJEf0lIyWHGEKLca5bUkCs0iQeVebSRgYxoGCbs3B9IHkBRZ7lyfS
	GL1fXowW/Wi4Y3a5yUqicUd85lyOiFuuzWHGefVG1d4yeermLWcVtAHA4wvti2mDYqCxEGSHfoH
	jLKQrBxreHGA2IbZwJB51sP/4+6sTxb1lkZphVLcfxslPl/0vMsXc1NYXIMpNFjP0RvcsjkJf3t
	y3xUp1MMg8QgscdovI7YOKSoY8M21Lqw3GP+iqtegYUbs0z5Z4fonQ+GdCbmNaAe/OafnB2V8Y0
	/JBZEvtqnFCO6onRNTfTkElnmtlhgNC5UYhfYpdf3amZCNQhodcXgjObfU+HBqjFHblehqYpvF3
	JyMD5PRS5Oxp5ivkxm9YzIYp2mk8EIsQX97J1zriwoGIkA48PLHwqDZOPtklW5x2M9tcLNwGhJG
	H6hnONWIRTw3ms6KxOJkx/dNLzv5hF
X-Received: by 2002:aa7:888a:0:b0:7ab:2c18:34eb with SMTP id d2e1a72fcca58-7c420099278mr6559464b3a.12.1763723161989;
        Fri, 21 Nov 2025 03:06:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjhZEo5U7n9KUzCPIm+DcpEHJbeLnMbZ6GntiAhaks71XfbOEyR6pF5z0fkiXYdchePx97jA==
X-Received: by 2002:aa7:888a:0:b0:7ab:2c18:34eb with SMTP id d2e1a72fcca58-7c420099278mr6559434b3a.12.1763723161510;
        Fri, 21 Nov 2025 03:06:01 -0800 (PST)
Received: from [10.190.200.209] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ed470ff6sm5729043b3a.19.2025.11.21.03.05.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 03:06:01 -0800 (PST)
Message-ID: <3ad05810-0cec-4a12-bff7-4b1da0fbdfbf@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:35:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] soc: qcom: llcc: Enable additional usecase id for
 Glymur
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com
References: <20251121-glymur_llcc_enablement-v1-0-336b851b8dcb@oss.qualcomm.com>
 <20251121-glymur_llcc_enablement-v1-2-336b851b8dcb@oss.qualcomm.com>
 <bc8cbca0-3bfc-44e2-a7ff-401e52f76b90@kernel.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <bc8cbca0-3bfc-44e2-a7ff-401e52f76b90@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JB1Dwng8gIHlZAHKSl6GOabOEAGg3aJd
X-Authority-Analysis: v=2.4 cv=SPlPlevH c=1 sm=1 tr=0 ts=6920479a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=SDN3FUhsDtkZDWFmCUYA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA4NCBTYWx0ZWRfX+qSuBCyOpWNR
 ENfJdV4wulhi7w37OcxVVAvE25H4+T9apfyVQyKHNOWjQ55jyCb1VN1NCNUt+C/d1cvN21FNoxY
 IfSjCOQPIQQq8ZaFMm6osBnJJkRuUUqrnHJbCUh8XgL31APX1V8zZ2Ar01oxFPT5KWfh7+ZpxCW
 MSAiS199jMSa8vAhfnQrpiEM481GrjxbfW/0Z2kL4KzOyIJgpyxmb4KOZgIA6jpatlHQbYxfS6C
 KofNoQx597wn3ZBDdOrqX4nxBny8l3lHA/bj7dywG8df8jKoJHpe+thUVTWU0MSQQkbMGiAYxkW
 OXbjXcxA+uG0svqiFWl/yVToDbualTqNyLUyjij+RuT1xtz+lzyeFkTPlkhtx4OmpjewVmxmMI4
 +QIidexLNQrM+5ZwHHNTcK2B5HrqZQ==
X-Proofpoint-GUID: JB1Dwng8gIHlZAHKSl6GOabOEAGg3aJd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210084

On 11/21/2025 4:07 PM, Krzysztof Kozlowski wrote:
> On 21/11/2025 10:53, Pankaj Patil wrote:
>> Update the list of usecase id's to enable additional clients
>> for Glymur SoC
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  include/linux/soc/qcom/llcc-qcom.h | 4 ++++
> That's not a separate patch. We do not want defines just for defines.
> You add defines because some code uses it, so there is a user. Where? It
> must be in this patch, for all typical cases.

Understood, will squash with driver changes where the defines are used

>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/include/linux/soc/qcom/llcc-qcom.h b/include/linux/soc/qcom/llcc-qcom.h
>> index 0287f9182c4d..8243ab3a12a8 100644
>> --- a/include/linux/soc/qcom/llcc-qcom.h
>> +++ b/include/linux/soc/qcom/llcc-qcom.h
>> @@ -74,13 +74,17 @@
>>  #define LLCC_CAMSRTIP	 73
>>  #define LLCC_CAMRTRF	 74
>>  #define LLCC_CAMSRTRF	 75
>> +#define LLCC_OOBM_NS	 81
> Best regards,
> Krzysztof


