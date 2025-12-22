Return-Path: <devicetree+bounces-248761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C30D2CD5E8B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA102300F714
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D3E233439D;
	Mon, 22 Dec 2025 10:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LIIF8/QH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IXG2V66w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECD933375C
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398659; cv=none; b=lZf1L25YmL8hogP6nTmQ4dDqJMrK/X7omuXy80AoqbZJI4z08gaLsIfvwuY/3y+rXsvCxY4tfUaZRBhMEZ3TibaagzJu8ckuSvOnNI9mBo8+CXHEQORChjgZULgW/f89g3MGbDUJ/nRM+dFkjdmUYGXxwe68g/wGrTgCSkefvNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398659; c=relaxed/simple;
	bh=xXZbaRRaVBV4tbxkMrzlNg7kC1b4Tmotuky38v4lGTU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bENi5kMZFZm9ozc7EXe/Aruk9FRQQjwxxB6Kb+KVOVRIw0m0b8SikYNM627Jodp3SuK8YJB87A2M0gylmDFQx1wiiNiW8442lqv7rJle7uZSKXCUEtng2+Fs3ht7gk08JcJsX6I3R0EzjRArV9MrVdq+7uG0963N8P4yMwVLZU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LIIF8/QH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IXG2V66w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM9YoDH1603483
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:17:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dbj9Z2sRBrC9i4pAVSuPAM3xhIH7VjDm5nW3cIqJKlY=; b=LIIF8/QHLvcMDoO0
	rTtKyOIZTVezN/TwKYbPNEbjPD4NsBtbIMPG+vyMReSQ3wBesI22ZC+mqg7IAHVn
	OG8ng3cDXYDD6/jRjluxW7yGbNeKrN2DCqrJR7A+INsoSNSkYK72PrHEf7VM1q+m
	PE3Id84pRai2mKtdxdex8lL1XaGYh8nwkbAbGx6do/LwGdQIxeAa2Qs+QTsvvfVN
	RNm9E7n9xmuKPGaXmvd0PcJ+v2jKZxDFyLQJsURBseRfex33OJcsLr9xKSYxs1Ny
	UGJsuVjyniKYPRnHMqUG3PjMfwI8YmdnMAYrTe6l4AN5pqJYIUTlb+Dflo03Bcf1
	O15olA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b73fwr4ds-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:17:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1aba09639so11461191cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766398655; x=1767003455; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dbj9Z2sRBrC9i4pAVSuPAM3xhIH7VjDm5nW3cIqJKlY=;
        b=IXG2V66wEXiBgbAiZc9JFU17wI6691MiYVIu/bcaDQHP+SAvMZW024t9W3pWGGbmFF
         4siit1jzPFYN1Wc53Pyb1+HsRuhULembBU90bPL3zA8LeKnAA2hClp5TeeiUZ+0RPKCw
         CXfLA1qc1zl6jRIUCDYSYvDNMi4gB2Vhfq1ybPSEJO2wmDF1RXM7tQQDOewaYBC086v2
         7sIgeXlPiJ8zHbSVTjDtHBy805UzYEuMSgqjvWp63OHyEJSJEpoJe0uHVQSJLXOkkt8X
         xmI7zMl335D00D8zOFDj6C5FafJc/20SmkFqZVX6nQag8o1E927V6PzY7bgcfCbDRGhF
         DxJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398655; x=1767003455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dbj9Z2sRBrC9i4pAVSuPAM3xhIH7VjDm5nW3cIqJKlY=;
        b=VY5+IPF+ed6D/ugu9RgkFeFHppA2CQ/IDVpKZCRpzIJiumqPBCfJ+NvXwsLG9153BF
         TJ2kVSsTGJp1w3YFedmk7ivP1AZnOdxcv2CoAiY5kn8MLo8GyJCehVBViiPj2G1wxQ2u
         86nSwcOkO41CHp0nLQ+UcLewDHbNyTOuD6jopJfYfQ5tlGKSMFOoyRTntG9xZpF9eCzw
         E03681dfCTm2tiVGne590EX6HVF5vcdsXFSSxWCxwHE7Nb8VOZTyEWl6LRNSt6lpUcAp
         zkqioLeigbszj4JVBd9A9XOXYprXM6Qdiseuaxy02SCg2j+14kxPPAGHszGCFqm8GjhG
         6Eeg==
