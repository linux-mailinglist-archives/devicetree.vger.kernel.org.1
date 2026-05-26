Return-Path: <devicetree+bounces-302900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNbTKv5UFWqmUQcAu9opvQ
	(envelope-from <devicetree+bounces-302900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 10:08:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA735D239B
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 10:08:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 996583010399
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 08:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0268B3CCFBE;
	Tue, 26 May 2026 08:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjjrCFpc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A648937CD45;
	Tue, 26 May 2026 08:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779782776; cv=none; b=UcvjDK9VRa4H3cIcp3ySfoNIlltartyRoVw6kW/hVCW9eQp3LtM9XazRn5J49PVorjxBfYBFYE5oklCgPds9Fs8wNKfNqDPxd0JMRCAx7/J7uOpWqTyoKJKnqzp0K7236qmCQHzYdKSRbg53eNSyRx+dmc6JC2QxWL9R+odCDTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779782776; c=relaxed/simple;
	bh=HGapA52ayerj7Adm/fitF7ubF4fZQQHvIgBK9Lzu5Yk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a3xcGKXtFlYP/dUalyML4C8UyjH+WpsvJ+oPz8e1HAS0YkQBt+pFF3eSaE4vtNBlgg+DAXGQuNU4pKflDZAj4PPobvhsseQJpnx2nsJPdo975esu9dMSJiddfUEU3yt117gUBzjWJ31k8dUYH7y9X75Xmvs6IkwBCBoIUzzYrBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjjrCFpc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A9651F000E9;
	Tue, 26 May 2026 08:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779782775;
	bh=g6XMMZUVsPZY3zr1bCsuHRKX53Xlum27v7L+XlSyf60=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GjjrCFpc7W/uWJBxjHgFnxkFPVfFFFVq+t9oz2m0MynTPoKSQD1tJcaO8PtZUPk3I
	 uTcq4jba6ubS0GK5hI0943sfDtwBQVcE8Z4WF4OZvxllIIy3M2EQvj+c34Lo5ZVLj4
	 b3rfB4k0S8JaWUHAKrebtPBjKNP3AwC+HgCaPLfXU8amyec9wo+EdGh5yVlN0I2gMw
	 9rwPKA0vAFYqKSmpdkHNAw6fI4znsSfArIe503zTeTYvKLIYDQjFNhB+7J8+0JBagJ
	 8YPJiVHIfxXZ8UzNlx8bW/yEO1ohwBwLq4KG4T9x8uUUsdiSDqSYKJZp2KI3U45AgX
	 WNX6SXE33xZcA==
Date: Tue, 26 May 2026 09:06:06 +0100
From: Sudeep Holla <sudeep.holla@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Hanjun Guo <guohanjun@huawei.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Ge Gordon <gordon.ge@bst.ai>,
	BST Linux Kernel Upstream Group <bst-upstream@bstai.top>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Lars Persson <lars.persson@axis.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Yu-Chun Lin =?utf-8?B?W+ael+elkOWQm10=?= <eleanor.lin@realtek.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Michal Simek <michal.simek@amd.com>
Subject: Re: [PATCH v3 01/17] ACPI: GTDT: Account for GTDTv3 size when
 walking the platform timer descriptors
Message-ID: <20260526-logical-ape-of-courage-c1ccbf@sudeepholla>
References: <20260523140242.586031-1-maz@kernel.org>
 <20260523140242.586031-2-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260523140242.586031-2-maz@kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-302900-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,kernel.org,huawei.com,arm.com,gmail.com,sholland.org,linaro.org,baylibre.com,googlemail.com,bst.ai,bstai.top,axis.com,samsung.com,nxp.com,pengutronix.de,collabora.com,nvidia.com,suse.de,realtek.com,sntech.de,rock-chips.com,linux.alibaba.com,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[48];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0CA735D239B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, May 23, 2026 at 03:02:26PM +0100, Marc Zyngier wrote:
> Since ARMv8.1, the architecture has grown an EL2-private virtual
> timer. This has been described in ACPI since ACPI v6.3 and revision
> 3 of the GTDT table.
> 
> An aditional structure was added in ACPICA, though in a rather
> bizarre way, and merged in v5.1 as 8f5a14d053100 ("ACPICA: ACPI 6.3:
> add GTDT Revision 3 support").
> 
> Finally plug the table parsing in GTDT, and correct the parsing of
> the platform timer subtables to account for the expanded size of
> the base table. This also comes with some extra sanitisation of
> the table, in the unlikely case someone got it wrong...
> 
> Suggested-by: Sudeep Holla <sudeep.holla@kernel.org>

Reviewed-by:  Sudeep Holla <sudeep.holla@kernel.org>

-- 
Regards,
Sudeep

