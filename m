Return-Path: <devicetree+bounces-255981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5802D2F496
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77AF4307F712
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86A335EDC6;
	Fri, 16 Jan 2026 10:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m5BoFwLH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kej30HhF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9E035CBCA
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768558071; cv=none; b=NaFnjGKjMAGU3psTzHnA8WjG2P8MPiQhYl+BS101+aihlTVgnM6OFTKDKvF4BGKG2FbtnobHuxJ+9AxMB1AMuoPxJowqpSHTLzYupTOunI5mLEMVnNVya85LxNN94NBj510Ou7lT1VEscNJ1PqwEfh+n4Fx8uOGrdVqSfes30Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768558071; c=relaxed/simple;
	bh=vDpPl041f/I1iMmWEjgFBtF1sfEIsnwo6gBpwRcH/RE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VZTa27b4U/T/MtI10njvY90s5O46vodqXSyo2XW1ioRht/VzviXpbeNUCMb2+K6WQ7iAAU0XPdMHRI1/DWXRf+YyMa3ugG/5MMWn3ty+erD3JPuIMRfxWGPMf+T5s3NLjplKiwCwGtwipK+qH4G6YtGqf32uTDPrgrkZIDntiug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m5BoFwLH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kej30HhF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8SNZg1240899
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:07:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UQ3ilnfqSmvB3xC+tWrAFzcEml+l5XRFMGFEeRLo+JQ=; b=m5BoFwLHbwluIwbt
	ZJVAz7qbrmQSCyPOYNS79oJpdAp90QJSj1EUas0fdv5P/mk2nOJf5X6hzpAxx1Xa
	0suPQEXrZNAZyv4G/OcQP22fzdw982ay3r1PV/fbnNoP5EIkWvxPJ9WHJT0LTDSm
	OIQFzqMGP9q1NzgXqgERRpTT6Ixe7LET5gBVeBdn1uSfKQYI+CpAgcjcfAzvdd41
	PdI/dD+JWu1LTWRuwGcyfABsMUiDonKam+FL571wc9y656mTALv8bWES/XS01le8
	933vsSJ7MmamMqA+Yv7+yNilGDnbH8NwcvlPxyBfpBL96EO3Gt72rh/lv5oFNmlt
	b9Nuyg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96ssqef-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:07:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c522c44febso35098085a.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768558068; x=1769162868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UQ3ilnfqSmvB3xC+tWrAFzcEml+l5XRFMGFEeRLo+JQ=;
        b=kej30HhFPAOAxcr8DQcCYy6AnigoPnNPQdJqPNr3dR83jyH3YS4nMBu9uN/Sjtdd1T
         tU4r5ZbkT9ZTPGa0E+f1QfVsqukNTPy3OyNdDwm3OqeSlYFWK1UUMKKbimlndNiCKYq1
         QANniXdXj2Jb7FCJ9S2iuHudPMBYYTT1+NcFFmXECOlQEvetKQME8rRWAimxHMnpaOlW
         APx0Smvpmz+C7SxJiKaHlzdxa2CVSIFy8S35WqmbTvcVr5Ef1RAgmByeyAy/J4FUc+yH
         1WsbQNo5XkE/h/wfmmqci+ZZB0De1ieBdYMJyJsd0tPQw1gyHKy2vqNO1hPW8qm/aUMC
         +RmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768558068; x=1769162868;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UQ3ilnfqSmvB3xC+tWrAFzcEml+l5XRFMGFEeRLo+JQ=;
        b=BXYV10Om8lf5Wy4O6Loksa+a255CI75qQdeumWBOXW+kUG9/9fToDz0iOFkiQJGKmH
         utNM4OJMMcMigvaTjclnBc2xTJrk/s2FCj160AmKSAHuvkEcd+nOGzPKD6u5STXLuQhA
         EXQPxg1nSWWFCh0Gc42bmPX3hvlCPEdakiyVFPnpsZI9za2bW+1tesGN5vCgUYeC/Aqt
         Qu86lzu3pgx1YPm84Hvz8Y+3Ny38eABkmnFF9hJqhBaPrC5T7xaLSGHvKQAJLMhv70Tz
         Tou8zXBZci76m2hhslRywtGPKd3S6pNadQMz1cxl55ynoH9j3pWk0+Xsbrxv2djXPpJ9
         CvgQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/EeA+bbwvJOCHtCWOCFZpjMEO+FecLFMAZm+/CfBMQKBeWXNKLoN9hI6hbIy07lsjRj1EF2Amefpf@vger.kernel.org
