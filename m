Return-Path: <devicetree+bounces-226398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF57BD84A7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:53:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C305A3A4131
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 08:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 546442DC785;
	Tue, 14 Oct 2025 08:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kTIbnxel"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47702D3EF1
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760432018; cv=none; b=MUGc33H6hS+0VytdLpmcrHtuRf7aIF35njNyI7+XdXMokXZsHwWLTtRB2rUNf8/RoJ7rGbMDt6X5zrgCldwmGMgSpd9qTUIRaMsYZ4vqO2H5PDnBPwcsTAd+FblpdS5yDQGupVUC/hndqxIicblqw/iImS1wvxILUNSwS7FESKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760432018; c=relaxed/simple;
	bh=ixb/fdiw8StgSMnPp3lrzYkEhBChXbenwOwYOc+9cJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CDA06nLMfB8+mUtZ3YzkSaYYrYxHPx78uybyUJe9cAC5tF8JYJopE1XFwK5m4abs9UPtsD8OPe/QDhZBCRHL1VFW/gG9Ti4vARZBjBZ/E3Ut9KLRSWQ6GBsRYjMp5bliVS9QCRNUhwhtlpwm690hWqkUsia42OQ3+YM+S4mmKt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kTIbnxel; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87Hw6005372
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:53:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yu6GxXvjzVdp0jD9TyFSB0cQTPVuV4yy/C3ICodMY8c=; b=kTIbnxelhGa2sVP3
	boJK3HyeqmX/0HOgmXYWMij4nlauwxuwRmcj0aAOZC4nC4JsZAFPBu3yvdYA6Gjl
	aJPSbjTRO5XYviCOe3d/StKOp4eBS4kFaxp8IpxTRPa9EkjQhRE97dB3bco2DMyy
	ExLDNvHIFyeDsenozVaaiXx8hbeOVQkVIE+06H8xn0QlAnPwUFvtvhDDXpzbJJUQ
	RES2xTPr6phcaIik9jHxJXDZ694LxbumoYb98FK4U+Y6oFD4smz72AGvwcXiFbD2
	WD+GJ8WUBOOrW0qJQc2Wn1Tv9xMjgxPvsZtyrVRg2G5DU5HoODBTW92jlmzk1aSw
	ffoEog==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbhysvw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:53:35 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-860fe46b4easo287819685a.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:53:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760432014; x=1761036814;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yu6GxXvjzVdp0jD9TyFSB0cQTPVuV4yy/C3ICodMY8c=;
        b=WBCMzTFoecg78M/fdiiF1lJhhC20fe6qp6+7NiqQc6608aQwoIirq+gPmFxUmL/0Id
         t1tMd6gi4bwBC5I9PJ/gabwsHmTiTQ8CmHhgD1LQc1YCXj83S1t0q918RAWbE5kGlDkU
         5PGY2sQrkbdSXiB4r7nbMjM02wRdFroqai53cw2h6hWxxsA528bhGiJzPLPmCw8kvDcQ
         eYzRvU0J2KjmzmYVWMAsjLBs+kYhc+d0tgC+yoDvkpiFTkQlVbkgHwInAajtqVP2iSl2
         1Jzy6xQzmdrNlciTIa0VMfOkIXCkdzdebqgpMCG44slwQEsk6p5ScVnir5CYM1iv7u5Q
         i48w==
X-Forwarded-Encrypted: i=1; AJvYcCWQhnrrNNk+Q0k3SdfDgobBY5lB/QVmVHKQ8DFTlB53PYnAZZ6fWtdBsL35DyuTjk0WETw77mjTJqpj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5T+U/eEAweNxY6OmVj+WeCBUgmWrYZEtrDuHepX7kUHSMfMO2
	S1O8GYbB9f6UEJkK/+Xpf7TtYXpsT+XsfXBVDxfdDv6MVG1o4/hbSUiSCVvjdz1jFXGVJbKL7Yr
	K5sTd44lvLz6WjdPTJcZLWED9xYLXjb8ha95RBY/daH3su3fJddyi2UjBAX2/ekBv
