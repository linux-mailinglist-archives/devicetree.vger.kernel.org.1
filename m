Return-Path: <devicetree+bounces-199665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1FDB119BB
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 483FB3BEE6A
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 08:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95222BEC2F;
	Fri, 25 Jul 2025 08:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gcKJRwA6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C9D2820A4
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753431763; cv=none; b=WI6ul4xIyQVm6im2Y7zVsBcvJXdL3xE01w7Im5T56UnN5LRvfLKjNi3OTMxiQ74o5FMTeJ6jvWorV0Q3PES+ifoP0EtIFFVlB1KtoKmkq2G9rbvj8WvW0UCugPfI9XxZQ6r3dueV+iEu9mT6DP8hsJPzuMVWh4Qo6sTBCCjNo0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753431763; c=relaxed/simple;
	bh=tAq/SqO5yTKsbl8iexike5OsMdJZOe+rhnywnp60BIU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L0dYwRrf0Q3jHgSVH5W3ClFNeNREpsIXVTsK2zR47dGj3BrTHP/NUoQeyqXITNrowZVc7ADRUw3S0PW4yYBHyG4+3+YEPiKhbcvHom0wFg3b/iFx0xXxK4SXLXGmunF9NEY1YNWg3/wIPA8kyJWcqKNMVQeqwW4CWXPJr4rtH0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gcKJRwA6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OLmlTV009613
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:22:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UMDm2fXHNCh3LgW6f0uPopRqEtk82wFNcazajJLD31w=; b=gcKJRwA6ZsYKFwOW
	4HdqsjTqf9QkX6AWCa5BN5b8/J77zqjRTMo0JdtwwTlw3IFzJe0OkaWBDEiNuqhW
	WRmHcn6qk508749V/2g2L3WH3FkrDgURWp6/PlGvz3jEWYVWRcKiAZVlqZS7+RVT
	MA6xPyoAvrZ+DF9sKokE7fs4oleX8HcTR6rmoD6GwChPshBj1MPtNrAn9M2IbTpf
	G2Cx2zM8nHyOgck0xY8dWshWP5sV9zVHFNfVJ7KScgXxAQv/ggV3J0dm6PX9hdlD
	f+OpQ0QISTfMF9qm4nPtuUVyF5I932kdllYICwj40p4eCzctHmiDLB8V4txwW1nZ
	IFp+wQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2t1bwy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:22:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ae762426d8so1196801cf.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 01:22:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753431760; x=1754036560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UMDm2fXHNCh3LgW6f0uPopRqEtk82wFNcazajJLD31w=;
        b=IgHuBdSVo8YsgRSMJ3S/8EmEvlnfbe95BbUeKLbaTpkoZF899AeRnOWht0AZS2uPb9
         c1TbSlacgU2SmykRqx+boPdsHWHS8A2GHSFotpchL7aXiZgXDyiVzpryNg1zMZyz4BSf
         +9/+tFOkxma9yQoiRWsKAWKc1SsrSBaDQR3tKv+R52CM0W7kdK9ZtM90ZVzsfnAoVlvn
         nTOr2r/+j4BnfB5EhhMuS+5xjm1rM/cbElRvxPudow7IOGP0hMEHjjmoy1u/8MgGptCQ
         pM4D6D5r8lcJA3oBrqRYbTIZT2xV9biYMzd4Am5Bu2c8KHI+SO6NHpYav/jpcZdgV9SY
         5CmQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2JuadAX+RujCFvEgMdCocnOmI9IL4fVmFpCZzRkHh8AzkGcqRw9+ge16wrMPf6SzJ8RlgXhJ2cO0a@vger.kernel.org
X-Gm-Message-State: AOJu0YywAzwEFXBXITCq4f2PkDjAoAOvu4jut8ktYALvsDHjiiUWZQYZ
	pFRh6ASqQ9V2iJC5yhrGnNHb8n5QznJDQzl4EXFPHjwgRRUAJVZQNfYeKiJax57XnoicM7rYtrM
	Gklf5Ugg+ntwANTVduk3mZHio+QZ7VV9LaA+ftb4WNOXs4fMyoaPJ9lG1j46E8aRt
