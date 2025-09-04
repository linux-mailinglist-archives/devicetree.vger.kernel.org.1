Return-Path: <devicetree+bounces-212659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43288B43686
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 11:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F236D5808FF
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C06A92DCBEC;
	Thu,  4 Sep 2025 09:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IAaXnSLZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7D72D5425
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 09:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756976596; cv=none; b=rwftV/fWUjeu9pHkqDk2rEzpvOZJLj1gJW+otqaSJ7J0XJdBM/njB+oZu1FwSnXDu6ZA8VVIw3Kee2drbySu44RP/iVZGaRScVLdZkB0B4q+so5shah8GajwNnRobaulb5FuQ9ndzZ4BNtSE/615QxdKntnofHkSRKw7s6Tx2nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756976596; c=relaxed/simple;
	bh=PpYWG0Bjw7Xcz83Fr7zQIEJIntOwcuHatKNx6YBA8Rg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=hHwUC0OUA254k4bSDsH+wNmUOCcSGwoUuv3OzkYzQHo4qGqQ2kIpvdH7VSJUFOrL6qDVGEuHN6qd4RvSdGt7NoQf7B8wGLYWXL3/9mYmNyHLaR/2lGSNU4UZadhBsLpE+84Gj4gRDnjPBZ/GVMMOtf5qHdIvR29XfzIL1VgvoFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IAaXnSLZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840wP0l007654
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 09:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GOkHmK1X6utHVg6lksjhhYY3cmPafHwC8mul7BxpLiA=; b=IAaXnSLZl73fvOj7
	4OnTx8g28FrJ634V1uzwdIr13148t2fLHCp7NsmGVMQWP27gnLUrc9ECpkDbtIUG
	Q320qjCI9d2lxgnAv6hCV66I4fQPirejPeIUBBGY77EsvS0TOAjJ+t5OhMIHRfx6
	f+mnTiZUNz2nym42n7J0wxgobt7No8fdv6rNPW06brhHXpwxeE/I+2CRHzMq5ZzT
	Pj5EjPCJaE2TZVwCQGm6GPVp8oBnTkbOmgXMR5N47poN1rTkS3m+xapmEr/+MG3h
	A/X+ftgvnRYjWQZTEeewL1/m8niYhOgCQnQyrlQJ/Z/IopkRbN2mcedycnRoVgxS
	lcRh1g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wyasx0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:03:13 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso3309981cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 02:03:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756976592; x=1757581392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GOkHmK1X6utHVg6lksjhhYY3cmPafHwC8mul7BxpLiA=;
        b=TDyk9Tmdfrk+HE5zKtnWGA2SOOlHLsgcfo1k0XvCqxS07tqljqLyD9F0IcBA6AFLG1
         bY7UEpm6Zf+Jnp0IIKWOhBOrtz3F6ekcA4jUTExC9ZhUxt0yt9B82UlvrHuhcNtip1xj
         ER1xv3vtoOSIsqLO++uKXcOP+pMokB3/EcGRoFmSLI3JP3GxJ9cs2CwcXXp1mqcdpPfD
         m7ZmR8Xg3aP/m6WnKhPO1IjKplSZcBcK0TdJm281ws8AKs4JxeDCTpa8MYSltVHPXf0G
         eloVUVi8BHwqwdvbow2D1kUm9N8MW6T8c2ZK6feuHaH/hIvZRtC5KowypCPwZnFc7n42
         Fulg==
X-Forwarded-Encrypted: i=1; AJvYcCV9xAjrDMRzZ4ydMBVx9p06mIGWj6HPwk7XYMzOsvhZvW7TnyQQ6CfWfWdYeLW5iVTqt5fUZGHcgki0@vger.kernel.org
X-Gm-Message-State: AOJu0YxU1hF4JkCAmfKRUqZF3pErkG/RtRHAsk6EfxKBcpteHE1FVF/N
	OT0QuYJGTxVCCbDsD0vXuA/XC8b5jnM5jIPglErYwPTatCO4i7GnZG1HiOAk/0hHXwLI0DDryhG
	Q9rToPmbPmAjPAvgyWpZ8x7J2rMzJGgSNbrc/mEfpZqHMnLy9gIc5LjpfsZIE2Xjq
