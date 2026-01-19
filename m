Return-Path: <devicetree+bounces-256779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2609D3A50E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 797C530838AF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 058E7350D61;
	Mon, 19 Jan 2026 10:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KJ6EYiIB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bneaf11M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13FE30ACEB
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768818493; cv=none; b=EZghgHXnov/Lm4pAqv3MnA3dSyUS5MVV4s1bN5DQgCO6YdkY4KZLstAc7dkjHX8/T6MsCg4cEB3CasZk/FKiEkUnGMCHRQiDeaNnMoWxtHsyyR8SouYiFTWjoTfgXzXxzA+ul9h+WPD2Do+lrMDLXIWZd/Y5fboOeArPj/GXGw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768818493; c=relaxed/simple;
	bh=1TTWxLD//vavcXET3qSN3d3YFlnSmRQXg+2dMp5AMPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fl8IukrBaxD2rUi9oCalz8XQJFCSX4RBFGlq3d+sdpJ6hSBiofVNdcKHjMUPMm1gcarAlrOgHW0kfHdri0twCOQhCDvqUtr1qzpmHCwe4wYV52OoIpsCcbDcuauvXR2oT0B/0DN9yRCiwq9prSH7S/vOFSyJ6QDtw1JzTQl9EGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KJ6EYiIB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bneaf11M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J9mgFf2963081
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:28:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zgDTgsCTahWEZhB03zi/3mLe2SOyw+84BxrjADPSQeU=; b=KJ6EYiIBH9g/wBvf
	blTbe9NYeUJNfqqFVn4I9dtUNpR7ceqayuliLQUyXH+o5DhTGup2z2bKdUyb7YUr
	VQRF7Ji2GLwn4GyvBpQ/+IH1sw4NVSCHk7RqM++uUIsC511cuc3PEqodetbcst4N
	Yjk+h7qvvlzqWndVNmdn2PHY2R1FtZNMN95i8gpeTCdejeWIcT93gkT3W+naKN4p
	CdcN/Zn35rV0TtyHKHDqaFbJ89S6MS4XTJhut1/GMmLBOFTqONuoo27JCm2b5Pc1
	aK65wS0t8JJAxmuecwsyznaWBnwe6hEzz/EtEBxOfY4702nikrlcLU/7ZoAA8FQ3
	bskqtw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjaa84jv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:28:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c532029e50so148489285a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768818491; x=1769423291; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zgDTgsCTahWEZhB03zi/3mLe2SOyw+84BxrjADPSQeU=;
        b=bneaf11MsD4AxTKjXsR/L8WOZRHN5Kxpgq2iq76jzJdKuoY5rwHnj4HUOAO2OG+8Nr
         8Os7eZjFGVbW0HeM3eDZHSAjMqiEvXVNbB3jcuYHgq97yjZhA2Z9+pwhwNmpdYkO6MNN
         /8Uevkg4/rL4d4mhUYKCOotyoh5cZzjv3JpHsclS22W0c5KAdYFaX2/4adNQjuUHS4QI
         +mBu49hsNJo5h+30m+ZQT6AJZfvu7H+CKWb3tG3Kc5LA6jTZilHG5/1LgVHoKpCEofF1
         jPyAnjwZ8lqjPX5Qz3fiZWESjPaDCKAEjF29fga17t1rdvq2R61ofCw8pFqqyBIVgix8
         VMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768818491; x=1769423291;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zgDTgsCTahWEZhB03zi/3mLe2SOyw+84BxrjADPSQeU=;
        b=O/31LEoz2QMIiwZcaF9aPZ0qlCLjgQpiKOXgJZNiWMlIe7xdDP1O7U7WrENBAxFPlX
         bJloK4IzZH2tJxhdmSOQI5Tah5IIaqY0KVn0f4UAScpBUDAVa2m0EZNpjC9wceBJ1foC
         oRaBsevPdi48QiOditztaJK6f5vnvkJRSA0Xo40e2S4UhhjRNxkwBV0TORND1s+00ehY
         SLnL7GfTnG3ucz/Z7rgqFtgohYGMppZDhZXsu+SjPVMsCleltTtT3bvXd4oMmnbirbeV
         8dY77TA4NW6meITlbsiGK8tnmMjKkW5b0tkGx9Y4fGwAlZhMiQYu3paozahcxlIj+7Qt
         75AQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpySE8WyUxJ9BDvPqyvIlEZYx/VgDB/wiU8t8snfZTy1gPDbaeCNCuf/6xw5PKi3p6CvTgeYlLDn9U@vger.kernel.org
X-Gm-Message-State: AOJu0YwsHkC5nMg1MFQXQC+9xTZ7b1cHi4i2mmnbTCEmaaw3pDtv90K+
	O9PtQJEmFrvabIvM0BkfH7219CS8/QIlZC/2ffuZOXBdR6xvabn15Q6CB2fhILg0t+OY1YHDVSf
	OgY5lbZtl2FVIeGP28Ky8dQBzfm2wdutQoTtO3FmoYtEY5ck0oggH1qj5IVh/EcuH
