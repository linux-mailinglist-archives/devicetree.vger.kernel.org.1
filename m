Return-Path: <devicetree+bounces-239713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AC785C689AD
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7AE6F359B7C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C26F1329371;
	Tue, 18 Nov 2025 09:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="optTUD5u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a4/D9eqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC0B2F2610
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458781; cv=none; b=QAI2ewh/IWNELAObBZs7gEF0g5euO1mvU4jLANH12Q5XYk0TEhVRx0N5NAETQMBobGjXq6v6v3Lz65/P6xuOv7zkLaJryZ9l1omqVu4wvuKdQWkC6ycXe31HD0gqsX93Fsxq2IzcfK5f6BRoMyO8y5o+fUsFVLqkzV/3EHT0Hjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458781; c=relaxed/simple;
	bh=vd/DI9skSNB82yPFAdSPCwHHwe2VIJuiiIiMibHoT+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mmLscD5RFyEAWTb29BapWYBgGan/bMy3qtq/NaeshntZJ+oZUTO3fspTMsweMh3MgCW8fYP+Cm+P/K0nHN6Ycb/mPZjH5xtttW8RxDPvT5hzIpVpIkdesbMHI2wGfIS4M9bofi8FlwJfV4gh6mklSyqIGQdhB2T20Z3OsBqNnOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=optTUD5u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a4/D9eqx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6RrS34107474
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HVcRIuuX0FpVDOFtYtFkpiBjrnGWOGLMg+1zUM6LV10=; b=optTUD5uLQo4954s
	h4WNQDLJ70ez23SmbOUg1xqddZz1GDn6cENGgETYvufXI4JyFoO6OeiheIe1gc4k
	tv9Bk0I7hNPjvSt7EQmYqiNmmCwLj1CTqf+HgaDK9EUTqod4Vj8ibtpIlvXqT6q/
	aAqhglKmnZQ722YuaAMVmC9TBef/COw2sJqYJNVqOq/wbFCcetz+Rqj2Y4FkJkw+
	+Z2TX3WvIQqGPiVYGMTHj753rcYBpZU6+eeJlzcwCYwHzp+g3pSKcR235t+ChqG5
	bR60PmWG24MHgWOOOme6i0qckgHAJbf1kSs428NK8b9Vxye1a7RV3H2dGl6q7ytn
	vauBwg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2hpbjkb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b227a71fc6so174079685a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 01:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763458778; x=1764063578; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HVcRIuuX0FpVDOFtYtFkpiBjrnGWOGLMg+1zUM6LV10=;
        b=a4/D9eqxiPsX/1axu2lJfzJJwY0+76zPIBy4SAR+WPpGzMpH3trBUWSxrg6OlqjBN9
         LgxLUzOKy0132zYpNuwv6E4IX7a26x+bf2KURJ7+Yen9rm7Xc7GsdaZZWHG8onSGb7b4
         iNBq6iqThjEbscfbXv+RJcRL/C/ynRqxMlv2K/yM7d/kW+QgL054yBWv5eYtTQQkS+Hl
         e19iL/ybESrt0HHHYX5qPRvqRhxsNEOWV/DCfio9YdZPOTy0UZpC/HK21b29xJIPFfwW
         NfYLy+Hx07AqQ5DzpMfgdnp06Jy/4QxLhqwszz8SsLeeF3pipvoUbKzKScvl8gy0BAwx
         qEuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763458778; x=1764063578;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HVcRIuuX0FpVDOFtYtFkpiBjrnGWOGLMg+1zUM6LV10=;
        b=vMqIff219PlUCKK+RwKuuMJue8pnv43SOkn42jkKM+uXiix4u8R033LRMggevpwIiY
         pco4HC8oBXg79Niu9+XP+XGJbDpkBpHzddkGzRvBZFNwJh2+prMJp3VcyxNFqgDm6Hzh
         ZBtEzEtvHjA6AoWeB1oeTR+kHY8ER4uWADzys6KUyplpAFgrj10q+jQweW1viuShZaB8
         NTmQdnR4noRBQO+/HW1aWrHO64DoyrJn3IFd3z8w0gLj91QMA7i2l9lsPECBdIOjECh8
         miZ6lJg6rZ5wOC0He6ypeAGHXtJMWxKIJq+s1/FJHLcT0CUU+wB5fccJXKXi24hb9TE7
         AAWw==
