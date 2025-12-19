Return-Path: <devicetree+bounces-248231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1325CD00AE
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 831EE30115E8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0AC82F7AD8;
	Fri, 19 Dec 2025 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BRjh5YLK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QOrPr52M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3712E229F
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766150663; cv=none; b=HcDgVxwTn1wHk+lyn+PSrPTe+N4TwppXJjhfFje90rNa13xsO6W86BqKTfM/07Iq418qayCkMefNsrFvx0oKvEWGqANxJ7wkWM/nAykoK+MUtZrmhdOY9goIfIujH+bA9BfVs9d0BUBLSs8aypmLJ7R+ZUvFrGbjAs+sg5pOdLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766150663; c=relaxed/simple;
	bh=O1DBKijpRZkah3PEswHdJSFmYvoIixTUjc+QtdW5NCc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jTuZDC1X5Sy0qTj8VyJdl0IvVQK1KJQVS+83S+wfK9rUi1UKwR4UNS3x9XTYRA3uDVOWHdKnp48tX50/f7FVuPNihVlcdHeJ1Ln3oDmv7z3xe4KACouo27zd2oNbvLKP/wNLm6gkE42C4DO4v6F/6Ey5y7bufH3Yn7Chz00CHF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BRjh5YLK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QOrPr52M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBTqDQ3939316
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:24:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PN0S9nUzmphwgXWKwQ35sb6kpRTq1MvBLzlcbxFESVw=; b=BRjh5YLKMdZQPrxM
	26ZE5uEgDcEq4OjT/Pwo7zXFvhjgkSqjA4eqs3eJRU/E/4nBgrrL+LVcifvKDyR0
	mKPNfisybKIdkUJ8K9QtJgLQNh9T+iRXjqIo0D7rolKnxfqXCiFTMr3XwtLzwyBj
	T5OS1IxUb/WilgQYGl1LuKqxHcec8x+7KKayuP2SLAv1oaG2QLArRC9ddjOx7nJ2
	0ac011bncACHEjLpcLrO4oZPN4SO89gZxgp9W/iDo+W2XmqNl3bGRcUcODUrDLcN
	AOAUzIriYa0HOpP2zmM1iwUyuiutg3l0eYr2sXDFCz5ScNlT37OtOabRlLE0+YAd
	qKl1PQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c2s27-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:24:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so7700431cf.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766150658; x=1766755458; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PN0S9nUzmphwgXWKwQ35sb6kpRTq1MvBLzlcbxFESVw=;
        b=QOrPr52MVAymZ8lY3cCMgROCf20gQXbqsERqXGZ4hFLMojebZI0EGJFeTc/tJPd3OA
         rU7BthO+CyioLASqgAqGXS/EL1IXPX9xZuF6lUtP/Crg83wkeMTQhJl7YhURcmRFf7+0
         IN2hDIa2/XUZcYYh0/sYp1+nUKoElgCYaOOM59MKSRhtHOqWQeQ8ZLiQKmVNa7GjdwJy
         IKuOWTNnHiboSB2wkJTQBzs6jf+Qo1W0vuP2XY1wuOAHdmHz+8osfGpEZW0JHhbBIDxp
         oV+OOK/35KBeoUIUu0C+Bqf5wtSrP+isiVLWse+5PGGEchpFZAjMzTVBFEBivFiZO4qd
         nVAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766150658; x=1766755458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PN0S9nUzmphwgXWKwQ35sb6kpRTq1MvBLzlcbxFESVw=;
        b=e1LJkzPQb/+0T28FE40w/kNW+hXdZcU+vGDPiqbc7PcqdNMkb/oXY4XjzgGkAMkiuX
         t4b9LDGMaiBPMQ7GzszeE8Dw0H16hGxTSTdS5F2vZjn50tlhw0nnduRgyelLFwtGhCYr
         BAQYGrVwOG2KrBAlqxr8Uf6tSX91uTNbDEDawy8/6dAMf2rTz65nVHZ3GP1pPWdVQQkH
         kX7huKxDfoyErQmIFkQnsJChQgN/qvNO5rcIibeA/wCC+idBF5mHr7Juehv1uy0JZ2bX
         qTCkEO1WcxRDYhny+kcZnqoBM7gEebqYJ7PBKaZXhzpnZGIBBfVm5l9TipvIVruNgYF+
         1f0g==
