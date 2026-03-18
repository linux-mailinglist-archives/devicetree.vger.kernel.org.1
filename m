Return-Path: <devicetree+bounces-277311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QK3sL7O7ummqbQIAu9opvQ
	(envelope-from <devicetree+bounces-277311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:50:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E05E2BD85D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D73BB304BD34
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43FED3DEAC5;
	Wed, 18 Mar 2026 14:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZPg1BKV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9FA3D902E;
	Wed, 18 Mar 2026 14:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773845219; cv=none; b=vBS1JXJhp2ZYH4qDrLEK7maxvduukxHifKBA3c+Xwc0bcOwqgKn/7LKD0ujz2Hc+zKSv5Rdqc1X+f/QRoCKmnV+lMSbkeI9Tyr7flDO7D4jPbjuAhirlRrEuB6FErsWh8mQ+Q1vc8vhFwvklLK49Y0wHXYXDjCp4Jao/cHZ042Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773845219; c=relaxed/simple;
	bh=NAJZGL1EYp7BOnlNcYpIyQcOZCv/RqbJQH3+BqDf6Ew=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=oppKIZLKMMc6xLTY49aNuarPQAwzQyQ0Xp7yD6rixjutP2YGTq6BPoRGyWGh2uXkxD3uHrbYwLAX44ZfK2LpSG5ikx4GKoDpPmVBxOeIAN8QtkChTJR/tVAlMkeHDIeXIl4hYFNaWJZKA3HDAGCVrny443xpqNF6pOXkOA+rJhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZPg1BKV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7FF6C19421;
	Wed, 18 Mar 2026 14:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773845218;
	bh=NAJZGL1EYp7BOnlNcYpIyQcOZCv/RqbJQH3+BqDf6Ew=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=YZPg1BKVix4c0ZUkeTOefj6GZp+hhFvkwlZts93E2jh9zqSjWZ8Mb4qpPq8LThGop
	 Oh8UF50BwHNdcrqVOTdjY1Y6hsMvD183Xm80UE5JmpJxnxlgFOvbWaeXw4k0YS1/G/
	 sSAroWyzDFpDkfsCeLLr/uCGqfi2+6gCRSSmjOdhem/bb8jIgRpyyc2A8AL/DiLTWu
	 HcTySz6lZGPu2QfZj9e3YfTjdNnxCxvriaw7Ry6YKylOcgxlGI8G5+6SBm2IF/lxUF
	 D7BOM2vG4fnaTj16I5T8qX68K9O0F6Q2DNSnS7GRPIXYs6HDZZldB92fppQscybDb7
	 1mos2A34v2Urg==
Date: Wed, 18 Mar 2026 09:46:57 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@kernel.org>, ms@dev.tdt.de, 
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Eckert.Florian@googlemail.com, 
 linux-kernel@vger.kernel.org
To: Florian Eckert <fe@dev.tdt.de>
In-Reply-To: <20260318-irq-intel-soc-msi-v1-1-0e8cdf844fa8@dev.tdt.de>
References: <20260318-irq-intel-soc-msi-v1-0-0e8cdf844fa8@dev.tdt.de>
 <20260318-irq-intel-soc-msi-v1-1-0e8cdf844fa8@dev.tdt.de>
Message-Id: <177384521793.3537506.5198500678786970949.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: Add Lightning Mountain MSI interrupt
 controller bindings
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277311-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,dev.tdt.de,vger.kernel.org,googlemail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,e00e0000:email,tdt.de:email]
X-Rspamd-Queue-Id: 5E05E2BD85D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 18 Mar 2026 14:10:40 +0100, Florian Eckert wrote:
> Add device tree bindings for the Lightning Mountain (LGM) MSI interrupt
> controller.
> 
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
>  .../interrupt-controller/intel,soc-msi.yaml        | 45 ++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/interrupt-controller/intel,soc-msi.example.dtb: /example-0/soc_msi@e00e0000: failed to match any schema with compatible: ['intel,soc-msi']

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260318-irq-intel-soc-msi-v1-1-0e8cdf844fa8@dev.tdt.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


