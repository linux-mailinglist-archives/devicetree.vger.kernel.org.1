Return-Path: <devicetree+bounces-288884-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJklBDSa5mnCygEAu9opvQ
	(envelope-from <devicetree+bounces-288884-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 23:27:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 960C843402E
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 23:27:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 502B0308B748
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 21:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621F03B0AFB;
	Mon, 20 Apr 2026 21:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPmIN6Kz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC0F37996B;
	Mon, 20 Apr 2026 21:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776720128; cv=none; b=tatsdWDjQ3RN1mR+yAWO7XCyQFaygZXjzWVCFQ97qV05TYgEAjufBqMiDrWpDBvfOUDEGP/8RPguEeaLJ8/MxzhxzmgcGzTte3r82RNgJxX2IeqffPqVhCTepfDboIU5kGhQDXxZvafYi+8u2QLAYuijqhOsuN0rVeOFtURi9jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776720128; c=relaxed/simple;
	bh=mjEpaLxSeGJIi/E0Mk9VsQjmxZArPUCWwKsTFhO9mds=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=lLiEvIWeTtMR+GlflVxtExPzEZX9Wcp9CZg1103MTSREmoLHVUWthqbNWbVcyQKLch+za64GD7dXrLRdRrNdt+ZAA+NCHf40GMj++5yS1yXx18t96phZX4yGsMubR/+qa46WlGiMpnQg4TtYu3wIeIxXAi6LJPzg06wnCfjy5Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPmIN6Kz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44A7DC19425;
	Mon, 20 Apr 2026 21:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776720127;
	bh=mjEpaLxSeGJIi/E0Mk9VsQjmxZArPUCWwKsTFhO9mds=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=PPmIN6KzYMkx8H+gNe+dHvNqCZtT8bcaaknJZzCrIzxIiw5hQHHRDt1JM1jy11WoC
	 CYqRDpnMuf82halSQcTdoRR5urNhda6CZm2dSnt7eV9SVepyHBQ7S0T0s45cIQif2J
	 nZmy0Zg+a41jXuhi33HjwPI1q/FQxpSKsaL455RCIrVZz88ZJjQyKmVMGObd0QQLsA
	 pPGn8iT2uRKo9b1MGULfBa2SzhaVwdjtUjNBLMcgH0j/i6e3ahJbIvwEei/kSYNuVB
	 FgUK6PBdoYcgWLch/GHzntlffxssh11n7Xqspbr4Z01Hqap+Y0IrxzficLnzTPHR9D
	 e4la+NjUZ4PLw==
Date: Mon, 20 Apr 2026 16:22:04 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-sound@vger.kernel.org, 
 Liam Girdwood <lgirdwood@gmail.com>, devicetree@vger.kernel.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Mark Brown <broonie@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, linux-kernel@vger.kernel.org
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
In-Reply-To: <20260420204514.1640995-1-l.scorcia@gmail.com>
References: <20260420204514.1640995-1-l.scorcia@gmail.com>
Message-Id: <177672012448.3390448.3487317884636919174.robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: mediatek: Convert mtk-btcvsd-snd to
 DT Schema
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288884-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com,collabora.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 960C843402E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 20 Apr 2026 21:44:30 +0100, Luca Leonardo Scorcia wrote:
> Convert the mtk-btcvsd-snd.txt DT binding to DT Schema format.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>  .../sound/mediatek,mtk-btcvsd-snd.yaml        | 54 +++++++++++++++++++
>  .../bindings/sound/mtk-btcvsd-snd.txt         | 24 ---------
>  2 files changed, 54 insertions(+), 24 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mtk-btcvsd-snd.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/mtk-btcvsd-snd.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/mediatek,mtk-btcvsd-snd.yaml: 'maintainers' is a required property
	hint: Metaschema for devicetree binding documentation
	from schema $id: http://devicetree.org/meta-schemas/base.yaml
Lexical error: Documentation/devicetree/bindings/sound/mediatek,mtk-btcvsd-snd.example.dts:28.25-32 Unexpected 'GIC_SPI'
Lexical error: Documentation/devicetree/bindings/sound/mediatek,mtk-btcvsd-snd.example.dts:28.37-55 Unexpected 'IRQ_TYPE_LEVEL_LOW'
FATAL ERROR: Syntax error parsing input tree
make[2]: *** [scripts/Makefile.dtbs:140: Documentation/devicetree/bindings/sound/mediatek,mtk-btcvsd-snd.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1635: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260420204514.1640995-1-l.scorcia@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


