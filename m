Return-Path: <devicetree+bounces-223567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B85EBB7FE2
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 21:38:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29A1C4A850B
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 19:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B69221269;
	Fri,  3 Oct 2025 19:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T54qu9PL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E50175BF
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 19:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759520301; cv=none; b=IeXtcCSWQmQjy+uQrzTADWpImh1JHnhsX3fVhcJUhKqnfS9xJ64d0pxjA157j55vKpyRGtmeqjWsxpuyBP/i1yNkCytofttO0AYDNA750rILQl8TifUrdDePpNQoq1LgHXVoVz8vxnc1ZZ1dDEFmABgDMZ8ziME/AuKFtTcptes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759520301; c=relaxed/simple;
	bh=6PA7/gZ6w/NaM0vZU25LxZi7CVbMutYUKbETi4CKwyE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qvXZGIeuG73O1E2Z3ajm8gav0RyHfJA+dOYr31yLs7dDo7VMaMjE/caQKzNENpWYtbr1vrgK6uGt1OYdMEKUc1QzawNXc7zNxoFUg+gBTFHcKJHRubY12OG9xLJi4c01WKmmmKz7ua0dL84HnYVnSCTi7kS4N60g3/bKP3KE8oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T54qu9PL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593BnJrB017795
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 19:38:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=c/QeD1msDHzyxrlgBhbUPpRV
	r2cqluEXpYx+ZEgqG8E=; b=T54qu9PLdBEo+X3HJs2aoWSGZ7TqW0eB7ilFmhJ5
	XapBW6n0KZJ8cZ6i3VCZk2jJ6NTU91p2S+iW1L5N5Kb8RjNKJrXuLAeOFNLZ2XNl
	0t8KZ7BTlzbqKP0BYOMQwDF7vrAlP/TzHv3/KpoZLkG4/dwHdbuqUOLkMZThXfIc
	d9cA8sXENJV+34ea7aFpkkaPopjjcDIYa9jHrGtXvy53K4LzejRt6PH56iscWHwh
	Z8WlBkJkqSgRMvSjBTeSJSKejxijJNu/6TwR8rUER7LME58YG4nyX8aRuW8MFtRX
	0UxwKgltXZdjImcSxJR24TnY5MLkevMdyXJWJdVC5NB13A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fyrfdaqr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 19:38:18 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e1015c48c8so70070921cf.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 12:38:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759520298; x=1760125098;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/QeD1msDHzyxrlgBhbUPpRVr2cqluEXpYx+ZEgqG8E=;
        b=WNiC6BaCQWYJhSXwv1JyHiXMaMxwCMpMnWwn7SuhvoBImjqTc3bCjUMcaEl6xp6BYF
         Jm8ydKc7nEoWecG0XXnxFCKX9+GF5O1yDY0p7WDlgBagDOJ7CUPGKz2f0NDdGZhwY8ta
         C5cCdXeLJNgsdvkXFqbgzIkX7+9V4VtKMK0hFLnXqBjTxEBjB+NleUtn+8FHNoiIJ0pD
         CKX+mT3IneQTivySOiXsyvhl1nCm/QUOAeh/BM6nv1c1H87uf7Qb7wv4pQYzcgofhkZr
         Tu1SeVlucs75pjvdt5ef4eLRNsbll6GZ9uiNqtZmgX3fsSWGRo43yNReR9eFw+w2rF3k
         LMwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXA3jdz1g5a/QbSYqZpFfcLV2HtepU5h298wHvDbZtNaIZzH0MWiZYSjGH5gjOknTUM7JQLYMNM8taw@vger.kernel.org
X-Gm-Message-State: AOJu0YyXDUAKaout2pvVFTcDsfMblOimH1odS4xgNVEwh0MRa2mHfczB
	SVuV07Gb1zEXAHC6yHcEnOHaE7A7BYY9cHbxajaFKOXiPxebaV6klidpggO8aJ9Y3TJN9drWd6/
	hzUZeaw4UJre1Jb6n06fOcFjs9QA/+mPRt6SgPDkqaOt0PQl3w9eCUOoMJMbHUe0w
