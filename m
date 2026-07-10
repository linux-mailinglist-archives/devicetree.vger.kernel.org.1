Return-Path: <devicetree+bounces-324541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MoZ3NYoXUWoS/QIAu9opvQ
	(envelope-from <devicetree+bounces-324541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:02:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3547E73C711
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:02:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.s=20251104 header.b=V20EhwOl;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=riscstar.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324541-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324541-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 40A8D3025BEB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0C2743B49E;
	Fri, 10 Jul 2026 16:01:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4726E42DA28
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 16:01:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783699298; cv=none; b=dl+42IEpn/Jmv+2nN/8LGGMdjGyq/s4Gf0ld+r1P0Fdueqxi2D5L+/ig1Pcp4Zu7NElWZ9nkRtze1ZboniA/VF/AUorxATQUfDNsLDVKdhlLTQt5TcmJDhIC4YSCLb7ZOn6ZEZ91jdxRUovINl1yjd502tVedQpuCmQHzd+hsfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783699298; c=relaxed/simple;
	bh=X+CM6CcZvtG3xrXzA+E7vFdnehcFp/XJxB85EcmWIbw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WrCDstKBQ3rlAKZERrQstNuzE5zX7pbI346zFUbVsLGQYzuuTQ0eO3GIDOr8FRAGhX42B4+IkhMUC6huHS4kVRnVB9u9zzIhDI3As7TqbU3aFW7T+Lj8Y0bNkQAeWZAQP8D0n6GfxPsU/xzBZN01cskVFG/xFVUiuxHQBRIfizA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=V20EhwOl; arc=none smtp.client-ip=209.85.219.47
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8edda5d56a5so10535316d6.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1783699294; x=1784304094; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BJ1o73BxjtDCU3tES64jvElPh2pTfJj5ck4Dt4zpj7w=;
        b=V20EhwOl/eMXIJLYmaVemob+mNOMJKQLnDKN19M/Iz9vCwrBr6tzsKttk+gSmyntLT
         VUtHivmhudKH19TE84ks8ZYoHBSCoiEw6+Fbb1zNL0X+HWClWJSTD9hNS3SJph3aQGYQ
         Qd+DxtajUZdSW645jUdIrUWA18rdoyWzDNBfd+N1LJDu1Ka/eEEm0FkYKD+tLFfiG9LH
         xPHr2bVOHLIdEkp5Gm6vYpaII76+MViGyheOKR7E2OJkYRNzwoF+NWSkQJVaQK8Rft1j
         m/GqVliME115NivtsJ5U7XFVjmqblJAWRIO+FrEVf5u5Sy2xD8es6FCQXObrb8ElkiEE
         Tg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783699294; x=1784304094;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BJ1o73BxjtDCU3tES64jvElPh2pTfJj5ck4Dt4zpj7w=;
        b=Lo1bkgYKXo9AwZvkssq4vuhzjlUA8FB1qXYBgHE3plVsC+h3uCXI0nIhsLUxL1/FWW
         8gGdOCjdXGxvkG9N5Oh5V8YQm50Ywmc5tNnXGre9/Rzso0Ay3aRR+G1TtK26RyFiyuNK
         y9cUfS+7GASzBXSujPjZHGCDdvDimAV5dn3QZu2eElcceCPAaPtY8ihPRZePSmCjTsQQ
         w6JpucvykWwpihOizYPt9q75wG+r0Ef25TiShzHe1kfz/j9hGTvMocpF6c9lHjIZ/wnx
         xjhUjtuwoOlqqrCQDAKzN3xZUm43/Uk0rM+JRhxEjg+atFlkbYU/GsCxMC4la+ALakXZ
         OLQQ==
X-Forwarded-Encrypted: i=1; AHgh+RqEqJa+1Mxwx7LPPb4xeojlDfpnI8q3SLPoFoZ4Feh9Gfg1P4iFLpDWLF5/TzB1pZwvxzdt8TNUbdvT@vger.kernel.org
X-Gm-Message-State: AOJu0YxjN2vUWX74PJaACe55gARGxxHcNWB6R3XUtsN7slFegobAu7JB
	uhYSOz19Pu1YoxvGHzYdsvY5oAJqMxQa8B/KCbre4/qycs/CBzOqaCSq1p6I1K8aMQM=
X-Gm-Gg: AfdE7clwo1DPs2xzfKA2FXBVKHuqTnYcmmExynNhs5C9pWFUbvQqs3tHsRP3c4qKBFG
	ymCCYedeL5Dzyx7vENLvzRkGAN12ZsoyPxXjUFGXZPoJvZhct1ggYuyN0oBKNSlePo9wXFDoiek
	aKAvzuo7zwzksLF3bgMqgQ3qsknPYAfxgsRxA2ERFqYrk+2kzbl23Av4wxE1Y3FqwPwGCpoTdMM
	a3R8CaoGMhgFLBFYNHtcb0RqJC6ecy47U4hAclKVgmp+1nLySB8rnAJFbBPP8Ing9lC8G8ive1G
	npoPKxOZ2gT4n/UW8V28XFVcZyEWzzPagCBbn6Sa6Qp6q1j3bxrCU+vXQurAXgGCRXHk+XQ0LET
	jZOiDu9YOahmRRCumiwlw4/9maoieVpm9TmGOaKc3bQodnjWT7dzer14Z2kRTAAFMnb/b9k0Kz/
	iAHa/FPyCrWqSk
X-Received: by 2002:ad4:5f86:0:b0:8f0:f35c:23ab with SMTP id 6a1803df08f44-8fec189aed8mr127228496d6.16.1783699290317;
        Fri, 10 Jul 2026 09:01:30 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-9036e27f765sm8965376d6.11.2026.07.10.09.01.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 09:01:29 -0700 (PDT)
Message-ID: <cdf06f51-5df5-4322-bd25-a33a3f0a3788@riscstar.com>
Date: Fri, 10 Jul 2026 11:01:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] PCI: spacemit-k1: Add device id update helper
To: Inochi Amaoto <inochiama@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Christian Bruel <christian.bruel@foss.st.com>, Frank Li <Frank.Li@nxp.com>,
 Nam Cao <namcao@linutronix.de>, Qiang Yu <qiang.yu@oss.qualcomm.com>,
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
 Xincheng Zhang <zhangxincheng@ultrarisc.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vidya Sagar <vidyas@nvidia.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, Yixun Lan <dlan@gentoo.org>,
 Longbin Li <looong.bin@gmail.com>
