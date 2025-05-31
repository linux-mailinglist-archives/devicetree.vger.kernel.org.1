Return-Path: <devicetree+bounces-182016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2EAAC9C4A
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 20:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 267853B970C
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 18:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A15199939;
	Sat, 31 May 2025 18:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SjkU/YuU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EA617A30A
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748716330; cv=none; b=nFm3nDEifCG81VeC/6JL980BHVFbCvrCxsBGVFiw/1uMr1+6RiWapiHVNm+evPI5U/O8gMtNZTofy/1v+JU104SS4UHD4GQS/Qc2/AXV711Uq/L5M8G4TvxzFt7mFl/TSXbztlnRXF6FhVT6LAVBDtElZ39vh1C53LR4ApWDAVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748716330; c=relaxed/simple;
	bh=PiF6hqUws/uXK2z2qLpJr3JuiGcUxwlTUjPFuJp5SPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GJrn3414rgwNS2kUe6vQgCICk0qnyN8aqim3LQ5iNxw1WbJzDbr350X7WIROLkjfhdC1zryD2SDwt0TbYuzH74kbHdoyL4YpCREmixFbKZgEKGSMapo2ReGZZxlOWZmrWUuxo/c7XX7YPt7G8FK0H/a0dBlTw4K81cJKsIEJfxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SjkU/YuU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54VFAxVA025853
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:32:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZHCTS02b52liYmEagWUc7peB8KjJ4JVv3poNupxDf3M=; b=SjkU/YuU2tgu9LAc
	lpXpv+zCBHDyUnast/fSqKYDa1PdEFc3KcOPd4NGYFlWIWlBSEy1/13XQwqVGbgX
	wGfch5cuXzyrHHdj2i6ULQJrSfkZ845+Q95wQHu9EPxhBMencNNVTzIu3sFpD+q+
	yc3gfXM7vH9galL04CfSLwF/j6hlKMnVKr/wgYXzFIJr64GpF/vs7kqaZEL8FRiM
	9p5H/SekzhMDBnDFgsY3GW9XIrVFJH3iW/K7HJAVX2DKEy6+rNu3SaExMD6l94mW
	mrvVR4acb2nY6pr4RlorNreZn6fZd0jjbEjqkdPfq/Cr2SJrrat3dUXqAZUqXx6/
	PIWDFg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytpes6am-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:32:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d09b74dc4bso69174185a.2
        for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748716327; x=1749321127;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZHCTS02b52liYmEagWUc7peB8KjJ4JVv3poNupxDf3M=;
        b=KD7Yvab366QqJDdEa6IJAFI6J+eQx3FuGgdxa4XIGI9bA3kuADMh/7TQImUkg966yu
         +RghFJg+wyjwqj3knqebADI1X9gul5UhRc9Ubh8pSCFU49MSAwGXKLnUyxs7XVXOhDB/
         qoGgTYtHyw+0GazX1ZuUzSUxdzH1iMRMLnDnfpwjejqurYtW6t6GBPyGDgKxmPEd0FIg
         QoQADY3CgP1MhZ5jUrqPcFGjoSXLdLCPuwSO4V9Pqn1XR7b2A3jOllJd6SmVqrmzY1TK
         VEbsGx7Bo5nz2RGnZ0DgrARvYSnRF8+N8iFiXcZAIptc8bWxlUVJ3GD94qkaLqeGd92Y
         wSiw==
X-Forwarded-Encrypted: i=1; AJvYcCV7pecqD2L12jsKJZZTBmPqDwZIn5Z2dUEhYo+GqKjlz0GgFtIqW530bAbWXitqcRcTURlBINw/Nsbg@vger.kernel.org
X-Gm-Message-State: AOJu0YwmgrQS9LxvQ5zW3Hd1PBFbBgyZ0hI9j4FrPab6MgEit14ETPSz
	yMum38rMggMCBPd+ACTgkC758+87f96NUxu431vu4lbTIbP6BFhO+Pfg1v/0q2roeKsxnHE1Rwg
	k+G6JW6uhufZaf5Y6J4+puquhLvad2RZo4OXp1dX63dg0Colk400DBsanrNm9PTCH
