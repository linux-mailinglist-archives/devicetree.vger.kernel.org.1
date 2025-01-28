Return-Path: <devicetree+bounces-141391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D6AA209A8
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 12:26:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E82D83A2949
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 694501A08AF;
	Tue, 28 Jan 2025 11:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SP9Eta+n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12F11A072C
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738063600; cv=none; b=IiTzy0ZVI8f4J1qh0bs8Se+KqiDhoUwM/dZMROA4YOb7qSpfJZZtaI2dpCOJGjuFc4dfuxy3dJzGjp8Ur53gQin7h9C8A7jb3lEoM5rrk4h1AkTlGHKlwoS65x7is/OVisoxLHijbgAFfh44a5kIGUSFpXN/j6PRlxWF5KCX9U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738063600; c=relaxed/simple;
	bh=dOoN1H6FsfncEe5JvH+mItBiiJZFYhO8jumBlOj6SLs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YH+t/FyEEKuH0mbAoRqZtoQW6+42+v8aMX+43wWyeA8xrsGtqdv6kJAXYPFcQFf+FRmyKb70zhzcm/tDAmBrrEDhY/57PAofdYrPkgpCb+0jWE2oEY7DzOxKDLgD7DpeWeryAVw85LtydUCrvp5fYiG3E2aVyfl7tOqRAWkFO4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SP9Eta+n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50SAVZXd027049
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:26:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+S/4n15YF+vLVuteKg1xzKfW19B0jPDHe/Ppx9S+E6g=; b=SP9Eta+nduAfb70T
	bkiYWR3DjAY/2PKn6/9bReWzakawRinrwcjojb19vlx59DhVqh4X5TeAdn/DZ3e9
	Li4WjwytudG2WpXi+kTvIO2Fqzn4ngrqKaYfcFJ4qjkA3IRi3XaCWVS37y2/SDCU
	jn/U2gYVMYByDJLA4y5NU4dGN+RGzUWYDS39H72TwLNra5GISyDyGSi7LPWM+xGd
	vjunKOrjI5R9GnZb/rxPi1r5MGA8l0u/m+qIxTfLDGmkzcUkSY/AcAdWFlAhPc7h
	sF2/aLDxXbiOxsgHnN30bh/8kvhWbSIzAXLucdZgMDM2rvAiCGW/0aUJHOdzz1XO
	mofd7Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ekb89af7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:26:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6e43ed084so113294585a.0
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 03:26:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738063596; x=1738668396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+S/4n15YF+vLVuteKg1xzKfW19B0jPDHe/Ppx9S+E6g=;
        b=lQMfux2OvQUNId6vrOX5ywTKARFYbJ4pcxUwZS9zvRA7vyVb7ZeEtHPKvrKH1aaKMr
         3nPByHB951bxK53Zo1b2bd+gVH5JBaeFX9en89KxFrGyzx1RENnk9NebZ1EVcK5dvzxn
         oL7gB7mmolPqZyKClHg4CN/lLIkn1kZyIOtrFyCLc4JzNER6H1q897JUdm3VfooJBQWn
         j1VewxH5Lj8GUETxf9POO89s5D5ZRbt04hNB3wj/7UDaV0+cT4YAvDLxikz6xjyd4MVC
         7MddH9vbepzqXBMMhxIdPx2UTTgKkJ3VZjPwLu05KMgzKJFEp7HPpELKNGMiCMaqiMtn
         vaAA==
X-Forwarded-Encrypted: i=1; AJvYcCUlr8kTkaH4ZIu5ULvTEX+jDyJeTzGLrr4JjmqXtOe+rTLASTGN74DC2JjlM0LaAaYPxJFqsUL+lnB4@vger.kernel.org
X-Gm-Message-State: AOJu0YzugXtFmT7C65QJf5WxFfRt9TwPcyxthw5Ab9lI75/1ARc7B22I
	uTv0ggOryHEiPiziAjwysjswFqCIYS2P9b9RcZ4dGaSFusNvJ+r/L9mN0Gz8MW6S4Y2Vm1SO6Yx
	dbEFvnajiWISKsnHahuQioVA1fbAA9EDedvoecYfP5SonQxgVQYp5HVWL3d2a
