Return-Path: <devicetree+bounces-275998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BmLKam9t2mpUgEAu9opvQ
	(envelope-from <devicetree+bounces-275998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:22:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ED4296183
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E9F53011753
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA91A35A395;
	Mon, 16 Mar 2026 08:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE+SVbsc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB5D359A88;
	Mon, 16 Mar 2026 08:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773649299; cv=none; b=OX+LdGEWyb/VFpcl8fgr1V66XFmzuatCBijIxU2GWQAqq7+8T5yVh0jXdT1qw68lS07/egcvnzVrZPkwnreXn49U1hppRWVDSbxsElxmx3zUFKHQOrOJkKiNZBxaKOFs6Lo4/S2x30OlGc/GYZ8BArXZKidWYU89u1i3uD276M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773649299; c=relaxed/simple;
	bh=RZArSEGiIi6tf/QaCodiGjnLLyg0p5GqsTdgKr1WE4Y=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=Y89G0rwZ4+Pf0gYaY5Bnot1OjDnWlmkw/wjlZ/wMkGmwCOhZZ8YyO8EKi0+vSmdSGhvkX7n/ui8ta4eh0Lx0k2JWw932Lc+FV09iViC3wOILXbV6eqx/4CSa/wTq5MjhiiR5CbFdrrDqcimW0oFrWv8HMXERaF6h6kBsfzc2rco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE+SVbsc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9822AC19424;
	Mon, 16 Mar 2026 08:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773649298;
	bh=RZArSEGiIi6tf/QaCodiGjnLLyg0p5GqsTdgKr1WE4Y=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=aE+SVbscvLzvPYGR6WULwTrbDzooNL4QaaEnO0yZ3X5OJ89/plQBX6/kS7DNTgWRH
	 MUNy4q3Q+NnyPXMGhRmWa+6PCVCZ5AC0g3399irWHXyBNhvcCjOIseSiWT5+y7MXsx
	 FZ5rFr+oQ3qaLF9VtQTrvNgJybxfgtDUd92YT0VVsYOsCWfVo+vVAsfPhEBLC49oaA
	 TuxefHCIvSqgTzAXauQpP1w/g0kN3A8IqjyBln1Wo6EtEFV27NUgY4mDgxcSFkAV6B
	 94wxS1l7/uf8z3z5fPZsIRS0KApV99GVB71q6IlAzKyirHiqj6G/+kaz0uVMNEA0V0
	 Zvwk4aSlThj6Q==
Date: Mon, 16 Mar 2026 03:21:37 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Abraham I <kishon@kernel.org>, 
 Jayesh Choudhary <j-choudhary@ti.com>, Conor Dooley <conor+dt@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>, 
 Nishanth Menon <nm@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Andrew Davis <afd@ti.com>, linux-arm-kernel@lists.infradead.org, 
 Philipp Zabel <p.zabel@pengutronix.de>
To: "A. Sverdlin" <alexander.sverdlin@siemens.com>
In-Reply-To: <20260316070429.1545707-2-alexander.sverdlin@siemens.com>
References: <20260316070429.1545707-1-alexander.sverdlin@siemens.com>
 <20260316070429.1545707-2-alexander.sverdlin@siemens.com>
Message-Id: <177364929663.1046182.9727069225111322855.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: syscon: add binding for TI K3
 platforms reset registers
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275998-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.70.250:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,siemens.com:email]
X-Rspamd-Queue-Id: 19ED4296183
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 16 Mar 2026 08:04:23 +0100, A. Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> 
> Add DT binding for Texas Instruments K3 Multicore SoC platforms reset
> registers present on AM64x and newer members of the K3 family and consist
> of the RST_CTRL, RST_STAT, RST_SRC and RST_MAGIC_WORD.
> 
> The planned usage is to provide reset reason information.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> ---
> Changelog:
> v2: amended mfd/syscon.yaml instead of separate reset/ti,am64-rst.yaml
> 
>  Documentation/devicetree/bindings/mfd/syscon.yaml     |  1 +
>  .../bindings/soc/ti/ti,j721e-system-controller.yaml   | 11 +++++++++++
>  2 files changed, 12 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.example.dtb: scm-conf@100000 (ti,j721e-system-controller): rst@18170:compatible: ['ti,am64-rst'] does not contain items matching the given schema
	from schema $id: http://devicetree.org/schemas/soc/ti/ti,j721e-system-controller.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.example.dtb: scm-conf@100000 (ti,j721e-system-controller): rst@18170:compatible: ['ti,am64-rst'] is too short
	from schema $id: http://devicetree.org/schemas/soc/ti/ti,j721e-system-controller.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.example.dtb: scm-conf@100000 (ti,j721e-system-controller): rst@18170:compatible: 'oneOf' conditional failed, one must be fixed:
	['ti,am64-rst'] is too short
	'ti,am64-rst' is not one of ['microchip,sama7g5-sfrbu', 'microchip,sama7d65-sfrbu']
	'microchip,pic64gx-control-scb' was expected
	'microchip,pic64gx-sysreg-scb' was expected
	from schema $id: http://devicetree.org/schemas/soc/ti/ti,j721e-system-controller.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260316070429.1545707-2-alexander.sverdlin@siemens.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


