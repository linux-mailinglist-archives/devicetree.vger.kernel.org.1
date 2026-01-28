Return-Path: <devicetree+bounces-260274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EBqMdPYeWlI0AEAu9opvQ
	(envelope-from <devicetree+bounces-260274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:37:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7170C9EE20
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:37:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D3EE330022F7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A97C03491C2;
	Wed, 28 Jan 2026 09:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwCbn41Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 851C4347BD9;
	Wed, 28 Jan 2026 09:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769593037; cv=none; b=pj6jhRO7WXoNck0O0muJ0hPII1OTSI7eZw0U5TpXKvankys9Lb0qJzW1Zs+D3ZXMgyC1slCWEpwVtL8CIvBpRjl+Uc8z5Jf4CUuMpglqfW3Qb/3jsS0y7g9tmapU8GKOJIxnSUEnd+nG0asyrptCfSdkXVfG5Pxvo1Cjn/+m3eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769593037; c=relaxed/simple;
	bh=BLeqdrA918b70I8RbA3CtdBP+GakpVCse5+C542muTY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=qtfjw4+2e+JQ7EbLgq0tzZ3TC0K2wzQp0kRUVztOnwePxCAiKWVVK4oDECcZA4fyUorWCljgF3vDC59LzvENeGQxZbmbJ9L1WhmIEu//xRBPOp/MpoHTYpZ/LhBYBrLVIXl4AEf1L211cqfZ64rTGq/dokraSjgYR/k7bl9do+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwCbn41Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E797C4CEF1;
	Wed, 28 Jan 2026 09:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769593037;
	bh=BLeqdrA918b70I8RbA3CtdBP+GakpVCse5+C542muTY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=kwCbn41Qm/PIgFyRsb0jLETLZNTNPGmHQIqVmV+HjWKJkHsE9nvRpa8J46LsIhW3q
	 2Rptk46YJBpxE06VFjD41kwHEYtnC5pUe/UGJp6FNDCikJ+87AfnjMp7ZNqGrVuM49
	 aXqgUTvEmMpcAESsM+MC1p98IkeDn3UAUENK6ZVPhlGb1xDGAVKjWt5g/4XNczJno4
	 ibZbxgCQnuxJO7fXp5pC0emlbIsRkeIfOs6r0I7uUeMlB7Fc5lYkgo6AZk9VdAAjwA
	 BdXB8cNnooCJVsy2Um0Ng3ueDri6/No2cNc13E2NSFvxdN0/y3eoH5tY4rRA9Omq01
	 8PKgGS6vxOqqQ==
Date: Wed, 28 Jan 2026 03:37:16 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-mtd@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-kernel@vger.kernel.org, 
 Richard Weinberger <richard@nod.at>, devicetree@vger.kernel.org, 
 Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Conor Dooley <conor+dt@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260128-mxic-nand-v2-1-6f0cf94f2fd7@gmail.com>
References: <20260128-mxic-nand-v2-1-6f0cf94f2fd7@gmail.com>
Message-Id: <176959303628.238734.3843759154306421826.robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: mtd:
 mxic,multi-itfc-v009-nand-controller: convert to DT schema
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260274-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7170C9EE20
X-Rspamd-Action: no action


On Wed, 28 Jan 2026 07:58:00 +0000, Akhila YS wrote:
> Convert Macronix Raw NAND Controller Device Tree binding to DT Schema.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
> Changes in v2:
> - Add "Mason Yang" as maintainer.
> - Link to v1: https://lore.kernel.org/r/20260126-mxic-nand-v1-1-557df4a0dfa7@gmail.com
> ---
>  .../mtd/mxic,multi-itfc-v009-nand-controller.yaml  | 78 ++++++++++++++++++++++
>  .../devicetree/bindings/mtd/mxic-nand.txt          | 36 ----------
>  2 files changed, 78 insertions(+), 36 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml:11:5: [warning] too many spaces after hyphen (hyphens)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260128-mxic-nand-v2-1-6f0cf94f2fd7@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


