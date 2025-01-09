Return-Path: <devicetree+bounces-137083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE8AA07724
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2693188BBD6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF28218ADB;
	Thu,  9 Jan 2025 13:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YdGSnLKO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5A7218AB8
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736428779; cv=none; b=rTSGu7ClSH01dRbyrbFWsx4AiyHQwO5xZXyvqXCLcz3b5XUrPLEST0jJE0AgDtKkIXbgIyfcZyB97E8xyYemxQ4VirgGdlXvGIUXWzyw1aSxga7II5zYVXFIcw6l9foarvZV0DdJbRyOcBLDxm3BzkMISf2b7izYwoX3P8C0uYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736428779; c=relaxed/simple;
	bh=AYjdAEOYuPDRCWNJSOnBFlWUUzqWKjZ0mo8fUf3mMbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OmlPP89U8QzijQtUaAROVIX2i4IRzgluUZfLkIOp3VpMcZr3e/aVVGx759N2HTndJHGV2TO4pGTjdbHPhlj4zRwtdK+FudVEQSYQQmR+ttoizMwXcduk6oISRwKenw4KqW67B3tIvmXU7S8DjV1K3vlsH+CS3QEnboPrG5m9Dlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YdGSnLKO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5099Nbi5007963
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 13:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fcos2SHO3ylh+6v6GhnN1Oisu/ti+XpNhYVMWRKSLHk=; b=YdGSnLKO6VXCIH94
	0ZjB6fK6UEn4Ma4aoX2U2CpiTksmAKD+ufsTRyLezBVcTuLBpTViUziSe/60UVzA
	Gku0n6i2MPLm0BemBkKYA3FIsmPTbmUbeTUYLxDhgrpwdJhFnldyKggUOhRp4NOa
	isUF8so41gZ3isp4fGk+W/7uE8nZ+Q4bZf/8stE7qhBr4NpXYC0fMYXhgQ8yUtNV
	RY3diK/zimLaQL7FsBuCWG2cuLKf24QwkUq5Z/tKfGw+fUd9mFBk/XdhEe/Q9Ajr
	oqeal4vnGqCcEsjTRxkPGsdGiiQKj4rtOWkmmxZzrereH2KThgZVsKboHBez+rV8
	yodguA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442bsm8hn9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:19:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467a437e5feso2376781cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 05:19:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736428776; x=1737033576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fcos2SHO3ylh+6v6GhnN1Oisu/ti+XpNhYVMWRKSLHk=;
        b=uwv7T5AE5uNq1STjkxYXkFHUAR27LZkHmROw8YlszFx88tNUTVYWdMmB901jdJJnUw
         XXnfGMl9Iu6KS4xmIayE8dNHbo514WSA/LguIf7nC4feg1zcrUPilLVy0R6d2Sg4O5e6
         CPgkNv7uemqZ4L9scu2OxAULY4Lod534WFGbVXk1fRihRRqMLSv7BHupUoOnEf7+j0nU
         7HVWomGuZT6pBMjHTYUK445tbc8G0tE7Pmpdqz/HzlEo9qa3ebm10Ti1wEEvnHUSnLe9
         XBQTONBMMrguqkb+SghfYxE24SkiXNFsQylFeh/4bjXETAajUgjCFx/lXnyquZEKfCTJ
         bwvw==
X-Forwarded-Encrypted: i=1; AJvYcCX2aNUBO/N/ZhtPMZvp8vy+emVAOgu7Qo2RZJoKhp0estzHhmKq2mwnEZLtPZ/tkqJ3eR5tv6gt/51H@vger.kernel.org
X-Gm-Message-State: AOJu0YxCs4JFvsCgc+mPvjwgZnEPEAzNW9XIJgv1jgLk2zei0jtRgNBy
	d8ZauWzqaSQeyBoIrWUJgH80mKzLR5F/bwjAnmLwPbvSP1yi0/3ywEXnTzW8p7w0Q+r92LmcoRi
	B1PG7rb9h8MyLv2obp9djXTdFlOOtZ3oQjiOCqzeo6c/iZ/+mZ5gmY5+8H4NU
X-Gm-Gg: ASbGncsouw9dpx5Hk2QZOADYPaKlCUxbA55yLsvug4SFujbmrB+D5VYdmimZdz4415u
	tnC1wvfD3cpHNYCg550U3ACsIf3YFHSWs/xDIiIaq0uGCRmjnWBEajpPk7U3YWAiWgv2SHjACWS
	6KhKsLYsinopBL/QAWIv/9Fkj3qjRSwUsMzyOdRXHUY1KmiCHVdJ1dwlIwGNJaWclCzo2/boC7C
	QLlXxhcpDmVVWplSft40FuSyC3Kl4tMAjqPhCdEGYVuTVZvspDkPyTRD/TbA+kyMBCpTPFhL7Q2
	GaTWh5Yv9d0SzHgI7nplPLtQ9K2DJYEqGuo=
X-Received: by 2002:a05:622a:401a:b0:46c:78cc:e53 with SMTP id d75a77b69052e-46c78cc0f32mr24138101cf.0.1736428775878;
        Thu, 09 Jan 2025 05:19:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHe3uxKGrbYLEc68rCffIx6PrIJfHwygB8OQEV7vN9RWdcNYSGKjSw7IYaLbJUpoBaf4Idqfg==
X-Received: by 2002:a05:622a:401a:b0:46c:78cc:e53 with SMTP id d75a77b69052e-46c78cc0f32mr24137781cf.0.1736428775411;
        Thu, 09 Jan 2025 05:19:35 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c905f0c9sm73056566b.19.2025.01.09.05.19.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 05:19:34 -0800 (PST)
Message-ID: <1c27fada-e283-4058-b944-1b49f7e5d1c2@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 14:19:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] arm64: dts: qcom: x1e80100: Add ACD levels for GPU
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250109-gpu-acd-v4-0-08a5efaf4a23@quicinc.com>
 <20250109-gpu-acd-v4-6-08a5efaf4a23@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250109-gpu-acd-v4-6-08a5efaf4a23@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fllC6KXVXCpYUyX6rfSzwTqVEOSUQ9Tp
X-Proofpoint-GUID: fllC6KXVXCpYUyX6rfSzwTqVEOSUQ9Tp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 mlxlogscore=634 spamscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090106

On 8.01.2025 9:40 PM, Akhil P Oommen wrote:
> Update GPU node to include acd level values.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

