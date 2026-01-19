Return-Path: <devicetree+bounces-256866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B08D3A87D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20E4D30FDD24
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563783596F7;
	Mon, 19 Jan 2026 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gJjdVkzt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kh7g4VVW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0305C3587AC
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768824922; cv=none; b=eanTCXY4afom54iGBQYus6H4h7lgxX/NDPAjiBrY7Esdz44fFiD2WqrJYUXpMYkyhLSovzvSM6Fo12OBKu6X2KDkDLr5AIL4hvkNScSNRXbgvKDjfHfDPfqnrnRwDPj4iactOFMY7eAh8PG0nGioAP76TPM1d7exLpM3LBnvIGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768824922; c=relaxed/simple;
	bh=HkdPCCSHrlCBEf6K0eRLEeE5DxaLMw+XUXxKwdvl79U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TwpTcTOco/6cimJsrrX1WpNFkjgTweG7rAlKHW1b6A7xMfeD+VoY77MiIhGPsE93oZocUm/5S9OcGR1RPbqr+GHNPkE1+KnlK3wgx59XiIozoOIBzpj4cjRP2RkjARj4DbpWuHZHlwgvLx9nRa0LcNBqopHzmxdYIZSVovroKtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gJjdVkzt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kh7g4VVW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JA7YPE597706
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:15:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=c5pE1RlHEeT/iyjqk/IGza3C
	aPTZcIOlCDbIoUUgpQA=; b=gJjdVkztOHaaqLyq872u8Ov8rIXL1CPBe3uJ/3IR
	IWnKR+uMOUdc/HPFtKpPefKVicOLNcNlIfIJROtDrmS9ET1eBFx6muHibwsGlWek
	h5KarwW75g725fcFVgF3EK+3VN4jLSMFIvXxQKTA5clfbKJzgNA+DGlWHRMxdl+T
	OLN2G9Srj3pPva73Ab9wCXxisMMu2JeNUA9EeKhACnfTWX5kp0wvYVp8mUrM6Rdb
	X8h46V3GV4ISoJT2Qvz6BlqijWEaUBz/29VbtEVZNaRSDhYFtel4YwCX5N0T6ugI
	lf1liDOmq5b0j9g8WJ9yQVZT/8QEqRLwYYZKgnn2QF8COQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjk7gc4k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:15:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5014e9d9114so105254681cf.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768824919; x=1769429719; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c5pE1RlHEeT/iyjqk/IGza3CaPTZcIOlCDbIoUUgpQA=;
        b=Kh7g4VVWs7TK5AO4tt2vGj3wpL3aq245ZTUndOXwBydYspICN1+tzxw8zGb+S7w9Mx
         AkH+oW52FP0gFuAfF+q43IXk6C9mqYqaKvIbmpZPFsoK4GDNDYhe4qWh7Mdz5F4KXOPk
         a02SL6qZRYgW7sOm3L0FHa6cMByvBEwXKTGoVBUd/xq5nbB9B9ihsRHPqv4Cdys3lkua
         o9KoUAf8wpbE3B+ekFNIMf9YcjAJokGT95rAh/uWQF0TmGsKuyBZDbxVh9IOWBMeU+hU
         RybkeWJoCDZ61QIO0uqCrCZwBKSXsu6+lO/CiHC0QRYlKkjGNoIocONr2HmEgaunstkA
         xkGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768824919; x=1769429719;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c5pE1RlHEeT/iyjqk/IGza3CaPTZcIOlCDbIoUUgpQA=;
        b=hY/yNHmLifjctm9jF18hNKP2v76HaYOB1izU95JKzwhKFWfHfYUrrUN/au2s2jo6GZ
         0YsaeG1SwhKOZ8TMJI1YVqHz5YCNRsmwfDTLmfokXze/fls0Or1L4efWwNbUPvRvvWiS
         3JshhW1zARFRGL7Hkd6E0TJOEgWP6/0tPT5YyFhNPGsSOBdctlk5zj+NN0rbz3TKDOV+
         UdNd1Stxy7YNwOxUGK5e5bNMwVlEKTPtyduG2kbBj5qpvlClEmPFpANLr6JmyoXBpE24
         +lWpuWnuEatxn5BRBj8mzLMeps6CiijPlqCw5+UffIQmjNA9Pit2xuUweTgBI0odaiDA
         QKrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtXm1p2Ot94cEfjWFEe4PN8AImiThWSXfEnRMlplTo5dFpA43a/JIz0Jq+QIg+8PU6xxJY3CBjZECM@vger.kernel.org
