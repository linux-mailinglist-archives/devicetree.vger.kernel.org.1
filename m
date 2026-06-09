Return-Path: <devicetree+bounces-309190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fuEhMOxCKGr6BAMAu9opvQ
	(envelope-from <devicetree+bounces-309190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:44:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F306628A4
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:44:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.s=20251104 header.b=FCr+UYj3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309190-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309190-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=riscstar.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80138310E006
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F537372EEF;
	Tue,  9 Jun 2026 16:11:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D19E371D05
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:11:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021480; cv=none; b=WhBL2yB0j7GWrLFTSp0M+VEENg4klGvFmXmqQh1646vP/5cgt71RlCnkzR3jPliP1iS7kFD5k9/cDta24g2drOxS6EzYIzouMq0MrEqxAO4aWTFX4QI+lfIQrvHfSSH3f1M/1/qjKY7v6PWFBx+RQ3E9LnvJDLRU+C3mr0XL5Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021480; c=relaxed/simple;
	bh=vajmwAHkYJpp+V9wdAFK39zdbCm8lW1fNKUSmD2mbDE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q395QdhnNZbFKCeD9SURHZ9SQQEnkvd1zriU2Ralrx5e/L3MBj8Dhgf77saeZ68ILp2CF/KQc/MCKxBMx/WwFoxI6/hgTlzdsrvFQ/MoWnyGnBM7t8LaRRhSMjY8mZJist8PrTODpUa8w/er1HTGJlUd9xhWOsf5oqOyY9/2lqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=FCr+UYj3; arc=none smtp.client-ip=209.85.167.178
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-4864aea1316so3090508b6e.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1781021477; x=1781626277; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pq2jric+p38fa4KyXkbxPznlex9Z4eaGY3w5MG1zr2w=;
        b=FCr+UYj3JlcORiXtEikV49e/xXRBEqwg5F0IZiUko8ILfBWH70NAnNrGrSrVOgEx7V
         NQaHN8z+H/zXEVXFupDx6DSzE7mpPxrZI6DqRXmt/tS8bZTFsAZMsEOEPlTA2KZTjNE9
         CETVogm9YeOyQLytcnIjN1x1BwBX8CNaQuNM5tPmfUcjT69TGanmXcpt+Uqc441pKMGR
         g2N7h9dyCvrg5fTBfn6uVJZdcwp2qcCSAs6PXlnvodYcAUvF4BuEJQgYiN7M4zoIRFYQ
         9wtLsjUsr4CzBi1uXnMWdXQLEpS4BuHkWLaXGQ9M4dxjstKPoiwtMsVJZ6h6vbIz2xum
         3f8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781021477; x=1781626277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pq2jric+p38fa4KyXkbxPznlex9Z4eaGY3w5MG1zr2w=;
        b=LrE27fRZiFADbO9pNrC67evN1DsTAdZq01MEBuN+KUPSEp2BeSJVJdkN2DlH47IROZ
         2Y6sOfL0Pmac1siu7v137a24RsrXnC38X6naNAoia1gny23dqbmu7NKkdR1iPkiIlCUq
         kOqHaEZBjt99QrTSz0og7i1bCerH/CNtEa+GROl8swkkLi6uGJaPgKkvJ0e60yA8kwOI
         kYyykAwwLd1j15/0X5g84ZgnlADLUvwB5yPUxmyyuMq+j2I8K7AYmRW7QCz5Uc3fHLEv
         VOMqjwBYqrMSbMZZAnVmmXRogxtOcNkm79x/77UvDywFbNoF5YfZ7qxZfMjzti+0ajaF
         bnZw==
X-Forwarded-Encrypted: i=1; AFNElJ8y+nrlXJ57u6QLRjHrMxIMVLksGsLQyJ+JVqfpuvx/m5kmGbAMtdZw7xTsSipYLQRaLXCElXLd47f7@vger.kernel.org
X-Gm-Message-State: AOJu0YxYjXqZetBCDzlUc0+uV1X8QcGaQFrEW+oM4Oz4tO94IxB2jEVU
	kAdNNn+o4nABbOzcFqoVdF6vaujN28kdsUCX9BQ37E9A6nAlPCahArkipECmP3bZhsk=
X-Gm-Gg: Acq92OFfO9F/jWs0m/pRspsEY0wzU94oEXklWHYlLgGsuZ5vfogLVOLnSlR7cu2AKUd
	d0+HzBjZ8I5jz0bTxu1wGo1OKOjIoYASbIa9lkrXgtkppeIW0cvzGvk/NGJSdxIvVfe6SAB93i3
	8N+o+qZXr8WKSNkK3/UMiR163lWZWuAwTmxeOLWa28i+PgFk41SWA1DF7Dr9VfMNDgjJA479dxH
	ObeqSCcliK3eOX44xWpwztDWyBvWpnUjkLqej96sAMInm67WfHzcGRFyjIGHGsd4u6EoWPKURyn
	Kzjie21vyV3TpxhHlwQuYy3pZZ+kN7L7+PmnFYgrEsJDSY1KIkzeOj6+E31HwATePaU1wLnYg1Z
	JLj9K2Gja3TAHvbd2gaCFHdQqVvGgiH/HCWPMW9oxvFBPlxSfG4dCYOH3Qfp+24I2gxcY90p3jJ
	ZOmmCOQKRBsFLtqUXHHY131P+8R87cRTfGQg==
X-Received: by 2002:a05:6808:180c:b0:479:db65:8dbc with SMTP id 5614622812f47-486f01d5030mr2399484b6e.30.1781021477577;
        Tue, 09 Jun 2026 09:11:17 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b91f944sm16430240b6e.9.2026.06.09.09.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 09:11:17 -0700 (PDT)
Message-ID: <433e917b-16e3-4744-a614-6372ef22825c@riscstar.com>
Date: Tue, 9 Jun 2026 11:11:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] PCI: spacemit-k1: Add multiple PHY handles support
To: Inochi Amaoto <inochiama@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Senchuan Zhang <zhangsenchuan@eswincomputing.com>,
 Nam Cao <namcao@linutronix.de>, Siddharth Vadapalli <s-vadapalli@ti.com>,
 Randolph Lin <randolph@andestech.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vidya Sagar <vidyas@nvidia.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, Yixun Lan <dlan@gentoo.org>,
 Longbin Li <looong.bin@gmail.com>
