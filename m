Return-Path: <devicetree+bounces-270287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yK56BFV4pmnxQAAAu9opvQ
	(envelope-from <devicetree+bounces-270287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 06:57:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A741E95D0
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 06:57:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 302543075FB4
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 05:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CF534575F;
	Tue,  3 Mar 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CkZdqbu3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LzX9Joq3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FF430EF6B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 05:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772517394; cv=none; b=IDRfVH5qpT5+FcPfKvck1Tk5znuj+mujNZmErOSxr0HPIqS4hCOZTX85CrqFSBZcrBhhxZPPRCXK6Cah3S5qm6UgJUKAa+5D+HsT3xYC5gGlB3buYeC7SkIgKXgn/js7EkkHF9C9LCwxbqM3B7Chj2kR/kzpBh5TDkusGyGZILE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772517394; c=relaxed/simple;
	bh=3bIXffY/9X2HVXQIA39mw4H/IcuURtGpwlkl8koIlMc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fYwa2En5d4GBd1wGk/mCbm7VunKw86dEo433vzpyTrGJQ/E+8CBrAXoc8tp+3N2KjA9o1GkGsrIxtkEqUnvZgEsspeYGrGo9bxlbv4TswYsgao5mQuN4W7wuyyHDGRcddGMaSJpn8gc8dqOYCCfFGHYy5BmvL0oSNVynUkVJ6ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CkZdqbu3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LzX9Joq3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622NEPeL2048777
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 05:56:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zFRkum70LwaLQ544ntcVbg9EgSAccXUR17foftejeHo=; b=CkZdqbu3cXsf309b
	1OkxUDCi1VpE2jB2U5FHi51pNiwjumq7GxVWzn7z//8zQ0D4kfl3te8hSE93N4T5
	LWhf+B7KcWF74PfyGuurDHDDD/y6Y6k5dJFZQ80QzLLN19Qa/oKR32m3kMBvrUeA
	VV3hixGm0uywBPQzSzQcRJpvVOvv2wLtHIioVOTXnN79emeW7kJ7tva3TXeP4Z0r
	UqjxXMj13pfBHLbcGwsibGFYdU1IcF4jJVKZwUGoTmZhQ4eCG7NtZnYkavJ+Gwf0
	cwwtpIOHqyXYDqZHrrxbM8SIsqr8usCBdGqxXMnJ9vvDhQrmzthXOJYxdSPR4qUy
	8SHkMw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cncmftr76-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:56:31 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35983ee9f3bso2265300a91.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 21:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772517391; x=1773122191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zFRkum70LwaLQ544ntcVbg9EgSAccXUR17foftejeHo=;
        b=LzX9Joq3wwuk+XT3KCPFxtZmnRtoXnbSMOQDA5snSLJFljuLigv2UL7Z8ALm7YPaLI
         PWgC/rm6Jz88F0xt/9vpreiVDL8yhKtQ/7Zdg7Zgf5WK8G7iK82y8TOvW2oAvhXTL2P7
         cbvoUhqaPwOGKIfHhHWxg9ryTqW13X4h8ABJJzSEnzFbFXVp/AJBFAqQfqlxtTmoGFCC
         TvoEoZ2lASAjGGBE6qQJsEs29F8XkEZgNrOdYuePJJQXtdNoiUIwVokXX54+ceHSg13z
         RO3q9sP9drAgUHzHHNJNCx8LExgG/IndFDKmv2a+gnRHqbt9wG5/YbsqvlfYUsxNDUyI
         GquA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772517391; x=1773122191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zFRkum70LwaLQ544ntcVbg9EgSAccXUR17foftejeHo=;
        b=aGsvBA10UP9NcoFs3IjzsR9STUlpTdU7Tz8bpQIdNREKeLrBfkLZaXQGqCAOc6fl5u
         t1Kj6ZJmp0oEjHBoqLhBZlfxa2e9sGMconjKRKs5hQ4hI884BdkJ8GaGXusp4vzX6Bfm
         x7N/V9ndF7+/WamnRU9vdsoTe5vdN1acN7fYiDalkwFokDIKFtprTxzqOu6jmom04B8o
         fiWHPWfYuZXERixtzT66WEKqMOImjHhb3Z5oEsQM15jg7XT0NEVIKVVdnWfVbhcs+kvl
         Qrj/SH11hTXQ2b52wCJQIy54uDepOW/Pqyb1+CLgHk2gvLaZNV7o9S/xdEdyrGni0Tsy
         kGsg==
X-Forwarded-Encrypted: i=1; AJvYcCWgoLhwMbBktXFbsXcTpSewepXMixSEjw5+VbpEwnJORZ0KPDDaQX6CAMEJeU9xYYAmqeGZhjjLWSvz@vger.kernel.org
X-Gm-Message-State: AOJu0YzLF2/+Q19d2gcCLPnTS/sgb0Yg2mdGlacyEHLXUDrLy6oOYKDh
	u4vLoZ+HotSDs7jMDaKIP6ZuGFL6oeQ+xHt2dw+XUN6xI/DDIi44oN2+K0Di7dEUgptK8ah5LiL
	KksYv6hMkVhIqLP6O331pBgNM2DgmKHfaqEVlMMsPROyDq27VVlpppr/DppIL8WNf
X-Gm-Gg: ATEYQzyyJ3mFkmf0bdj3VCPz+1RMV0JdVqqJGk1AcqiZYMFmzcL3twixqa4Ah6/6VZ3
	NPFhIbVSUyD6WONAEeO0m6GKE7sAYIGzMaepOrpeh7HTD0kfY3k57fhCiKXMDCcHYpY0R9Ce/a/
	gDJL8hX1wxpVcgR1vyxiDDULvEBIZkiNkxPyS5Y9cxne5sveqm4v9vox+a9s3HVtd+eII9oJ5t8
	8k5iqtQ4tCl3//bkoWP2yvkVzO4KNR2OdPgZ3e0KKJ4hx9sr2dCddN+a/lXGobrJMXyXFjO6ovB
	V48S3U5SVO9LbbT7VmErIto+K5bEw/Yx9zEYaLn8i/FM/D/TDfh02tMT0Cbmq6htky5PQ+IucsY
	NymOIU9F2NuUR6rPgxgxuHNLuyDwzDPhrhhic6nUfjEr3xEjn
X-Received: by 2002:a17:90b:1e50:b0:359:8812:7c01 with SMTP id 98e67ed59e1d1-35988127fd7mr5371869a91.28.1772517390666;
        Mon, 02 Mar 2026 21:56:30 -0800 (PST)
X-Received: by 2002:a17:90b:1e50:b0:359:8812:7c01 with SMTP id 98e67ed59e1d1-35988127fd7mr5371841a91.28.1772517390198;
        Mon, 02 Mar 2026 21:56:30 -0800 (PST)
Received: from [10.218.28.224] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c49eb72sm1199207a91.12.2026.03.02.21.56.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 21:56:29 -0800 (PST)
Message-ID: <9ff1645f-b2c9-4c1a-ae2d-96af416b08d9@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:26:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 08/18] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-8-95517393bcb2@linaro.org>
 <4fab8e64-8251-4424-974c-19434ee04c76@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <4fab8e64-8251-4424-974c-19434ee04c76@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Br+QAIX5 c=1 sm=1 tr=0 ts=69a6780f cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=c9pHKBabw8uT7j5izdkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: oroyjb6KBHLOUa7utvhmWi4W2J94Ouka
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDAzOCBTYWx0ZWRfXzZR1FCWJtk4N
 dOlJ8cjnQjuLLQG/Ovi8PFi5DNw1p6X/tkbbdJyZgDtZ0ft6Lvk4iKKQMTBpEySKkh8uoqzJ8ur
 I1VQrG7MyhDWeHMdhTv8PtssczIoylF8811N3aDRKY+BUKAXsTfyMGsxEtGAl4g/7+CHWW9Ik9j
 RO63QafG17EdFO6erkrmBUVW3jKttGNVI3K59kbkOTFjA8OKMbYgn8oYWszCRpJxTW7BslVZJQm
 7Hk9gVD14G5MkPT77qiaUPDpcC39SPgTNZxms7g3u6uupEpsgZUdl9Uyx3uGi3l541XcWLsmEYP
 Isr5cuYPMFR1wB+V67SWS/X/1Q9AbrslyvIx4ZwwJ9beKsdZFcO8l0I9EAijqeDoe0nElm7sVjN
 xwCpyBQDjBPJQ0qEf2jXiB/eXDdZGCHI/9TubUc+Kj9nJR+lGRTBNEtinWmRWhQAcyfx346ln2S
 lijoblw1Hfi1RtM/WIQ==
X-Proofpoint-GUID: oroyjb6KBHLOUa7utvhmWi4W2J94Ouka
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 bulkscore=0 spamscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030038
X-Rspamd-Queue-Id: A5A741E95D0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270287-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ade0000:email,qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,linaro.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


>>  
>> +
>> +		camcc: clock-controller@ade0000 {
>> +			compatible = "qcom,x1e80100-camcc";
>> +			reg = <0 0x0ade0000 0 0x20000>;
>> +			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
>> +				 <&bi_tcxo_div2>,
>> +				 <&bi_tcxo_ao_div2>,
>> +				 <&sleep_clk>;
>> +			power-domains = <&rpmhpd RPMHPD_MXC>,
>> +					<&rpmhpd RPMHPD_MMCX>;
>> +			required-opps = <&rpmhpd_opp_low_svs>,
>> +					<&rpmhpd_opp_low_svs>;
> 
> Taniya, in light of the recent discoveries on other platforms, does x1
> need a performance vote on MXA here?

Konrad, MxA is always ON, and with the current clock configuration, a
performance vote isn’t required because the clock controller currently
votes only for the minimum level.

-- 
Thanks,
Taniya Das