X-Forwarded-Encrypted: i=1; AJvYcCUclz0j8lAAgadcfDri9U3MpOhzR7QyUGg3pUIkt8RGOAhZ5qO5qDadGG2B3ls7jnY3KTpGQ1ZWdVoA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0ZUzyx/4skLOu/h35q2EsLBGfz2N+NmCB5uA6m1/yzhucSPmH
	1prfw5AaV67lA1Avx88VORo81EPqxc0yphoEHLjhCU+fd/zQdrzEkbivpatcePY3DlEOuYaYXBI
	4/7948eegbXbKyewWBx0OJl7BTpbJ5790fH+lzECZ4tQbxSdh1IUHYhZ9OW3DcW28
X-Gm-Gg: AY/fxX5Up+evmqXAj5tReRUu7ZzqvpPiQQeeN4bB0FOTJ7Eo0dP0ynxpyxaA8i/cNjQ
	OIq631fN5WOjj2tU/tL+zA85e0+7hdK/Ooy/JdXGVWWR3nl0g5YDVrypWEPr+qP5tx+8JZS6KYB
	r1riTyeZGndxvBijOZAUMJL+LzU5oenelDoiURWG56Ll9stJuWxD4Osni5UcpSpXZirr9OocMs9
	2Dgq06A8sPRDkD7Tu7UyOkcfp9ZokT3JK0ju0B2U1RVQatTslu4rHbPlf71jZdwaYChevrj5D6o
	lr/n1E3i2NgyOn/wpCjQSX5PubuFeRnsBUG8TosMRI4PVzL3J9L+R2xSGMJIaZ6g3ZGcuf3Pv43
	cHJ6ZpQPMcc4tbE0eZ8BHLSlGQkwHo3kGElp0Y3PwWATanIQBkvjum/f2l3EfJPXA+w==
X-Received: by 2002:a05:622a:5c8:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4f4abd173a9mr123973071cf.3.1766398654918;
        Mon, 22 Dec 2025 02:17:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFlpAk0bRbTQVcybJQgim4hONTeK4OwTpfgIKCYDa3kRmH0DDmQU9WXzXl/VS5edLANdvVztw==
X-Received: by 2002:a05:622a:5c8:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4f4abd173a9mr123972781cf.3.1766398654442;
        Mon, 22 Dec 2025 02:17:34 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a614acsm1053395766b.3.2025.12.22.02.17.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:17:34 -0800 (PST)
Message-ID: <a1cd5f1b-8b2f-4795-9878-1e61ce0aeb40@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 11:17:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: lemans-evk: Rename hd3ss3220_
 instance for primary port controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?=
 <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-4-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251220063537.3639535-4-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ELgLElZC c=1 sm=1 tr=0 ts=69491abf cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QSmBtm_2O9qDCKvZU0MA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5MyBTYWx0ZWRfXynJsCkJqsFLd
 PLwUufL1JYlRzD0zu7egdmVZUnFCrxcMFjYEWLosIqnH2E0zlWlswL/3NMGvOqdS1/2+Ykgjo12
 rcmEhmxcmQke743qMi5XgQYq1aVEmNXOdrVC8zCXFoeolL300v9bYgrmfjcyKFJ0MYSZgYZyOik
 LdNFfeZxC9T97mWi7buMnFLfYWAhKn7+USzVRSIPdU1bcWhlTfH5jUA7sVVRJFz8IIthJxOOy+q
 IQvu6M0jbwJ0aAP8JfwTdhcSt8coiyE9IbxSw7LVAIwjUidNuK3Rdmbr8Cfdi+5RUxjmpfLTmW1
 kW+5NYgwpQfW1HFttjs8ycWxcm/yIej07FAhUaPYMnKscAeZh0+0DkTZfk5wsTbKIWpPenBWjV9
 i9oq0Ef8pQ0ydONAEXAu1RawrST+KFKTfzOUPISskrMef1cVtmCwWdFwu0jiNAIn3XZ+n2K7ap/
 /CD7HDw161Lux227qOg==
X-Proofpoint-GUID: cjs_Cvu6ZmILJxYoYCph322vbPfD0Go4
X-Proofpoint-ORIG-GUID: cjs_Cvu6ZmILJxYoYCph322vbPfD0Go4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220093

On 12/20/25 7:35 AM, Swati Agarwal wrote:
> Rename the hd3ss3220_ instance to improve clarity and simplify usage when
> adding a secondary port controller.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