References: <20260517014841.254085-1-inochiama@gmail.com>
 <20260517014841.254085-3-inochiama@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260517014841.254085-3-inochiama@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309190-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:jingoohan1@gmail.com,m:mani@kernel.org,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:christian.bruel@foss.st.com,m:vincent.guittot@linaro.org,m:zhangsenchuan@eswincomputing.com,m:namcao@linutronix.de,m:s-vadapalli@ti.com,m:randolph@andestech.com,m:andriy.shevchenko@linux.intel.com,m:vidyas@nvidia.com,m:neil.armstrong@linaro.org,m:gustavo.pimentel@synopsys.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,foss.st.com,linaro.org,eswincomputing.com,linutronix.de,ti.com,andestech.com,linux.intel.com,nvidia.com,synopsys.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar.com:mid,riscstar.com:from_mime,vger.kernel.org:from_smtp,riscstar-com.20251104.gappssmtp.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20F306628A4

On 5/16/26 8:48 PM, Inochi Amaoto wrote:
> The PCIe controller on Spacemit K3 may use multiple PHYs at the
> same time. The feature is not support by the current driver.
> So extend the PHY definition to support multiple PHY handles.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>   drivers/pci/controller/dwc/pcie-spacemit-k1.c | 16 ++++++++++++----
>   1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-spacemit-k1.c b/drivers/pci/controller/dwc/pcie-spacemit-k1.c
> index 1b519d49dcc0..7f6f1df31cd8 100644
> --- a/drivers/pci/controller/dwc/pcie-spacemit-k1.c
> +++ b/drivers/pci/controller/dwc/pcie-spacemit-k1.c
> @@ -51,7 +51,8 @@
>   
>   struct k1_pcie {
>   	struct dw_pcie pci;
> -	struct phy *phy;
> +	struct phy **phy;

I haven't looked further at this series yet, but do you have
any interest in making this a flexible array of pointers
(counted_by(phy_count))?

> +	int phy_count;
>   	void __iomem *link;
>   	struct regmap *pmu;	/* Errors ignored; MMIO-backed regmap */
>   	u32 pmu_off;
> @@ -171,7 +172,7 @@ static int k1_pcie_init(struct dw_pcie_rp *pp)
>   	 */
>   	regmap_set_bits(k1->pmu, reset_ctrl, DEVICE_TYPE_RC | PCIE_AUX_PWR_DET);
>   
> -	ret = phy_init(k1->phy);
> +	ret = phy_init(k1->phy[0]);

If you're going to have an array you should probably put in place
a loop to initialize all phy_count elements of the array here
(as is done for phy_exit(), below).

>   	if (ret) {
>   		k1_pcie_disable_resources(k1);
>   
> @@ -191,12 +192,14 @@ static void k1_pcie_deinit(struct dw_pcie_rp *pp)
>   {
>   	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>   	struct k1_pcie *k1 = to_k1_pcie(pci);
> +	int i;
>   
>   	/* Assert fundamental reset (drive PERST# low) */
>   	regmap_set_bits(k1->pmu, k1->pmu_off + PCIE_CLK_RESET_CONTROL,
>   			PCIE_RC_PERST);
>   
> -	phy_exit(k1->phy);
> +	for (i = 0; i < k1->phy_count; i++)
> +		phy_exit(k1->phy[i]);
>   
>   	k1_pcie_disable_resources(k1);
>   }
> @@ -277,7 +280,12 @@ static int k1_pcie_parse_port(struct k1_pcie *k1)
>   	if (IS_ERR(phy))
>   		return PTR_ERR(phy);

Andy said something different about this.

But it seems to me you are intentionally allocating an
*array* of PHY pointers, which happens to have only one entry.
But your objective is that you want to allocate an array of
them so you can support more than just one PHY, right?

> -	k1->phy = phy;
> +	k1->phy = devm_kmalloc_array(dev, 1, sizeof(*k1->phy), GFP_KERNEL);

Probably should use the kzalloc variant.

> +	if (!k1->phy)
> +		return -ENOMEM;
> +
> +	k1->phy[0] = phy;

I think what's wrong is the above assignment.

If you are truly allocating an array of PHY *pointers*,
then you need to also allocate the phy structure that
each entry in the array points to.

The above assignment is erroneously assigning the first entry in the
array to point to the array, and not a new entry.

					-Alex


> +	k1->phy_count = 1;
>   
>   	return 0;
>   }


