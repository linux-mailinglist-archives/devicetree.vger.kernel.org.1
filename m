Return-Path: <devicetree+bounces-243978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E09C9ED0E
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FBA63A2315
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C52AB2EA146;
	Wed,  3 Dec 2025 11:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XYuZeCjy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EU92EJEu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFEA28B415
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764760205; cv=none; b=P35tjOXzhZTkRx8FcYSZlVCpOKYm+YCuYWmPjQFOJ6oX+Jxijr+3sNks66HDz06Oc8AnfsCTOGb3+gGOu0RNSd7WCvmhSfNhNS4cEsSO5SrDn1xG6TdMcMJ3Y2nYRvohDEX1bAUeuxHRKjQW73/qevPctVZ5mqEjeLo5EIkIRDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764760205; c=relaxed/simple;
	bh=26dELx7hQJ81iqDVRsFJB+FLqmQjo9QAECziSzZ+Du8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NI9HbNYPz2OC/EtQoc1Frz54EgJNQtZKXjGEYzIuAFy7y/VVn3qCPRk40Gy0hQb4W4j+tEPQjZhbtwBsTULRSx/yrg14oTDK95TZwSfJUkoIar889aooS5rG8qSGnFP5m2cSrkoJFOrpmIxuEWhvuVmqvsdeatJ9cBFvu8HVRZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XYuZeCjy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EU92EJEu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B37YGqj1909983
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 11:10:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K0Ebiq12IvMA/z2CnFnJdLML6o1k+DWMI304jn0rS2o=; b=XYuZeCjy8AlNk+5X
	EpqDDMNdeGO/O1XtP1OfTw43BEOManYrBbUkYm6qcA2k9w5bE7wpSn4ARe+FjERJ
	zN864ANDy2Vd8GnoA6feJ0Y5Hs799QSgJGIicOGQEKylVUh2LhLNyWOEcIfn0ctC
	8cHeM1yNc+boOrVwiPhBwQyWxMBkLYgAcNHr6dlqWTvY4kPeWqAL26FBK5R8jLSh
	Lr1IGIuTRyiV6ibGRp/gMgSVYfyScqXFc5qM/DLwnlajACV1Gie0o/rq6uPhB9lY
	JiCbux6i0q9oxiEKECFxMaYBGQ/9WYgHdFY59qlP66bDIfE6TbSeheG4M9NtjdgW
	JXllmw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atgx3gq1r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:10:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b1be0fdfe1so199807285a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764760202; x=1765365002; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K0Ebiq12IvMA/z2CnFnJdLML6o1k+DWMI304jn0rS2o=;
        b=EU92EJEuGSQsk9E1TOzoXqDGyFoU5LeTl817jFtUY4nH0CLrYktclqF9h/WkxLqVaG
         pv5Hb82FW+xftNqMjChQkom2P7582s1EqYi7Wl4C+oYDG1sd3leKu6McFilIDoIqZHKA
         i5LjZLNY6cokCxUznyunUIVBC0cd7rejM2KxqADcFqZAHaEwbxJpYugXOi7cyi+K7sau
         mbV7SZG1E3AhdrHsXm3hHgKq7vPNLL8z2YO+7XfnSJhvyIX6XS90kssN5kfyw90J7BSX
         l25GsHbfP+8xv1jtinh+Q3WFHGjXMNmgxu+G0wZ0DxvqfXMdMvEEv3QrG72LknyvGn5T
         jw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764760202; x=1765365002;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K0Ebiq12IvMA/z2CnFnJdLML6o1k+DWMI304jn0rS2o=;
        b=ASO/U7jSAKZ6q8mU+jb7JaCSszWAwUQSoW8PF+66bVNUG0d8hYLep0WQ798ZbZ7kdS
         rrZVW7lyIcaW3s4UJ8GRCRgpGgTgzcG9ZLcuuqZe20nrjB90zFrVryrMFj+gdAUzwAWx
         dQqAgQ71zx+FwCEywhPD61AQeyx3dr/w7NeQcRDi2hW+4DkaNNYcFQD3T86DTxMdcU6z
         pV8SLA4lw02VokVJ8xFc3foOtOEhdFiraTAdPNOCBj9wFaFeMvHpscYR2oJYpQjYjDXg
         F64z0ULbnsyzcZEo7vKVwq6+U5le4c6p4+nIM91IEVmZnpnN3o+KFaPNrvYH/ahlwOQf
         6Lrg==