References: <20260709040027.958400-1-inochiama@gmail.com>
 <20260709040027.958400-4-inochiama@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260709040027.958400-4-inochiama@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324541-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:jingoohan1@gmail.com,m:mani@kernel.org,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:christian.bruel@foss.st.com,m:Frank.Li@nxp.com,m:namcao@linutronix.de,m:qiang.yu@oss.qualcomm.com,m:krishna.chundru@oss.qualcomm.com,m:zhangxincheng@ultrarisc.com,m:s-vadapalli@ti.com,m:andriy.shevchenko@linux.intel.com,m:vidyas@nvidia.com,m:neil.armstrong@linaro.org,m:gustavo.pimentel@synopsys.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,foss.st.com,nxp.com,linutronix.de,oss.qualcomm.com,ultrarisc.com,ti.com,linux.intel.com,nvidia.com,linaro.org,synopsys.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,riscstar.com:from_mime,riscstar.com:email,riscstar.com:mid,riscstar-com.20251104.gappssmtp.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3547E73C711

On 7/8/26 11:00 PM, Inochi Amaoto wrote:
> Both K1 and K3 needs to set vendor id and device id, add a helper function

s/needs/need/

> to simplify this.

I think someone might have commented on this, but I expected to find
that the next patch would fill in the code that's needed to support
K3, but that patch is at the end of your series.

The reason I say it here is that I wondered while looking at this
one why it was needed to create this helper function.  I now know
that k3_pcie_init() will call it (but I had to find that in the
last patch, which was later than I expected).

Your series should start with DT binding changes, then code changes,
and (often) end with DTS changes.

Anyway, this looks good.

Reviewed-by: Alex Elder <elder@riscstar.com>

> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>   drivers/pci/controller/dwc/pcie-spacemit-k1.c | 17 +++++++++++++----
>   1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-spacemit-k1.c b/drivers/pci/controller/dwc/pcie-spacemit-k1.c
> index e22ecbd09579..31aac056b68e 100644
> --- a/drivers/pci/controller/dwc/pcie-spacemit-k1.c
> +++ b/drivers/pci/controller/dwc/pcie-spacemit-k1.c
> @@ -56,6 +56,7 @@ struct k1_pcie_device_data {
>   	const struct dw_pcie_ops *ops;
>   	int (*parse_port)(struct k1_pcie *k1);
>   	unsigned int max_phy_count;
> +	unsigned int device_id;
>   };
>   
>   struct k1_pcie {
> @@ -186,6 +187,16 @@ static void k1_pcie_disable_aspm_l1(struct k1_pcie *k1)
>   	dw_pcie_dbi_ro_wr_dis(pci);
>   }
>   
> +static void k1_pcie_set_device_id(struct k1_pcie *k1)
> +{
> +	struct dw_pcie *pci = &k1->pci;
> +
> +	dw_pcie_dbi_ro_wr_en(pci);
> +	dw_pcie_writew_dbi(pci, PCI_VENDOR_ID, PCI_VENDOR_ID_SPACEMIT);
> +	dw_pcie_writew_dbi(pci, PCI_DEVICE_ID, k1->data->device_id);
> +	dw_pcie_dbi_ro_wr_dis(pci);
> +}
> +
>   static int k1_pcie_init(struct dw_pcie_rp *pp)
>   {
>   	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> @@ -201,10 +212,7 @@ static int k1_pcie_init(struct dw_pcie_rp *pp)
>   		return ret;
>   
>   	/* Set the PCI vendor and device ID */
> -	dw_pcie_dbi_ro_wr_en(pci);
> -	dw_pcie_writew_dbi(pci, PCI_VENDOR_ID, PCI_VENDOR_ID_SPACEMIT);
> -	dw_pcie_writew_dbi(pci, PCI_DEVICE_ID, PCI_DEVICE_ID_SPACEMIT_K1);
> -	dw_pcie_dbi_ro_wr_dis(pci);
> +	k1_pcie_set_device_id(k1);
>   
>   	/*
>   	 * Start by asserting fundamental reset (drive PERST# low).  The
> @@ -406,6 +414,7 @@ static const struct k1_pcie_device_data k1_pcie_device_data = {
>   	.ops		= &k1_pcie_ops,
>   	.parse_port	= k1_pcie_parse_port,
>   	.max_phy_count	= 1,
> +	.device_id	= PCI_DEVICE_ID_SPACEMIT_K1,
>   };
>   
>   static const struct of_device_id k1_pcie_of_match_table[] = {


