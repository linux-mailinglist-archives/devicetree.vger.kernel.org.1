Return-Path: <devicetree+bounces-234808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C01C3104D
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:37:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9C75D4EC03F
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6222EBDD9;
	Tue,  4 Nov 2025 12:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hjuGDS69";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="avMRRgJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322A72EB87C
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762259811; cv=none; b=qVDZmJ85l7zMr4SjcY68G0cIif6/0jLQUaUtmF8RnhjoFjgW4kJ6Q92npwqlrNpeS/6fweLei56gDPGVYwmZb2Zkvqt0sH7lFh9bHpYBM5uQUZYvoBau5cBYYOskuxhcAaortOLy7eXEVfj1QHklFHS5mr4T9Fv2fnicIrtpg0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762259811; c=relaxed/simple;
	bh=MKPjX0L8WrcR+INRuFdC1ttAlo+vyzbZXTNOgiAExVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L8MkgoBfZqw07ECkzscP7snBpI5D4S0dVM9wUhl7j5OJ59VlJREF+DL+CdmUxMMcKYL/mxc8sUmh13cAyU1FgIV9Ss3w4BDbIru3iuGl3lEXKhi1ikuuQRSvhm4rjx9MCQIDmlEuHEMqJ43lUgxaNmgFixr0pgBRGAVGQ1LaXaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hjuGDS69; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=avMRRgJ7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4CGUXn1933944
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 12:36:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8LpgcQHoTetYhZVAG0Kcq0k1eZLVh7h9jjjApr9iBmQ=; b=hjuGDS69DURgF9Zn
	huFkMJ74eyqg3+ue25UgM5CjFhczKD+hhfnzPBLeJJScvsOJ7IF3aGymdYss1VBZ
	dxunKBm3fqkCN7Orus5nqAVcXRJU4M9g9zHUVQCleqwQFuOFdFQoa1V8s0spY4J7
	s6q8N8xY6g2KUnamBQn5BdAi0sgjRn/tiNkiIfgYk1LNVDCE8n71FlnmQVgwp6od
	hSyRbDic5qdSOoArpWFbjCgwWdxuSLo0jUzaoYyvnTw2V9saXes47lrEJQgWiJfG
	485GhHPB3UniGA+/LQBYX+VsJHceM8O76hsC31q/Mn09yH1SgXEZtSTZ7KMEFk4G
	pDkYSA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7hbjr1jj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 12:36:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e56b12ea56so14464051cf.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762259806; x=1762864606; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8LpgcQHoTetYhZVAG0Kcq0k1eZLVh7h9jjjApr9iBmQ=;
        b=avMRRgJ7YsaGW9bQPnLPYV/n5103crwEo4gFVTLibr4BLWcJXh5VB1LZWZsYVkv1dB
         vzqvgUo+ywb9B2+ExrIuDmESxLXN+gIO8cK7Jqnv16IXbam5fQL7qCiOeQlbLYE051mc
         bOcJPzxclb2ZiohvTo0UaIBDeMW1k2Rd1qMFNRSdMHABw903nLnrboGM62GcBBR3HcVY
         qA10CYk3ymYuygjLXEMy6iW250bXv8/7aBBvmSYUgt8xE3x7vbF+zoPI3pbLf2wTNEKS
         5la34xKrpX31wRNE+8F0aTv+ddSPA4gur7kYOmooQ2kS+TQujIXJw60DVdiMnUneWoY2
         EpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762259806; x=1762864606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8LpgcQHoTetYhZVAG0Kcq0k1eZLVh7h9jjjApr9iBmQ=;
        b=k+G3gY7b2EbbYlyzdRdZLRc/RH1nzVjZHbUocZEw0QXj1zToUbI85rZCDSlk56IlKA
         lVejmduDtPTmMDqWxR2DDiYHKyd01O/EPJiAKo4q2cZ1afWKYvuvqZv9jXB8t/pSlON7
         MiSBWsv6Vw1H0wyTWzpBRdwfen4JZ+Zi+0a+p7VSFn/lj3PzypO2zYsGhnRn9uPn6OIP
         ysY48A6vQZth9x5ORvripPuODaHrDXLKXtxrw2VDcL9qkUZgTKhZ1tgy/bgmEK2wo6/c
         F6l6VmUmssKDtmg6wR6FjC1aB/XzBncGlSwqfouzz3CbIJKsctB8fPWqg65XHxRY6m8E
         YCbw==