X-Gm-Gg: ASbGncs69me8ixO6JrgormVQ0OYTVe+/4demxXbiA0Myt4MRdCez/XoAKyLjBU1ym1k
	ox0bAcEKTqLuLAJpfMtl2h3Apz7uKgGKcdXp8yS9FWkSQ5BYeaJZZXjRIPGQmUmuDWGlKk5H0So
	bFz3Mm94ZP3i6aMrfwkBCNPPNBVW5x6W3Q8AApemk9dDiZB2nMkReYguPtWrzLL7WGG6emtBQqG
	kMd9u1089U34IOXJuBTBtoHf/LnBUMGRVhDNGZ2AomWocBrHdE9KLBn7oPnZ8OQEQrktEQIhcor
	4cdiccIieDguP6Fs2VSsnGxNWaGSB8iJfPrnQsAmPTKuQSFkxm3yO7ojxv0=
X-Received: by 2002:a05:620a:424f:b0:7b6:dc0f:406c with SMTP id af79cd13be357-7be631d330bmr2710921085a.2.1738063596523;
        Tue, 28 Jan 2025 03:26:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEIC9noFjSJ2CvWjxQive9gz7MmGb2ik624YqYy8TWgSNgPIPR/3aCC0pmxzOUK4QB9uZbSKQ==
X-Received: by 2002:a05:620a:424f:b0:7b6:dc0f:406c with SMTP id af79cd13be357-7be631d330bmr2710919385a.2.1738063596173;
        Tue, 28 Jan 2025 03:26:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab676116951sm752369466b.169.2025.01.28.03.26.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 03:26:35 -0800 (PST)
Message-ID: <56dfc864-9a7e-4954-a7f6-91ff6b6d05ec@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 12:26:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] dt-bindings: clock: update interconnect cells for
 ipq5424
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, bhelgaas@google.com,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250125035920.2651972-1-quic_mmanikan@quicinc.com>
 <20250125035920.2651972-3-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250125035920.2651972-3-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: QlDI_olfBjdsygEtIgd8JmMzD3TPBexX
X-Proofpoint-ORIG-GUID: QlDI_olfBjdsygEtIgd8JmMzD3TPBexX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501280088

On 25.01.2025 4:59 AM, Manikanta Mylavarapu wrote:
> Interconnect cells differ between the IPQ5332 and IPQ5424.
> Therefore, update the interconnect cells according to the SoC.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  .../devicetree/bindings/clock/qcom,ipq5332-gcc.yaml       | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq5332-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq5332-gcc.yaml
> index 1230183fc0a9..fac7922d2473 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,ipq5332-gcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,ipq5332-gcc.yaml
> @@ -35,8 +35,6 @@ properties:
>        - description: PCIE 2-lane PHY3 pipe clock source
>  
>    '#power-domain-cells': false
> -  '#interconnect-cells':
> -    const: 1
>  
>  required:
>    - compatible
> @@ -54,6 +52,9 @@ allOf:
>          clocks:
>            maxItems: 5
>  
> +        '#interconnect-cells':
> +          const: 1
> +
>    - if:
>        properties:
>          compatible:
> @@ -65,6 +66,9 @@ allOf:
>            minItems: 7
>            maxItems: 7
>  
> +        '#interconnect-cells':
> +          const: 2

Please apply some criticism to the review comments you receive.. this only
makes sense for platforms using icc-rpm or icc-rpmh.

Since this driver registers an interconnect provider through icc_clk APIs,
it explicitly uses a simple, onecell translation function to .get the nodes

Please drop this patch

Konrad

