Return-Path: <devicetree+bounces-176437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B38BAB3FD3
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 19:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF6841882411
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 17:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D62296FA5;
	Mon, 12 May 2025 17:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HBNt2v/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEA5255222
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 17:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747071965; cv=none; b=gpHZ9CY4yBnvyGoVg0Cmw2s1qE/MLeDjxPgWhLQdm+TyHPwo8ghUx2S0ra+xZm693QTwvHBI8vJWUk3SeUiKkj7CbKGrqwBwNB5yz6Lw+pTzaznW7eGWcxlUxEVYgVrYxo1FdsRRtg47l7VGRCkp5x9DNAyJUKr7180qoqTHbUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747071965; c=relaxed/simple;
	bh=+1wskF+vlvXOeOxiHmSxo4T+OSiZzaLsuf2oDKcRKNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jsaXeW9Vt4yExhx7sOnplOxeVypx+TLcOdBmz/F8Tc1ga/7O9kg7pjo0F5zXAoi9JPtUwlXJPrkgyb2tupe1D0lg9tNeYZyFOfMWAdXXfrVbK0NvVeqOREfU43NbJfKr8TMnsJaS9ro9bXDAQcA+Cb6D8aObjfTR6OI4yD1EA3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HBNt2v/s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54C9olOe013136
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 17:46:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HwFMyjoqjIIBSKHAiFDJ1GbvaXhMQFF6rMgZHx5wWGg=; b=HBNt2v/sRm1MaXjB
	9p590BHwq3+D4FxmsjKBgn5F1VcE1VTanlIbjRhIlqKBGS93JepileyTkjBFT4zV
	sK19krkNM4JrIApcqP8YPFJhQJUAXiMYbfvtl8BloOZOFKhYIk6cV7SLKJR/jLtA
	8m+toxlqSef9exhdRED4X5waxZiuGvSAALMLGEoD9B4AbNBiBHAaa7HdOdaG4Pj5
	JCdLkuYDDLw1psKNjSN5hdjGffcpw9fPIVgF+Nmh+2RnvxRWWDqupjergR/TObhU
	crPsEmYERpRwkJgHrpUW6LoU+epQ8UWPGY0OfdgrQ1hxD5NveRS82zIQzBs42mVU
	OvfHRw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hx4k56hb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 17:46:00 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22e76805fecso68144555ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 10:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747071959; x=1747676759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HwFMyjoqjIIBSKHAiFDJ1GbvaXhMQFF6rMgZHx5wWGg=;
        b=XOpTF4wp1ZJK9PgjdXuUxQDUKWhF5V1uC6RF3PNfj1+gY3O0toenBOJPc88XPW6hjn
         vQDubMIY8QaB9uQGFR0UBh08n8GdE1hWDMdzPertrzIOVR2tWsNOmOQN/QpUgXhss1z5
         ZiJEjh/23v3lsgHzng/ZyaJuEojz7xR0i5m+60SRNky5r2AvEFzMjngev8SgI9QxJsuz
         B5sqR99meNmIv23tdJtQ+U68YtuIqsgDTyIE7rPe+worzcffZAAURtRuPQBF48wwB1Xf
         ChVgdoc6CPB2ZCvDO3HRqfDqDFpItWV1AmS+q30Uhamp25q1iuWDKJmIVb/FASKoG6z5
         mMIg==
X-Forwarded-Encrypted: i=1; AJvYcCXpTTcrjxCyuXCHoP+FxiTKlRVjv9c9YgmgC3Q6IDIGAGd4TCiBr4v0OIKv5bc/598aJPI7aXSlN6Rn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxeulq6NeWWTs2tj0QARge+YPx9ExzF6KydeLJBnSDlJQHqBndj
	pMFAuPs+qMJpwwEwz+ufuq54X1ky0/xtRh8n7QcHoHLwtSHehEWBElftH2rd1KB+WCs1uOr5Dxi
	roT3NMsBh/czWbmPwzuS80ukwNPpNzKjNFgF1VMsSJMBS6ZKbmiBZcwjLLjqR
X-Gm-Gg: ASbGncuEodWkuIcswXOx95rhU/TRLxMwXdbzCWj1Ck7rjIV81e4Qg6WHWKLuqT6LNxO
	3O2fzWXOih21N1Y7mlTav+VD9J5UWpZAomP0yNCVST0cbCGptRysLmj69qw2tlvbygtZ2A+iB5R
	27+/rgDNdI68ssHpx6401FtmjQrty77VZ+m3Mt02OLPj2EpDHU9JfsAqKnR9wJ+/RIfvhCQJjf/
	S4tcyouk+Eq8kCoiXd3I325AoYxrzs9cVU1XhW4vxFTpNmiXV2IXCM+gRmPC8ZEBql/gu9EXqsE
	JH5fZslre5JvRU98anBl98dgjCK9x9PhFkjokKn8cPQFDsqkGCe8zoEEg0RzKxUId9pRA0apn1b
	qffVrgtZJsmy4qV1RdkEqtA==