X-Gm-Gg: AY/fxX5on8DoFb9uRoRUmxn3wLIXYny6aflfGC5NnZF95j6XWYhiWQyMk4P/V5jqe8J
	QRyyVJVe5VNvD62rlpYjAuMq/VuLn72Dtun/fXvxmeLYqiLUhbenslP+92NWVoyTHAqr6ZF1qKG
	bbMBwXbbPXkOYFDcJNLwP/QRyo1iBkP3iJApNA+IAV8bLvLbcIY5954UepG/3F8px8I0Ixm96Ct
	Eacgv9Fx69NrOEvMHvWET6NY4Pd7WXfZZuBC/d4udXwTif7oWksYDVKp7Hv2LF7rORkMkBUL/T3
	miCdTxikvh9bT65sndGgWDH0uW3sFaeTzB5CVsdwQYb5B6h93fcnCo/BnABiynjm30QlMdD8KYW
	A8UG8qu7JfmeLDFBUoI4fiK6PsOJsiAeM3Vu4FS7Tw26yluE3/we/0flRYBdvV+3QXcA=
X-Received: by 2002:a05:622a:1794:b0:4f4:b372:db38 with SMTP id d75a77b69052e-502a1603f71mr117659101cf.5.1768818491046;
        Mon, 19 Jan 2026 02:28:11 -0800 (PST)
X-Received: by 2002:a05:622a:1794:b0:4f4:b372:db38 with SMTP id d75a77b69052e-502a1603f71mr117658901cf.5.1768818490586;
        Mon, 19 Jan 2026 02:28:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452cdab55sm9920707a12.10.2026.01.19.02.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 02:28:10 -0800 (PST)
Message-ID: <9f8619d4-43ac-4bc0-9598-c498d59a27b8@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 11:28:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: clock: qcom,milos-camcc: Document
 interconnect path
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com>
 <20260116-milos-camcc-icc-v1-2-400b7fcd156a@fairphone.com>
 <20260117-efficient-fractal-sloth-aaf7c2@quoll>
 <59d9f7ff-4111-4304-a76c-40f4000545f5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <59d9f7ff-4111-4304-a76c-40f4000545f5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4NSBTYWx0ZWRfX4cFtsxah4rTc
 7vgrBAqzR/Lar6OAXVflZ9rA01hMW6Ni5Zq/HzxIUF7WNftHfL+q/EgW+NKrAfUfag81Nv3DLtv
 RGS9PPKwtfWIxaVaMAJmMSMrFnLtxnn5gIIsOzJB8mCWyZTQu6Df9y1Ptmcf4z71cHR69ChMdc0
 c/EKIrB7oE8WKKjnwhWweR1jeivDrFYnD16n/ts4AqLXfXj7igBq6mncFJmNHug/ScFCeDK9GR3
 pqKfNU3nredfeOSXT5uX5Rb6ytiqK3SzkWQxsxOmv/XpcBUT2KnzNQRM+I9NTIXAHS2+08w0i1b
 AkuHjj+4aKpQgQBde24e7QQfSHcxrwb0TWC2as9+vBnUx1rldVdsX49x9HTuqiA4DyaJEiDrMVF
 0quOHoSDuVByjHzmaunOjD+Ews92aJSSPLKcgCSoA+JiIT0eLDrMIZAlFnzmsGukyRs/t5sDeRn
 QRwajKToaqV3DOmGk8g==
X-Proofpoint-ORIG-GUID: llk0n9QA5xVglplHTBnT75G49dQcIwag
X-Proofpoint-GUID: llk0n9QA5xVglplHTBnT75G49dQcIwag
X-Authority-Analysis: v=2.4 cv=L8gQguT8 c=1 sm=1 tr=0 ts=696e073c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=RTbhy0NO0nWS4SIPpYQA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190085



On 1/19/26 11:20 AM, Konrad Dybcio wrote:
> On 1/17/26 12:46 PM, Krzysztof Kozlowski wrote:
>> On Fri, Jan 16, 2026 at 02:17:21PM +0100, Luca Weiss wrote:
>>> Document an interconnect path for camcc that's required to enable
>>> the CAMSS_TOP_GDSC power domain.
>>
>> I find it confusing. Enabling GDSC power domains is done via power
>> domains, not via interconnects. Do not represent power domains as
>> interconnects, it's something completely different.
> 
> The name of the power domains is CAMSS_TOP_GDSC (seems you misread)
> 
> For the power domain to successfully turn on, the MNoC needs to be
> turned on (empirical evidence). The way to do it is to request a
> nonzero vote on this interconnect path
> 
> (presumably because the GDSC or its invisible providers require
> something connected over that bus to carry out their enable sequences).
> 
> Taniya should be able to explain in more detail

We'd have a better chance of her responding if I didn't forget to
extend the recipient list, fixing that

Konrad

