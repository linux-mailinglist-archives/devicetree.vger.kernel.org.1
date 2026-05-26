Return-Path: <devicetree+bounces-302816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3/qqKBICFWroSAcAu9opvQ
	(envelope-from <devicetree+bounces-302816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 04:14:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E22185CFC3C
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 04:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 499993008D59
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 02:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4212F0680;
	Tue, 26 May 2026 02:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=huawei.com header.i=@huawei.com header.b="qg3va+tJ"
X-Original-To: devicetree@vger.kernel.org
Received: from canpmsgout07.his.huawei.com (canpmsgout07.his.huawei.com [113.46.200.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4AA2ECD3A;
	Tue, 26 May 2026 02:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=113.46.200.222
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779761678; cv=none; b=A5jShNnWP9vriucewES69FIckPilErJVqrgY1ApUfKjzlz0vB074KWjGcLZcxELehE4n8t6zi9Q14IJKmDSjJFCuLiHi/8p0DSUtT48xevESplxWx4SzCZVj9Ws7smiNU3W0dmdmhxht59+31QccO4xFMFSb1Kuwvep/6SXsOKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779761678; c=relaxed/simple;
	bh=ulb5AzSxdx7KgOOPQ6BMJaYzUf1wZCN79EcIJcw7NqA=;
	h=Subject:To:CC:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=UR8TAsTrbB25nnm0Xxk+SIjzB5RRbjUouUYaFmSvgP85aeLUfOvg0v4fz7KOhdoMAVzdbMF3H0SGs2Ex0hCwiXhhB6rrcDsS1jI3CbP/Uw70fyJCmXKL5destzkLaboXf21zFuIrKLCNwQKlUcKNq0pfHqSx6bN0rcrN8N4N92g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; dkim=pass (1024-bit key) header.d=huawei.com header.i=@huawei.com header.b=qg3va+tJ; arc=none smtp.client-ip=113.46.200.222
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
dkim-signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
	c=relaxed/relaxed; q=dns/txt;
	h=From;
	bh=iqoFEqRrz+VITnn7JX0KLSm23oivmL3aruRn9IsfzBM=;
	b=qg3va+tJlYSUbutvQ+T8srTjCVODQHoKmiJesdJbTqzhOOJYzMN684gmdFepLcNeL++Kd2OeB
	I3751WyoTMMPTJRT5tKbtx1juWHKwApCX4kKE0ZKgoPbghVrkjIq1P+PNl3iN4cSWuAMgy094ue
	CLB9cumxvInQKIiU5vKvXYs=
Received: from mail.maildlp.com (unknown [172.19.163.127])
	by canpmsgout07.his.huawei.com (SkyGuard) with ESMTPS id 4gPbj22TlDzLlTj;
	Tue, 26 May 2026 10:06:46 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
	by mail.maildlp.com (Postfix) with ESMTPS id C9763402AB;
	Tue, 26 May 2026 10:14:30 +0800 (CST)
Received: from [10.174.179.24] (10.174.179.24) by
 dggpemf500002.china.huawei.com (7.185.36.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 26 May 2026 10:14:27 +0800
Subject: Re: [PATCH v3 02/17] ACPI: GTDT: Parse information related to the EL2
 virtual timer
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-acpi@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
CC: Lorenzo Pieralisi <lpieralisi@kernel.org>, Sudeep Holla
	<sudeep.holla@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Daniel Lezcano <daniel.lezcano@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu
 Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Ge Gordon
	<gordon.ge@bst.ai>, BST Linux Kernel Upstream Group <bst-upstream@bstai.top>,
	Jesper Nilsson <jesper.nilsson@axis.com>, Lars Persson
	<lars.persson@axis.com>, Alim Akhtar <alim.akhtar@samsung.com>, Ivaylo Ivanov
	<ivo.ivanov.ivanov1@gmail.com>, Frank Li <Frank.Li@nxp.com>, Sascha Hauer
	<s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Dinh Nguyen <dinguyen@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Thierry Reding
	<thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, Bjorn
 Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
	=?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
	=?UTF-8?B?WXUtQ2h1biBMaW4gW+ael+elkOWQm10=?= <eleanor.lin@realtek.com>, Heiko
 Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Orson Zhai
	<orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, Michal
 Simek <michal.simek@amd.com>
References: <20260523140242.586031-1-maz@kernel.org>
 <20260523140242.586031-3-maz@kernel.org>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <ed3d35f7-a9db-98d4-de99-313587b15ed1@huawei.com>
Date: Tue, 26 May 2026 10:14:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260523140242.586031-3-maz@kernel.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: kwepems100001.china.huawei.com (7.221.188.238) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[huawei.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[47];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302816-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,arm.com,gmail.com,sholland.org,linaro.org,baylibre.com,googlemail.com,bst.ai,bstai.top,axis.com,samsung.com,nxp.com,pengutronix.de,collabora.com,nvidia.com,suse.de,realtek.com,sntech.de,rock-chips.com,linux.alibaba.com,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guohanjun@huawei.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[huawei.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huawei.com:email,huawei.com:mid,huawei.com:dkim,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E22185CFC3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026/5/23 22:02, Marc Zyngier wrote:
> Now that we have a way to identify GTDTv3, allow the information
> related to the EL2 virtual timer to be retrieved by the interface
> used by the architected timer driver.
> 
> Reviewed-by: Sudeep Holla <sudeep.holla@kernel.org>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   drivers/acpi/arm64/gtdt.c | 20 ++++++++++++++++++++
>   1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/acpi/arm64/gtdt.c b/drivers/acpi/arm64/gtdt.c
> index 950d5efdf85ea..00158c8aa6d90 100644
> --- a/drivers/acpi/arm64/gtdt.c
> +++ b/drivers/acpi/arm64/gtdt.c
> @@ -41,6 +41,14 @@ struct gtdt_v3 {
>   
>   static struct acpi_gtdt_descriptor acpi_gtdt_desc __initdata;
>   
> +static __init struct acpi_gtdt_el2 *gtdt_to_el2_vtimer(struct acpi_table_gtdt *gtdt)
> +{
> +	if (gtdt->header.revision < 3)
> +		return NULL;
> +
> +	return &container_of(gtdt, struct gtdt_v3, gtdt_v2)->el2_vtimer;
> +}
> +
>   static __init bool platform_timer_valid(void *platform_timer)
>   {
>   	struct acpi_gtdt_header *gh = platform_timer;
> @@ -112,6 +120,7 @@ static int __init map_gt_gsi(u32 interrupt, u32 flags)
>   int __init acpi_gtdt_map_ppi(int type)
>   {
>   	struct acpi_table_gtdt *gtdt = acpi_gtdt_desc.gtdt;
> +	struct acpi_gtdt_el2 *el2_vtimer = gtdt_to_el2_vtimer(gtdt);
>   
>   	switch (type) {
>   	case ARCH_TIMER_PHYS_NONSECURE_PPI:
> @@ -124,6 +133,12 @@ int __init acpi_gtdt_map_ppi(int type)
>   	case ARCH_TIMER_HYP_PPI:
>   		return map_gt_gsi(gtdt->non_secure_el2_interrupt,
>   				  gtdt->non_secure_el2_flags);
> +	case ARCH_TIMER_HYP_VIRT_PPI:
> +		if (el2_vtimer && el2_vtimer->virtual_el2_timer_gsiv)
> +			return map_gt_gsi(el2_vtimer->virtual_el2_timer_gsiv,
> +					  el2_vtimer->virtual_el2_timer_flags);
> +
> +		return 0;
>   	default:
>   		pr_err("Failed to map timer interrupt: invalid type.\n");
>   	}
> @@ -141,6 +156,7 @@ int __init acpi_gtdt_map_ppi(int type)
>   bool __init acpi_gtdt_c3stop(int type)
>   {
>   	struct acpi_table_gtdt *gtdt = acpi_gtdt_desc.gtdt;
> +	struct acpi_gtdt_el2 *el2_vtimer = gtdt_to_el2_vtimer(gtdt);
>   
>   	switch (type) {
>   	case ARCH_TIMER_PHYS_NONSECURE_PPI:
> @@ -152,6 +168,10 @@ bool __init acpi_gtdt_c3stop(int type)
>   	case ARCH_TIMER_HYP_PPI:
>   		return !(gtdt->non_secure_el2_flags & ACPI_GTDT_ALWAYS_ON);
>   
> +	case ARCH_TIMER_HYP_VIRT_PPI:
> +		return el2_vtimer && el2_vtimer->virtual_el2_timer_gsiv &&
> +		       !(el2_vtimer->virtual_el2_timer_flags & ACPI_GTDT_ALWAYS_ON);
> +
>   	default:
>   		pr_err("Failed to get c3stop info: invalid type.\n");
>   	}

Reviewed-by: Hanjun Guo <guohanjun@huawei.com>

Thanks
Hanjun

