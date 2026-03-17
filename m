Return-Path: <devicetree+bounces-276591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yH4nKAAjuWkrrwEAu9opvQ
	(envelope-from <devicetree+bounces-276591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:46:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A8A2A7250
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1924D30A170E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62C2136EA8B;
	Tue, 17 Mar 2026 09:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zu42lAWC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UV6Uf2xp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3732C37104F
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773740072; cv=none; b=B50/1V1SFeMuHy0mk5+Qp4X0KXB8B1eFVkk8dxKTgCHj2vjcEs7eT/cLSaDgK5bN5Tmyh97zsa2i3l2zcsTe+frMtR0eVn9sabvw1s+WAb+Bd9+6El5mX8Yp4eFeqX9ewnfd6eSQ3KstQSPzrtU1nTUBy1eDcRTkVACVVgWRKY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773740072; c=relaxed/simple;
	bh=/lsYVZ9Vzpwq8SbhKygdqkL5bqbBSELzjVdxtFCU7s4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TZHGE2/5ND0p8kzra71Hdx7F/tw0D0EZlTGmeBf7LQaV301wSnkKg2C7KszlLLC38DDiVoOrnQ/ujDO9WDjp3qEFV42qpE/fCqxqQELkL1f4qtWFz6kFJGFdJWNYnWLEqxIM9GlOEydvOfThNxs6A4PWI3JoV6Iq3g9wv0fJzQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zu42lAWC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UV6Uf2xp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H9GvfC3124513
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IKI5i0aa3Bk41AJ8w0vGE1zPHR4tMdg/1/VDVNgJCe0=; b=Zu42lAWCZenhFWxL
	iDqX4j1qmDoH73RSHOq/Qqwt9ZYyWBPc5nN/W8vXq8yLxli2OKy5V7dGEI4OoFLz
	d9d2VJvV0COorsRmSne1TZA16aA1XONZ6EMEVk6M/DkzaOMEB1DyYVmK5kjGbEy5
	4FJCOQal40mpbkmBexXSFtX61nRg25Q0DdYUi1LzQi3F2fEjitbQaoPE4tdatvHn
	VUH4g9bush2EIoTt0OSCnM2aFn+feg9RwdVmeEnJp9iwRW6om7kIBNraRZtKurB4
	FjQcLhvNfJv81w/gdp+R29hcM1N4AMGCjoQoL1T0i47GOotDc6AhfQR2YYX/0TjV
	A4kBMw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxfsmmh16-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:30 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aecfe69196so47870985ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773740070; x=1774344870; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IKI5i0aa3Bk41AJ8w0vGE1zPHR4tMdg/1/VDVNgJCe0=;
        b=UV6Uf2xpNpMBYjVZUHOCe/Y7Uz3Q9OEfzqGNaw5HuDW6+VxeB0aYHTmFzuSWbNoypD
         xt1DsUkEgXQjtjnMIW4RPf58LylBsN95Mc3RdXKXcFSbEEJZgc5AHIGaMvood/v9LzIx
         Ua7rGuxLAisVdqlDshvrrX8zMQqBAZLmvjugavZtJ3nBuZ+VZ7wUtLSxlYTC4XoYP8xk
         nEh1pQGSdoiVDe4KsBRu2uWTxAowCawTpJ8T2Woa3ZZZkLFCn9wM8Jt5LQjrlmLzh/mk
         tTGWq1F150dia/+nupyo/qyD9WRzs5CYqx5r8ySCcBrZl3tvY5mGt3b+I8YT4X4qC7Gw
         Ky0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773740070; x=1774344870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IKI5i0aa3Bk41AJ8w0vGE1zPHR4tMdg/1/VDVNgJCe0=;
        b=HbmaE+YkQqDSAD5ShZ/8/1tNbqWHjIyoqCkdjK38UkEUFAOd2PSJxvHrSEju3BL41W
         IRre31qp+XdNbjd2s9arbGCpjGgAulKZvfUbi3X50qXaG6VPOLBOtU4/ov6xkysD3uNN
         ZXbfMFknoZKRbNYkpJld4wibsM89TA4t0d7Q5MTbE8JepRX7xWr+ZPlgB29o8gkHiT2r
         n56SIB3pXvHfyN1z0U52XILrhzV/wNIqU98gAVjTsAzUmSEvP70HufBVzEBHBwxPeQyE
         k5tEtB/IXMLZddxUqJZuy/1MqdTjh5ELAqfaBX5B0hWEfSpVLKP5N9iY47ZMb9xs4uXX
         un7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUrMbzCoGzIlH78W2Lv/aqP2cbhb/YicQClr2TJ8nOTq4O4LOcG+2wofaYSngMS37+/nDFEt1+F4xTL@vger.kernel.org
X-Gm-Message-State: AOJu0YyOSbrCpo9WMbgCkfmRdghx5Wun6LdKaXwQxftfy+u2ev6dNOy3
	fwxDZcMqxGZ6TgEsdD9Fwyugiv7VzfOzUt+ooo8zdVD+XksKM2Le0uWZF7AxtMuuZDl7cWJZhWz
	iOPclBs0HZ/uVOfgg4lJfn2l2Wn/m8dgnQGmoh88CJ6iuiju7yVLK3KqWutO0KuPy
X-Gm-Gg: ATEYQzxf7R4S7B6gRhrpLgIAumjlfYOcZ/Ui8FKutb3kwZqNGrf0Zw6sk+flFEc9edh
	0xU6HEetlri3cXjiw7fWYiauwM7VMLoXulMqcFd50xCJcN75x9UkS9ZBaRvLGC9AfgpWc+b2jfv
	0aMutp8YrHkjjLtAJztNvZey1dJgj8XP1mjcGA0Uk9ejxrhzGDN2g2u1yUnqt1fKZbJd0oUdEWu
	fyxyO+qvhCV6gOb7iTWnONT3XvsPrYC4ECvfKoCh3baEKMXRmO6vIBKajFerZ8avnHqmOh1G+7y
	QYVxBvFFZTi01Pd7/ldxPpkMqXjqmhu/VlwPSWGldlrpSvWUJrAl5zn9RZ60mHzw4GE4JJayqUi
	LPQm3UL9igKkUh25Bmuu+dmF2oWPKdcyGk63pvgXxPCP+Y/6SGNg=
X-Received: by 2002:a17:903:2b04:b0:2b0:4579:ae6 with SMTP id d9443c01a7336-2b04579119cmr101740495ad.38.1773740069842;
        Tue, 17 Mar 2026 02:34:29 -0700 (PDT)
X-Received: by 2002:a17:903:2b04:b0:2b0:4579:ae6 with SMTP id d9443c01a7336-2b04579119cmr101740385ad.38.1773740069343;
        Tue, 17 Mar 2026 02:34:29 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b05f0ab17asm62039855ad.37.2026.03.17.02.34.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 02:34:29 -0700 (PDT)
Message-ID: <60b34ab6-7bad-4436-9686-a8f6e821853a@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 15:04:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: Introduce Eliza Soc base dtsi
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
 <20260313-eliza-base-dt-v2-2-bd91367d860d@oss.qualcomm.com>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <20260313-eliza-base-dt-v2-2-bd91367d860d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4NCBTYWx0ZWRfX9jHQRtXbkUq9
 vWrcMT339tgjzm5bhxRYm8Nqz7IMxdHPGiktBdfkT5Cr8toL1XfrQxTAxNiwM9DNx92QNpg9vSG
 qP2aWx1GmtbpuE9S43HhXb1+oVuHFtksq2Rx+wyQrjwBYGTGxL8F7Tl78eqVdwMtqtI8g6PCq0H
 WWbD8vNPr+I5ZdH324Z+glzZg61TjxkOBVDkw/HcGpF7VYFlhZSgNSNYqXeHO+EubnocKpHxuDu
 BcgcnkKCQ4lQDgQVqz8hjquB3KNzktKVQJsogP3sL9vupgRJnZOlq79bhlm/DA3vqcxvkb90zaJ
 BxL/eKA+btE1kvKoPPkqPdNeyiPF1iDGY3d84mWMPVoMPrdZSREaj2hROkp2zfhLw7ekhow5YfL
 MaGs0zd0f2sEVPbeBZz5n+hxr7um1n9F+Tub7NROZVIBSjZuEuVZ/iwKtmH93HwgnTMx6irwSYf
 pgrUrax3ww+vPPx+LIw==
X-Proofpoint-GUID: dAoOepIsB6zMQAMoMhiSL6PY44AVYrNY
X-Authority-Analysis: v=2.4 cv=V/hwEOni c=1 sm=1 tr=0 ts=69b92026 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=p1HlqQK6dgA6bnMk3p8A:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: dAoOepIsB6zMQAMoMhiSL6PY44AVYrNY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170084
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1f40000:email,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,1d88000:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276591-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D2A8A2A7250
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Abel,

On 3/13/2026 6:53 PM, Abel Vesa wrote:
> Introduce the initial support for the Qualcomm Eliza SoC. It comes in
> different flavors. There is SM7750 for mobiles and then QC7790S/M for IoT.
> Describe the common parts under a common dtsi.
> 
> The initial submission enables support for:
> - CPU nodes with cpufreq and cpuidle support
> - Global Clock Controller (GCC)
> - Resource State Coordinator (RSC) with clock controller & genpd provider
> - Interrupt controller
> - Power Domain Controller (PDC)
> - Vendor specific SMMU
> - SPMI bus arbiter
> - Top Control and Status Register (TCSR)
> - Top Level Mode Multiplexer (TLMM)
> - Debug UART
> - Reserved memory nodes
> - Interconnect providers
> - System timer
> - UFS
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/eliza.dtsi | 1317 +++++++++++++++++++++++++++++++++++
>  1 file changed, 1317 insertions(+)
> 
> +
> +		ice: crypto@1d88000 {
> +			compatible = "qcom,eliza-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0x0 0x01d88000 0x0 0x18000>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;

As per the updated ABI for eliza and milos which I am proposing with this patch,
we should have two clocks (core & iface) and a power-domain here:

https://lore.kernel.org/all/20260317-qcom_ice_power_and_clk_vote-v3-2-53371dbabd6a@oss.qualcomm.com/

Regards,
Harshal

> +		};
> +
> +		tcsr_mutex: hwlock@1f40000 {