X-Gm-Gg: ASbGncv2+xDo2WOGX3HbS0MowJRJnbXZqkccWscdcCsgW5mjKJ4TmS1rJBWgmmhJuyP
	qK/mgwQQ82zi38X+KlsTHl6PCSUxQWkJNKEnzL7EZBMgC9dbo2NnObHQ5jWchi9ILjFK+U1g6xH
	Rkj0/Jg6oa+KcZ7Da7sG+xf+mbHc9J8BjLEtxEI9qbKjfQUvgVkSiGc6MLAcgBzUVg7XNrm+FkF
	x+K2J4AiAtFA5XAoiO5ZrYxeefSF9mE8MJT3z7F/i5Us87kbR0EGGMItWac+kPJmth2/ruja0J/
	+R8BFvmZez+oLY/SUFVjW3PfHNVKwljBLvBJK8ZayZVopyJjp8j7GXycc4yCphXSto+OwN/aBDh
	akKa69xsg/CCIZMJdk36pfg==
X-Received: by 2002:a05:622a:15c7:b0:4b5:d5d7:ffc7 with SMTP id d75a77b69052e-4b5d5d80f37mr20681341cf.13.1756976592335;
        Thu, 04 Sep 2025 02:03:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPxfQPnRd4aV7IvxsGAOnP8Ip3eXmSuLZ1CLc+OJVlpcJMCuVjxhIyH9GSvmMLrOySYJM5dw==
X-Received: by 2002:a05:622a:15c7:b0:4b5:d5d7:ffc7 with SMTP id d75a77b69052e-4b5d5d80f37mr20681131cf.13.1756976591919;
        Thu, 04 Sep 2025 02:03:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b042c7b3671sm951424866b.42.2025.09.04.02.03.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 02:03:11 -0700 (PDT)
Message-ID: <fc6a0a18-ea29-4588-83d6-2f162b343177@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 11:03:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: apq8016-sbc: Correct HDMI bridge
 #sound-dai-cells
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250904084421.82985-3-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250904084421.82985-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b955d1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=y9CducrL600We7hCCaYA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: oh9-lPgeq46O0q1rlw6ecNXG-WsZ5oaB
X-Proofpoint-ORIG-GUID: oh9-lPgeq46O0q1rlw6ecNXG-WsZ5oaB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX1PRpqBjCZ1gD
 VOKv68uTHEFqOhP3UhYEs+zPS5hRlb2am1aZV4R2JtMQwWkrRgVw6c3KKlY2aq5fibbfQNgleBE
 lgYHujSzsZLLHL82YPRLUlXYxRTPRuAkvoO0Y7Em3KINQ6X8KFOoKx2uNOHrNS498FHOxVWN0qc
 zwx2pViYGC+2hCyNNPg71LR7qMPXshbDVNGNM8XpBePq5FJA0/lFpZ0WcCDMdrGPuAIPrO8UuNl
 JWnUn9SQgC56DVMlgIaLrM0smBfhLA7Wpd2FbTgQCa10mY+I0Z6nD8coQTkYF5a8DGcCmAJ/RMU
 f4/+qF7Fg9nZj3NAi3hnKTGlyC4LypZ6JKoimJnlgqHZGUxDgp5QEzqKmKIZtnOGD3KT4y1vnMz
 R3XNGHik
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On 9/4/25 10:44 AM, Krzysztof Kozlowski wrote:
> HDMI bridge has only one sound DAI and bindings already expect that
> (dtbs_check):
> 
>   apq8016-sbc.dtb: bridge@39 (adi,adv7533): #sound-dai-cells: 0 was expected
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