X-Received: by 2002:a17:902:e54f:b0:22e:3b65:9286 with SMTP id d9443c01a7336-22fc91a84edmr219453015ad.49.1747071959307;
        Mon, 12 May 2025 10:45:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9XtBpqjWjP5GwO1PxhnOOa1IOruziZG6NCExj5cy6kabPSTmxGq7mZ3t3zbgC2KxpriUv3g==
X-Received: by 2002:a17:902:e54f:b0:22e:3b65:9286 with SMTP id d9443c01a7336-22fc91a84edmr219452725ad.49.1747071958894;
        Mon, 12 May 2025 10:45:58 -0700 (PDT)
Received: from [192.168.0.207] (108-253-178-250.lightspeed.sndgca.sbcglobal.net. [108.253.178.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc7743b8esm65502785ad.101.2025.05.12.10.45.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 10:45:58 -0700 (PDT)
Message-ID: <f2215dac-6d31-42ec-b2ef-d0357b9542c6@oss.qualcomm.com>
Date: Mon, 12 May 2025 10:45:56 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] soc: qcom: llcc-qcom: Add support for LLCC V6
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250414-sm8750_llcc_master-v4-0-e007f035380c@oss.qualcomm.com>
 <20250414-sm8750_llcc_master-v4-2-e007f035380c@oss.qualcomm.com>
 <cnlu4yhfax3ggtkig46bwimr7acpoxl6x74dpu3kdwq2wcjwmd@d6spkmdywrja>
Content-Language: en-US
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
In-Reply-To: <cnlu4yhfax3ggtkig46bwimr7acpoxl6x74dpu3kdwq2wcjwmd@d6spkmdywrja>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ReqQC0tv c=1 sm=1 tr=0 ts=682233d8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=FG+XuRmzQztUAIe4/jomRQ==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=w7cyabqxlMpfI9qJrWQA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: zr8E0Qp79Z5EwdpANHqDkS4aDpc4AURv
X-Proofpoint-ORIG-GUID: zr8E0Qp79Z5EwdpANHqDkS4aDpc4AURv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDE4MiBTYWx0ZWRfX4PhNZrUVXCvv
 sGSZcA3japdKECyflUYc8kGVXM1xLVsy5rPcI8MJuyUJGmiwNWFGEZOGlrLlPDWEpIsqXICZDgU
 IXuOkyVg1KUscAPQmKFBifAj2YBjNqgUjVuXfjb1987ABDusScG2LO35EALIMv6r+tV3wJzkgd/
 7JUiE1jZnRe4NwsN8SwSKxoCxsrtnHydr01+iN+tzDc2EIWpaFg/DDQ1mZBGZYWTvs9cCBUSczY
 G3gm8H1l1m0lfRHgvWW2tJfx68rM6oeRly6RZLo/xIWl5luV7kTCRChpQ8TI5bBsRQ818OyyBSQ
 hZDImUFBjgDHjC4J6nMZ+hCzzdhj6C1bqgj2GJleiRgWxe2lrT+Cq3suIMzUgsQ7DLLNw3ehkSD
 E/oB2HA/Tj4FpHg6oG5VQslj0Tsst8Y+Z+kPubWAMaMNLr/ovt05Ofy+1PX3NOOrWP2DIeYG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_06,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505120182



On 5/9/2025 3:12 PM, Bjorn Andersson wrote:
> On Mon, Apr 14, 2025 at 04:21:51PM -0700, Melody Olvera wrote:
>> Add support for LLCC V6. V6 adds several additional usecase IDs,
>> rearrages several registers and offsets, and supports slice IDs
>> over 31, so add a new function for programming LLCC V6.
>>
> Can you please fix up the checkpatch warnings in this patch?
>

Apologies; I'm not seeing checkpatch warnings on this patch. I'm on tip 
of linux-next/master.
I ran b4 prep --check, exported the patches with git format-patch and 
tried running each
through checkpatch.pl individually, ran dt_bindings_check and 
CHECK_DTBS=y and still
not seeing any problems. Am I missing something here?

Thanks,
Melody

