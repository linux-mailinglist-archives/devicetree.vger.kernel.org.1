Return-Path: <devicetree+bounces-157719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C16ECA61FD9
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 23:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 077E73AC775
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD5B51C84C9;
	Fri, 14 Mar 2025 22:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EGu6UviF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E3E1C6FE8
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741990097; cv=none; b=a4Lna96hz+N0ffO6RnPJ3tO4NGalqK4b0n6+Tq4f5rScFFjhC1gGEVAjtXmnYY1BYeZj/r3Ussi4V/9DVthTOrWRvWr+R/mjRzIaKSIzwxRR6wMk5SO3lDhWrD0LSRFfCOH16jweLlfeQYx3G2JlaYHRnG4LIBvlE9N9H6N+R+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741990097; c=relaxed/simple;
	bh=jp7zp0XEMKSmfDPDgt4XGymSrntAbWSW/TwBN8UaChw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=St4LlZ9me7TpHvq+e9bDq3hEulXzt3MGrYsK9wEActHQzeXW33tD18CNYyrfHJJlZQcY5hoaAuyEllPQl3kKHFi34UJzgnvxVt8exgH94CwpkkujxEPP5icdhYnMqEJc0OWuh4IciXju1aBxsmaVsKGla98Uk8N5wtdgQ1vjZT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EGu6UviF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52EL0og9023485
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:08:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hm51JlcwZKu0qNKQYJdKG1AEr0/67IevirTkdaw7cAU=; b=EGu6UviFJfIQgfJg
	lhKscTd6XjQi950aUlfQNc+1EythD3ogVJCa6kwltVNJYdaFe8pX0QiFZdSdwl01
	shdvejqodacAqNl3AmaASa6dUyeavWMg1J+r6CvNpz2ZdKxnlWSMRuQKjNryszPz
	j7BhFyuqDLFv5R7cGKgTY8NbX2frpdxz8AQfPs4FQK+y2c+V5fdhw+ih4yIjKd6R
	HH6423PnXjHolA/ogBvV9AikPGwfld1c/4Mjwz4yvf7CCyibo8AUkNtiIuuhnjKp
	nRAqH9IPFMuul/idAGLE1ovAcjFw0DF40IXg613nGTtJKeA+MF+6TWcRy+8w978F
	LlPmxg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45cjc59vam-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:08:15 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f3c21043so7402846d6.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 15:08:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741990094; x=1742594894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hm51JlcwZKu0qNKQYJdKG1AEr0/67IevirTkdaw7cAU=;
        b=G2zS7DiTI5Q/8G3wx3LdvaBida1kZ9tRb+Ki4RQ69k/6L9GyNtLP7fqlYX2uPFLq9E
         35OOr6Ly9E92tcPtpr0XIXGpDjBnTkOWfb6LZQMOgHaQVyi2YuBg6YMGINjEhaDOz7VS
         LbHSwaS/ZfvYsWvdjnRTF65LV4/wvbxyJFlMZn8OREI3mbkMm3IycEZm4C57UKe6AOzk
         kTAJCykpUlHOGwrbXCR96Bt6U/XzW7Xo2aaBCegVsNRyrZ5YfhWxbG9YbtabJD3XzQnH
         SDlDFMY3N2FHt3ILThmKCkXdVnny6xZF+sEIenKK1FibggHVzTl7JLjWaL6V2SAk4Yub
         ZKOA==
X-Forwarded-Encrypted: i=1; AJvYcCWvZdAGsv5+Dpn8MiXEpEhYQRMzNzKXovgbH051vDjMhKLXXV3YUEZnd+0cCRy/47JuQhS0yr8qgZ7K@vger.kernel.org
X-Gm-Message-State: AOJu0YzfXpR60b7O76MZwGY2C4dHEs+FBuDGx/rXkT+o05OWmqhJcR50
	h83bcWaJvaFY9HOchoLOZdan/gTvoBk4NMdc68kOcgy5xDeaQqYI4FfMPoy4A/Xjvl6+bDk7nHl
	aY1JLQK9M33DSKXH+SmnuTMYomPFVvh0ofY3AscgHH5MCMlqtwWEx9DHmqSPo
X-Gm-Gg: ASbGncsHgOWklyDDvNQfk+UcOQ9zccUrJBzbhOKn+BD+WZjrHTillD74yhyFnud/brQ
	k3fXTqMZMWlaZs9rIDjyVTGqJ41qvro2J8m+Yy/une2fCqpkJP7J52mve+incG0MDJcFvyVNLCE
	idb+VaDC8VbOJaEOMqLEzd+wH6yNy1i4c0QtDUhHKkhY3vgTU5ZrqUPqbGo97Pi8OhO2E7RDe2V
	l+0Jhi0Ig9jPcuIZyBxO9Aq6AXrLzCLloqSuH0RoDK6tqyjznkNUsKnKz6Yne9YkzCt672nNgrU
	TVnuoCCy9jLgTWjcfTmeMyelHAUR4NYT1NO4tVNANUdE2ZMUovUTrrc9POQ6IiXZxS58Yg==
X-Received: by 2002:a05:622a:1a14:b0:471:f08e:d65d with SMTP id d75a77b69052e-476c8128d1dmr20172191cf.6.1741990093988;
        Fri, 14 Mar 2025 15:08:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhj62oZ6yLYlsV/TtSfLeq7Hm5YxgXz6uSx4Btn4goF1iNBBLb+Nc1jWYJOyJzLlYR6jOkAA==
X-Received: by 2002:a05:622a:1a14:b0:471:f08e:d65d with SMTP id d75a77b69052e-476c8128d1dmr20172041cf.6.1741990093690;
        Fri, 14 Mar 2025 15:08:13 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e81692e5ebsm2396301a12.2.2025.03.14.15.08.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 15:08:13 -0700 (PDT)
Message-ID: <cddcd851-5e8c-4202-baad-e56a09d5775a@oss.qualcomm.com>
Date: Fri, 14 Mar 2025 23:08:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm6350: Add OPP table support to
 UFSHC
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
 <20250314-sm6350-ufs-things-v1-2-3600362cc52c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250314-sm6350-ufs-things-v1-2-3600362cc52c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: uDTTpKE25VwpIomMU9mtifMSrJLcuCzZ
X-Proofpoint-GUID: uDTTpKE25VwpIomMU9mtifMSrJLcuCzZ
X-Authority-Analysis: v=2.4 cv=G/kcE8k5 c=1 sm=1 tr=0 ts=67d4a8cf cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=m3AVSQT7pDQk2eD9g64A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_09,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 impostorscore=0 mlxlogscore=947 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140171

On 3/14/25 10:17 AM, Luca Weiss wrote:
> UFS host controller, when scaling gears, should choose appropriate
> performance state of RPMh power domain controller along with clock
> frequency. So let's add the OPP table support to specify both clock
> frequency and RPMh performance states replacing the old "freq-table-hz"
> property.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

[...]

> +
> +			ufs_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-50000000 {
> +					opp-hz = /bits/ 64 <50000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <37500000>,

This rate on this clk requires opp_svs (not low_svs)

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