X-Gm-Gg: ASbGncsZMz3auMZLA2kO6P6dTf6QmxjtyMKvL5Vk7IwgCmWAWS4BUFT7YCVaWRuHmxh
	v6YgQeULGmc+oWkv6A6k+ZLVzmOWJNuhArNz6JEpmMoNqgErKWTf60GuC2HpdO2jGdEjtUnFtLz
	B/UQjcz6H08tRegCcEPX0yESUPRn6zjUCyKqTwWfJT4r8qF+xHR8CeSsZPTWphH6XC50oV5+0sO
	r6dmsrTfWSAM5e4RTyB3n/ZyT/Y5JVTmZZbgZ7h0N1w/Y/jj5TyldFcP0IByNvcyshmIJJsiGVQ
	mYD3r1eXIjJeWVzNowqIa9j+OEyn3SuNCWAMIuGjFdGmkpRHMxRlRTvbemiXD4ieNn+kW0pFyMP
	Z/yhWZJmi+PtmRW1smNR/TDN8IlbNA3KPH0U26u4QDIaYQdNP6db3jOxAJg==
X-Received: by 2002:ac8:574c:0:b0:4d6:c73f:de88 with SMTP id d75a77b69052e-4e5766fa419mr66221051cf.3.1759520289525;
        Fri, 03 Oct 2025 12:38:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHa6kGS9lVlPG9s/2DewNwN4ny2UeX5qnAiNzIzbVl4p+vL4Y447NPSIDi2TcL94+kOw3WYpg==
X-Received: by 2002:ac8:574c:0:b0:4d6:c73f:de88 with SMTP id d75a77b69052e-4e5766fa419mr66220391cf.3.1759520288686;
        Fri, 03 Oct 2025 12:38:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b011a7e65sm2090376e87.112.2025.10.03.12.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 12:38:06 -0700 (PDT)
Date: Fri, 3 Oct 2025 22:38:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100: Extend the gcc input
 clock list
Message-ID: <xad3x7qn6qxrnfqrhcyqkileh7efwizklmwlj4firdqpkz67em@2bcx44acnpre>
References: <20251003-topic-hamoa_gcc_usb4-v2-0-61d27a14ee65@oss.qualcomm.com>
 <20251003-topic-hamoa_gcc_usb4-v2-3-61d27a14ee65@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251003-topic-hamoa_gcc_usb4-v2-3-61d27a14ee65@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: COeOGaeUeB8Kmpshksbk-fp4NWnWy6ea
X-Proofpoint-GUID: COeOGaeUeB8Kmpshksbk-fp4NWnWy6ea
X-Authority-Analysis: v=2.4 cv=etzSD4pX c=1 sm=1 tr=0 ts=68e0262b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=AeM-GoSWWiRe9qQbtTAA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDE3NSBTYWx0ZWRfX8e5hkw1O5wMC
 oX9ycSiZgf85kUR7WomtgEekYhWdzSUPGfvMHHoiH2sauh92SIDeGecX6aI4v/JcPJzD5z9y6kx
 GD2jEV//NnxR81zQ7i8/efe2sn60G6ubiCMubTnbsBM6bZQyBbtNa0LvGmu4l3LhkdMKQpEWnj9
 qauKCMHJjv/dfrKE/O/Yh54jZrw5czIrIfLhinHJlvgxRgVhAfUUhAwme7/HAZo+z9Mvrz2xHuI
 Ocr+gsT+OHuTx1lJxUf9j8jCY2tSxM7C+gxJbQZTM6aCTwfjEboFf4TkWArnKxZHTXF/n9xP2dF
 bOcWtgpRMPqjsgNfaxqGiXZgBrhzOJyQZxQwnblTjcIrcHx3MWbe2vBptX4Kr8RtrVl8XpKGEAm
 wh7C9BIODObZ58QwrIyYiK+v4SU3EA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509290175

On Fri, Oct 03, 2025 at 08:14:40PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> With the recent dt-bindings update, the missing USB4 clocks have been
> added.
> 
> Extend the existing list to make sure the DT contains the expected
> amount of 'clocks' entries.
> 
> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 29 ++++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

