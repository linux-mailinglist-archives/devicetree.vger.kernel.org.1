Return-Path: <devicetree+bounces-188107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3D4AE2B5B
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 21:08:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43CF118847CD
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 19:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538F626A0EA;
	Sat, 21 Jun 2025 19:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oFkJt8BA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8BB6BFC0
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 19:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750532905; cv=none; b=fT+Eb4+aji/lvTDomKRm2Jo6Bz+eh9yVWDIXLPgfc/TuEWMysTOJ5o61eqn9lo8SDMV7FStU/8/h6laB9NOv8I9ay1iFqwlkl5YOocTq1zY8E1IuuFZdB+JzpRu4oGfGfIavqqYJXCQUwH1TeN6gOr61GOCGkc8/ViVeeOE4Gyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750532905; c=relaxed/simple;
	bh=zQ4h/2CUrdyVRUmQfOnPCsgvBxmz0Y5FpfeZM6wC5HY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hjrHuF2FtSTDDCBdZV9i6O8FA/t+pLk8pxOz2rdEVe2RAm0p/nR1OIcIWujD0l3qB3H8UqHq85TfZ02G9oyshKA4eGhZ0vfNhauHus0bL5hrPKQki5tqKLOa4eaFeHDLUEE470DwU7f0aRHAssqyVeymD6mdk30JMMA2zWmfxJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oFkJt8BA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55LHrBf9012104
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 19:08:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9s7v/LrcaoIdV8Tbqub5MaDn8owWZKJzdHit4BdNhz0=; b=oFkJt8BAiuuUjci7
	xHONVfFwTZfGkZ3lv+jjQKwDvYNmN210KKxA1HEMfreMM9wuykyuaWtmfgJ8Mk60
	HmTN1Y0MX9kyIRIhISRXIswkE/3/pm/TmR3Wceoz8J6ytE4fFCL5Hklfj6ifdOSq
	FL5+EEJn0PdJPXLCYWg4j9mFnNKOUIgtY/0Mks4oCJ8rRmGrOr2Bitd3cPc9hDam
	VkLwugYK3AohhgJDtpVs0k9Lyjcx/JDnMCaYbMMse9uJmxNCG/ApeASjv24MUYZA
	2H3SpPSzrvaAZL7j3NR0O/Tm2eIs2I81ddJLRoj2zZKtgUXb/0AbxckXliLBpuge
	uj/1Mg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47dw9wrcar-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 19:08:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a5ae436badso6075391cf.2
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 12:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750532901; x=1751137701;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9s7v/LrcaoIdV8Tbqub5MaDn8owWZKJzdHit4BdNhz0=;
        b=l4dcjl8+wFGgJr8hx5prHAeo4jwn6kKg/t4HZTiMOV5GPLmEg3UdMlQFyNJIGfAWgi
         BOFrFyrYlCsrvQOYfZGnLAtvIMzoqrcgOcWlx3ClbA+RNKIAiM29rMpwm3TjupgewaDL
         SCneYywgmx/yAHq2UhJQPAy+KmWMhZiyNEHBCY62Kn+qnIQkkV7dyHMXKi5xaInPxqVv
         amaB/PpsVyQK+HU0+ht79UC5oy3vWZOcokDOUNsImGq6aTKnJpmOdTPc6x/dG1hou89k
         oA4cgw2jBrZVmJo3poRTKAb9ud+Nnf+TKQApxDb1nytsEkyv4vrk2wTCIFrlLFWrpuQ2
         2+lA==
X-Forwarded-Encrypted: i=1; AJvYcCVKMtLIXENFIFA3Y4SgWlae9rZWOYUPmWjWpUW5lOArVdQLfjQWaFGiddjp3YZaRXF08dSLnsJ+C+qw@vger.kernel.org
X-Gm-Message-State: AOJu0YxO6Gq+my3oRvuUzISAAkBfvrwpNduhhs/lqZ4/vTQ6LfXLBaLH
	1Fza6ruSHWcfsxzQ4Sm6NrC9kP0he4XtoSrc5iZT4fPvHalTWUEt5/9R3bn6HLLhoDL7ra9Q6W7
	UVTrin0y21VTSupNm5pI2F0rHG5G1EapPCZ/Erl36OPugM8WSo9BhKsi1bq3YLX/P
