Return-Path: <devicetree+bounces-188421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DCEAE3C05
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:17:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D39C8188EB91
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 411D623C511;
	Mon, 23 Jun 2025 10:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ikQ9z5DV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7088F1EF094
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750673798; cv=none; b=AQJc9t7RY6Sp891FvsHlVpqkkdUCcC+t1ttb5sO3q/2zCmfW/TmJDO+eD5OIxXixKRqDwArxpd82wWE+tS65P9YdIBHx5HOSFC3ubY9o7QzPf1Txdj6Sd5Xrz8dEdcxLK8dPizCP3CiINGDrikEDDEf2BZSXsCXo09k/sHfy53k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750673798; c=relaxed/simple;
	bh=sOYwnsD0J+xxTdJBrWtF62Dve/ltjAqoPZ0RC6eB3q0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gqfKCP0IEdtdURT1YlTDpDEQsbMYjL6tPTqoG5Hku59t/KAN/WdUcPwk41fxNyyiXEtezIMgyZIqIXfls000+8DBjG+TV0J7s8vRgtAqdQMn5RHFj7rdUJrLV+61oD4nGkA0FgNs+48MJOUnh57SCx4B21RimT4iBm1eNPzQ4Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ikQ9z5DV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N8LiHY006109
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:16:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2SlDmKSsNzdYdPWzZxnDLI0jZ+Dr5yKFvIhxTvVVGIA=; b=ikQ9z5DV+jcVazYe
	5tQdq4rfIbPEbnAzNNnW6A3kHH3yjYVEAfgph0V9pZ9E2zwnVc3byGMWnbn3wXE9
	lAuxyMq8SweuFfjz+skgEsZH87vdGAjmoY8tHkSqri8xCffYHlscCa9Bq3G/t28a
	5SEPI1wblw0gc6eT6PBopFHfYGyF5q0OC20wjPL9kU4DPyFy/2aBmOlzx665VT5c
	EY8xyeQF+8KVZxECCTSDzpHPrbrYFAVABlULRkjeohpsvbq/yEYzLa5qyo+ge762
	N7Eq48dqrgeouCJcSjmLWGyaEA/6WbTMJs45nKmVcjlsegy3e4T+Zt1n9E5tWzj1
	8Pol3Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3bg8ab6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:16:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d094e04aa4so142033985a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:16:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750673793; x=1751278593;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2SlDmKSsNzdYdPWzZxnDLI0jZ+Dr5yKFvIhxTvVVGIA=;
        b=GdvU9dbBcNTJnRNs1cWndWtWkn4q3uzETDLUkGjSK+QVlzEtHmVdT8NuPPqfAgId3K
         zA4+5xwRZLwyecnlX3VjSYzWu9LvEmbu5GZnrrZJiXrRiZMej50SoaQwgoaxeKn00Pwc
         1I0WPHR/O+ATg6gGymJhQ7y0isXvz0gccKOBGZkJcC+IfvS+mb6zsBj8mITu/KKnMkmv
         nJPU9M4wBWQu6Txj72916IdKcsBtkAYKFOS/oLWkxzQ//QbzudrTukZcWVvy91HB0VE7
         9C8dYfHpSPW5u4wjk2akcIXU6w1uhDvkd/Ee+3MuPegDnAGTA7oiNDGVOcolCKjEjsyZ
         973A==
X-Forwarded-Encrypted: i=1; AJvYcCX8POr1ww9QG8aeUfdf1ve4YS0YV9d36oIa1jYKG4rUAwcL0dvGbCz2C1OvOGfSTrXPBGjVgTzzU45s@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn+RfibL3XJrCOyR/+qlqerrfZU8CjL23F5EbDtTlg2uU0Edcw
	n8D8j4Bgdaj+9FYW2F+476p88DHTobZfFw1S9Gci3cA5rb2DmdCdG4VzVBqIKxJOorDnYk0zsTr
	m79iu6hVNn1xTSShVrPXObND+K/HMQAs0VjCCpDrM9qaTrGxge/pxkOdMahkQWDMc
