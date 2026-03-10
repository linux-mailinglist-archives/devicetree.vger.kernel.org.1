Return-Path: <devicetree+bounces-273584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJRVC2wvsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:49:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C07E32526CF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:49:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3A163249C16
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4283C39BFE2;
	Tue, 10 Mar 2026 14:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oN7K8wnp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZxqittHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213DB39BFEA
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773152002; cv=none; b=sEGzsXme4Hw6umOVrhoWoz7kiTqQaEEnPeDvKYr+88qvDlvBHMan84MtiC51jTVXsatZpjsCVtAbBbKxeYzQ+70YemPjJreyLdnc/NQmEV4GRUAwcOs+oDuEsNWpYULOWh4k9/7DWwc4QBqOnmnRj77m4ug+bz6U5Y5C72UG2d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773152002; c=relaxed/simple;
	bh=T7pF14Q+SzOq0+K82CozwYuf0rO0iM9ZwPpSHzJlXLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pLNehDDtziT2olzN5R6Hc8I2TvxjEQVlFwAjA3SC4Uo+ZNQHfuQovgXuZTihWrcDpO1OwM3RdZErtY0oj1qkvcPAXjAoqMWr08HMUWh8uUEd6nLWsCRi57r8xsOQxbI2OlJ9smEJ6AQPw+MqUN76FyHeFMFUgFLUayg+fwWz2bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oN7K8wnp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZxqittHs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaVuq963384
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	opFks4pIgNp6vlYaF0QptMTfPZJU6vOsbC8WTDtmcOg=; b=oN7K8wnpWZmrxR6X
	kOz1EBqEOhkRRiEANii5ODpPRYrpeOhibMLeM/bS/LDd7uHUjMaeqGmG1B9jITFU
	QBeev9ABrLfLjU8zMFW3kTPjJ73MxNnLciInkIjxrUuzzjjbdYucmaJMFTX5MW1K
	5OsN/zdNhGN0PUJIj52wSHoA/pkkHxWxd3+5hEM0yH4REFJF9MD646jZm+oczYt5
	FgJWb2sa9Cp4YgZBR3Amcr0OunBG8BRs750H4mbkQ98+IDRRWHhS7/tEPmVFFiZo
	JM4LcoKYUpPYD2qkFRhnox4AASfJvrfD62Op3KCMxKIi7p/olfay4zDItMDT4e7r
	kwaGGQ==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct477khnm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:13:18 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94de9282f17so1989927241.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151997; x=1773756797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=opFks4pIgNp6vlYaF0QptMTfPZJU6vOsbC8WTDtmcOg=;
        b=ZxqittHs5Eh+FmJBk0m7ECnrP4yEsZOYnF97l/Lrliy7Qw0O58uE1FSLAFZkv6B2Fq
         T7/jIhI4xnAoBNvPzbDA0I+IKXeHzOGFPl+bWONS4/XqGCD7nDSYucj3Yfx0/2MJoX3c
         MfJ7rv1CPFVNI5K6iRefSzWLwhlQPyzA3g6NwyV5dlVTgt6E4Ld9A4CEmYmBVTQo+GXb
         QT2fSBy+tHPPJmV8MdYL82DSlKkAypXgu+95hbtE2FMMeTC08tn6tyGhmEi1eih3gd7l
         V/BCiuv8IKzER4zT47mh8rKluHSLs3c5dBW5Zg7/dB+EUSVgZleroKm0q106wNYjZkLe
         HJEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151997; x=1773756797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=opFks4pIgNp6vlYaF0QptMTfPZJU6vOsbC8WTDtmcOg=;
        b=TVWpsjUL4jLAWBiuCcKjq9AUHAEARnkR/OlerAXwQI89EkQTRYGgAcmJmBMa7fx1GD
         BHXLfJ99x2GkwrvuAT9Ny7jTeIG3gFaWUFqtGc50STL3c45H35TmAS5KFp2F2lTqVAwL
         fyq2fq0BfqklVBgrBykzJaq5kwwGJR4NmsWQAtwnkS2Wy5RtJg8cR7vEiRCGgu3PTTix
         NPsM7cs3DLOZ9IyclHPUpEvxLHN5LIto7SCXTJPp7lAZY4rhzCScRnnrJx+i8VO8lAMJ
         r8RyMHMtvpbbGSazNOQBD7BBp9BPwpVWt6UMKyFnTFtGJnMmEyTii1sON+mgn2HbY/+T
         5MkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLozqTZMQLLD4e7xnFN8zPzktsQjePBKg1vVYz3O/97HKjxxeilgaXdfF9pRnakqQmk3UXOaJG8KR4@vger.kernel.org