X-Gm-Gg: ASbGncsZGn9T+rdyRJgvBhhbT9hg9O5EVrFLsCEDE9ZEtuMw0/YCT39TnVden6zNQeo
	xzDXjTRqZBWvgv7YIE9HKrr7MRORdbSvRphHOYMmG23Dj7D+2uXAF8yYReUiyKpoS0/jm4dwVd8
	Ye9MmsrC57RCyDPCJ89eUoTW42uFo6UTxMljiMhe6HslpZ1DDDVY1bCcDVnNisG0Dzbo3VnntVC
	L9vtZl0807+R33V643qtLGf+ojza3W80pfuSaX8AKes/0yfya4/UhNKsVInR7CoGSAg9kJS2JN4
	Tp/b2OlA3D9lZZ2wIrH7qI+LUCoYgFGFNX3p73SRfD4EzjCJwTh+mSLReUs7lwyhG6d/G8b17GX
	7NiQ=
X-Received: by 2002:a05:620a:608a:b0:7d0:aafe:dd6 with SMTP id af79cd13be357-7d3f98b45efmr425049485a.1.1750532901101;
        Sat, 21 Jun 2025 12:08:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1X0z6K87eoLcHUl7ueBVsPuL3jHZlly7fdeELxmtw/OkNiKa7Lq3QXyKe4d205IAWvseYuQ==
X-Received: by 2002:a05:620a:608a:b0:7d0:aafe:dd6 with SMTP id af79cd13be357-7d3f98b45efmr425046985a.1.1750532900689;
        Sat, 21 Jun 2025 12:08:20 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a18cc09b5sm3538337a12.61.2025.06.21.12.08.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jun 2025 12:08:20 -0700 (PDT)
Message-ID: <8583223b-0318-4857-85eb-8e464ae6711c@oss.qualcomm.com>
Date: Sat, 21 Jun 2025 21:08:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845: rename DisplayPort labels
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250621-sdm845-dp-rename-v1-1-6f7f13443b43@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250621-sdm845-dp-rename-v1-1-6f7f13443b43@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dZ7ghz-Lnkm6y32p4MTRlWucGz59DILB
X-Authority-Analysis: v=2.4 cv=HcEUTjE8 c=1 sm=1 tr=0 ts=68570325 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=2zXEEYr95b8OIz_QTQwA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: dZ7ghz-Lnkm6y32p4MTRlWucGz59DILB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIxMDEyMSBTYWx0ZWRfX48Af2lMJD3uN
 p0KUyHQHNk5zNuZ1BWEEXv9Y3Faa2BH9JWvJ6r97/UR1JZ/LJ6K4KFQZLNT/EdeIe9PmQGjw7aF
 mLXeHH7oATT9MW+aUS2yY3ccmEJVw41Cwwzq4ZHYJqvKGqYmYFBKIyApTbc0eX3+t8vGbePWR2G
 rAeSrDHvRAu+SrMghUfODCehYm5Z6NqBdieudVcJuiR7386GSEhYjUL2Ueg2NRphuvqDbpz1Lkx
 yqM1WWvoY2eTUmkrNwxVMsOPimn2LqlQn94zuefGJ4wnUJpcpVjhjE8+yhSEGqLL7ywjJOgTFqR
 0Z9CMDXMl5teG4go6aQYXuq2aGWr2piUkj4m4PXiIkkfKqB5YwueQaDu1/NA9HzdP48an7ui4iR
 dt/rpIgLtBFFWFKQQMbt2IDI7Y1Vek9bqSvlKVxY7qGZOJM/mkR/yYpktnwc8pZBgC0HeZT0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-21_06,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 mlxscore=0 suspectscore=0 bulkscore=0 adultscore=0
 mlxlogscore=719 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506210121

On 6/21/25 8:20 PM, Dmitry Baryshkov wrote:
> Rename DP labels to have mdss_ prefix, so that corresponding device
> nodes are grouped together.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

