Return-Path: <devicetree+bounces-190348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97037AEB7D2
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 761544A84A5
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F1B2D3EDD;
	Fri, 27 Jun 2025 12:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V08rrKPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961F9298241
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751027732; cv=none; b=acnrosLBtk6upmn2h2s/q1pX9g2oJGUN3rBrPgM7btmeNBWW4nCjYggOWgBwEbMnu2Risy5FXg7YsHmHZV94H8VBy90wcW6lbD8fSn+7XnCgz/VxgFo9iIp/sFN31v490ad+DkreTxRNMjxP2VMjyBFKA+t4S0bhrcCIDHM0EPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751027732; c=relaxed/simple;
	bh=Qo/Y9vysAF4/XtHmYuHzfr7cv1qLfdc+GSgIJ07pEJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MVdMFfnARjbgu1uMo3+Hb6JNW6axaYMJroAzqz6P+YAQs1zCzJnj42LZm74FPkjP2LwOHCb71HcdCXeqDdW85ZJ3nj1x7YA5VCu9vlrqmPWm1mOtfDMnTxdOulkIWuQyTZ+UoJZCpasXFAVwIiY/CIRZwmqYCf+xIoqAYc+HLrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V08rrKPZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55R4DFIM007903
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:35:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5B6rDC7Vr1OqFX/DSU9HEATQTSwn7MiEoOr0N6M/z1w=; b=V08rrKPZT13wrgdz
	4jx1J6fimFSHvTE8S4wAZQYB5RA+DfD7y44/j60bFBuzMhMduIFlLftSPFu5ON33
	GNDY9CJU2yOsrz35vQkRd/uoUeLLtETUEB3qcTptQP0PJsmQbjwqUrg0cTpxIbNO
	55tBd4mImV429y91v3BM2JahCwEtfMQXSEPbgqchjkYD4zEEqH6tfN13A76puaPT
	baF2x4E+tnis8Jeassao17Mx5/70wBQ8Ogcsyeu1I3Ld9d9pfQ0qUjVqfZCc13EG
	XJKkmwNbwt3RZ/ULnbtHTJvvvfG/l+0S9k4MLr0bSmwuFz6UOMvhcBV5IlBKF+qV
	BhmCEQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqw718-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:35:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0981315c8so190454785a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:35:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751027728; x=1751632528;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5B6rDC7Vr1OqFX/DSU9HEATQTSwn7MiEoOr0N6M/z1w=;
        b=PbFzES69+/fqGpE5TtT8txQdIpAmf4FOmxxAAftppCnDsjk5UVrn9IaekazQKK7oCc
         4k8rdgx4piR651ZR1VBAmh+lmTRcJZteCDEFYUaeXpa8n3hTbGKJAlx+MqRNcxoOwNwo
         8OZYmz4/o4Vs/av3u8j8ySuUH1qfujkdJRdFl+MMpshKxjmwvfXoHaeIIEU1ny78O2wR
         N3Pgb4REBxr5Ie/HMz99a70gfAfrMMIPgqbgcwtlOUbomCI1csNTeyAQPsyeKoAhVG8v
         hjra3AlyE1tA6sn8FfaWJLagc+5uah7Fqf/1d46fs2hZkhE9fp0ul+aIbpxxnQjP6T5Q
         YaIA==
X-Forwarded-Encrypted: i=1; AJvYcCUZlGyXRCBu30nKYXhH1IRtJL97lumO7UQMyINFVfd7Bc8ZaY5BvHlrRsquD6EeTftjpJNt+X+v4TiC@vger.kernel.org
X-Gm-Message-State: AOJu0YwoC3ea6xOdqfLxHH7yHaK2Vo9JVYkkLpwsDWjr+zCa1hk+s+zz
	DG1EPTdGejJLA+raOCpFJ+ALjYNCj0Lcg9aNBx6invlp67AScgdO4pXYGrCbYiMzD4iBu8VI2aT
	bQbPTh2VwzXrovamAMpWodsEHlwdJPkmCxCtQdTdXJkHbm6+OKfdFTQ4iP6DEBOK+
X-Gm-Gg: ASbGncuh6TBp6Sks6+oJyC8CR0+6lnm5K6Sw2/ubwTLlsDn7RAqSnxJ+2IY/cUpYBv7
	rC464OmXExxLsTaUJ9fmWJ/Di5lbuBUMgz5Xqbv+l9UvNxyaDoADxppHbwKZ8o/UN4ZnG+2GC3P
	xmisRzs4MwHPGT+eu4SBXgJphBv53wnS+k2OhlCqqTp7xvhO06w0pHayfMaBxrwQpXE2P97BtiO
	XPpB3qY9fRShbrK4ux6qPkhzlID/liTwao/ZC41fUamXpo0cZSgVpDg+iT5dfHLdJjlGjRpBcIf
	xYrbF5MzXrB9unrupPFb4MRc/61rgfEICUS3NWeST+6RbG6uLtFWZjmW5XGvLFxJDkocep7S
