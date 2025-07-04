Return-Path: <devicetree+bounces-193067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CE2AF91E3
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 13:53:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B1DA7A8F6E
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 11:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F2652D4B7A;
	Fri,  4 Jul 2025 11:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TefrVS3q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E805E2D0C98
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 11:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751630001; cv=none; b=TcwNAoPUu5w+pfDOhEoxXbnVdpn8mE2+CwBHVYexFotl5W9DOrymBq5aF2MWVd3zpGkhUVdnB4q1HCKjpYWP83VWT4qmPrU+Fttm1No9jjjqIxDLAKKC/TSVl+tQzSVEK4opSjMVwnQ+ht444pwcCfV7mBZ5mju2RVQ4oGtJkzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751630001; c=relaxed/simple;
	bh=MKwHGKOn7w0r1Lf5ecuBq9Tsh0Nc6l+P14YUHUHUuUg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G1WQje4E1OaWsK4yUen7LyaX6snBpS1tWpenTRAfR+huxvQFmrGcmJaZMFYjtRi6YdTfmBSgAON6o8p7JVvzvw6V2E3CGu7BfJwKoYJFLdyjQsk/lg4I8fWELXqp5009BEtrvLmkrDeadEG6a2IS806qbnC1y2yKGfEgKrhOxOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TefrVS3q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5644mnN4015165
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 11:53:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HwHQZhuMFY2xGJQ2mbeCbIoXx+TFpyI6+fnNo2wASLk=; b=TefrVS3qNMZjmGf1
	+igIX0RHUwi8Dg9Ttc83GCuTMBQ4WlzeRsB+Dy5v5eLUIO0EKeamAg6QQsB0vmfN
	IU1qBSN5bYIkGnOgHzBooRvGyK0js5LINnBGeJ9gqk8bEWphG0LiC2KP/Z3VEeU7
	kkKevQffExNE63V8u4WkStfgazMzhh/9N0LeY+vXPuwzaIgGqn18JKhoamsrl3Zw
	SfDwmz8J5frsX+4dMio2rl/viBV4AdtRAbx8c+odapzivuqu03Ogm+NwNvBJwvE6
	4x5XuQ+j9sJgGArbsTrGemE6fkMarsxzQacB9gjrMI2rZJ3VBLSMk2W9PBnTrfZ1
	URTlkw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8s9uupy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 11:53:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d21080c26fso24323085a.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 04:53:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751629998; x=1752234798;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HwHQZhuMFY2xGJQ2mbeCbIoXx+TFpyI6+fnNo2wASLk=;
        b=uh7efldeT+VSsSlvU726uC2Lz+VC2DhgZ3cvAynnhP3feKkvJVUZ2BBD1NmXKiCvoK
         Pri0ajfdc6sQhGt0LLYehozivZKJt5twF9SiqEji8jsGT7TEoK49Zl61okTisrFPDdQ5
         SK8oBBpSW6ooiEMhJ2WQENbZmASA+Wc3ybBaeun4R9cZ4fv85DGVfDEGH0ZWz94vEejG
         sRVyZQWpc9XNEraXz/iPduu0X3/jGArUsR0bgUpwe+C4wL7AXZIlCEtglBjfGOXShspT
         u1Eg+Sj5/S5jk1mH3RnT7dBhtWxpL1X3rcBhdVWyKsFKdUmpq3t5HX4fIU7kMHjXA/xa
         3B8g==
X-Forwarded-Encrypted: i=1; AJvYcCXZynqj0OLWmpa5+5cl/ewpwIpkVgrMDKenY7yrXwM0jXtKZHYnIWenYB5QVR1e+zPfetnaSKAs2rvc@vger.kernel.org
X-Gm-Message-State: AOJu0YwZwbmI1P3fPsPJUUkzo3LhPjsjqoV5Crw+M37iFoGvT0lHEWxz
	SC8sDEPJS0Wc5Q3iigHv0nDoIMybsqMPTPA2glZB6n8rvLp/os5lDTgfDZCJXnquUGdxBuLXQbH
	ElogvO/gw1MOVluUxqkQsHIAOw6vKCr66NP6aSeTpTz/4uwM/SZ6GZOZ00mLt0DWu
