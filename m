Return-Path: <devicetree+bounces-265055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJP2ObfAjWlt6gAAu9opvQ
	(envelope-from <devicetree+bounces-265055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:59:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2B912D381
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33D7A3052889
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E27E434EF0F;
	Thu, 12 Feb 2026 11:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iA9l3ett";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VkgeVTEL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C122E34DCE2
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770897570; cv=none; b=uz7tphmNKc5n9YJ6A0J2iH1pLWklR1mEqmY3J6i4tVJ6eiiymHbCzz48PnRIgQuHD3nDRaHOfOoEpf3IRHhPpriY43jbAVayCpJDMpnaDE4c3VSlgQ1FszpU3AP9avz76oSiKaWO+ZoUWzPp2jGGIf+G5DkrIopR4+p1ft9Xtfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770897570; c=relaxed/simple;
	bh=CWebD0+N2o43KdRxLZm5fwLFbcAmtgFlsKb4dIUNqPE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LAX5KuI7pXwKyJ8HN6BdXy8qFPTQ/7Q/AvDpUix6lKADs0CtY/8Qj517f8a1t5TiRV+t1zqabefGQD/WIluYe8t0RaoYOgzKTpYGll4ttjiIcg6M38yVlJ41Od6tJ+DP03eM9ou66twoq7a1s1Qol8UHvmNccfZpSokkBu1Q03g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iA9l3ett; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VkgeVTEL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAMhf33145515
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:59:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HvbUd+MPwyByBxAMzW0j/eiTFckQOxdPgHsmUjNyVSU=; b=iA9l3ettflYd2XeQ
	puj3dNk/PdC+sQAnrgeVJzp27HSWDQFLCy9vTLImwU3SA1wXjC9LltfpBj+E1o3m
	0b17GS2CKEbUJxarp+1rgRE/kZK51a/yWsjE5MwEU5POp0ETyEeD7wk2V9FVh7vK
	DAN5frjewPUIA3ObAWarlHhL35gu6BHGBBrSdP2M0hPOL3nsCTe2+3/JrUmdTY1a
	RxxkuQWPuLJ35P/JLSU594mzFbyxnyddyPm8MG9LlhXBbunXlZ/RLcjlP+e/8igE
	MqXrCng57ttU3atNV23ib+Lu4HqU7aa1BIbBl/EtYFjPOLc+tvaNrtHYBPLciIoz
	a7UkBA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8ukt3qwn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:59:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb10b964e6so150222985a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 03:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770897568; x=1771502368; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HvbUd+MPwyByBxAMzW0j/eiTFckQOxdPgHsmUjNyVSU=;
        b=VkgeVTELHOvazz38OqaHhsmeR5NRHff+pL3d5ozXokiPEV2KwR8lcqYGNr6O36PG8u
         qb11mRLfgplZv/94z3jkzk46AYR5AW8SQhJekqF1SchG/8vMEkRbKB8WL1O8/y9Mw2NS
         cypBCu5c058OXAfU9V9eDPEnVKUJj11qdlQWXeDhrzvpUkoT5ceNANpbrIZj+MdVOqgK
         S0F2HH5gPDy9f2hXjy6rz2lhMd/UKHp97MTV1oQT5Ea4rfyZCV35jCRhVWJh1c7NbPGy
         /u0qx94XEXkLAEE3BVeZyVWlrjHKb5bNObHA1eNf8XVN922/Nor7MkmmSwl6XyxlMJkw
         v4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770897568; x=1771502368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HvbUd+MPwyByBxAMzW0j/eiTFckQOxdPgHsmUjNyVSU=;
        b=NJOlxMFUuvX/Zs15OFwBlkMbHXOGyHaovrAg+ksb/VCBaE+XqZrNV2jKSsFB/QVPIi
         t54nq0eJ91kamwOZ6l/WEmiKB086ucwg1KmvjTkfPcX9Ta9F3gsfJeCdnjjASVBkwHKn
         cbscMmSuoCnO8YH1IpaTf8ujT1K5nfzEDJuQz0/aYkR0y6/jPgIjMjnvrPaPaCKnP1QI
         y+j0+3chwYtzuO22ZAsgGeGf4dv9mCl0eVKYSDdkRTlRPqr2mofFwB9U69WeLrku1Wr2
         4wHYHJOPZ1Ok5p/IzBWkUmvKKFqDMljhnGVmY3MX90JyllLka3pDMgsFxlUhfc01LJ9o
         WOjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7fiEB4I8tmoReFPKunkZU2tCmLWiUc8ZAAHcuixuF3fRUZXxk1C9gBEcWpBE1pYPDo9RETGkKmSuX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw33v3I7sdIQupljAjkivP8of1MTy2yWOOunDhM4u5XdDeRjU2j
	pVpLAqsiVQwzp0NtDhRf7I9yqRrxuDyeVAIC68M1rl1WWcDR8fgObvDo0VVhLqrOzQQGMnUpkmn
	WUC00tiXYQakWo3GDqhvbJr8Jt5q7C0SlmGiUhPJ0lC6Gd60cqLUAwWEE9vqHgIVz
X-Gm-Gg: AZuq6aIWxrxuC4JCoEGfb74ouTufXQLyoG8E9X/UapsA8MI8dUEllLASsmdVPoRej71
	wOZQZSsJ6dHbZg7SSt0iClhIqxm9WVCPZajw0aZjhDO1iF/MRCeqZM4kmPtNigKP2ox1juv/0El
	ukX4FpLIu1qBcuS6Wv5/5x2yhL9SygFQPm1liBGelP+liUWgP62uHYdYIl48huXrSI6MsnjWAJz
	UwZl1vgsOv5Eni08dSy0c2dCuAXXqNgfBWmE2szGwAK1hMnP7/43O+yqBNXlLSzLVFFuXR5pEwc
	MT0DnF9zajx4l8uR3bolcWo4oabGcpKg1Lpl4f3RK5j11ktE+9j9NlZbmPUpFLqo2ff/bxhqaZc
	ahaOFdJTm6VJ5VWpMMmJKoLBT3GG1AaibBLwA9BkJ/4QwftVvoXgSLZ0s4/27PT115mG/hGmIAP
	6bDZI=
X-Received: by 2002:a05:620a:31a4:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cb33167808mr219626685a.9.1770897568015;
        Thu, 12 Feb 2026 03:59:28 -0800 (PST)
X-Received: by 2002:a05:620a:31a4:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cb33167808mr219625385a.9.1770897567618;
        Thu, 12 Feb 2026 03:59:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf38caasm1601501a12.17.2026.02.12.03.59.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 03:59:25 -0800 (PST)
Message-ID: <2c2a4e27-fea6-46f5-8d8f-b5869e8dc54b@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 12:59:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8550: add cpu OPP table with DDR,
 LLCC & L3 bandwidths
To: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260207-sm8550-ddr-bw-scaling-v1-0-d96c3f39ac4b@gmail.com>
 <20260207-sm8550-ddr-bw-scaling-v1-3-d96c3f39ac4b@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260207-sm8550-ddr-bw-scaling-v1-3-d96c3f39ac4b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4OSBTYWx0ZWRfX07QYKho7LznT
 dKFHN19kc7sl5Qug6Pzy5US6Mos/TfU7vo1avdSDdZ2CRAXc+31Acw989p249RDgszDu3y0lmxb
 UfIY+HV9LvBz1+B/03jOe2slLUFEkjW7ln1mnXfSyrpMT5TgB+gd3cO89G1FdsbjH5ebWKtLIWA
 cxztlHlhefdxJ+O7EsTztiboGzbWXz24Nt27VoZyC9TpSG4RfbAwNZi82LywVtsGYicRY216CS/
 ioEbPDpBJs7ZdjKyW6sLLmkNlwePr8MT4SWO81XgUZMaI7o+wk+jaCPcqItfI/63DrhtqOG+vpc
 PdzMSmbGqlK432Z3vxpLPau/IrFyJnbeTiZmZA/kVlKcIZK581YCZ0I6NAKJI5t+2n1Gh0yWJQW
 wq7PK0o8ZBRIMTgZEtDCihzTjPhO9S+zEHEfrWLg54A/B4/o769U/5GqFQ8Decu9OlomLX+/8Nw
 IcvNhxqrheUFVQlJNTg==
X-Proofpoint-ORIG-GUID: H36GaS3xGuDNmfsk7HyXlJNSP_b048KQ
X-Authority-Analysis: v=2.4 cv=INIPywvG c=1 sm=1 tr=0 ts=698dc0a1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=ze5Wrr8Eh6wvvEUSacsA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: H36GaS3xGuDNmfsk7HyXlJNSP_b048KQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265055-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4A2B912D381
X-Rspamd-Action: no action

On 2/8/26 2:28 AM, Aaron Kling via B4 Relay wrote:
> From: Aaron Kling <webgeek1234@gmail.com>
> 
> Add the OPP tables for each CPU clusters (cpu0-1-2, cpu3-4-5-6 & cpu7)
> to permit scaling the Last Level Cache Controller (LLCC), DDR and L3 cache
> frequency by aggregating bandwidth requests of all CPU core with referenc
> to the current OPP they are configured in by the LMH/EPSS hardware.
> 
> The effect is a proper caches & DDR frequency scaling when CPU cores
> changes frequency.
> 
> The OPP tables were built using the downstream memlat ddr, llcc & l3
> tables for each cluster types with the actual EPSS cpufreq LUT tables
> from running a QCS8550 device.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---

[...]

> +	cpu0_opp_table: opp-table-cpu0 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-307200000 {
> +			opp-hz = /bits/ 64 <307200000>;
> +			opp-peak-kBps = <(300000 * 16) (547000 * 4) (307200 * 32)>;

I think that entries below the first in that memlat table should use the lowest
frequency (i.e. if (freq > tbl_entry.min_freq) { vote_for(tbl_entry.bw) }), etc.

You can retrieve the list of supported frequencies through debugfs if you apply
patch1 from my my in-flight patchset:

https://lore.kernel.org/linux-arm-msm/20260108-topic-smem_dramc-v3-0-6b64df58a017@oss.qualcomm.com/

via /sys/kernel/debug/qcom_smem/dram_frequencies

Konrad