X-Gm-Gg: ASbGncu5QrQxYoZT0C9mnVk6NFS+ZRdofgSwuAa8aC1OhH2dG+NmOUWCh4uJc2QFebF
	k6WZN1hGPZDu19jd/x+BqvezSaHV7cU8mXg5+80IZ8gCi8u05OW1K3XtjopS8wcO9qZaSFKXJSh
	UWLz6MZCtZ6kgOp+Lv2hIsY6rRl6KaC7SDkLT8ASCzBkUTj4ONbv8kZs5SEi3qKcdganAHdh0A9
	F/jcfWDrvH18vFR84exSb0hhjR4WMs3y+xlP2jiSRp7UAJgsBgn2Ycs+OZrSKfNl9TNiorS7IPH
	weUcTsZGyRJIVGEWxOKbIKEvnTpAdNZXso1sRI0UQJhvHRW7X9GmdLw/WLBAN5gPV5rftvaYVcJ
	Y
X-Received: by 2002:a05:620a:44c1:b0:7ca:d396:1460 with SMTP id af79cd13be357-7d0a3e12576mr385235385a.14.1748716327487;
        Sat, 31 May 2025 11:32:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKHQuo7PTOJi1tD+3r4vH4UDMjXZMCtq0HBjSd2NTJ1pkGxJ8G662rVF3hH5fenX9J6ZKNqg==
X-Received: by 2002:a05:620a:44c1:b0:7ca:d396:1460 with SMTP id af79cd13be357-7d0a3e12576mr385232685a.14.1748716327088;
        Sat, 31 May 2025 11:32:07 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82d773sm534600666b.61.2025.05.31.11.32.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 11:32:06 -0700 (PDT)
Message-ID: <14492412-d340-4c9f-9597-39219712c0f5@oss.qualcomm.com>
Date: Sat, 31 May 2025 20:32:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/8] arm64: dts: qcom: sc7280: Add WSA SoundWire and
 LPASS support
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250527111227.2318021-1-quic_pkumpatl@quicinc.com>
 <20250527111227.2318021-4-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250527111227.2318021-4-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H+fbw/Yi c=1 sm=1 tr=0 ts=683b4b28 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=RWuSP1-prhlrjYyZVaYA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 781_VqOzRz-kEflkTHFDnJUUHEWetgOy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMxMDE2OSBTYWx0ZWRfX8nriqFkeCbfb
 hDVaO+U7XucyG8RwXr71HzOygpzUvbqeeRuGxLG+4hPb++WiaEGEh3NI3Do6SUeV6sAt0KSSfJg
 KM1fsfHiuDKtCVvr3xV+laHkdcg+PXjE9MY5fs9LHVK92om+n1GAlmYftASLRsvoJpeTkck6UOH
 POluFeBMZb9sn6JtyB27mEeEoA2W4S5FmJEYf/JSMgTvUONjwWKG2w5tKP9odxqQW01+8qRo3By
 328OnTuvQVVwbRQrVCcev4Rxwsw51WJG1mUNEeUKfaZOm/6l1+jGyPgAZ6qb9rOEDXCJL76gx74
 tBvhYj8tlXMWmPHqFTkPRX6+pps87bXOfJ0q9Rry0vzT8975xigzl+apiS0gmsqtkDintIoacoW
 6VKuiqJVlHGOKeH+jVOiBieDOGi3+2V4ZfMrAp5zKnHB4cikh9d218klpPdFa5LSds9cIDFz
X-Proofpoint-ORIG-GUID: 781_VqOzRz-kEflkTHFDnJUUHEWetgOy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-31_09,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0 suspectscore=0
 mlxlogscore=900 adultscore=0 clxscore=1015 phishscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505310169

On 5/27/25 1:12 PM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add WSA LPASS macro Codec along with SoundWire controller.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

[...]

> +		swr2: soundwire@3250000 {
> +			compatible = "qcom,soundwire-v1.6.0";
> +			reg = <0x0 0x03250000 0x0 0x2000>;

0x10_000 for size

otherwise:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

