Return-Path: <devicetree+bounces-247407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FE9CC792F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A190D311A4DF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D1A342177;
	Wed, 17 Dec 2025 12:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZFrSypy5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DzNcqd9w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54C733FE35
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765973680; cv=none; b=mj7Y0vN6RAQ4THXR8AhEykCN4x3siN4J3bvWUd4TqdiShZZMB6WOMB57/HGCYOgYllp5DDuaf1qMPc+tQViA07g9k0PXnmzLqIJEZLWWPD47bqVGSxpwNX1HpfW3udFLc/Ln7Q1/R95lpxXRE6A85BrCGcvZJRfgTPidRlYIJIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765973680; c=relaxed/simple;
	bh=FOhOqH7toKWDzEVlR9pUeDZO7isCrYW9YHhCfh7mb4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=favbOTzTHLICiI1Rh9g1pJQFwPG4Z4mvteoECWWX9RT57yZi4xqnwA+Dwoel5Rh6aPxWwFPHiKbHbYa1OppSrYv5KHqbjNduLVj5qjRClRycXhWL+gNHfaXQfq2xEnELpaLgPyd63MU52kRTFrj5E0rItr+At8x1j9Eb64nThUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZFrSypy5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DzNcqd9w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCCkdX2981314
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TiIbU7CAhhv+5oiifZDjVX1Qm9RbZdgxoYbJ4QOuiwo=; b=ZFrSypy5utuA2YbI
	hI8cL76CIrAck3oThQeoP95f1+GFPSx7sQFPCz3grsZ/eH91tuvM0GyS+Wk+ANJs
	74NsKs1oenO2QQtHFUvYJuEW3/gyAt00nQnwYoSKip3Hw/dCkREL2hs+CBFHh4+l
	Uv5oyCqzcWOB6rLSfOxpF0aI514PvPGy5QnZl62UJmumw8zZbPOLhAmVdQG6Vxx6
	GNa2JUE6llKuxKckHwVDRBUnimC+CNsD5HquA56ZqKzcz0sMFV4DTxs0bc3NKmJ1
	1rjtN/CyTXi+yIBveOlLhaCbiZJGReais+zPbBPh8nN72tIcExM1htXrOb5C5/yo
	XkcCjw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3n331ghx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:14:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed83a05863so17634521cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765973677; x=1766578477; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TiIbU7CAhhv+5oiifZDjVX1Qm9RbZdgxoYbJ4QOuiwo=;
        b=DzNcqd9wdgg91+8wciqJ6aareK7wxNv10+40Afrcnrjou/bR6VvbcHEX2V4QivL/nY
         Azf4Sl/DcLhMIAkBMk9CMaL+UgvuQezeQfND+fGgId4S4X6j4XXsKNLhz+JGxyDr9N2Y
         V3fmoWG/AE/6bKp/YJ075YMLPVRmi9cggXDtoIkmSACeBHPF7L8UZd5GI68MaK5dyHEs
         ryBDIOVPoeswan38pxfwpRHadyRcdHvpKFs0SI/4vz9nGMwOBxjpSB0TDZ1cJEjUR9jE
         qbi9I0VwTwwjnEPQ4tPRhstU+gWNBh8kx/aTR65n9g9wGJmCO5fgNizoI6BHexlZXoRI
         fKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765973677; x=1766578477;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TiIbU7CAhhv+5oiifZDjVX1Qm9RbZdgxoYbJ4QOuiwo=;
        b=tzvGJA0F6ZbIkVAWNavUBJJ5r4JFo1ASpskemswT8mPABsHdXXZfyIEMFol/QVQsq4
         JgPtwLH9mt/ohS0bsyDM3uCcWmGl3palwn94v1LYrBH0ky0S1ZRFoVjjuYPc0vB+PFWq
         1D05s2KXinhhOuCMw/xEkqoJr3vvJNSiJfVUUxKAXUkbjJKZqtOKL1m+EFHu+6hmqe79
         j9L6pvxYjGUfOaxjB1hrFLmIkTOdiWYB3Q5EDTBDb1yo03cWUF3K8MhYgel3oTsnVcxq
         nhpGJqcRQCkHIE1mWGunoHw9OYqKJ15TwW1K5q9t1LwB6zuHkhNPczWhUBkLlS6Sgdqf
         HZog==
