Return-Path: <devicetree+bounces-298321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6B2DIXoXB2qQrgIAu9opvQ
	(envelope-from <devicetree+bounces-298321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:54:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A99754FF79
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 084B13000B20
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C67D25782A;
	Fri, 15 May 2026 12:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4+NXt99"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519DD257423;
	Fri, 15 May 2026 12:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778849453; cv=none; b=G3zoLFW+DcZoDT+mY/LJ1xv/1us40qKfxqxCrupxeh1FDW1YGuAFP2uCLD7EvCmQVWJy1fHn0PbLtzai7lG77qsqhxQYYZL9tSFxIdRHspEpMUw6Va5Bbsor/w8mJDb0RsEBs/7qSMpoDdQSSalzfHX+Q7IM6iiv94JQ4ANSKLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778849453; c=relaxed/simple;
	bh=BwVTF84eE4xnvsRPWcGZqxsI0NEzEhTZtwapdx5czV4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jkP2BAdTogb+AUhV0b17CNHLGDSI5mICtf+6abrfYGFaGiekT5h6O7LXpBdk+xrWN8k4pNVEa4PsrBpNGXEsQcl9uuwhj3Dx+Hm4rheo6uCpmnDCieRzkSuq9sM2+D4daoogKjqeIuNt9BJMccbgHIp9bUWrsCBGYqBvO1r7nGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4+NXt99; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8613DC2BCB0;
	Fri, 15 May 2026 12:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778849453;
	bh=BwVTF84eE4xnvsRPWcGZqxsI0NEzEhTZtwapdx5czV4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=o4+NXt99N/qSx/AW7vO72u6hgbJZWyHZLDNyFDkViqlzZhlExd7Yz7d/icDeDY6fr
	 nZclS5Ptr38aioh5GNH0nMMyypvJW/44s04Cx830v3pdN8rF8XW4lqMFYe536IEiE2
	 oWGLxyEns+Go5d5Ej+KtMZgds4iMVFKostl87MHw4YBJss+CcetR4P0iatpEk0rwRt
	 UU7ZU8fr73+C2kHeC1ZJRmgottl1OqtpKOfcOa3fwHnLO259FWZo9S0a7xaeJveVEW
	 3XGn8ONr6ru1ntiEUIqCl+IcO/MzqpumHwFDU49gYAIOrr8q7USJ02WOdwDaE+mdoO
	 DKRQ5mMTQ13Ew==
Message-ID: <f1a7f745-e7aa-4ea7-bc64-fa9069f7fe59@kernel.org>
Date: Fri, 15 May 2026 15:50:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: Add Qualcomm ipq5210
 support
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20260514-icc-ipq5210-v1-0-b5070dfbe460@oss.qualcomm.com>
 <20260514-icc-ipq5210-v1-1-b5070dfbe460@oss.qualcomm.com>
From: Georgi Djakov <djakov@kernel.org>
Content-Language: en-US
In-Reply-To: <20260514-icc-ipq5210-v1-1-b5070dfbe460@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2A99754FF79
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298321-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[djakov@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On 5/14/26 7:05 AM, Varadarajan Narayanan wrote:
> Add master/slave ids for Qualcomm ipq5210 Network-On-Chip
> interfaces. This will be used by the gcc-ipq5210 driver
> for providing interconnect services using the icc-clk framework.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

Acked-by: Georgi Djakov <djakov@kernel.org>

> ---
>   include/dt-bindings/interconnect/qcom,ipq5210.h | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/include/dt-bindings/interconnect/qcom,ipq5210.h b/include/dt-bindings/interconnect/qcom,ipq5210.h
> new file mode 100644
> index 000000000000..90c0395e4596
> --- /dev/null
> +++ b/include/dt-bindings/interconnect/qcom,ipq5210.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +#ifndef INTERCONNECT_QCOM_IPQ5210_H
> +#define INTERCONNECT_QCOM_IPQ5210_H
> +
> +#define MASTER_CNOC_PCIE0	0
> +#define SLAVE_CNOC_PCIE0	1
> +#define MASTER_CNOC_PCIE1	2
> +#define SLAVE_CNOC_PCIE1	3
> +#define MASTER_SNOC_PCIE0	4
> +#define SLAVE_SNOC_PCIE0	5
> +#define MASTER_SNOC_PCIE1	6
> +#define SLAVE_SNOC_PCIE1	7
> +#define MASTER_USB		8
> +#define SLAVE_USB		9
> +
> +#endif /* INTERCONNECT_QCOM_IPQ5210_H */
> 


