Return-Path: <devicetree+bounces-282396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNv2AK9Symn27gUAu9opvQ
	(envelope-from <devicetree+bounces-282396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 12:38:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6593597D5
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 12:38:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9352E300EAAE
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 10:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B6C41C62;
	Mon, 30 Mar 2026 10:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtPSG4sK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DEA3939D2;
	Mon, 30 Mar 2026 10:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774866936; cv=none; b=TuAtnSLpeotI3rY55DPPWODEwfuGkvSIFFGqJIfP584b4KB8h3dQH4N9v+dtb7PhTQcA8OSLo1zqjkd/p/AIj6fkoBHpb45bRzmpnLdojRD8mqgjPtMMWEtB2gPAguxz7wcum2/fYPMjCyJh0dszw7bzYnFysjQ3a5WgCU0vKgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774866936; c=relaxed/simple;
	bh=vUl3C+hLMk6pb/LBrY02ABcydDGLrD4LLOEIrXmobl8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=suXjfyG1g/knfp8hi1HoQU7/HNDgeN0BA7pULR3U1A6jLlzf7ow97suWHTxL5JWk07IsUnqUBVgAitm6MeGs1jWZ4HGv7UVKgK9iZWhhOVmkRoyBZIZL1xy0c4eJLyjUeQA1/sp+b0KlDdVMj1+iovcKBY0LAxkpN2CavNViGZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtPSG4sK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0E62C4CEF7;
	Mon, 30 Mar 2026 10:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774866936;
	bh=vUl3C+hLMk6pb/LBrY02ABcydDGLrD4LLOEIrXmobl8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=FtPSG4sKIDnR1qGdX7ktB2CO7G885okKWr7bd5Hch8sQzfvEmavAfgj/dZGAgBA0X
	 xDGKysPrSfmhGcuyrGolItFHcvixwIxCgx3FqAqMqTdGUu0vB7N8i7orWClEVs4yn9
	 eV0IFkeGpS/jj7cg5tzxsJBvABxCA4R+QMUqmwMIcDCmuK+DbVXI7nFAiAPNmjTHBF
	 Cr9s2aYJofkpCzr/S+PkyIXCYoNY4wXn/fRBrkZzIpjEstx7NV10rm+uGDkb6V2Cjh
	 eRLLl+sRhplnWK4+cT51M+mtkCT+2Zp9zLMYCN2RVhfT3Sn/1zUUTWem4u2yJ5HIh1
	 9XCFD8RQ2XS6w==
Date: Mon, 30 Mar 2026 05:35:31 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-kernel@vger.kernel.org, 
 Ajay Agarwal <ajayagarwal@google.com>, Rahul Tanwar <rtanwar@maxlinear.com>, 
 linux-pci@vger.kernel.org, Sajid Dalvi <sdalvi@google.com>, 
 Eckert.Florian@googlemail.com, ms@dev.tdt.de, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
To: Florian Eckert <fe@dev.tdt.de>
In-Reply-To: <20260330-pcie-intel-gw-v2-6-8bd07367a298@dev.tdt.de>
References: <20260330-pcie-intel-gw-v2-0-8bd07367a298@dev.tdt.de>
 <20260330-pcie-intel-gw-v2-6-8bd07367a298@dev.tdt.de>
Message-Id: <177486693168.1789868.5556229534817952250.robh@kernel.org>
Subject: Re: [PATCH v2 6/7] dt-bindings: PCI: intel,lgm-pcie: Make atu
 resource mandatory
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282396-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,google.com,maxlinear.com,googlemail.com,dev.tdt.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 5B6593597D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 30 Mar 2026 11:07:16 +0200, Florian Eckert wrote:
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

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Lexical error: Documentation/devicetree/bindings/pci/intel-gw-pcie.example.dts:28.37-43 Unexpected 'config'
Error: Documentation/devicetree/bindings/pci/intel-gw-pcie.example.dts:28.37-43 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.dtbs:140: Documentation/devicetree/bindings/pci/intel-gw-pcie.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1601: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260330-pcie-intel-gw-v2-6-8bd07367a298@dev.tdt.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