X-Forwarded-Encrypted: i=1; AJvYcCU7BaF618qu8MuquA8QGSuTSK3WbJpJ/bV4ie8HN0Q67cjDdsJpuftdL4sOrWk+OJKFR7Syr9S8i0pv@vger.kernel.org
X-Gm-Message-State: AOJu0YxOBRwO2dcXx0qWn0BS2uTSvV/FvOw9NWSqh5M7HN9QaUzdsknG
	2ySXUzvzDM0TghdfwxGprJYYy9LhApUbWvBh1V7jJ6QnauzVJeXGqdV1DcIEwZ0QCU90Zp3BViX
	fYOfrnvE2PP0ITVym/RCLWx5LQQAJqQA4QFQyUwhHlk6m641emv4uJO023AxAPTPZ
X-Gm-Gg: ASbGncsd5CAlabWDw+EM/5/E2MKNlP2TpZJ8RZWmXIYurgGxnRmt1TtFpsQJLaxQ53+
	/u7Cg1KfzobtnC+CIa4u6nC9OV5fGGYtbx+FGLoeR0KDnd6Z0yLNb/suv/J+lAjlIvqWh0BPGz8
	dBI5rg+48AR/PIkZ2XQY0hxu0s/Xh8cps4bxZDDZeCgKempe12treXYpfW/0LRdcqsHogWmXH0d
	/TZ5+lg+sXYM+WTC6xM/hSu+gu+aSEvS1psdnSx60Nu22pZ1IM52g+U5+uSM4HxeGWbgiBsGUxR
	E3/mzwokaskrAX6YiLKjycTauMe9YpI9T9fuHMTf2VTOz4ckpNi2QSgwo8apgFMTMlWm3+0yxJ2
	MC8OuLdV7Sk9yGjxhJ5ZH5nims/157pFXOJAyzvCmg6HKB1/tJSMESb9ku54Ddz+Ph3w=
X-Received: by 2002:a05:620a:4410:b0:8a4:5856:e106 with SMTP id af79cd13be357-8b2c31314c9mr1296571485a.2.1763458777957;
        Tue, 18 Nov 2025 01:39:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGl6wK3vcB25z2nW8q84y1SB4kZapcOKClEiu4eFI86WrG0bsKvTmyoNea89AmtzxyNgBqYSw==
X-Received: by 2002:a05:620a:4410:b0:8a4:5856:e106 with SMTP id af79cd13be357-8b2c31314c9mr1296570385a.2.1763458777528;
        Tue, 18 Nov 2025 01:39:37 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734e9e0f20sm1327239366b.0.2025.11.18.01.39.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:39:36 -0800 (PST)
Message-ID: <c52b0ff7-6be4-4ae3-bad9-aa379b34715b@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 10:39:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] clk: qcom: ecpricc-qdu100: Add mem_enable_mask to
 the clock memory branch
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
 <20251118-sm8750-videocc-v2-v4-2-049882a70c9f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-2-049882a70c9f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: cyCexfWcRzDVJMh8sTKDJuR34hgu5A5a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA3NiBTYWx0ZWRfX4Di1uQLp46lw
 4l7wR2rvqXtge24NiC83he0L7xrssBwmqPkgidRx1VkR4sGUROZznr8ic5FwpRO2pA/qglzHIkd
 hfHiXlvlbhaUO/C94Y7EZqse5awP6qtS0fj9dBEZ9IhUfNjnE0eW7vT6qA5Ngf/WMUfF0i/6pT+
 8SG7mCzDDh6mNNiQHzsIdoIHb/GCrndHp0xX/tfrorY+zMig/ZS1bJ6+CSBJBXRAdzHlsuZJbFL
 6q01lajJcc3d+rUaL7b4PEcijqZCsfvVfQ7kqTm1heUoO5OSQ4ru8DfMqHakg7zHA6wwwsAx0lr
 GFrUyeJBx4EghmEU11Z4WDut1c8/fVaW3m7DF1KPvhsfaT9lfXfacUmLR3MBbpmKap1j+r6Pt3z
 xa47mbkBTJJozCtMGh3Cc5t3usnQ/w==
X-Proofpoint-ORIG-GUID: cyCexfWcRzDVJMh8sTKDJuR34hgu5A5a
X-Authority-Analysis: v=2.4 cv=Y5L1cxeN c=1 sm=1 tr=0 ts=691c3eda cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=BshmeMc5q61FwYeMDCgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180076

On 11/18/25 8:17 AM, Taniya Das wrote:
> The ECPRI clock controller’s mem_ops clocks used the mem_enable_ack_mask
> directly for both setting and polling.
> Add the newly introduced 'mem_enable_mask' to the memory control branch
> clocks of ECPRI clock controller to align to the new mem_ops handling.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