X-Gm-Gg: ASbGnctXRHCQQZQcePZRNWKJ2C3GSE8Mqe34xJxFc113R6Ww2VP3/ZgPj8tVTRbaF8y
	fbg/qwSXCZnvNaP5LnvBC2t0PQXvRK9D8dV9kPyJqMLoj4FsaExMhuGqVTAkNSGgHeABBlM+R+S
	GbH5rAR5xDHeVnelB3G5Txb1Y4nfY9MjehhuewWI8pvmCxFvpYkuIFdDqQH4NeNgXvez7rzxkGD
	6O8L6XSoT4GG9d6dr3S/Pd9YBj4fEnK7hB9bIe58Lu/8FuOaTK+xZZ4KmRokG5aprVBM8gZ49lQ
	JG5GJAdQtQq0bcBTj4v18hyUnpycfntg/DAH4I4uLbtW+O68uXWgZao5N9WZj1y3s7yYAFceNRR
	91nCWgJVi1j1lCdvRXd8J4A==
X-Received: by 2002:a05:620a:372c:b0:86b:12e2:28d1 with SMTP id af79cd13be357-88352d954aemr2148349285a.7.1760432014521;
        Tue, 14 Oct 2025 01:53:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGm4ixM4YDDyNB4X3gy92GuzgILUxOgPYXhz9lsuSEFNcMwwXiOp3PYD1SDSeDU0RrlNXPctQ==
X-Received: by 2002:a05:620a:372c:b0:86b:12e2:28d1 with SMTP id af79cd13be357-88352d954aemr2148348085a.7.1760432014042;
        Tue, 14 Oct 2025 01:53:34 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c12b4csm1136163866b.56.2025.10.14.01.53.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 01:53:33 -0700 (PDT)
Message-ID: <40a9643d-01b3-434d-9163-da35c2e469b4@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 10:53:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: qcs8300: add Display Serial
 Interface device nodes
To: Ayushi Makhija <quic_amakhija@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
References: <20251006013924.1114833-1-quic_amakhija@quicinc.com>
 <20251006013924.1114833-7-quic_amakhija@quicinc.com>
 <fsqytqhe72bgmloyzm6khoprq6bysf52ufz6oi6epos7uadyho@wg4rxs6f2xyl>
 <374098ea-23f1-4d1a-8f70-313a7e384f8d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <374098ea-23f1-4d1a-8f70-313a7e384f8d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXwC1ZpRfeyfSh
 OUvgkcZUa9UuJ4Gf397YLJ7BbuDaYkbcbseQQZZnwaIodnJV9wLY+oFgNXki7vLIi0RPaaHGjNP
 iniUEWojjjlZlPSiG/rTM53VO3Eot19kgK3BX/6ZTvhbwx63eAVBmiUiSEnud9iFq5ijgBxROdl
 HET9cdV2rj7AWOVCgVbNNbF6KDYuYxmiCe2CTIzAgfAxutY2iVxFu3Pt4GQtHs5+opD06FI2Tni
 Id3BFk0goB0HlPchiZVqVQemYqPlTMx6w9X2NXRwaYLnY6N6bYRMRjbUdrhRZKPEqTsJRRPJWvw
 S/Q91YI7wv4p7bf5AEcOIQ3eD42hcLi6hy4FKwSI4UswIdmwflFfOGHqLJkMokgCJp4n5FOdAI5
 FtYQOrXMzsOjBOXcECW+9sMyYDtyTA==
X-Proofpoint-ORIG-GUID: TVoxvVA7SOL3yDvVVjygwQ68bFdYI8br
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ee0f8f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=BM6OdSh4NsqE7HirI3EA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: TVoxvVA7SOL3yDvVVjygwQ68bFdYI8br
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

On 10/14/25 8:24 AM, Ayushi Makhija wrote:
> On 10/6/2025 3:44 PM, Dmitry Baryshkov wrote:
>> On Mon, Oct 06, 2025 at 07:09:23AM +0530, Ayushi Makhija wrote:
>>> Add device tree nodes for the DSI0 controller with their corresponding
>>> PHY found on Qualcomm QCS8300 SoC.
>>>
>>> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 98 ++++++++++++++++++++++++++-
>>>  1 file changed, 97 insertions(+), 1 deletion(-)
>>>
>>> +
>>> +				mdss_dsi_opp_table: opp-table {
>>> +					compatible = "operating-points-v2";
>>> +
>>> +					opp-358000000 {
>>> +						opp-hz = /bits/ 64 <358000000>;
>>> +						required-opps = <&rpmhpd_opp_svs_l1>;
>>> +					};
>>
>> Does it really support only a single freq?
>>
> 
> Hi Dmitry, yes it support only single opp frequency, I got this information from ipcat sw for monaco, similar
> we have used for LeMans.

I can attest to that, even though I'm a little surprised that's
the case

Konrad

