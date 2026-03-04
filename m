Return-Path: <devicetree+bounces-271016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDDvAoMmqGlhowAAu9opvQ
	(envelope-from <devicetree+bounces-271016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:33:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 752A71FFB83
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:33:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55DA630D9506
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 12:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C532B13A86C;
	Wed,  4 Mar 2026 12:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3GF8uYk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBAE3BB40;
	Wed,  4 Mar 2026 12:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772627450; cv=none; b=mXds6cZbNfeSwUCm+2ltjU15JOytyHGMjDgZe7gVTzrpzQyC7YwvaXGMgZz7OMlevPlmqmCCAtC5IrDUYmqZNjd+s0oYGtM48hBPEU8c5oQg8aI5inyuA8RF1bvC84U/A+ygibPjZnx+rMic0wTl719mdGTJTPXJE1Cx7laCa4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772627450; c=relaxed/simple;
	bh=j4N8ALZX5v3JvsVJCG7QEOCLTTnjQFFQbHOYRYgYflE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=mwfU5k1kj6uGj/eZGWt5VDWObiiL8WkJtEH0N2Y1BBHEPqprZfD0G76bx0nlAvi19YAn70awoMtWAAIZKRA+oCy9vHJ/XmGgFVRIQSbhEMPtsgUlxCtrjpI73jkRYmehCTuH/hTxGMMLog4lmRfLjj+l0TougBVHHw9k3tJW/oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3GF8uYk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37E69C19423;
	Wed,  4 Mar 2026 12:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772627450;
	bh=j4N8ALZX5v3JvsVJCG7QEOCLTTnjQFFQbHOYRYgYflE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=p3GF8uYkOd9Q63cHHH00OKavANtgaz+LWkSMKEa4fYMnXVM1KwrnHxDIlYyXcWwaT
	 O3w5jkVyRnFjBThepQSvP1bXqBHtpBxqFKZwsa8BBMJwDpKdnzQVXhJlF4xKfIdqzr
	 m3SOt1MBmRwfRqYDmUEO1iwXle3qw5UhrxcXGsF9JnHZCnQGJ7C5HZKes2w3NyMMcm
	 Dd938M8l4jZS3A9/teMkw1H6n8t2g0d43gRhN4GDs8QcZsSQAjafbTwFujYdz2d22C
	 SOjn+WDIOmz/J68SIZh/gLO5LEt7KgLpsI3nF/kJrX7fvkshLazXxYkARABxcQh/cv
	 MKBiuSHZZrfwA==
Date: Wed, 04 Mar 2026 06:30:49 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, gregkh@linuxfoundation.org, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, 
 jollys@xilinx.com, devicetree@vger.kernel.org
To: Alexandru Hossu <hossu.alexandru@gmail.com>
In-Reply-To: <ae0a95f4-8dac-4690-8810-79ad5fee7895@gmail.com>
References: <ae0a95f4-8dac-4690-8810-79ad5fee7895@gmail.com>
Message-Id: <177262744925.1921799.5966560216079361172.robh@kernel.org>
Subject: Re: [PATCH] staging: axis-fifo: fix alignment and add DT binding
 documentation
X-Rspamd-Queue-Id: 752A71FFB83
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271016-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Action: no action


On Wed, 04 Mar 2026 12:08:53 +0100, Alexandru Hossu wrote:
> Add YAML device tree binding documentation for the Xilinx
> AXI-Stream FIFO IP core and fix code alignment issue.
> 
> Signed-off-by: Alexandru Hossu <hossu.alexandru@gmail.com>

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml: properties: False schema does not allow True
	from schema $id: http://devicetree.org/meta-schemas/interrupts.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.example.dtb: axi_fifo_mm_s@43c00000 (xlnx,axi-fifo-mm-s-4.1): 'interrupt-parent' is a required property
	from schema $id: http://devicetree.org/schemas/misc/xlnx,axi-fifo-mm-s.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/ae0a95f4-8dac-4690-8810-79ad5fee7895@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