X-Gm-Gg: ASbGncs1BKMcois9POaHDRd/5Om9AqHSRYaLSYdH2D2TSyblh8J6OLz5PLOO+2OoTDl
	55w041EMRJC+w0HqteanigVL6U3mQld9i/fhEF+3KfErGEKjnFQBwo+9uK1NVxdguds9g4iESWq
	f0t9l/17O/kPNJkciPVggZy9plhseUfqt3JffYyc7EbEa8P8DOQ74235i5XPgGK5rHLo4fl7CG6
	Pw5cIoLMH+FaU/svrNvw4tPVDqJvTZPZsdRh8a6VrEPE7g/pI1xvgYofSM2F+ou6Ys1eUojc/Km
	CppZvoDzZivSJPa6TFecQNpU14bUYNvgDIwKSlfjYVMlhZQuIcErT1Fw1uiekBMnceOTvRhPqEq
	ufrU=
X-Received: by 2002:ac8:5fcd:0:b0:4a7:79e1:cd54 with SMTP id d75a77b69052e-4a77a1bccadmr56053971cf.6.1750673793571;
        Mon, 23 Jun 2025 03:16:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgUfDzyPIwCHeQDEwA6qykj5CrocIwRAGCcAAOLEMk3iHjz6Ei/uX0xUXjX6QkfYbNoV4T2g==
X-Received: by 2002:ac8:5fcd:0:b0:4a7:79e1:cd54 with SMTP id d75a77b69052e-4a77a1bccadmr56053821cf.6.1750673793220;
        Mon, 23 Jun 2025 03:16:33 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b7438sm677772266b.125.2025.06.23.03.16.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:16:32 -0700 (PDT)
Message-ID: <85adb1bf-2624-4280-b1e2-1bd2aed141b7@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:16:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: x1-asus-zenbook: support sound
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20250622134301.10403-1-alex.vinarskis@gmail.com>
 <20250622134301.10403-3-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250622134301.10403-3-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ZxgfEohLgpuzjwilDsYsCCf53TRLsrYx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2MSBTYWx0ZWRfX+0J+c7idfSjw
 nOJe0v3V+AIPGjEy15UV5FF6stTMcFdKBIJ1F+wmLolyhvyRVEMBQlB7Bbp0acQfAekOuqJupq1
 Ma2/yCFv9tRT0fJedJ3oGLk9Q4KMzGr1DoZzaxtPvLwcPJc9khOZZRZdGraGlu/loZUBmLTwnSg
 xLyv4OEOYQNFrbC9mC2nHLjso8om7ldt1s+FaQ+LPWAdPgLexJb8LjwRYfppGlqvXYYxdEt1HY/
 11XHh2T0RnUK3HwiygPMSvp2GPxSbpHbM9xLTIgZhjQdRjIzWzAXTaIL3pvqv1hBsauJL9lsbGr
 ZFCMv/R7vwtp614+sGYpGXakHv6WKiy2W52lQymEsVe4zX9x7sqwk8sm6AOAVszYKKs7E/wHDfx
 0U5vp/9Nt00RPTsFzNxaWuvzi+1RbeYAMckH6VuMEV8Umu9qGsWuzqqB7hUqHd6F6nL3yUIN
X-Authority-Analysis: v=2.4 cv=L4kdQ/T8 c=1 sm=1 tr=0 ts=68592982 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=jVxV0LTIGXaBgX6IzjgA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: ZxgfEohLgpuzjwilDsYsCCf53TRLsrYx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 mlxlogscore=881 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230061

On 6/22/25 3:40 PM, Aleksandrs Vinarskis wrote:
> Works:
> * Both speakers
> * Both MICs
> * Headphones jack, L/R channels
> * Headphones jack, MIC
> 
> Now working/untested:
> * Sound over DisplayPort
> * Sound over HDMI
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

[...]

> +		va-dai-link {
> +			link-name = "VA Capture";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai VA_CODEC_DMA_TX_0>;
> +			};
> +
> +			codec {

'co'dec < 'cp'u


with that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

