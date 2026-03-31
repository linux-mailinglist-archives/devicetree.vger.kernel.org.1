Return-Path: <devicetree+bounces-283052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMEkOAPoy2myMQYAu9opvQ
	(envelope-from <devicetree+bounces-283052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 17:28:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6894736BA85
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 17:28:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D27D730E402F
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 15:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3BC402456;
	Tue, 31 Mar 2026 15:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1V49APZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EC84035D3;
	Tue, 31 Mar 2026 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774970513; cv=none; b=cHQfXMbGhiFoTcOgsXqAT5iBbxpRxiKQEipTlW+WP4Z7IWX4dQpQ0wQScEplptH55CXpczW568lIdhWZ/UWXmGvRUmdQc8P+zx+uPVUGd1QEOKBiKc0GRuxe1LgTbPZ3IBa3Mc8W0nW8Us6hW1elOadNGZMAEnmDt9B/cTA9Q4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774970513; c=relaxed/simple;
	bh=5v9OyPvgtc1RqMsoJE+1aCJ6/rVCcLvQlIrIuGvvSTI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YHdCXPXdvjXEnz97wNpWTTIFBom0yUvlux4ML0O5jYYzJGSoGyOBmmb+NVZGG6hz9y8rEGKX8bZkkWfGefTo4Efv8YAHMJTP+q6B6S5tKn6XR+GWV7LBjO6/9ru7gXzQUm9voCmkHLOSuiTujnFSKZh5LVYUsNYu+hUfco47Vy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1V49APZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A18C7C19423;
	Tue, 31 Mar 2026 15:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774970512;
	bh=5v9OyPvgtc1RqMsoJE+1aCJ6/rVCcLvQlIrIuGvvSTI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L1V49APZjtqm8evpFPAkKJ1MYnFNfCfFxnPHV6oRPNpxA5rJvb8bsNGy9Bn06+85Z
	 cPOmeL7f7uLosC3ZshJzkMTsQEJtCzXVrPFXe+/GiUrdX6mDtjkElm7Z+HPBhtCKuU
	 2ZB5TS8KGdOe1SjY8qsViU6ALmrMUKpO6w901AuZUcdafjhNTIj7EsmhjxzifISSl5
	 1LpL9W8U3DuQJa9lmKYb5p2dbztwzmPy4/LgAJguoCy+iOODc0fj5g+OXSrcbZJfdT
	 44CrAunQk8gmO424Rjraz7ScHSaqbjoJN+1IuqMFO6zMQcUeU/Nw2wweB48+aDshHE
	 mUkRo3wKQ2rcQ==
Date: Tue, 31 Mar 2026 10:21:50 -0500
From: Rob Herring <robh@kernel.org>
To: Florian Eckert <fe@dev.tdt.de>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Sajid Dalvi <sdalvi@google.com>,
	Ajay Agarwal <ajayagarwal@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rahul Tanwar <rtanwar@maxlinear.com>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Eckert.Florian@googlemail.com, ms@dev.tdt.de
Subject: Re: [PATCH v2 6/7] dt-bindings: PCI: intel,lgm-pcie: Make atu
 resource mandatory
Message-ID: <20260331152150.GA1255126-robh@kernel.org>
References: <20260330-pcie-intel-gw-v2-0-8bd07367a298@dev.tdt.de>
 <20260330-pcie-intel-gw-v2-6-8bd07367a298@dev.tdt.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260330-pcie-intel-gw-v2-6-8bd07367a298@dev.tdt.de>
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283052-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,google.com,maxlinear.com,vger.kernel.org,googlemail.com,dev.tdt.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,linaro,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 6894736BA85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 11:07:16AM +0200, Florian Eckert wrote:
> The ATU information is already set in the dwc core if it is specified in
> the DTS. The driver uses its own value here [1]. This information is
> hardware specific and should therefore be maintained in the DTS rather
> than in the source.
> 
> Backwards compatibility is not an issue here [5], as the driver is
> exclusively used by Maxlinear.
> 
> Old DTS entry for PCIe:
> 
> reg = <0xd1000000 0x1000>,
>       <0xd3000000 0x20000>,
>       <0xd0c41000.0x1000>;
> reg-names = "dbi", "config", "app";
> 
> New DTS entry for PCIe:
> 
> reg = <0xd1000000 0x1000>,
>       <0xd10c0000 0x1000>,
>       <0xd3000000 0x20000>,
>      <0xd0c41000.0x1000>;
> reg-names = "dbi", "atu", "config", "app";
> 
> [1] https://elixir.bootlin.com/linux/v6.19.10/source/drivers/pci/controller/dwc/pcie-intel-gw.c#L301
> [2] https://lore.kernel.org/all/BY3PR19MB507667CE7531D863E1E5F8AEBDD82@BY3PR19MB5076.namprd19.prod.outlook.com/
> 
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
>  Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml b/Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml
> index 54e2890ae6314ac6847fc23f49440d05d66d87d4..e4b781f57e8ae84a3ffc33635a421e1a5761587e 100644
> --- a/Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml
> @@ -29,12 +29,14 @@ properties:
>    reg:
>      items:
>        - description: Controller control and status registers.
> +      - description: Internal Address Translation Unit (iATU) registers.
>        - description: PCIe configuration registers.
>        - description: Controller application registers.
>  
>    reg-names:
>      items:
>        - const: dbi
> +      - const: atu

Put this at the end and add 'minItems: 3' and you avoid any ABI issues.

>        - const: config
>        - const: app
>  

