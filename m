Return-Path: <devicetree+bounces-258290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JqPLYf8cWmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:31:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D686547F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:31:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0AEE0688C95
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 012C4378D64;
	Thu, 22 Jan 2026 10:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmjYxMPw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B2238F926;
	Thu, 22 Jan 2026 10:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769077237; cv=none; b=UShNN2LQEXktMOyXLfM3GUloEXA65A3RIi9nokudgBcUABUHYo8PeC6ovIzyAzOwu/ZHJzrfR35zSUcZggRUIrPM0R0xX2C2VzVmyEZNjnoz/3yQPzSJD5ZnZCqvcm1qBDgcyXW6YbHE6qZ3Tip3Ab/D+tyoFVuVIqpxpiEs+KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769077237; c=relaxed/simple;
	bh=ONa6ASogMSTJc/W+Ezo8UvIMrfzEIFIzWJuOeuW3Yyc=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=mFcFhMPn0MbT5/0dDWKDSP4ae9nDQ3VTaOEq3yPL5TUeQYZZk4af/cpASMmwY0wXs155EWJ89spcEAJW1Z+BiGWfDl322TqJrJXkdL1Nfz8Uu61DUITnGaFO4Amh98hc8Ibpb72KmWa4czRyQQM4UkMpffRsRAAmDX1PHgxyk0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmjYxMPw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 901D8C116C6;
	Thu, 22 Jan 2026 10:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769077237;
	bh=ONa6ASogMSTJc/W+Ezo8UvIMrfzEIFIzWJuOeuW3Yyc=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=GmjYxMPwKIN11UUWWnFYmSgOkLFagzruNR1r0j1j5026Sut6c1xdjqi9lHfBUk3LQ
	 if46qrgYkxxaPTN0mk0T26O54kdgForlTYQsm8cYqU9NtkXT4oHs5F7B4hoZ7PQd4c
	 /L/vhzK50eBVeRlJK45JCqDmffEI59JViAwBehA/UldCK1rna0ubpkCxBT7TLIFSZ1
	 cSpfc11KdnI0JSLMpqBJuuN2CkB6KRRLeVxhO6yQdZqEXiz6Deo6PnS8iQzzZUdbLa
	 IPNjJN1sodkysvWoTU1TNwK9o2jTEUHkNQHa2M6CWb9tPBXZTmM8EPJ5SZdJpqNXRx
	 qQpc9uOphQEag==
Date: Thu, 22 Jan 2026 04:20:36 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 Liam Girdwood <lgirdwood@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Paul Walmsley <pjw@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>, 
 Lee Jones <lee@kernel.org>, Alex Elder <elder@riscstar.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Yixun Lan <dlan@gentoo.org>, Albert Ou <aou@eecs.berkeley.edu>, 
 Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Guodong Xu <guodong@riscstar.com>
In-Reply-To: <20260122-spacemit-p1-v1-2-309be27fbff9@riscstar.com>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
 <20260122-spacemit-p1-v1-2-309be27fbff9@riscstar.com>
Message-Id: <176907723670.1588257.5123730065899244337.robh@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258290-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,kernel.org,dabbelt.com,linux.spacemit.com,ghiti.fr,riscstar.com,lists.infradead.org,gentoo.org,eecs.berkeley.edu];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,riscstar.com:email]
X-Rspamd-Queue-Id: 62D686547F
X-Rspamd-Action: no action


On Thu, 22 Jan 2026 17:43:43 +0800, Guodong Xu wrote:
> Add supply properties that match the P1 PMIC's actual hardware topology
> where each buck converter has its own VIN pin and LDO groups share
> common input pins. Supply names are defined according to the pinout
> names in the P1 datasheet.
> 
> This allows different boards to describe their actual
> power tree connections in devicetree rather than hardcoding supply
> relationships in the driver.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
>  .../devicetree/bindings/mfd/spacemit,p1.yaml       | 58 +++++++++++++++++++++-
>  1 file changed, 56 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/mfd/spacemit,p1.example.dts:13.1-4 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.dtbs:141: Documentation/devicetree/bindings/mfd/spacemit,p1.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1559: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260122-spacemit-p1-v1-2-309be27fbff9@riscstar.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