X-Gm-Message-State: AOJu0YzFRHkHaKZsrkS4XnayXCdqP0RJrOILT/STgnHbm3ZmPFfanao6
	WW3lnAAINKQWMRlzLKGVQzk3cuVBpLmsokdH92Oj+OdOg90RBPCZZARCKD2vV5bPzZN2+YGvUDL
	Qoh6Zz/84Pdf7NSW9PR3NdNqOdZ1dWUPwRF+LaPtuzl5IxKqw1gmIdFmJaWbyH9sf
X-Gm-Gg: AY/fxX71V8SaHKl899dTyKzpWYvg+1hGAAWGgD7UVqt23+9xcSxJAEvJFFhFhGmp7Bn
	JbF54tvho3XYGYLC3p1573D4BUerIlIYakpAIy4FtK7jdtWY/6lFU6xpw2D4M9CM1TIoP4O75fE
	n9ylHgSfFKhEJQcsxOByWkzb8abrdFiFXhVhjcjW6GBC6gVb+tgkijAGhPG60iQNl51lbO+HOM7
	ebQiFlJomOmDvBAZKQ3I4I5mOvLUxgZlSjgjXCY0073WkxlmvR78tk8hYMZzF15yKUaz8zgRycy
	gBcKyVO52jL7Fg12HkLrlJaQmpN1gnkAufYPzr1N/vK7j19n7/IyqdoosBFBDKDTzPROyyvb/QC
	Hpmk239iZ5zFnPUZdnBe3bmDgut0skkpfBy09OdDW52EKg6J6OcDfmynf6ESHK5uKEPPW7rG1/n
	vglO2N1gCoJ5XjYuv/oRg6740=
X-Received: by 2002:a05:620a:28c3:b0:828:aff4:3c03 with SMTP id af79cd13be357-8c6a6789392mr1415541585a.61.1768824918873;
        Mon, 19 Jan 2026 04:15:18 -0800 (PST)
X-Received: by 2002:a05:620a:28c3:b0:828:aff4:3c03 with SMTP id af79cd13be357-8c6a6789392mr1415536985a.61.1768824918326;
        Mon, 19 Jan 2026 04:15:18 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384f86157sm31705851fa.36.2026.01.19.04.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 04:15:17 -0800 (PST)
Date: Mon, 19 Jan 2026 14:15:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: petr.hodina@protonmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-sony-xperia-tama: Add
 bluetooth
Message-ID: <x2scqtrj6sfvlotkossqlxokubuoeuycssxkkqm7ncuei46c4s@hplpveln4vqj>
References: <20260119-akatsuki-uart-v1-0-238f4da4fa56@protonmail.com>
 <20260119-akatsuki-uart-v1-2-238f4da4fa56@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119-akatsuki-uart-v1-2-238f4da4fa56@protonmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEwMSBTYWx0ZWRfX5XXX6d34GEvf
 zz5yuIBLFgAePBQH5C8FJaVPwrMz/P6v44I7VexDOjLxyKP9YPc/HOItsIO4KgaOh4kVnnzeznf
 pERNYRnaD61SZCwSRup62T9tRkhepWhMlvtZpWpxxSgtVQLYlJcqkKcHno5YksVJRw1jQSKjvsm
 lqkRYBhVRoaSu6WMxiDvcowKxRQVguBj4tdGJ3WKAB+DQoCI+xIdjTd7cwtZ/uwobcRi4YZad9v
 se+mklt/ZiH5MwhXevdpCyfr3wQnKbiRieSrPlYshFTzFiySnybvyAHaN0qNO0f4B3MC7TUCzVo
 6oxBAEAUebdmXuzfn122Ah0J0Vjz+ZR2Jo8oqvMSimLcwxKc0jrnkIl77DnrGwAXdZIuvtXdHi9
 /eTC4I3ABMSEnzT5dNiXVbJN83XK6GKFrG19X6H8eaTr+0/ryqnYWsGI0CiRwNJp9kFleJUfJaC
 U39D31vzYHzdypBhjIg==
X-Proofpoint-ORIG-GUID: 9oomFjfjVA4RZ9RVCl2aqhi46kpRc55a
X-Authority-Analysis: v=2.4 cv=WoAm8Nfv c=1 sm=1 tr=0 ts=696e2057 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8 a=kVCuoV9HowMxSFpO-lAA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: 9oomFjfjVA4RZ9RVCl2aqhi46kpRc55a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 impostorscore=0 phishscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190101

On Mon, Jan 19, 2026 at 12:58:53PM +0100, Petr Hodina via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Enable the bluetooth interface on the uart6
> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