X-Forwarded-Encrypted: i=1; AJvYcCW4g53e6ShGP/KBnskXUbRgdrqFj5gdsGn1tiOA42gYo8FrKjIZUyVQuUj0UhgFOgd620EVOUN7duPl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1udmA4EXtXWAOf6Eh3SAuqITUxg4p2rngeC+i6CNIk7wna2xU
	U/aseGB4QkwQfXlDcVW++WmMh9rfrxCMIc8X6wVOICK41vHPhCK6EaUQ3OhVOY9xsyJrUdAr7Hk
	7G7QCUhrWXgV15dLrr6rvRJaH4ZY7UjH8Guc8rEIWJxZxNAiPQSVAPOXUxPZWc3tH
X-Gm-Gg: AY/fxX6MVP4eFb9DBoD/s7bNVY0m2hF/PRm2m8CNPxOld+OrSMMkM5/ej2cOb58drbM
	ptdgGndO4ZQ8usHAcBk0jltbj9CVMFZbwh9+QgziI7QIjaifm9WlFECEJmkzYtw6ft6Hm/jENjL
	8k8frQdngqtaqZKqgDJDKm6ILu6BxfZ/aQFmaf0OMK4PG1+DBexR++uDOxPGcFx8ZVLkUch3JEF
	gyQ5H+NBFCyMWzRvEpWWSOtOMLovEG+ZW0De6GZXiqYH8MBHN9tPLHSTsUqaf/eqAgoOUha4QtL
	9J4lXR72bL15Ry3VGthtuuYzVLkvmSYzfkKjqYDx9h4vqcuFwGdFKQAPnzERwTjnoEYAxhVF8ZG
	E2LLTaqmw9ZrIdkjeb8aLRyeTDbq4S7fQTsnzniNZ+JwbTdqLTp12YCS3OO7fWjg8NQ==
X-Received: by 2002:a05:622a:1922:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4f4b43e3a80mr8304411cf.6.1766150658015;
        Fri, 19 Dec 2025 05:24:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAQTZER8k3jrnoeKYAUlmetrYif4/iAWP+Fg9AbI7ouvR5IbKvEBKFu7XRTnkrJk4vkJn3sQ==
X-Received: by 2002:a05:622a:1922:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4f4b43e3a80mr8303891cf.6.1766150657483;
        Fri, 19 Dec 2025 05:24:17 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0b12dsm232466866b.48.2025.12.19.05.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 05:24:16 -0800 (PST)
Message-ID: <7038f5f7-e5c2-43c3-864c-e7ddd2e8c374@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 14:24:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/11] clk: qcom: dispcc: Add support for display clock
 controller Kaanapali
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-8-fb44e78f300b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125-kaanapali-mmcc-v2-v2-8-fb44e78f300b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: asUcE9q2KE8HdSKlm9yQeRAkCjSVVvrk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDExMSBTYWx0ZWRfXyixn8SX26UCD
 RudCSHDNlydYsCDrMvUssRIP+UZ4ZW7o7ERo4/AkkXP8ywdtPNewPBRctAYFI/XhR+9bJaMgFAr
 bHs647Q8WCN9L9feU4RZ1xJauPltS5loV+yC0YDtG8f+EfYOt9EetEN/2WQGks5mARqv2h8JWJc
 FXh3fUEW35uffojElgI6Mimf1UXaZAXej7Opr0i+CuVlwgxwjmAtBUFVivY5EYsIFodRbVszjrJ
 qGzJIGGclV1qADwLWeowFfRaSnIMNmvzwR7F+fJqpjwpwl5wzmUfnXjErbX1dh1MPK+kumbGC1v
 a897ljmoIvAY5rjGXLLRrWJquRDGmaBaAZyrzC/MD3s8ARksRzL75zR/9p2OpZU9d+nrr7xojZv
 jPf6WFNfGwzLtfKWTfh9hPxBY7MauZv7WOGJq3xWyvGvPJYm01f9gs4UTfbXZ6mYBy3LJPvujnU
 bvilg9SVg4GuOXS5pgw==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=69455203 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6UiOb558mQ4H2NczljUA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: asUcE9q2KE8HdSKlm9yQeRAkCjSVVvrk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_04,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190111

On 11/25/25 6:45 PM, Taniya Das wrote:
> Support the clock controller driver for Kaanapali to enable display SW to
> be able to control the clocks.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

