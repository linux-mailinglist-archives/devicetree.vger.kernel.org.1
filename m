Return-Path: <devicetree+bounces-145349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEEEA30FD2
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 16:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B429162EAF
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E07A8253347;
	Tue, 11 Feb 2025 15:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z8rw2wrr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6362B24FC1A
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739287892; cv=none; b=U1nfRmY9Ct7xZONbaZ0qvSpulhj9jL1swppb9dh9UjMxmE207qR57g0PIJsoh36KzdwRWB5AnzaKIAlWE0B2P3YponRdlQS7ryczSH1/6BGbfCpZW7l2FaEz9JxO30f2ZiZ+mAcDwSi3VQ3xwBEZIHsHKNN41pE3HIVReQjBYaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739287892; c=relaxed/simple;
	bh=Bg6Nt+8C5j+0uyXnIEaKjL/2chmotYRWBmv2M/smtRQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XR9hbHNTjE3uBQXBdUJXdoX7jx/wB1+DkH7a9krMmGgQuAlrhUZDKYr4/uuhToeICZYHG8+Vb4vMRmSZerpkM6FusTfnxLv5NxdXGnY6LZqvecUVyJbrQJO8VLYR00iL2IXNylS+BDYL6wepg4CSjd97OzL1ZLHXmYKURD9mcc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z8rw2wrr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51B8rU0B008242
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e5OySbyHguqdotrWL0HqWl8v1uqJmDtsgQTUaTpXBA4=; b=Z8rw2wrr0KDm8cSJ
	ORCU/NYvMIkBYjf5RynZfJaS0XWWbhWC80QIPlRTooZeu9p2V+foeMyt1kPKcojq
	EdB+qoLgglyaE0RKi0mRRf1ECPbW3BmXv+rzq3gMZRWiKYrufIYzjJUaWzNTshB7
	oAt+jQAG9ra3IPNdpr1+dL8Vui6oNMxkA+B7MfyoIO08/bRI1ChYtWbi5WSq4HdY
	UrqFTVl3TGoQCsb8985zmCyhPaVSR90lbFTFZddNGobB95T+3yuWnwCeDNEc6O0y
	j3YWcJ8FdZkt0PpglcQx3X4MAeeJ3YOsfiVtmrSpPolw5kMX+JYFWQGgg39vDMfe
	ZMMFKA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qewh4gxb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:31:30 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47181a14d8bso9829931cf.3
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 07:31:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739287889; x=1739892689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e5OySbyHguqdotrWL0HqWl8v1uqJmDtsgQTUaTpXBA4=;
        b=mOPe6zmptAVay/6G8P90tTjL0OwrUv4eqI8HhnUpdtOmjNqvxKkEgyUKgJMW0nA4ix
         Pa49WK22Wfu67IpMJF6eVm+d0rhuRJDsUqibX2YvD2arUh0HOlBcz7Yoog6Avrmiqp8s
         EprMBk6+oqu4ia32EXs+hymzddY/JijdzKzvqO4CnbmWyg8LwSAPetQX7XzdW3OOIukG
         YeKOx0oNiC03OX7jkC+Zx56Sbx2YWKQJ6KZojlcHqr7RaAMexfq07eY1eg94NjkDA/mM
         VrRNH6quYJ9Q6I17q8hd0Fu+ZCDhdirZTY4vay3ImwEiv5YRCwh997j1VlgLQOTTqR56
         hAqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZYm6sUybaSTozKhnIr4ihcFntVSteI3OKn8P59NMP7Fbnc1Z1ckMhl89HBCobCYCAF2XMDr/m+OI4@vger.kernel.org
X-Gm-Message-State: AOJu0YwYi0bQq23GOzblKyN6pOY4KFoPES7wnbD/uf7bhocXx/1fotvQ
	EAWmNzrujOvky3yjqtnquLVGD5vhlDzFIxu5dGUY52WZWhIVqipr086HkPxWyptjF4G8nZ4/ylc
	G6d960JHqX96KeB70qesFEFyrZOAUS6Icn605mE+FsPAiJCZpwKCV/kye1Pe6