X-Gm-Gg: ASbGncte4EiAj6V26B4e3mgLf9xBjNRcIwiFVrqt+RGQHWwNqpxiN6swb7AUeeEPgid
	kj4YLX+Fa2qihQuMsDxmQwuoi3V9UfuBzn3fIZyDM3auhaQ/xZX4T7fCEQ9LRcTt0Lyy/ghPL+X
	TuHxGiXYWCdDRzlK64CnXZEIEx+Wy+vu6R29efHFTN9aNAeJicy1i2LxUjQG2XwpygEC69n1vCN
	XhhBEi87FkMiUC6Z+WEHpltK7RrbaxibnQw7ihb1lSlS4b2p9lHWweef1emjPJzGx17dWDuji3o
	10p0vd13z9Cl8ycqqOQ186YA0iPeLU1wCp6YbylSwwFP6Ghni32IzVDaS3gi1SpauagTAagdLfY
	/0TlOy38LyCSOV7aXrA==
X-Received: by 2002:ac8:5dd3:0:b0:4ab:67a3:ec09 with SMTP id d75a77b69052e-4ae8ef34affmr4792911cf.6.1753431760234;
        Fri, 25 Jul 2025 01:22:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuWomd2vdk9aPHDlgia6FxW++avBnZSibV7JMRZycFiIZcbVvohrAq8kSwrDLCAE+kEsk00w==
X-Received: by 2002:ac8:5dd3:0:b0:4ab:67a3:ec09 with SMTP id d75a77b69052e-4ae8ef34affmr4792791cf.6.1753431759808;
        Fri, 25 Jul 2025 01:22:39 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47cc6bdb6sm229547166b.39.2025.07.25.01.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 01:22:38 -0700 (PDT)
Message-ID: <36c8affa-336a-412d-8002-095fdf23a287@oss.qualcomm.com>
Date: Fri, 25 Jul 2025 10:22:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: use DT label for DSI outputs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250725-msm-dsi-outs-v1-1-18401fb9fc53@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250725-msm-dsi-outs-v1-1-18401fb9fc53@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BMKzrEQG c=1 sm=1 tr=0 ts=68833ed1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Yi-8vXkECB-a3imGwT4A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: -aqsJomyd4WbbC4tWLqt4AlLAhkY4AO4
X-Proofpoint-GUID: -aqsJomyd4WbbC4tWLqt4AlLAhkY4AO4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA3MCBTYWx0ZWRfXy/+5W5YVNvsA
 YLboXE5zwoNAMWR9FoilUPiUgQnyhrOAu8WB7vCxA9SoMpLoBP6IkfbvmR9bDK/X070BmluQusc
 iBkcAhhAmEfwRUvAVyxxN9edKm30JlcVN5rd/3YEHsq2GCKDSFTrxwW7nlqHlRJrjjJE+qYqT9H
 +i1cFmwcAT6IysItxBviNlgVdwGmMr6ht1ASaTonErL/tGXYSewdC8SOs6SIx4SFz1Df5K7hlBC
 LEE4VerSL/67NE0ursh/8sBBsd+nS5ohqQ83ExglL5JM2GsZPaUW9gdpOlA+zkvQD46VrkIlKaN
 21juYpOk6y8N7RSn0tguOoVfT3UZAi9TDGHrWsZkor4sQ26mvCyVQM+GjeObSqRb8anmwXb1cvn
 5eJXo6l2PR6/FkADUbGrb2yCgPeAsT619E6FI9hCfpsBlTQ8FaRbJglQxGTltMXC9C9rLR5x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 bulkscore=0 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0
 mlxlogscore=687 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250070

On 7/25/25 4:59 AM, Dmitry Baryshkov wrote:
> Instead of keeping a copy of the DT tree going down to the DSI output
> endpoint use the label to reference it directly, making DTs less
> error-prone.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts           | 12 ++++------
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts            | 12 ++++------
>  .../dts/qcom/sc7180-trogdor-quackingstick.dtsi     | 12 ++++------
>  .../boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi  | 12 ++++------
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi         | 12 ++++------
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts         | 24 +++++++-------------
>  arch/arm64/boot/dts/qcom/sdm845-mtp.dts            | 26 ++++++++--------------
>  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 12 ++++------
>  arch/arm64/boot/dts/qcom/sm8150-hdk.dts            | 24 +++++++-------------
>  arch/arm64/boot/dts/qcom/sm8350-hdk.dts            | 12 ++++------
>  .../boot/dts/qcom/sm8650-hdk-display-card.dtso     | 15 +++----------

This file becomes different after the patch, but upon manual inspection,
it comes down to a phandle index shifting around (i.e. no *real* change)

Nice cleanup

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

