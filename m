Return-Path: <devicetree+bounces-226717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 34514BDAAF2
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 18:45:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C73014FB976
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 16:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8E0303A04;
	Tue, 14 Oct 2025 16:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KZiL0agv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB12C302CC7
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 16:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760460246; cv=none; b=ml7hgtzHYu0XOCrSvYNQwHokV4tU2iCfqfKNPLPFs+OSRaei1pgesVi8yHuiIQowtz7u3cQYFLfTNmx1ZD84M6zpbAaN0Y6a6xzp+k8Ys1YUBXZSoPn1IPWMuH0Gz86wtOfIcQAckwbqS7iZ7+07IPsLHvpFIvK5XuDpwnrhISk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760460246; c=relaxed/simple;
	bh=Yi4u1cEJ00kNWC8UqUDFz10sCkkjIySTrLVt5NXv2E4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N/w6bJtZ4hEXXrMSRf9iG9hfn5wyXYK+xPVhbzZK3pcTMB36qaeSwSSbZuJTpUt2IbsPWFwQWl1xdAFjyyVWuKIY9g016U10sPAPZCWgThSVO4OavXbWEaV02Y+sHHyzn4AEkfxmbh7KbCFgYMUA637em564AG7VGpf5WNeRPLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KZiL0agv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EFuAEH017040
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 16:44:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mSFGvCoE5HNUgN3XKXThc+wiZj01432MioxbQ4jjWj4=; b=KZiL0agvuPhc9juH
	2QmEEvpdBJVSDlfbt83hvzNjGKPpC+wBKYPpQXUnJGD3NP0jN+muY6Y5VdlCfnCI
	r8Uupq32CZq8NCjZQvxyyTdcMYG089ooZ8VdZ5dRiF46XUh5IVrwUab6KslI936Q
	fOiJoUm1h2EnaeQaFhZocBCycoRLBbyld0jn6ezPqQ7lTDkbNvFf95AMrD9LEowU
	EEWkV8FLc5xRbDEdQGBaxQg6qC1oNnp0A9xSzeJHvgKUvyvC7bEgXhQ6tkT6To0e
	hsyyjkx71fI8v3JOv+hN8XPExnHpeKCPO0sM+cogUmlw5bt1UqRZ/ReTNSbz0ksN
	JktVog==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd91cnf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 16:44:04 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-27eca7298d9so245332475ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:44:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760460243; x=1761065043;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mSFGvCoE5HNUgN3XKXThc+wiZj01432MioxbQ4jjWj4=;
        b=k9kLUtx1lHDDqKxJNNeYNtppXEskHVqySOYQIjwrfigilfTlnc8A58H1Tx8Uinj107
         VJhbUJnZMvfb+nwykDqojUrs3uuFUhSc1r3r+3C/vsnyIIcW2CiCLquEXcAfVxfc8Mw+
         EliK0EWLbvc4d2R6UfiFyhUv23CGbHPgFNcY0UFF8RaUDBk0UeBHVwoR1Efj7tFwK9G7
         SgK5VTK5xNEPMf3uZsPRuewILwseeeY3QeR7kAaOFnwyAYQcLwIH3FxBtrZVe2P48cd2
         wi/ipCIS+qg6mIgpR+XiBqTZPMb3TCMqEe3BCmCuQchmPdmUrB0tZ7IiL9BmM5ME0sBf
         Eiyw==
X-Forwarded-Encrypted: i=1; AJvYcCWwadOvXaT0c4kSaQly7x6Oi5JM+5zpXH66MEXxgQ97Vumwm54dWBOltAYGTX9sMKIq4QpDcU0dYvjO@vger.kernel.org
X-Gm-Message-State: AOJu0YxsEcLa1yvXyKrihZcS9EV68kei9C5SrJGvqE1YnT0xFkpIB8Bd
	FIo9spOaUMuda0u9+c+5xv3kxLZ/4DNeY4xrEcC8WrfY37Td9XnsWEga69nEX5PnYHAGjKcS33y
	tmfSA3iRY+tdTjLvRZdUtYx2U1QXVj8JxqAo+m4SKRdajnYrpZ4z4ekb+7s9em3jn
X-Gm-Gg: ASbGnct0O4bQg1rjcT7hWDcbZ8iNl2wHS9GTy/V2L3FJlqCdIJBHAdyyicTuPRjf5T6
	JSaqfhMZj2kjkYo4XpoCg+1wOtlb8c0YodJGkKheo0dcdEqVO7+la+RZso9UBh1PkZH9Ao1VnGT
	nDaFLFJ8sVvoPkT9LKjRZSYB7DUdQFeFCrVx2qMNWsmUbyfFw8KRCiIW3zZ6Q/AAaZ405noCDhN
	tK9sl+E8GD/MwACrhTQNxHJqD37VJdudR/ANiwQbQZNWorJLnWDixBF7bV63615BYroZ3LYHI3M
	00u2dSTdZSN+vVMibetcZ6e5gsQuYN/QbjGr0mvjAQugjKWlX2uxYN5pLAzKVgnkERl+