X-Forwarded-Encrypted: i=1; AJvYcCU71GlyutZAqFfz5HXhmMcu7GjIrQhCvFD9pKTMIv6htH7ofk+SuKQfZ+t5fG/Fx3+c2GLu+IavFLsj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg3cAUpGCP6FjftyZ+1yqmUyHwCLfMf69D/VBOmlT1t5RR+3du
	CbXIi+JmxTHYlNgP5tR32pey1GYZ9HH6Xc5ELZVf7Oj3qWyN2suxguU0yBbhwfJiy20QyxIqdKw
	UzsQa9+ZsAHN/aC1xWKUXL2usxaEeAMhUVaiA9coDyOuwaPzNhDRU3rWj4Qfs5eTG
X-Gm-Gg: ASbGnctkvw67prCfY5uIV6Y/Cgi2PeVgWYHN6BYnYGN10FxO3FV4MKT73JuaMVguLCS
	iTduhe6GyqzES+OSGLg8AO0Hs7/qrKl47asTm9LsBQVZLWJ5YfDAAwXNHgoLSzi9b8D2I0O+bvH
	e0nwHaeA2J2JIA7SarSOhuAVO4LHRanJWAIJ0o44NKWB2rrtQBGeFrBrhRvrIYztaQYm02TjgWW
	yyChTKnNwaPxfPMMa3BJlIvfmItRe4ld6Ufx7ZOCB8orQZj+OcYFCKNDLmW0lVay9eB3ltiVvYO
	0YgHjOKNnTNI689SZ/n7Ew3l6DD+I6z78qzbTIOesTU8zfYzG2aRNbP1aNzYbedWwt2Fiwfams5
	1QlxylzjtqjPrNLAGepTxyXb4j0w00p3xmXuAvDF8gno2StMZ8Fx5izXcCZPbotsehw==
X-Received: by 2002:a05:620a:7008:b0:8b2:5af3:7fce with SMTP id af79cd13be357-8b5f952bbb5mr69124285a.7.1764760202387;
        Wed, 03 Dec 2025 03:10:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQuWW5Ca9jqjFkOlfcYMS1YZxctEYcIqt1/v51R8Umb9p9NW8z2ejW4Ivouj2K8Ltze5CvHQ==
X-Received: by 2002:a05:620a:7008:b0:8b2:5af3:7fce with SMTP id af79cd13be357-8b5f952bbb5mr69121485a.7.1764760202010;
        Wed, 03 Dec 2025 03:10:02 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f51c6c12sm1758718366b.29.2025.12.03.03.10.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:10:01 -0800 (PST)
Message-ID: <452419d5-3b02-4107-bdc7-2d866672f437@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:09:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sm8550-hdk-rear-camera-card: rename
 supply properties
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
 <20251203040538.71119-5-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203040538.71119-5-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4OCBTYWx0ZWRfX7Fdh4UYVTmG4
 u9/oviBbEBIfGdQobvaVfmFmO28mY71yAfHrZ3/azZj4/yo9GoPNSe3ZBrTYtvN4o5WGj3d4Vnc
 1y01hE1dRw1LcZ6aCuvgkeKfjkGDaiLeojH1HqVpFdtzQzwVNxQM+5gcd/KTkLyn1eFNtRdvsfV
 d/fTqrAHYkfcDuI/vx5EikkTmxkyoUJ4XTtT41XT1+wRwz8MBKCvdBE+zC5rrZkxES1Y79Y5sZ8
 uccprdGgwClfkSTap5lzJmbD0EqCtZacuTo8F1VuKknKhMLWkDuUbnh0agAZfcRZCyJZt6gTSa+
 rSAqOR5JMfDhVg9O5CTEdJpXwStAsLJKj6BenZ5JQ+PVTuOsx5dyg8ZnJhrFwJpjBWqJN9yiQCq
 Oc/YWDK1kIJhKL4lLl8754slvw5WfA==
X-Proofpoint-GUID: mzjMKgE4vAflBlVj-K4EgsmtQkBxKYvY
X-Proofpoint-ORIG-GUID: mzjMKgE4vAflBlVj-K4EgsmtQkBxKYvY
X-Authority-Analysis: v=2.4 cv=R/QO2NRX c=1 sm=1 tr=0 ts=69301a8a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=O7eCob1Rr8zABwO4z4IA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 phishscore=0 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030088

On 12/3/25 5:05 AM, Vladimir Zapolskiy wrote:
> At first voltage supply properties of Samsung S5K3M5 image sensor got
> names following a pad name convention for Omnivision image sensors. Now
> the property names were corrected in the sensor dt bindings documentation,
> and it should be updated in the SM8550-HDK with the Rear Camera Card
> board dts file.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