X-Gm-Gg: ASbGncuD9Y6Tm6NGl6R2UZfoLnBwFyuxvhHtqeQJNpwBa7RqeU1ZyPRcWReFzBivIYx
	dImh8g5qijzuexj/AYsH8nT2NX+LCe0XtBi2x0nBUzXxKT0udnEIzAc7Zqh25eufPhbxNl+qZjC
	mqF1hEDv+4tafAb75x/POnsrsM6HdQFQszTkvajc8I5Is8ifFokDOUJV8JisWi/vtf/eCOlyIPL
	tpZRLykF3vh84cendNVS9lFjQmVOSZRkSaqLk4CohSHNuUjjQSZxesoGfk5UwnM/cOPTfh5OvGz
	anBPkkdVc3hINTj+hBrgtlKpCt+CeNoj+EJI4c/av+Z7tUEGGFHz9XbqIGs8XsTd06HHK5ykT9A
	+jJJAHA==
X-Received: by 2002:a05:620a:170a:b0:7d3:e9b7:7121 with SMTP id af79cd13be357-7d5dcd42af1mr119899685a.12.1751629998000;
        Fri, 04 Jul 2025 04:53:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPlgLXzQaVRDV5W/CN6Yajx9iz9BViPuW1BhPcQXauAwU9MM5dRRtATbVw3ZexdZDIvcZlHA==
X-Received: by 2002:a05:620a:170a:b0:7d3:e9b7:7121 with SMTP id af79cd13be357-7d5dcd42af1mr119897885a.12.1751629997529;
        Fri, 04 Jul 2025 04:53:17 -0700 (PDT)
Received: from [192.168.1.106] (83.9.29.45.neoplus.adsl.tpnet.pl. [83.9.29.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d931csm164525466b.10.2025.07.04.04.53.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 04:53:17 -0700 (PDT)
Message-ID: <c0908ffc-f973-4fe6-9264-cd038b0e5fb5@oss.qualcomm.com>
Date: Fri, 4 Jul 2025 13:53:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/11] clk: qcom: Add Display Clock controller (DISPCC)
 driver for Milos
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
 <20250704-sm7635-clocks-v2-7-9e47a7c0d47f@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250704-sm7635-clocks-v2-7-9e47a7c0d47f@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H/Pbw/Yi c=1 sm=1 tr=0 ts=6867c0ae cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=qmfFy4ndMtQ753Zl/n/b/A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=ygkTYHpWjZnbTFMe8PQA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: B7dTlojgIB53wt5thJVN1Pvso4szafA-
X-Proofpoint-GUID: B7dTlojgIB53wt5thJVN1Pvso4szafA-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA5MCBTYWx0ZWRfXzECYFMTPGwvs
 dedhcPwtRlV8ML0bg+GipBNdbJbjf4U1kWDHKkhDwbUCh3cHU3/aAipIJZpVd2Dmyqia3PaLtuU
 abwz8YWyMl4rqs1dMw/VF5qKjIVUxSvrnyr144tLWqMO4ayCxdMYK8leK9IOohVvmcQvIRaB7HX
 c+YRe9vRslu64eGHyFclBz20Y1QBYrStk8oFq/UJ07qWm7NT2sRFhH6YJdhU4Z+7qkng3bfZlgS
 qYzISrwpOEYgXrf39PKsbuHOuiKiRfQDzUea3GX6OfZZ96x4d8vZ1Wi+DjwOr2E2P/0pfZP6Qla
 xjYNqgxQ9Bg05GDR7ZViLwA1jfw/mNSN+OPNB07Z3uW0oLnFMz2px83ykp0Nn/mjgyDXudQGipS
 U/D5hHMwomBQbeUhf4wq51OWkFLBEf0ZW4Lysk0lY4jNE9gBJJq89MNsvLAIQ+hRfi4EwPGm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 mlxlogscore=935
 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040090



On 04-Jul-25 09:16, Luca Weiss wrote:
> Add support for the display clock controller found on Milos (e.g.
> SM7635) based devices.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

