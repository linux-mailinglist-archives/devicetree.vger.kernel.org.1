Return-Path: <devicetree+bounces-185948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5ECAD9F07
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 20:36:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DCC21896CCE
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 18:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD14E2D12F1;
	Sat, 14 Jun 2025 18:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LB9SfVIH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3667130100
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749926166; cv=none; b=R0Rp8RlZBO1X2K1qNZYsqg+qtdxmIRSm9FhbTTwlD9sMWvV5qaTLg/pWtGvC8Op4p+1fLrLjEcfGqtUzYSNr2XQ+qipCuLvthappK53JKsnIX1nirr6+f5CDMQkZFMHxl6yxSZ7jr3JyBltFFmLE960S6aZLnLfIwK/s4YVi1sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749926166; c=relaxed/simple;
	bh=9zhqtvH20PGTQFl/hJ3B+6N3YFln0ELk3qsUhL0t/JI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d++EeDWxn0CIafZOFOViER1PlS/DslrYbb73xD/GZ9a9TrLDg+wFuySDif5s91Gj/CbIXwwbeeNOnFtVFLg7eK+REGuCJ0XywAVzqF1uZlLzT8yFOpCKTIOw9WO+fFhGauynVcIVdV0mE+X8GcWWDfcOwxG3IrHdkg9mC4CxMg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LB9SfVIH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EBc1l5019754
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:36:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fr3V+vnTlTkucnr/sMeFG9g9yGVUJcjlGidQWTV9CK4=; b=LB9SfVIHQjCfUJff
	ZXNcuH+jp9A8oVaghTkr/F7Hf9V11zJG2b/PBlIsKZD9J5W5Q4Cn14uriNm46/G9
	WRaXAUrlwDwLLd4ryuQKpgeC8Uoxq4KYO4WeKlL9ilYSPjYwSQ6wDG1vwS0XfFVD
	vwPlpLYdQgf9u8pGa2wvF9bWI/nuJIwul9OlMGthZbmsDwnFA9gkPprtVJcVjlvy
	0NIPOV+sf2x8Q33zQJ5cXmaWM0hlf0MS++oHKqo3r3eDXS/6dxfx8AsQ6T6LEpj1
	pb2xeZAG++Ofa4Yb0/VD0t8c3RSJoIroJ4/e+97G+ehse2unQsMWNW1XB7+udOET
	nMJ0fA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791en8vys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:36:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0a9d20c2eso100122485a.0
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 11:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749926163; x=1750530963;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fr3V+vnTlTkucnr/sMeFG9g9yGVUJcjlGidQWTV9CK4=;
        b=sEl6qZiYgcB4r163U1Ie/of9khr1vETOApJis2jPtAE8+t65bWAnZn9sWljVBpq1Lj
         amuO3XN3Rfg+2As6Bw2whnws8/VzaIzEWSYflwB3juqgLOZz4vqiyVYdqvCHWNvA0RGJ
         yXhCTudzvgMXc2GEhL2u3wNYotVUNlHeAvX52gouuWXJahP1oJm4AbWq5MS/LPzoOA5F
         PX5jGK4JftMcw/JhJPhwTMdVqIXFO3/P9GGXk1cQ3a+8WkfYX5vtoXEjqPfOdgwg8KtX
         dYClgrKXoq1gejLyKKRa9Sv7XxgNhAofcnTmDURolnVvbT8royyuDggbGO8pkqtTA2G5
         rSkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWA5KNS87oqYrTMfNnSTVFKgmOho9Yb9achh4aQiLNa1MXxuQhGi1yAAn9QafogTBoX7QE8+A0TCDto@vger.kernel.org
X-Gm-Message-State: AOJu0YyYzznS1EOztWgTa44NS/oYZ7AaIheNChcqeFfCmKlHV1DPu9fa
	2RY0WgL07xshYLhmo5AZD3VOAnaohKaBRIAhQmJxvkRjUulIiRLk2wn/yszOeQFg3wP861I7oMv
	bkFSTG3MDfowsaWhd2Cod8LAbaqd9sOq6cWKVJM53xmRccZeqNGtlZ8YnmFQgQ02u
