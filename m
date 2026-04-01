Return-Path: <devicetree+bounces-283438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AF1kDMf5zGnRYgYAu9opvQ
	(envelope-from <devicetree+bounces-283438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 12:56:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4280B378DE7
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 12:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7206130A61C9
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 10:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2BBD3F1675;
	Wed,  1 Apr 2026 10:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRpODnnb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189313BE162;
	Wed,  1 Apr 2026 10:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775039856; cv=none; b=RqTeTnkggphREd6StaNRCZ07V3Ba2zyfoM4OqVyU54RTMJGsuV31y0b0K9Jcrufzc/6fv60Ln4De7UnLqWgxETzXHhfFBCVvS/CLOsRtDvQDSoNsipZdbJo/zNVYRKHR/BkxYV3/Jobq739dbK+wxQOOhbMe6adBRc6ZBL8TkzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775039856; c=relaxed/simple;
	bh=+2TaLnc9RZqutTRX8SJCv4qricOwP96HReXXGGlAKhE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=WvqjE4/bxcSEnQEF03B9HmXjiFY1duXcNnM+rrXKPWyUBYNm2Bp3SrNXFRuoVLgJ1rE7pXWBTxJJ5r6f6gMES7UwPIlK7BcjcJB/1+Slm5EUudqQajILv6iHalaQw+MMRldQbCYv3CxMIzI5u66lVaJZa050hpMcwioELlyvG9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRpODnnb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ABBDC4CEF7;
	Wed,  1 Apr 2026 10:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775039855;
	bh=+2TaLnc9RZqutTRX8SJCv4qricOwP96HReXXGGlAKhE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=hRpODnnbNkaR9WkVqJTF4tkNjwCQKIvjfOATHxR9QQRvgjJJIEivGY4SB65EN9YgQ
	 z0SU/1E0bhz+KDcSSgP5QkmYsRMoKxJ0vbazgWLlwzuMw19kK7qtIlweyHzSn6Hh7R
	 zilpCQoPfSoj1Mgi3jrzBLFfKcgAkKVvH7ZgnBrwsEOxs5fkxI3PXH/aVFj22w6Wxn
	 TPraDAaQSOS2Bd5zg1TkuIw9dtUL65pjZUz/YiL0ux3O2hkawE+pjRqcJ2oTTOpQDi
	 B+JLo2axLpkABL8TuTCmuP/xZR0yFsH9fXts/vfP61iHgaKrKjtL7tnQtiIkbOiCya
	 365XMjRRJ74KA==
Date: Wed, 01 Apr 2026 05:37:33 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, Eckert.Florian@googlemail.com, 
 Rahul Tanwar <rtanwar@maxlinear.com>, linux-kernel@vger.kernel.org, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Sajid Dalvi <sdalvi@google.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Ajay Agarwal <ajayagarwal@google.com>, devicetree@vger.kernel.org, 
 Johan Hovold <johan+linaro@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 ms@dev.tdt.de, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>
To: Florian Eckert <fe@dev.tdt.de>
In-Reply-To: <20260401-pcie-intel-gw-v3-7-63b008c5b7b2@dev.tdt.de>
References: <20260401-pcie-intel-gw-v3-0-63b008c5b7b2@dev.tdt.de>
 <20260401-pcie-intel-gw-v3-7-63b008c5b7b2@dev.tdt.de>
Message-Id: <177503985369.3634917.6461713197883659054.robh@kernel.org>
Subject: Re: [PATCH v3 7/7] dt-bindings: PCI: intel,lgm-pcie: Add atu
 resource
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283438-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,googlemail.com,maxlinear.com,kernel.org,google.com,dev.tdt.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,d0e00000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,tdt.de:email]
X-Rspamd-Queue-Id: 4280B378DE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 01 Apr 2026 11:31:43 +0200, Florian Eckert wrote:
> The 'atu' information is already set in the dwc core, if it is specified
> in the devicetree. The driver uses its own default, if not set in the
> devicetree. This information is hardware specific and should therefore be
> maintained in the devicetree rather than in the source.
> 
> To be backward compatibile, this field is not mandatory. If 'atu'
> resource is not specified in the devicetree, the driver’s default value
> is used.
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
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
>  Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/intel-gw-pcie.example.dtb: pcie@d0e00000 (intel,lgm-pcie): reg-names:1: 'config' was expected
	from schema $id: http://devicetree.org/schemas/pci/intel-gw-pcie.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/intel-gw-pcie.example.dtb: pcie@d0e00000 (intel,lgm-pcie): reg-names:2: 'app' was expected
	from schema $id: http://devicetree.org/schemas/pci/intel-gw-pcie.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pci/intel-gw-pcie.example.dtb: pcie@d0e00000 (intel,lgm-pcie): reg-names:3: 'atu' was expected
	from schema $id: http://devicetree.org/schemas/pci/intel-gw-pcie.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260401-pcie-intel-gw-v3-7-63b008c5b7b2@dev.tdt.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


