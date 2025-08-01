Return-Path: <devicetree+bounces-201305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F6FB1803C
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 12:32:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 295411C284A0
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 10:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ECA3239E7C;
	Fri,  1 Aug 2025 10:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eNKtvjkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862C922E402
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 10:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754044296; cv=none; b=qbp6mjjYwu5CwtIOAHWdaBFhmlvIQvW5rTXBEMzQ0h7/DuvmZ0IiQ3oylQocrUtZGpJQiEuoF9Iwp/TRvaiWJQTiOmiLW0R3dRNrPBnODw8Y2Uz/KAUPvULZKyDWT5lZE3T0GmUwRwB0PNcyj2+FAtm9BK6uGM8vwzwF0Nm0YcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754044296; c=relaxed/simple;
	bh=PTbICM3KD1c/dD+m/u0pUtSXhH+t/xx6pVlt+7dCQ0E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E96LMD1S8spjBJ0AaAsTXr26igtE/QNzAd+eW9DoXph49EgB8LllN/GuFyYo/BtNRanflzSsglTWaN93oMRphhJow+sQqZsmjK3uf02x9daQ8VWvl42xZWygWE5WttEqRkjnbaYvFNfktB6XRwzmdB9siux3c7WWR8nYhT+kfX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eNKtvjkd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5718l7fd018752
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 10:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iAOI0lIToQBsUNmMs7cWc7T3lg4pZZarBoVCwRquAEs=; b=eNKtvjkdSEG8Njxt
	42CIm+sYEB4KP7xN5xai1SgDtQAmT/OzYvG6B+xgcZ2Y6LGLfqil2uKir/hXVRx5
	/bvmZ5SW8mqJYWh6DkKqTx7r19qzocersKz9Daw/gSgpmdjdwzxl5OQmLdZKUHGf
	u/RydiUfEXkHinCUS1bdR9msnhPRwXE9fnToeIsIrXQN2K7GqmWBYuylksWcmPhY
	X6oHWwjYfHuR+T90eUHh2+aP/Bt2GlOeT/TuP8SjAu2uqv7XHCaZE3bDSLkPYNmm
	0rKzVbZok6spl9ZpjvJ8ubGXdLSe0rGkKxkb/pZC07z8f0V4DJK59HkGg22vb8Rh
	Xd7gHw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwgg1q7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 10:31:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4aefe21386fso1200881cf.2
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 03:31:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754044291; x=1754649091;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iAOI0lIToQBsUNmMs7cWc7T3lg4pZZarBoVCwRquAEs=;
        b=JNYN87FGK1jGzdlIP0Evb1gnggKd5V42BaPRe3zXH1QpXFu+NYCJDqRXBaxo3AvChy
         sABPGla2aFPdoyjRFTvC554jNeRG0DkRftzeW2N/i+5OukxrVBh7WkHIIk/jatC4/vpk
         JJqibXkbNXww+ZsqjkvHWiSvow29Vbk9r0DjJfKrB4ZFukv6jpLN8zfFCW/rOyfUIr/R
         9yoVNJ8oM+nYVThqKuzP0R5DE5lrudgCt1c50ckvtD9WuP5gXrUsJgRDgnR9rY+3pDKM
         V2JsiPwOEas7Gd3oZVbO5OGFWjXb02QFojnIAjLi6740PDTcRWMljfN4/xuBCm3gka5k
         boag==
X-Forwarded-Encrypted: i=1; AJvYcCUuBdOIT3SCFYyE7wIH5oFVGERUpkYW+mF8LHtUJQ2FWT18fB+C6sq4Hn28RXZ9MmuCZOBIu0HtHX3r@vger.kernel.org
X-Gm-Message-State: AOJu0YylSunnpcngjRQnKZSFeOY/a1mXd+VL30Le+e3ZAp4yxOhnHJPC
	v7WT7ZajA5oPCuQJHsvjBcTfyNwCwXlquqoXkco3zgJthHb26c7269r/q2/NH+WOBSx9e65hkpM
	qyNs6SnAaLKLtR8L/DNwc2/DeopBGlIZsYno/Hpe9kTafdT65ZxUpYmijodgjdG0s