X-Forwarded-Encrypted: i=1; AJvYcCUvmtP3UtP+NNZQJhFZnDqPdfW8/g6+aQB4ve8XQ2gbGhOZmY7lTq+OAGDUTPPg317LHMEqcbkrwWgs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3ywjMoXB/homxxm+ENJSi6NyQq1TlC5nr6z7sRD9wEy/dlr95
	YW9I4njiZGgGsmke4j93NrN47y67WiTSxhD9FXdDjt5DIN1uyfRIRHbIFZSMUnl44FD8Ossxbup
	cGVX066+g8ehRhKDq2ZqjD+c7laTMQTs2ceMkK38SsIbU/gm5tBWjoQd24ZPWpFvK
X-Gm-Gg: ASbGncuZyfyhDEHtfMQBwjtcUihTZc6LpC4s3QvmGK2xJraSKCffFmGctALvjNneA3M
	kUmgHtqbB8dELFqrqVPv3jCQ0N2k6WKTYe3COCakVmkJL675aBKMbdwdfZKYk/TjV2rGcQQwknl
	jV5zkQV+NJ0nRU8aQmS43hcfwUEejs8H6vYMRnZsR54FDiKeBn3Ec2lMNn/GXe5N7GPE3dyrQai
	68MrTSu7S/7Gj1NFk0WRUbXqmfWKs6nO3LoxpYEPjtVIlWMVahAPeTV3uamG/KuPUQtVvbzC82f
	akJaVht8Lb64MqnwzRKRQEH/1+fIwlPdbZGpxxPYDw1j901w3Vx1BPUzE01QGu5D4TCXAjmsxJw
	usQwkOiTeW2m5a4McN4bz1c7kNhpM/d6h4QBi6sk+RAsa0YoQTidnVjYU
X-Received: by 2002:a05:622a:835c:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4ed30f7f5bbmr116285211cf.9.1762259805560;
        Tue, 04 Nov 2025 04:36:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEUAyPDC5PYSrO2dIUFKmMLfBGLJx0+GvE6FlrR1aAei3V/LH//k/NgfbMKws7RxoHkAawXJw==
X-Received: by 2002:a05:622a:835c:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4ed30f7f5bbmr116285021cf.9.1762259805046;
        Tue, 04 Nov 2025 04:36:45 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d6f28d0sm210833366b.16.2025.11.04.04.36.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 04:36:44 -0800 (PST)
Message-ID: <70c2f5ba-df98-4ec0-a420-915bbc65eaef@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 13:36:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC] arm64: dts: qcom: x1e80100: Fix USB combo PHYs SS1
 and SS2 ref clocks
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251103-dts-qcom-x1e80100-fix-combo-ref-clks-v1-1-f395ec3cb7e8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251103-dts-qcom-x1e80100-fix-combo-ref-clks-v1-1-f395ec3cb7e8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Uv5u9uwB c=1 sm=1 tr=0 ts=6909f35f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=hWDvCZeVexTezMgbMN8A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: hFLrG_Bi0OfuN2dpeQ7lylN35uq4QOv2
X-Proofpoint-GUID: hFLrG_Bi0OfuN2dpeQ7lylN35uq4QOv2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEwNCBTYWx0ZWRfX6L/b1NKsF7jT
 AEmh41Wl4fWAEwpu9ZydbKiE0lkQmnRm8h32G7XLZE6ttecf7Wccw08LgsCPnYnb87ajbJOlwhI
 n6grIGGHL1wZYtdWb5nLsBIJTxG7Ax7gJJwULN3cCb9dfiS1jktjkBr3iZyWItrrwW+QeNeKC49
 sNS6/qU9AadkEX/s9zqFqmMDEjn5PEFBTqfP98quFR82BeN/5B8cJolTFLaO7Xi4UsqV1p9zCS7
 EKLKtuZMYqJfKJkZDbw5L0eRY5fjIaxXcN3riDxZolx/DeBY32NDDD34dWzm8hkWblA71/UpslB
 7ZlKgC6Ls7Iq2Ul8qW7Pl4cCNSjjOBzkk59UXq6yslbnrIxQ0tVeatDKX8Ii2Q1G+uAmsCAfY+0
 XhdL8SZgOdxSTOF+ceVDh5om46msaA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 clxscore=1015 adultscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040104

On 11/3/25 5:51 PM, Abel Vesa wrote:
> It seems the USB combo SS1 and SS2 ref clocks have another gate, unlike
> the SS0. These gates are part of the TCSR clock controller.

FWIW this is a conscious design choice

> 
> At least on Dell XPS 13 (9345), if the ref clock provided by the TCSR
> clock controller for SS1 PHY is disabled on the clk_disable_unused late
> initcall, the PHY fails to initialize. It doesn't happen on the SS0 PHY
> and the SS2 is not used on this device.
> 
> This doesn't seem to be a problem on CRD though. It might be that the
> RPMh has a vote for it from some other consumer and does not actually
> disable it when ther kernel drops its vote.
> 
> Either way, these TCSR provided clocks seem to be the correct ones for
> the SS1 and SS2, so use them instead.
> 
> Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

