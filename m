Return-Path: <devicetree+bounces-189001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6097EAE650A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:33:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A7B419255A5
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 12:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7928B295DA6;
	Tue, 24 Jun 2025 12:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pe3zE9vM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AEF290D8F
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750768231; cv=none; b=Y6Wk6ZhTGQeAZdn38/Z+sJmkBxiKsxInjlNhPchaB9V8yiFR2r4pOqzz18TBIT+9CPq96cNCeulZ0OFZAN6SJdxTKoJf77xSj1kRaiD3la0sVs4bGybmsr/KAHezcOWbn0lpdR3vQig8c4nmkr4Kly7WXcd58yhYqBwiO+Kmhy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750768231; c=relaxed/simple;
	bh=p3Vh7ppCkQ3RhWt9SYYMNRFLOMQlUdGhaIX1EKs0T8s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WnXVY3HcwGpUxkJvjZX/ZkHEaKrb9KATT2H5GHMRHibvtPyt3FsEafDi5b8Ht5zWRhyJdu8SFd4bCw/Q5+ItaptEJfSZs9TJWH3fKX15YoizNdxQsT2FwcAc+nmaKCUtIOfCb6koEorVd8QWmNYsdepTPHKx6BaOg4zoP6nFDhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pe3zE9vM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O7D6gR025855
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o36MmkVKK8n8t/NEFQfn2PX3WeZ8yojvxiHzllPypds=; b=Pe3zE9vMJbgJ8yex
	1RR071wmOaPsVPWxsBATSJL46okgYVo1aeK6Jy50gMzwGYejmMqVBK0WsxG6X8c4
	pFPvl2HqH/UEbev8lECbev0J4OEnJf/V2Itq1P53Qwp3WdwoF4OJIO99cljvk89Q
	A//Cbo3GgsURIt8BwK9/6l65C4e7kBetgFnVnAmWtSe8wGLkCW5+hveFcBupQXYh
	ey3dFKUiq+Ami+Yi608HZ8vwFkwcT2uJv/g9LiCVnCLUmaEePMRlQANbVMUbxE0+
	snLIA/SG7CJV8wT48cWPmJtja8TXEwe0os4yKcFLMgHE3laGGvAETSrlb3OFfwds
	u1N1sg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcmnqqd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:30:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5af539464so150351885a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 05:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750768227; x=1751373027;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o36MmkVKK8n8t/NEFQfn2PX3WeZ8yojvxiHzllPypds=;
        b=F3Pyx7ZckfsgMZzbg0sDo0ZiAw7Kbh5y3rnvMDfswhszNz2TGRzu9FoQBuv+gc+qyq
         qaq/id3/CTPG7g2uRdReTIh9g19C57iyq88ZDVD7HLpNLbPZTDEuQcxn8FGowukkICWA
         O7tfrSA44aflduS0cZLQugDzsZP7Xtipct+b8DdzPzuDn3fs9daQ4ISUEBcDGcecgS1J
         L7wFca6y62KL6CbvxS9xmTYoevTzPsTVg7c809dcNHBNMogBIhVU/P90syQIBoZsWeUa
         x2D2putTAkNu5I8q4RbF9bzXSldb1d8AB3LY6UfI7LzwKSccasp1Pe+zOPX4rkXbgnC2
         r5Lg==
X-Forwarded-Encrypted: i=1; AJvYcCWxWXQxuLP6ik0hJzO3jIfFwoibQvVPCJsyRg+jnFVwvF7B+PQlniYzfjrWK9X1d95aCYstMX7E80Fw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy0gspg9NkWxfp2QCeZ5CJNvavDXapVddJzBKK7hEjDE/LSt5F
	b8sI1ikD/3DVnUv1bYhqnrtQyBM8Uv9pqsCtpp/Vo4z0W7B7zFQweuaMOionkA1iC6Vn2Y5r4Sw
	mdbhwmHN9H8MKbLQeL6LKTs0MjG8pJ2iI3vLYfuQXZJE8aYqX7QLk5V3G0knPZKAh