X-Gm-Gg: ASbGncvc2PUCYMacHtUCQapoRwy4ODNe8UyUm3njsN2wijh9SmnZlfFuEXQR79FuHaq
	KfQG6kctyWZXLbUInMFp3Z6VKc2n1wsoSpH2NbW5kMZxqajzexNiwDU4f3i9ihxc9x4nww8Yk0r
	qg6ETFB7yXNm/8SQ5KvalkHgOdMHBTd08lJxjABpEgcgJErHDMasd7XxdcURKaBfVk/mgBLnqdj
	JEIhQITR6sluuBedSxqDnAS/gYg/+JdBX+WxJDtQjYmsY6b6Xxu23Z4g8x1Mqbfkih6Lw0Y9rK7
	XING8YmLNFE5k5gYkeZFD93tvN7KjOH74T9BkaYrOCUDpamcNVuwn8wsIEs=
X-Received: by 2002:ac8:5913:0:b0:46e:12fc:500f with SMTP id d75a77b69052e-471a38eb6a1mr15565971cf.0.1739287888735;
        Tue, 11 Feb 2025 07:31:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7FgJZnYB4h/Q3ta0guw1kWk+ay0aXvWhv0/ehdh20wsL+3hNZVueDiuf0CB+w+LhrMUtPNA==
X-Received: by 2002:ac8:5913:0:b0:46e:12fc:500f with SMTP id d75a77b69052e-471a38eb6a1mr15565691cf.0.1739287888319;
        Tue, 11 Feb 2025 07:31:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7d72ae04fsm209952066b.46.2025.02.11.07.31.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 07:31:27 -0800 (PST)
Message-ID: <93a1bdf9-52a3-4dc2-a2cc-28f34b7ee0b5@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 16:31:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V8 7/7] arm64: dts: qcom: sa8775p: Add CPU OPP tables to
 scale DDR/L3
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Jeff Johnson <quic_jjohnson@quicinc.com>,
        Andrew Halaney <ahalaney@redhat.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shivnandan Kumar <quic_kshivnan@quicinc.com>
References: <20250205182743.915-1-quic_rlaggysh@quicinc.com>
 <20250205182743.915-8-quic_rlaggysh@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250205182743.915-8-quic_rlaggysh@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5ACIww9GTv4b88ZsRhG73r0xF-jPpy61
X-Proofpoint-GUID: 5ACIww9GTv4b88ZsRhG73r0xF-jPpy61
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 impostorscore=0 mlxlogscore=910 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502110104

On 5.02.2025 7:27 PM, Raviteja Laggyshetty wrote:
> From: Jagadeesh Kona <quic_jkona@quicinc.com>
> 
> Add OPP tables required to scale DDR and L3 per freq-domain
> on SA8775P platform.
> 
> If a single OPP table is used for both CPU domains, then
> _allocate_opp_table() won't be invoked for CPU4 but instead
> CPU4 will be added as device under the CPU0 OPP table. Due
> to this, dev_pm_opp_of_find_icc_paths() won't be invoked for
> CPU4 device and hence CPU4 won't be able to independently scale
> it's interconnects. Both CPU0 and CPU4 devices will scale the
> same ICC path which can lead to one device overwriting the BW
> vote placed by other device. Hence CPU0 and CPU4 require separate
> OPP tables to allow independent scaling of DDR and L3 frequencies
> for each CPU domain, with the final DDR and L3 frequencies being
> an aggregate of both.
> 
> Co-developed-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> Signed-off-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---

[...]

> +	cpu0_opp_table: opp-table-cpu0 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		cpu0_opp_1267mhz: opp-1267200000 {

Drop the labels, they're not needed anywhere

> +			opp-hz = /bits/ 64 <1267200000>;
> +			opp-peak-kBps = <6220800 29491200>;

(921600 * 32) etc. to reflect the clock rate, please

Konrad