X-Gm-Message-State: AOJu0YwV8TsydoPY3R2baJK+2B+/FZyztfkFZmxmn43UqnPeRzA7MYC3
	IBMpVYq2pFrObuk3IyH8F9Mt3GafNvQg0bbqzpb5Vjvbh2t1fNMnS9gWMQl2ugxz4GLgGkzn8yX
	Etj1HGcCVynPkd2xYP8f7KpmrHdEKiPT1xevtC2zP4yQQ/yhkuuj0itVvr1L2X7AV
X-Gm-Gg: AY/fxX7LMQzk4H5iEHSd/1I2y0vziZ21yKv/vTW/9sRxKC9Jqc4M7m1xAN5Ko0S41zC
	AaPxekAk/D7c9xLi4ylVuE0z8xbzWKetDb09ZHFPo2TKEGStD0PLDdnUwWkorbw9ageixn6WrTu
	b2RwqhyF7POPQejdcEXOq5UHcQn54h0QxJImxFE0rUId5FA563UuzedOCPbYHb8xB6Rpj2bd519
	D7Eqere+Mx4t7hiYdvI7eTeOfhL4xYv9CUe274zJ/Svn+emrvKvP+ssbQ0t+mj7mZ5xu+0m1ZCh
	wTHNwoBRFql9b5nDG28QJ1HXiYpJEuHif8sSYDaUm7A9u5kFzF8cWfRJ6q1kCjn739aCTmeb9ts
	6s/SIiHC7kPip2VqeDKwcZs5Z9UKyKQyy+G+wgusDq7lvKGU/6nzA6Pt5avx2Xn57pIc=
X-Received: by 2002:ac8:7fc8:0:b0:501:4ba0:e06a with SMTP id d75a77b69052e-502a165ca89mr27196321cf.8.1768558068506;
        Fri, 16 Jan 2026 02:07:48 -0800 (PST)
X-Received: by 2002:ac8:7fc8:0:b0:501:4ba0:e06a with SMTP id d75a77b69052e-502a165ca89mr27196171cf.8.1768558068138;
        Fri, 16 Jan 2026 02:07:48 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a350dbsm191564966b.69.2026.01.16.02.07.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 02:07:47 -0800 (PST)
Message-ID: <1fadb442-31da-4b48-8730-5f6cf5229600@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 11:07:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] arm64: dts: qcom: msm8937-xiaomi-land: correct
 wled ovp value
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260116-pmi8950-wled-v3-0-e6c93de84079@mainlining.org>
 <20260116-pmi8950-wled-v3-6-e6c93de84079@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116-pmi8950-wled-v3-6-e6c93de84079@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: vZdvrfRqjcBNrwSF_OXvyYLeh_EaTnAO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3NSBTYWx0ZWRfXwIpd4wSPVDIB
 ustFYnVkoAEFL5xFFui0MXt0BCh56xLqtFlXfbLoVyZObpab8BHVd7ab1RTeG0/iunSorOoFJ8r
 rKR1kR5rnmH9t9lyP3R7P0QZ3ZQKE38qQdCadqJaK05U4ITg9I4s77wHZRaKak2eMTbqHz9e4LS
 sJ88WD5DQ84EbUisgo7ntv3vCHelqfx62zMb0WRyGAVHr6jy4k9m5HfOf7+BFlWt73PwlEiwg6Z
 bk4m/wTDqswTX3MPvxOlKjSUbh+PMrXDZOuty6yPMwLkx0ULG3l42hy9OSr49Rsj5+q/zuGsbMU
 29nOTzUvivvi6CZUnLVu2TjQ/UQ+JipbCfiHVDeEPlbemdKw+DNb5geyKHAV7E7WMpBTL0iXAsH
 /hg31g7L7wfylCWKWONKuhjFf/qjMuABY1Vh2Ie1PnDg8RSNHlk16A86+8jF6x8s18dZ6hkhGH0
 nssBRPBIWpf2PuQBdMw==
X-Proofpoint-GUID: vZdvrfRqjcBNrwSF_OXvyYLeh_EaTnAO
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=696a0df5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=ECzvPIt7qBxGGsi-YOkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160075

On 1/16/26 8:07 AM, Barnabás Czémán wrote:
> PMI8950 doesn't actually support setting an OVP threshold value of
> 29.6 V. The closest allowed value is 29.5 V. Set that instead.
> 
> Fixes: 2144f6d57d8e ("arm64: dts: qcom: Add Xiaomi Redmi 3S")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