X-Received: by 2002:a05:620a:29c2:b0:7d3:f906:8652 with SMTP id af79cd13be357-7d44397de59mr425854185a.12.1751027728341;
        Fri, 27 Jun 2025 05:35:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLG7VXVkZfcdvopkn9k67+75T7P739XrC3+C5fZEhATwKbfj5hRgaIazp9JTVb6Ss888RxsQ==
X-Received: by 2002:a05:620a:29c2:b0:7d3:f906:8652 with SMTP id af79cd13be357-7d44397de59mr425850685a.12.1751027727809;
        Fri, 27 Jun 2025 05:35:27 -0700 (PDT)
Received: from [10.185.26.70] (37-33-181-83.bb.dnainternet.fi. [37.33.181.83])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b24d51fsm440779e87.62.2025.06.27.05.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 05:35:25 -0700 (PDT)
Message-ID: <66c71817-442c-4a7b-8d10-48e6751c8e2f@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 15:35:30 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615: Add CPU scaling clock
 node
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-qcs615-mm-cpu-dt-v4-v4-0-9ca880c53560@quicinc.com>
 <20250625-qcs615-mm-cpu-dt-v4-v4-2-9ca880c53560@quicinc.com>
 <xkvn3r7yphlccurdqzncz5qegs7xc254xc2ou2dzuilatk5f5j@eq5ynce4aepg>
 <2b29ae78-e4a0-4d25-a694-abb10883086d@quicinc.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <2b29ae78-e4a0-4d25-a694-abb10883086d@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: cL4wko2aOrstwo4MCPpOI3bAqTJ6THQJ
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685e9011 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=a09MB1VsJqAZHPW3esczKA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=14MXtV-COIB55QcvAqAA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: cL4wko2aOrstwo4MCPpOI3bAqTJ6THQJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwNCBTYWx0ZWRfX8mwQlLrbHrlm
 Ub3e42JdClVaTZ40K1VqwzK9joe1OZdGIw7K7Wn5DTnhpqTA52GL9QpPpr7tL+t4WBqV3q+I3sw
 h3yX1wn2UxboWjO+8YoDhftVtdrHkGEwB/NovHfpFr2sMzTObdPAY8kD5WiI7nzSos5cOjSKEmt
 jyp8dlyylPo0skOBSw4zEHtmCXS7lv/8LqzUl9QIpA0DwLUXxUw+KFtjNhg8uMEqieuL96s087q
 14itx3MS8Re29OGGWDsKEW3YGm8GGgGQL4elrFUnz1+tnnPH9JmstjXCDWgcR7cf/t39XAHnP2I
 2oFdLH03PTw/Qnhdf7lx3hO5deTKuFwgOozmAz4Z+ovtcz4oF+h9bstStXmCsxbfOm1kPw5G/ZV
 YO3/kb4ZwS9j35yfYAujXw+bG5Umu/ZnZuXGS6UwPJq2K+U+Ef+V4ePlP34NJZCQvTClZs2V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=937 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270104

On 27/06/2025 06:52, Taniya Das wrote:
> 
> 
> On 6/25/2025 5:06 PM, Dmitry Baryshkov wrote:
>> On Wed, Jun 25, 2025 at 04:44:01PM +0530, Taniya Das wrote:
>>> Add cpufreq-hw node to support CPU frequency scaling.
>>>
>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs615.dtsi | 29 +++++++++++++++++++++++++++++
>>>   1 file changed, 29 insertions(+)
>>>
>>> @@ -3891,6 +3907,19 @@ glink_edge: glink-edge {
>>>   				qcom,remote-pid = <2>;
>>>   			};
>>>   		};
>>> +
>>> +		cpufreq_hw: cpufreq@18323000 {
>>> +			compatible = "qcom,sc7180-cpufreq-hw", "qcom,cpufreq-hw";
>>
>> Why? Other platforms use a true SoC as the first entry.
>>
> Dmitry, from cpufreq-hw perspective SC7180 is a exact match for QCS615
> and that was the reason to use the same.

Please look around. A quick `git grep` would show that every SoC uses 
SoC-specific compatible (although some of them are definitely 
compatible). The reason is pretty simple: each platform might have 
SoC-specific tunings and quirks.

-- 
With best wishes
Dmitry

