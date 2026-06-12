Return-Path: <devicetree+bounces-310942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jyjqB14DLGp0JgQAu9opvQ
	(envelope-from <devicetree+bounces-310942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:02:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E81C679998
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:02:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=RqpfpQnL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310942-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310942-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 51942300250C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 425B13E8C44;
	Fri, 12 Jun 2026 13:02:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CF03385A7
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 13:02:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781269332; cv=none; b=lq6tW9WwVqDsgFgbMR5GJGnNLFA3FP1kxcU9ARy9nVtH5YOYHI0rcGWr1C6ZNN6nlTEWfOCYuaAX3RVuBOMO9zYQ/+17g5mD4VPH/5REAMLJzI1dUU3cddDy7Xx8K+tpB2LhPdcpLfn/bs1B2+Q6HZCwbMEwuXZe2kP3SLqJZa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781269332; c=relaxed/simple;
	bh=BqUHj3OyZ5XxeRrjjNn/bQIx3mif9N/UHlTx3xGLarU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DiMINz+20vEbhWSIwIWgDaHLlFQg8cJ3Ij7Z3e3huYC2PL0suib7i04bfvoakZ+zmq8s2hn3aEVh/FyaE/xhBIuHD1OBsOqjPPRfbA1yW2+jU2zx3cs5vvtZCHQavJkpA8xzzroBiAU7mMa+btJ0Xq1BOl0THadXrJx6NdHxyP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RqpfpQnL; arc=none smtp.client-ip=209.85.167.48
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5aa679cc2c9so133010e87.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781269328; x=1781874128; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tJu8lRphXkXqJvq1i24dWnhS2R0S2p0Jn7kZcCwfdk=;
        b=RqpfpQnLWwB1CnJ6DDBUzzGoVQbLLmUKEJ8b/rSZWsfpzVTaFffypC9I1QJZqWwCaz
         aiDhTZwp33UCmuEzG6QfT3FNDD2jut3qkG36SV7+LHsHopTX5gqoqQ9JdsSDF8cF4Z94
         FuVNgZZWbGUBOORE2n4fztwSxRBaoPfLUJNcN7AJD21gTgD2YkZ02ODq00U/f5FZ+hHy
         TrLWCYltMy36vg4eWpMlHdrp+a8lXAjNNNOxmC7x42xVQlM3hBcJnyP4d/dr0LHUhWAb
         NLfCpxno4oH0yk2eUz+qygct8yoUYG0lDGNAcbVt17p3qdTUvNiirvSB/2TCLthP133s
         H85w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781269328; x=1781874128;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4tJu8lRphXkXqJvq1i24dWnhS2R0S2p0Jn7kZcCwfdk=;
        b=NLSmW9pbqSeZze/wH6f6bRODGrjo4fixKx/34siU4DNWYCjdXxk9iRh7dkTHCB+PmM
         kSM/Swfd/QkpVn4woUYdGAVtsbsz/6M9jRpP684thAFdDdOWAA/QFA3e/zjlsg432lhD
         H42BJiPOp2fesak3mQRRA2WC5XwQeL3LxorNoQAYPpBtqDR1EF5sRmi9IjPWmVHamkt7
         XsJbtcToPrH5oKng9y/B8iefdqymbUE+sjrsc/G1fHba7WuCzMJ42ZOquDf72IZhY7uV
         DeI52oBwaiPVS1PSn06urIIXbq34ET3ocvBELUagmjgs8czI6MqcqGhCIvqOG0i7udrT
         8VVw==
X-Forwarded-Encrypted: i=1; AFNElJ+PdpygLwoW7vJYPIfcvVLmDaCL9M0fJZwvHh1NOEW73iIJRf+yYWBWa7BohzbY4FFUBhQyb4h52jD1@vger.kernel.org
X-Gm-Message-State: AOJu0YxHzgyjkRPRp+5TjrtECKB63yu5pt+42j9x4sM/71fxduQkOa28
	ypigHwByMajjIEihCpoqPIpzwAfUC5M48bkiYAYNnk9k/cFWu+UcE83V35mkF8ewkPI=
X-Gm-Gg: Acq92OHDu/5gYdI0YiNhVkVbLez5WrjAnkoHfOs7fXBXrGIiwRwPb9fJGZ9aHlCROOC
	1tBLc9ZGllhWhMFEYIzFDs2vvLkLVsMaxbAPWKx6vYtBSqXuQ3crGrL9CMCov0VDivKIuQuTUTZ
	BygDjnFkE8xZBwYZ+nLIN7dIN51GUBvnFMcJ4zk0htGKndJBNCAN2cLodtO/S+TaklSboreAm5Q
	VCnmCo5lSFcoiCcgB5ZHkcVI9wtqwuGkz3X7WINuGKckpGeeWLTRxTpwpn9octNdVGLar1VPFsp
	xToDv52jHxzGrpF1HLa2q4heJ7yyXQCnllbJ37vkh/EqLbTn8oe99DEcNy7oX5kNmEB+z44iHOK
	Q5pDIgpEbGDRI+WbXzGgiIkZYDu3P0A48E0jFZ2Sn+CJFd5JHBro4Ue/rzjb83DvlD8yNVlcZc0
	hfZiYqdGMLYW14vwXtHmjSupAtzoRWNNvzOK5sj7s0dv3tqL/kBJ4iPFP/kbUSEIo4RbpNbiOZJ
	BkaXA==
X-Received: by 2002:ac2:414c:0:b0:5aa:635f:7c08 with SMTP id 2adb3069b0e04-5ad2db710dcmr281855e87.7.1781269323606;
        Fri, 12 Jun 2026 06:02:03 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2e170d4csm538304e87.33.2026.06.12.06.02.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 06:02:02 -0700 (PDT)
Message-ID: <ba610863-cd38-4c31-bd6b-0748c86adfc4@linaro.org>
Date: Fri, 12 Jun 2026 16:02:02 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: kodiak: Add camera mclk pinctrl
 definitions
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260612-kodiak-cam-mclk-v1-0-fd294ff003a2@fairphone.com>
 <20260612-kodiak-cam-mclk-v1-2-fd294ff003a2@fairphone.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260612-kodiak-cam-mclk-v1-2-fd294ff003a2@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310942-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:luca.weiss@fairphone.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:from_mime,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E81C679998

On 6/12/26 13:55, Luca Weiss wrote:
> On different boards the cameras are connected to different pins with the
> cam_mclk function. Add the definitions so that mclk0-5 are covered.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   arch/arm64/boot/dts/qcom/kodiak.dtsi | 35 +++++++++++++++++++++++++++++++++++
>   1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> index 62daef726d32..903937947811 100644
> --- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> @@ -6505,6 +6505,27 @@ qup_uart15_rx: qup-uart15-rx-state {
>   				function = "qup17";
>   			};
>   
> +			cam_mclk0_default: cam-mclk0-default-state {
> +				pins = "gpio64";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam_mclk1_default: cam-mclk1-default-state {
> +				pins = "gpio65";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam_mclk2_default: cam-mclk2-default-state {
> +				pins = "gpio66";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
>   			cam_mclk3_default: cam-mclk3-default-state {
>   				pins = "gpio67";
>   				function = "cam_mclk";
> @@ -6512,6 +6533,13 @@ cam_mclk3_default: cam-mclk3-default-state {
>   				bias-disable;
>   			};
>   
> +			cam_mclk4_default: cam-mclk4-default-state {
> +				pins = "gpio68";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
>   			cci0_default: cci0-default-state {
>   				pins = "gpio69", "gpio70";
>   				function = "cci_i2c";
> @@ -6578,6 +6606,13 @@ pcie0_clkreq_n: pcie0-clkreq-n-state {
>   				function = "pcie0_clkreqn";
>   			};
>   
> +			cam_mclk5_default: cam-mclk5-default-state {
> +				pins = "gpio93";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
>   			mi2s0_mclk: mi2s0-mclk-state {
>   				pins = "gpio96";
>   				function = "pri_mi2s";
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