X-Gm-Gg: ASbGncuC2tyKVtZYF0t6H62QBLy+WfdQYqC2CsAi9Tz4g+nRN4vnm+tXWtCKIYndsja
	mEdMgRLeGYBc2mDvQbKNsp0rp0vdf7lNyCypD8meGIuU9gHbB8/gWlJRcXRdarLdnRy95brR21w
	JL7hIsUkXMRDcpwSZ8TZmTlV0p7fTU0AJaTEv9J3Oq57qAejMIlmaUYYP7OeYU1mOW3kCTdEUfc
	KXCkdA++NX7n17Ty+s7s1A/hFGuiJ/Rc88z4vmjP5FV1bi5TvHAyi4NVIlVSTUtNA/SvKwC7U05
	/YhCjdifhQ+Hr96+A7tYuVpBR/On0EWqfJGFQ6PbYmkhzY367uwSLe8gn9ageg4k7y6h7Gzi402
	DP+g=
X-Received: by 2002:a05:620a:2903:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d3f98234f9mr843647885a.0.1750768227451;
        Tue, 24 Jun 2025 05:30:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJpYE0/DUFqd1ePpeiVHIpeqkBy3Rf7f7lqO4eXnZNh5L7fNWwe1Er9MbGPKljDCw7XvPFOg==
X-Received: by 2002:a05:620a:2903:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d3f98234f9mr843644185a.0.1750768226844;
        Tue, 24 Jun 2025 05:30:26 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b719fsm862758866b.128.2025.06.24.05.30.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 05:30:26 -0700 (PDT)
Message-ID: <4f026872-f600-4940-a6a0-ccb0b677be5b@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 14:30:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: add
 Bluetooth support
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Anthony Ruhier <aruhier@mailbox.org>
References: <20250624-slim7x-bt-v3-1-7ada18058419@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624-slim7x-bt-v3-1-7ada18058419@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: t3GvuxgS2Pi3BpajNg744DpIPnwhMxoX
X-Proofpoint-ORIG-GUID: t3GvuxgS2Pi3BpajNg744DpIPnwhMxoX
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=685a9a64 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=b3CbU_ItAAAA:8
 a=EUspDBNiAAAA:8 a=XJvFTVVEtqmPlk0kGFkA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=kiRiLd-pWN9FGgpmzFdl:22 a=Rv2g8BkzVjQTVhhssdqe:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDEwNSBTYWx0ZWRfX4y5BSz0KlWui
 O/2Rb6MNsaZ9mBkaLUaJdFVYZh9RUHU/O6mHIP3OB/O+cTkfSGIpvxDkiVzYiZvK4uoZ0Z2FEl3
 gSCA59xir9oMS73TMfy34Sp8IUJ31RPyWXvKa5nHjIZF96qcEGwFsT2OcKCDPuFJgesOvABE6wz
 obPAKG4JRSrojQgFDJI42pRZKTucQahFuNv3ovI0L/SR3VqFKar7gjtQDUdqcdW/U0QPNvi3GJN
 MYbkOdLF8iNxK9BtjEG6oTQp3T3JriYBeoW2TupaAey3BPl2wUGhtx0bSxN+CsUrpWGpJsnb9QX
 8w7yCW7ovuEb8sUf+R9dD2x6VyuUYgqRQKxZxF0Vp691FQwbLequhiuNzTRDfEPUqbF9lLC8CyC
 YdbJkoEv1DmLQ6kUecUwtOCa7xUsTyikI9F8MhQgRG/xUckYqst9Xt7lLcVx94rUWLjfMoum
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_04,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=898 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240105

On 6/24/25 8:46 AM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> To enable Bluetooth pwrseq appears to be required for the WCN7850.
> Add the nodes from QCP, add the TODO hint for vreg_wcn_0p95 and
> vreg_wcn_1p9
> Add uart14 for the BT interface.
> 
> Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

