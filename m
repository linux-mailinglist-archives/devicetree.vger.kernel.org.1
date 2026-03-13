Return-Path: <devicetree+bounces-275206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJNaLtwEtGnjfQAAu9opvQ
	(envelope-from <devicetree+bounces-275206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:36:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A31BF2831DC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:36:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0F252300DF7E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE8A397683;
	Fri, 13 Mar 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bjr/0Kon";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XRbfSzBL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F813947BB
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405394; cv=none; b=hA5h8j1dik1vjTTyy5oVa4I9FlgsxkpyYdeNfGAy1ki792dUFbKxwkYlUROtOHNgTa8HmoR2CZ2NAfbGSEh36vvb3OUfF+NYULbgwwhK0G+pWClC+cR3YqY697Eo5gJisiPjhMAPihLR9LJD4wOtyy/6svakEe5+Juf8nA6DdUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405394; c=relaxed/simple;
	bh=Uz8iVbvl0it6RR2xbtpvIT0/obkY67Dsb9uRtPbs0/U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oRz4DNTOe7C1S5K0Vt3WQium3OQFwkm+6kKHy/OWqrXEP9wqZKVMe5vJ5cj/+0YFXf9D7C+MnEj0YH+FVFf01eO2gbzLqCKGax55Dzpv2WDkoVbwf6PbLoTL6L4YEnFvOr8fquQAZmImRqZ11uCnoV2wFFhAvE6eMVN1MX+bA4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bjr/0Kon; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XRbfSzBL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oSTM793119
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:36:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G/3y0RmbxVtUwFPf7puCD9RfjHJ9oaX5euEbJAp5qxM=; b=bjr/0Konlb58+A66
	SY4w3g1X1s8ykFazJHiRf5Vce29A8UIdjXtef+thhGWmDg0OCjSoZvTxYAYHYj6Y
	kwcZOD4OleyFtxXGf7QNOimEEmcgjDamGUDAic43zN3CSPi/XChErZrv9cZn8LCo
	P4IPfWI3W5Ldg31FLqRvV9lANbXTqUeiH4Yb0NdJGyxxSXXZ9c2CudJMi3nFrRor
	5V+rvvILwT4yeZASzWr6AeDaPJkM9/s7XJdGasOdMEk265wAJJJv1BqcvOgiejDv
	4FC7Ru69rirPUwEs1u0TbyOjSSgZchZnKWrUvmMLK3HCJyvDplmITBjQbQ8TwMwT
	LWETSQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt16vy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:36:27 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899efdcdb70so14599826d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773405386; x=1774010186; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G/3y0RmbxVtUwFPf7puCD9RfjHJ9oaX5euEbJAp5qxM=;
        b=XRbfSzBLOy252+f+aVgqiSt+Mtm3fUUQLd1/YIg5HzMMR8Ka2TRvRMo/mDJmnwLPU3
         pCSC6FXytHFDa6vcIHVxBMrG5fXkxe2fKoGimVsK+6dCQ5FcPraOY/+C8qLa9kQWKcNL
         +hcsiL6tKQa4MoSs33cOmGCt6DWvlXnfKP6HtO5Nlo54U5HFZAUIyV5OhJXKiaEnc2Mi
         jGlEXS6icX1TeQoYonxB4M/dsxI6FwErrcd+q/FTp6HQY5csWDN16GPaZmUVZiIhcJ1y
         VfSPlmwjdpNDboJXrw3qPvBOQ3iThoCk/gVLOelG43gK8so48nCcSIMv5FgPJVIMSeTO
         j2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773405387; x=1774010187;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G/3y0RmbxVtUwFPf7puCD9RfjHJ9oaX5euEbJAp5qxM=;
        b=gS+P8BKsp7+CdVmBVZEAx0j2dozCiP6tCRmDPWpdq3z9ZNT6bmKxqyzkfVNgBe+9fX
         Lm+uNAp772RLp7mxRVIJjaT6+o/8WrugkNC42ZQ53tjAYC+AkdHvir+lbZlveSWoaWoY
         o9XllPbC23ad4jdR9w0irx7RWt/yhanl83qu4fnKzpbii2hkP/lBOuHLHzsTWwyYrQqv
         eWvFde957XDyEWL5jd098Ifvrm8qAO11jAPz2MQqZDsNUdLAAYSQFLfiCHuQqc6hRpzE
         PgGmoVTQJJCrvjZcT84tKEkR8stQ2x4JYxZ0yz+pbFLrl7e0gc0WAKmKn44KBMMIlhhM
         twRw==
X-Forwarded-Encrypted: i=1; AJvYcCVR0BxHrIITljc4BcO3BN7YtBSWYOLFXZIqXH5fh8LQDnZduc+SVde8yj0zn6kLctd5tJd+36tYoA2j@vger.kernel.org
X-Gm-Message-State: AOJu0YwUuWBHG/6UoEpqoPoM3GMmcydFx3BxrDbkvSZK2qpntWNp7pX9
	2oYnm50wUOSL7G5YizIukXrgTtJqqwCezCp50L+0uD4cpfjMvpCXV08mfVSafj011dzt7kHmi+t
	QAyQrRrYu6BV8bx3FfNpaoMvikWdS7SjdowUhazpXhggll9wJULpHuCHuWjb9PwDC
X-Gm-Gg: ATEYQzxrTFg4Y7NqxEEjjOpGQgqisUs/ife1gWrFkV8f3u+O5M2klZs9jaqYPAyrnp0
	fCKsjs7dVl1ISQnEtx3JzzfV95zOgndMtBIelndFIF+O9mX5HXm7Bu1b12FFAI1OEXrnKmh98Lg
	vr2wsENsR2SybgHipoeQ2wi5kYMOXwNaF6Xeu7LGHAAPhyWqeaQfrYoS41VA4DJJbwGmzxOmC11
	lAw8eJ3Py5SDSjs9mbPECaiIduqZWAAKIb2U+KQ715rEz5nADMt3CFyZHcXp/wZokky0devyRDW
	BEXA1804er2v6vPbapxN/WaAdv/AdU2cKgKY1GWDdCqZ/H9CZm+dr29ToKTAYdJbwSkwkyVKsgU
	tQ8Hr5ZzBFoK1QSwMXhs2qwUAS2Q5PJxEi95bjlJRaPWgWdt9zNuSj8TsNQyiPYUpE0yROl4A6Q
	0GG+s=
X-Received: by 2002:a05:6214:3481:b0:89a:732e:f805 with SMTP id 6a1803df08f44-89a82065cf6mr31259326d6.7.1773405386603;
        Fri, 13 Mar 2026 05:36:26 -0700 (PDT)
X-Received: by 2002:a05:6214:3481:b0:89a:732e:f805 with SMTP id 6a1803df08f44-89a82065cf6mr31259086d6.7.1773405386181;
        Fri, 13 Mar 2026 05:36:26 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cefc590sm42822566b.48.2026.03.13.05.36.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:36:25 -0700 (PDT)
Message-ID: <10235bd5-5aff-4705-b00e-5197701e2a7e@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:36:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-xiaomi-beryllium: Introduce
 framebuffer
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Petr Hodina <petr.hodina@protonmail.com>
References: <20260311-beryllium-fb-v1-0-408a580d125e@ixit.cz>
 <20260311-beryllium-fb-v1-1-408a580d125e@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311-beryllium-fb-v1-1-408a580d125e@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b404cb cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=sfOm8-O8AAAA:8 a=o8upt4Ul7olqoy0RcUgA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: 6z4tPDE5hHvAUnGP8d1wqk5ZUjTjZwIo
X-Proofpoint-ORIG-GUID: 6z4tPDE5hHvAUnGP8d1wqk5ZUjTjZwIo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5OSBTYWx0ZWRfXyVtcZpCpRcGY
 1iI2xKfjUJdleoQivZqWBnKwNal3u/HCnwDdgzr/N8G5l6x5xCs+7aebOguektou0SNKxDUZd/A
 pIf82WLPyAvtbi4bG6HcACPSBW79cdgrxke+reSrllPwflusrlaYGCsYe6kVk6G0zISO0rnpJCm
 SW23KlrFbKdi4OiRL8beyw9KKGbrpFwyw/Hpm3GM+jUPLuHkqBFtxEWb3u8esmNi0YigvLvQ0MB
 CJVZwVdjsNb+M7qy5DxRfEBBVePhvATDsHJ/ZNXDkoUMrqWfxcDuC4/sALskWWu7c5YQdyvOpfN
 tMO5Xu5e8KdWp06aP6iz5PHqNo4GIoqc6Eov2E7V+WhnK3R5ydN4HzZ5H4sdZyxXc35U4DSc4xu
 hDknHdbDzMFvCH9RhLNh5lY4J+jyd33WXdjXsVgeYfZuZsXK5aaLw4mmtWYSlwOE2ur1JFlaIKe
 139ea7UdfOeoRPxhgMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130099
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,protonmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-275206-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,protonmail.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A31BF2831DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 7:44 PM, David Heidelberg via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Add framebuffer for early console and u-boot support.
> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi    | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> index 01b570d0880d6..bd6d7a3cfc0ac 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> @@ -39,6 +39,22 @@ aliases {
>  		serial1 = &uart6;
>  	};
>  
> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		framebuffer: framebuffer@9d400000 {

This node has no 'reg' property, so it shouldn't have a unit address
(after '@') either

Konrad