X-Gm-Gg: ASbGncs5EUsj+2l+5bl2wRsuOGsT7VtNHkCvASR2frphsAosLOQPraQZ0NYAjpQWcBE
	x42+PMfVh9cMJqzts1fV2BE1rvo4v2bDaTJGjdsHWqS0X1bynnpikdHIY++w0GDVxl2BM4JFsUb
	rqqDF7mU87+jaLL66IoTxnebL2BxsV0W3pUze733Q1vhN9koag0lS/5oLrTBZxnkWx7oZaRcGaN
	YwRe5LwgWYfWgsB7oEc2BDnwTVzTYYlfkwUGTvuF+ttJsQy3VIx6mwB6yerTckIWBSLRN+0KP+h
	u9nx6MnPiyXlX8Z0uNBeELC/9+DPDSrREp2XtRBrkMYuhrtKn3deEJZGN/b51l8BTyr6JZXsaj6
	FdXCEZ0Dm1dD1UuWA7Q==
X-Received: by 2002:a05:622a:199d:b0:4a9:7fc9:d20d with SMTP id d75a77b69052e-4aedb96542amr77804241cf.5.1754044291334;
        Fri, 01 Aug 2025 03:31:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMBGkw0kJFBAVj6S3Vh+cLP8EoE+iTjRUAr+2UL7FVHEhgI/GeG8+ip/Jd2M6IsRnvbxbPiQ==
X-Received: by 2002:a05:622a:199d:b0:4a9:7fc9:d20d with SMTP id d75a77b69052e-4aedb96542amr77804021cf.5.1754044290720;
        Fri, 01 Aug 2025 03:31:30 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af919e96050sm267725666b.0.2025.08.01.03.31.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 03:31:30 -0700 (PDT)
Message-ID: <bceeb55c-daaf-411f-8bf9-9f2dd06527c7@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 12:31:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sdm845-oneplus: Deduplicate
 shared entries
To: Krzysztof Kozlowski <krzk@kernel.org>, david@ixit.cz,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250801-sdm845-msmid-v2-0-9f44d125ee44@ixit.cz>
 <20250801-sdm845-msmid-v2-2-9f44d125ee44@ixit.cz>
 <a51a9efb-67b1-4607-bcf3-8be70a9d1c24@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a51a9efb-67b1-4607-bcf3-8be70a9d1c24@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WvgrMcfv c=1 sm=1 tr=0 ts=688c9784 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gv1wxAXu273yGl5PTI0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: IRZkvNvN5dBlXj8DtvCyv013hUGHfCdu
X-Proofpoint-GUID: IRZkvNvN5dBlXj8DtvCyv013hUGHfCdu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA3NyBTYWx0ZWRfX84uUfwNPnn2l
 rluRn6I4tGXLOMrp6BxNR+x+LOfO9ZqwHsaPXMtA+qSKZbvHbNXlNJSlFu6btkG8qDm/loIqupE
 KdmfUV08Pmuz9DTeEtg3Hv8OmT9rz6c//V1sUIfMycknG83TjzywKD0dBIvX8kOP+2rlvX/Pg6b
 RE0BAXHyInnOTyDrY1378BCF8J04M5GyRd8J+gRiWUBY/Up1VPeDQawEcRt3auYSd8GHnGZMPiZ
 RE3uNSQ6S3sBIu0utPwiZRpkgbJFF3KamOsIzCns1KXvsizR4+EJCr9ee/rgEQnRj+k/96zX/qN
 OIA1thCje7G1pqlhWJTFXr58Qb98mmLXGp8fLfnVhEJZkf/yiW0PuXfJaS4+PtRI/IL2EEx3XOY
 x0YWmHOk8P4Xt8fN/qPiPBGKmWd3s4/lFDhSXykWZTMnsVsMndOgMzsJ7hQocCllCwHF0PTv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_03,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 spamscore=0 mlxscore=0 impostorscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=608 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010077

On 8/1/25 11:08 AM, Krzysztof Kozlowski wrote:
> On 01/08/2025 10:21, David Heidelberg via B4 Relay wrote:
>> From: David Heidelberg <david@ixit.cz>
>>
>> Use the definition for qcom,msm-id and put them into the common dtsi.
>>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
> 
> Interesting that they use same ID...

msm-id is the SoC identifier

Konrad