X-Gm-Gg: ASbGncs3n9FmVAWtlnZNzRSeAuizEbM3adbDtMLW2ZTRj4Od1D38R782fr0nsWRU+n3
	UaPHYOhvBJdYlCmrVvriv3QKQX8HOkZZOX3j/U8l5/1EdllXHSjcNITM/wtLHv30zZkn9Rsrif7
	6p3f+/lbeoFGKkYlRCTkF3GQvsCmsFZ7mcFaFOYK7mQo+85M1PHDfXeN0giMOYHrniSvRatPdSa
	ajJhCiFWeBk2oSMghyaJKWGC+zqfZWM4Zcj8YXmYMymeuJCFyTO/LMhIgyypCqLg58BN6rJ76/C
	k8c88ncDM2Ho0m19PQNYQD8EfNz2qW86qkETygRxMc2mSdC0YBa+MTrZ29eL898TnZ6/AFCx51N
	Pn/U=
X-Received: by 2002:a05:622a:316:b0:47a:ecc3:296c with SMTP id d75a77b69052e-4a73c394653mr23248781cf.0.1749926163465;
        Sat, 14 Jun 2025 11:36:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGB04Fgqt4Kek4mgzb5bvMAWqJLI+/i0iRXx7obd5FsMMu74P3dH5pzCOJqmQmFoouzm+D9ug==
X-Received: by 2002:a05:622a:316:b0:47a:ecc3:296c with SMTP id d75a77b69052e-4a73c394653mr23248681cf.0.1749926163112;
        Sat, 14 Jun 2025 11:36:03 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88fe531sm346355766b.108.2025.06.14.11.36.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 11:36:02 -0700 (PDT)
Message-ID: <f1284637-7650-498a-b850-b5140c47e4e0@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 20:36:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] ARM: dts: qcom: add device tree for Sony Xperia SP
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250614-msm8960-sdcard-v1-0-ccce629428b6@smankusors.com>
 <20250614-msm8960-sdcard-v1-5-ccce629428b6@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250614-msm8960-sdcard-v1-5-ccce629428b6@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0KuERuk243bvnlX-mBujwnTkKq3tzBEG
X-Authority-Analysis: v=2.4 cv=D6RHKuRj c=1 sm=1 tr=0 ts=684dc114 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=wxLWbCv9AAAA:8 a=BdDXOLcz4J6SvvgUVR8A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-GUID: 0KuERuk243bvnlX-mBujwnTkKq3tzBEG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE1NiBTYWx0ZWRfX2LNF24RjrMcQ
 aXEUkxXqwtlXwT+eNFPAsrJZ20IjqDmwXfn2ktmEyD7XTIsHCPBfZn1B68LNg01g4boUlb1KPD3
 1p/iC7WOrg+5jt0LkIZZzI6DsIudTU9scUfgW+w/vhpw9tlZE+y/Vikz5MQ6NGkeqyTxfTRaioq
 7bV5iBSIUGLwmeuoKvEqwnfH3Fb30etSkp3T9HnLXic9aTKwMu2ZqZXMIuWIPFWwYlJBfYpLgcN
 Vvgd4hxtvYjzcfYxLYY03b9bWBKMyVA0Y7ldsVbX+MZbQjkRR1DKvx/Zkx09p8coBzELYQ9Ryad
 spEjg+7QGuYLMYLyNKR30VlIcXg5r/CK99BTsbp+oCskUJ01TreaRBsZ5ptQ/NCOX2iAMsnTh7b
 5gkZoynhsBizzXlrhWqU0zaPxeJtHMIYn4d4UtrMoP+tVa2FKqVE2EGw2b9x9+liXVlyd3YW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506140156

On 6/13/25 7:51 PM, Antony Kurniawan Soemardi wrote:
> Add initial device tree support for the Sony Xperia SP (codename:
> sony-huashan), a smartphone based on the Qualcomm MSM8960T SoC.
> 
> There are two variants of the Xperia SP, one without LTE and one with
> LTE. This device tree should work for both variants, though it has only
> been tested on the non-LTE variant.

IIUC (and that's a 10yo range memory), SP had some eyebrow-rising boot
flow (some partitions were non-standard?) - could you please add a
paragraph about it in the commit message if that's the case, and maybe
include a short how-to on booting the thing?

> 
> The following are currently supported:
> - Serial console support via gsbi8
> - GPIO keys for volume up/down buttons
> - PM8921 keypad with camera focus/capture keys
> - eMMC (sdcc1) and micro SD card (sdcc3) support
> - USB OTG support
> 
> Other hardware features are not yet implemented.
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---

As for the code.. I don't really have comments other than please
keep a \n before 'status', other things seem rather in order.. If
the dt checker doesn't complain, I don't see any logical wrongs

Konrad