X-Gm-Message-State: AOJu0YxXXApLhWl6sGxQxfZt0/twNhgLcebFWTgtumkYJylLXM9C8fIl
	sw40bQ45CJDOVGLal4l3Ho4kcrQlpvoYb7B0OVJTDF9pK8BI7FK1iycC5qlKuiDEcsMzSGu2bVn
	HZG5x/18I7XLgSASMuB4XJUC8Q1LsnRfwMe53v3I/AJQdbBiguM2+TC/VEvuWtSw2
X-Gm-Gg: ATEYQzxDPepvodWfMNlKGL+STE21KkkQNN3/PemDfURBJWOMpgWCl+YbnjmgUG4LVd3
	LVJDIFkW/m/QOqXf4zFknON8B4+54bEf6H+ZbgDK2emdVJeGMFodMpiIcWO6/ujlF6oaKKgOLld
	H+HBzA9i3MV4E0GmAlcPL4QCK4btfhHEWSCl4l4/q5MkCuLxTKoUxLtcRWvV/eyX7a2F1UKXo18
	Ott/YVbFl8wTKopSQOfrIncXZk86NsSv/g1nzmeu+I1vBhZtPvBWXOipbfbe07dhZZrN/mXhoVR
	t8rbwhwx7+dhWg9OTN5Fjx4IJrNnPqZ0RpiHdDHjWkeB0nrRS7mC4lkFJn71c+8+IMr10GniJwr
	xR5Xoem84QPQi1ASPIAJ5+CTb8YLQSGTZyfMhjAcpEFhwKFJ189BajfoOlyX2DBUF8SR+fvsm1Y
	zrmoc=
X-Received: by 2002:a05:6102:3e86:b0:5ff:cc25:d60f with SMTP id ada2fe7eead31-5ffe5ef6299mr2724117137.2.1773151997453;
        Tue, 10 Mar 2026 07:13:17 -0700 (PDT)
X-Received: by 2002:a05:6102:3e86:b0:5ff:cc25:d60f with SMTP id ada2fe7eead31-5ffe5ef6299mr2724098137.2.1773151996789;
        Tue, 10 Mar 2026 07:13:16 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f15d51fsm493523966b.53.2026.03.10.07.13.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:13:16 -0700 (PDT)
Message-ID: <b8eca89d-e02f-4c16-b31e-6b5a86671bd8@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:13:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/11] arm64: dts: qcom: sm8650: Add power-domain and
 iface clk for ice node
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-9-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-9-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyNCBTYWx0ZWRfX9TTvbhyBwSju
 5byayFsbHeQs0vviqdFL9HpGwYFutYj/zn1pJ1eFt7DvSJhKFSQI/FxSZ/q677rcpO/7KnaZghl
 +VbHz7VQ3IGm9h2kcrzKJ7RpUSZVuNKUPRMD6qCETj0tvZRQExykGhLpCZPuvnxO2iLrhlAd50v
 7xdBc4dthC6PX18w3exvnPXwH4RbGZzHR+2Vjz7i4LDXam+Dh9uVUQVPK4lloq23O0IhbSXfvL1
 tUoOepQOwSvAWoNKiLk5/m9zawelBmoSPZGKNMxPdVxn/l/AGWa3fVUrDpgFfLO1hQElGZRRn3X
 cIP67xIPLSBHs5Q7np3wvY5J8dZvQAJby0quPTE4ObrPAL1OrwjT75msT6vguzXos1+RVD+X9a7
 6bHltsFbtD4gI9izLjYnz/wvTdus2NOiVSKIZ3XQDb1Lt8Mfqm+Cu+wbiAMlTb762IF3XHG69CU
 u1hr25rkaAlAHBEgw+A==
X-Proofpoint-GUID: IvmIjSSLxisuYxuI1NqrzJ5qzUAtrrUP
X-Authority-Analysis: v=2.4 cv=KLxXzVFo c=1 sm=1 tr=0 ts=69b026fe cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: IvmIjSSLxisuYxuI1NqrzJ5qzUAtrrUP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100124
X-Rspamd-Queue-Id: C07E32526CF
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
	TAGGED_FROM(0.00)[bounces-273584-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 9:06 AM, Harshal Dev wrote:
> Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
> for its own resources. Before accessing ICE hardware during probe, to
> avoid potential unclocked register access issues (when clk_ignore_unused
> is not passed on the kernel command line), in addition to the 'core' clock
> the 'iface' clock should also be turned on by the driver. This can only be
> done if the UFS_PHY_GDSC power domain is enabled. Specify both the
> UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for sm8650.
> 
> Fixes: 10e0246712951 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

