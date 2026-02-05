Return-Path: <devicetree+bounces-262875-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NDIOfJFhGk/2QMAu9opvQ
	(envelope-from <devicetree+bounces-262875-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:25:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 69136EF670
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:25:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB6953012BC7
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 07:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24EAE35CB62;
	Thu,  5 Feb 2026 07:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEuiWOoA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0127231B11E;
	Thu,  5 Feb 2026 07:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770276317; cv=none; b=IVPaf25QqQ0dsDKoe8royL0yJFXXaPUtcf0J+6hki/Fkfq/ukXPnskrUE1Wuin1g1ioKqsONnQ0R82wS7hbLNjdfbq1l0Aix+zx0G7cePGOxUvmPvJqwxtEYAMmURsk+XtEedriZpm5eESrpw0b5xSFZNdljTXLmY3G4ydkMgGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770276317; c=relaxed/simple;
	bh=XU5EtDFAlpiOcF192k6bjTw6Y4UVTAujOSvnW603CLI=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=pjvEL10S/YdHBknhcbq4DIjvDBpj6xuhigETDbzm81V7v0HNiOtRzUAA6iHguwS2Zvt6xifsWOYrMlinFSSJURhDGjEH3TNLJVSB7eXKvjsEwiqLWDuuvtxLfG1OU/mL5zuSQp/BqKOMofMPTyf4NBIadwAw3oala6WvRqsKvhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEuiWOoA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B412BC4CEF7;
	Thu,  5 Feb 2026 07:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770276316;
	bh=XU5EtDFAlpiOcF192k6bjTw6Y4UVTAujOSvnW603CLI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=NEuiWOoAcszY0gDKY6U78AtLAaogMF1NFVu11Vf5EBI4RliU3MKTGFeVySCyjSNzS
	 XneKWztYDq5z558h9OUgy+cuUhjh/OfeE7Qq31VViJiHI5uPtR2W3VcGTzOcoT/6pG
	 PR/0CIsvFtjegS6Mix0kc8wMinJItVwqiPAq762/3oOSeQvK/OxbB2Rr2P8vb9Olcj
	 oDrtpLZWZv6biNwp2VP1PFCeVGCS+m3nxeHpMy5/y9iCOpQdkX5+Js7FuoE/ObOMEM
	 dyloVuNc7zsUsKJmWZzijTEl0tGgwJnTWZdr8gZDZXIA4tq2Qhfj9PIWR4CSwScNhc
	 /wxgE3dHiUcZw==
Date: Thu, 05 Feb 2026 01:25:15 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>, 
 linux-aspeed@lists.ozlabs.org, linux-riscv@lists.infradead.org, 
 Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org, 
 Albert Ou <aou@eecs.berkeley.edu>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 devicetree@vger.kernel.org, Paul Walmsley <pjw@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org, 
 Joel Stanley <joel@jms.id.au>, Alexandre Ghiti <alex@ghiti.fr>, 
 Conor Dooley <conor+dt@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
In-Reply-To: <20260205-irqchip-v1-1-b0310e06c087@aspeedtech.com>
References: <20260205-irqchip-v1-0-b0310e06c087@aspeedtech.com>
 <20260205-irqchip-v1-1-b0310e06c087@aspeedtech.com>
Message-Id: <177027631587.4038923.11644467926032419641.robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: interrupt-controller: aspeed: Add
 ASPEED AST2700 INTC0/INTC1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262875-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.184.161.160:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[14c18000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,aspeedtech.com:email]
X-Rspamd-Queue-Id: 69136EF670
X-Rspamd-Action: no action


On Thu, 05 Feb 2026 14:07:19 +0800, Ryan Chen wrote:
> INTC0 is used to assert GIC if interrupt in INTC1 asserted.
> INTC1 is used to assert INTC0 if interrupt of modules asserted.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  .../aspeed,ast2700-interrupt.yaml                  | 207 +++++++++++++++++++++
>  1 file changed, 207 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/interrupt-controller/aspeed,ast2700-interrupt.example.dtb: /example-0/interrupt-controller@12100000: failed to match any schema with compatible: ['aspeed,ast2700-intc0-ic']
Documentation/devicetree/bindings/interrupt-controller/aspeed,ast2700-interrupt.example.dtb: /example-1/interrupt-controller@14c18000: failed to match any schema with compatible: ['aspeed,ast2700-intc1-ic']

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260205-irqchip-v1-1-b0310e06c087@aspeedtech.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