X-Forwarded-Encrypted: i=1; AJvYcCWGRHT3YoIwKTQM9NiLiNYTIUVZisdnD5FooGA1CQ9KvX4dl1t5Nt86zMPyPUSWSVZw/41F0psBOYcj@vger.kernel.org
X-Gm-Message-State: AOJu0YyLoU0ukvwMo3URgitnpLrwZ1xVAmQSc2D1tmKERmeCagVCRWiQ
	q6gpV7CFbg1WtbWbxtXeZMHEoOXXjeLjYlniwovl7YOjkqk1VZIy05dPu7Wih6oUF8Gc3IUheBM
	wrvdaqexbxSh5xGSONFcFtQe9/zc51olbkTDViY/t/F5zJIWgbfLxlEJC9o/Zg3Yq
X-Gm-Gg: AY/fxX5jW8ZUOcZY3zQLQa9KXgsguqNhHsmPNUAy6aY/zEWCwXG+ZMv9Dm2IKBcFqZ9
	F67g/2mpUAUpvx3K8ZyScFuwPHlOuFdJaTw0X5attJUVst51IPYNheWYpY8Ri9ZfPb4J/eMvR8K
	hC1Z8Ikg9qPmXNr64sDBK6uyni1K0s7N8PlCBPJdSFcErUlmSNIypmr/tYSu/KHG//w6gZomruA
	dfe7J7dbicZoPfAT9Bu2/lAAgY2vvXnd//sX2Tkt055a5hPncqqFLitifuPKwQs6PA2xHajN5h2
	NxZ4p9MljzXMBYRVj64gFgMmj/jcBj2TvBbu1ISSO8T5odxNICkwMOiM7DVHMfea8waIn5XsMwa
	B61Gk8ZcEu/94EnT6fQqPJMTfQ/52boi+7rTH0+yuD3Mep4M4yZKAkXqio6c9QttuIQ==
X-Received: by 2002:a05:622a:610:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4f1d0655504mr188695401cf.11.1765973677026;
        Wed, 17 Dec 2025 04:14:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXVGpRhIxu3Mf8+ixHHNkLitg1sBzNFn+khIqfYf9Z5J9ROjGkK+V2r9lo/OeYRDeOI3YbBw==
X-Received: by 2002:a05:622a:610:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4f1d0655504mr188695061cf.11.1765973676600;
        Wed, 17 Dec 2025 04:14:36 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa2ed80dsm1945925566b.16.2025.12.17.04.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:14:36 -0800 (PST)
Message-ID: <8466d783-faf4-4b33-8822-1477cbdec288@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:14:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 9/9] arm64: dts: qcom: Add The Fairphone (Gen. 6)
To: Luca Weiss <luca.weiss@fairphone.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
 <20251210-sm7635-fp6-initial-v4-9-b05fddd8b45c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251210-sm7635-fp6-initial-v4-9-b05fddd8b45c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5NSBTYWx0ZWRfXxMX0YBDmZjE7
 RgPH3zbeTJhsCQ9RKxEbpBCoQajPHrUhHk83j+Yln2XkZh/X9IUvrI4rDz/nvsLQrqzvyKSOf2M
 /tV5HTjaXDtKhvJ94mS0JMHWlzqitBTZWN0c8N1NGhjPzmeL5kWwEDEe0LBF6EDSgQAU7WwjJPf
 v+R5ZOrm+H5miztb3Cy9uezuezw8kXY+8tRBvg/Q0xc2taCtZH1Ry6kY9arU28/a5NvQNGsXQzB
 5o/i5FvKYOjczW3pDmYIvB2MZsCDKC5692rrICPUIKpddZGROi+gvojuAWBcwniiUJdmHM3PO7+
 Cc1yDttDyZ+jqv8VMCCpJscdXtum59rEQ595ZrDd3zBGOR750zyUuJyOAh3war8Gu44uy5xFhGr
 SNDxr/cVyd/bz0PMuklUF7CCUoFmRA==
X-Proofpoint-GUID: Pb2DPeUS-zsqj96HGFrYAZp0fzaNqmyH
X-Proofpoint-ORIG-GUID: Pb2DPeUS-zsqj96HGFrYAZp0fzaNqmyH
X-Authority-Analysis: v=2.4 cv=U82fzOru c=1 sm=1 tr=0 ts=69429ead cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=deFlHvtSqnmsrBg3ijIA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170095

On 12/10/25 2:43 AM, Luca Weiss wrote:
> Add a devicetree for The Fairphone (Gen. 6) smartphone, which is based
> on the Milos/SM7635 SoC.
> 
> Supported functionality as of this initial submission:
> * Debug UART
> * Regulators (PM7550, PM8550VS, PMR735B, PM8008)
> * Remoteprocs (ADSP, CDSP, MPSS, WPSS)
> * Power Button, Volume Keys, Switch
> * PMIC-GLINK (Charger, Fuel gauge, USB-C mode switching)
> * Camera flash/torch LED
> * SD card
> * USB
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