X-Received: by 2002:a17:903:2c0d:b0:269:b2ff:5c0e with SMTP id d9443c01a7336-290273ffa54mr348765955ad.46.1760460243167;
        Tue, 14 Oct 2025 09:44:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAawkG/6RcfxRfHqkLYsh/KH24AGdBHUvSRtJU/JVoXD0EAwZnl6Htf7BxbBAFTMLZRB1zHA==
X-Received: by 2002:a17:903:2c0d:b0:269:b2ff:5c0e with SMTP id d9443c01a7336-290273ffa54mr348765615ad.46.1760460242701;
        Tue, 14 Oct 2025 09:44:02 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.24.130])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b5288043fsm11617122a91.0.2025.10.14.09.43.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 09:44:02 -0700 (PDT)
Message-ID: <305fb869-c35d-4de8-bdd8-175fccc26137@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 22:13:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/20] arm64: dts: qcom: Introduce Kaanapali SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-2-3fdbc4b9e1b1@oss.qualcomm.com>
 <oitgxbjkjftsq6an6dbtqrb2vfwrpv7tybmo4zck24hzh7p6gr@4gochzskawnm>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <oitgxbjkjftsq6an6dbtqrb2vfwrpv7tybmo4zck24hzh7p6gr@4gochzskawnm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 68oJt9FSzKJb687B-ZvVYOuWOmQCKKb8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXwVSAaBwITXy7
 l0whmYb1zP4gVhEPFL0w9n1qxwX2fvTYNN08rQPajOTNzQYK1+TioXobSdsXJ2u2zFmh/zEIn/4
 Lv23R3Z7sY5kEguAaA8Kbv3Q6tJ3BKUBf5SZ7FIRmHeHhqwxba9GiaylUdv+GHfh7RRsv37I7DI
 9Rxq1yaA/zIBEk67j5BqgB7baGch8rGmM2V07Bw7fif+jC5J9M+DQ3DeWBG7zAMPeb/XXJCT/rV
 cOfDwhuX4MYqCHyPvuwEeEGZ84e93qEXDV/qxXAqYss/e/MG1DDYzP/NJXyGTCtSOSUXe2PADFs
 Gqe/446EPZZPs+9AbdbpA2uSfg8wHQpGhfPwzMfw4i2RyySg5zHgDZKwMQKyY4Y2GmK6uWew4Hb
 wY/JoaUkDZQbdyRV7hDvi4yFlM3Www==
X-Proofpoint-GUID: 68oJt9FSzKJb687B-ZvVYOuWOmQCKKb8
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ee7dd4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ptung1i0Z9Z1TijovGblew==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=J-pUodDuUyh6byEKGFgA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 9/25/2025 8:52 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:17:19PM -0700, Jingyi Wang wrote:
>> Kaanapali is Snapdragon SoC from Qualcomm.
>>
>> Features added in this patch:
>> - CPUs with PSCI idle states and cpufreq
>> - Interrupt-controller with PDC wakeup support
>> - Timers, TCSR Clock Controllers
>> - Reserved Shared memory
>> - GCC and RPMHCC
>> - TLMM
>> - Interconnect with CPU BWMONs
>> - QuP with uart
>> - SMMU
>> - RPMHPD
>> - UFS with Inline Crypto Engine
>> - LLCC
>> - Watchdog
>>
>> Written with help from Raviteja Laggyshetty(added interconnect nodes),
>> Taniya Das(added Clock Controllers and cpufreq), Jishnu Prakash
>> (added rpmhpd), Nitin Rawat(added ufs) and Gaurav Kashyap(added ICE).
>>
>> Co-developed-by: Tengfei Fan <tengfei.fan@oss.qualcomm.com>
>> Signed-off-by: Tengfei Fan <tengfei.fan@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 1320 +++++++++++++++++++++++++++++++
>>  1 file changed, 1320 insertions(+)
>>
>> +
>> +	soc: soc@0 {
>> +		compatible = "simple-bus";
>> +
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		dma-ranges = <0 0 0 0 0x10 0>;
>> +		ranges = <0 0 0 0 0x10 0>;
>> +
>> +		gcc: clock-controller@100000 {
>> +			compatible = "qcom,kaanapali-gcc";
>> +			reg = <0x0 0x00100000 0x0 0x1f4200>;
>> +
>> +			clocks = <&bi_tcxo_div2>,
>> +				 <0>,
>> +				 <&sleep_clk>,
>> +				 <0>,
>> +				 <0>,
>> +				 <0>,
>> +				 <0>,
>> +				 <0>;
> 
> You have UFS clocks. Why are they <0> here?

Yeah Dmitry, I will update the ufs_mem_phy clocks in the next patch.

> 
>> +
>> +			#clock-cells = <1>;
>> +			#reset-cells = <1>;
>> +			#power-domain-cells = <1>;
>> +		};
>> +
> 

-- 
Thanks,
Taniya Das


