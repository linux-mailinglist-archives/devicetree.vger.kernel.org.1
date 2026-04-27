Return-Path: <devicetree+bounces-290432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCSaOO4d72ml6wAAu9opvQ
	(envelope-from <devicetree+bounces-290432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 10:27:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 392BF46F11A
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 10:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3F4D303CA54
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 08:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F71539A7E9;
	Mon, 27 Apr 2026 08:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j59/t+wT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2463803EB;
	Mon, 27 Apr 2026 08:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777278246; cv=none; b=GmEo+/9o6QvfPFvrdX635Z/Xc84/hgQJMmuCijLVrDLcpcYX+Q0UQJVN+7Sdkb87F/TAt+xH+2qa8BTQBLjX4UnoxOp1VvTBUPmHQQHnLOF3oeSbQAFgsfIlp1ofGvl6cMpLSW/0uAKVuS0FWTfQ+kEDhkGOPCBWfz7pbpcAWjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777278246; c=relaxed/simple;
	bh=zvpwmP5OW9BVPljro9l/0A5E+XjE0vObFmo1E7/7drQ=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=ehubhiK7pDKyyKWD79052JkpEW0WmNk7lyYwGErn8r5mebeN8hzB8amD4O+nwizqX7r15oTebgBc7fYdI7IbCg4PnowppVrl+dowaTMSbDlr8Yaii6RMjwTSy4VhiUihi7QD48aJT9UXlrvFeNFPuoKeZuXrm1iMG3IvH6a+RB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j59/t+wT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D778C19425;
	Mon, 27 Apr 2026 08:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777278245;
	bh=zvpwmP5OW9BVPljro9l/0A5E+XjE0vObFmo1E7/7drQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=j59/t+wTph9MDM/6ZabS4cD6CwHS3v4FDE+e8GB9LgWAQaTMdBwJlLxABT3W6KX1E
	 ATPoALKwUU/Q5o8SNFjrYkhbxfcEl0a/+Jepqn5zonyM0ZX/tQ+Izh/hm7nV1lYTvg
	 KGS8r2Yv0NETjzxVGIZiyVq4KboQUlPq79pTpGWZldohA6rOSjPGU2cAxISxsDRwCk
	 6i4n1feMbycqpIu2hbqDYZDl9wjgOslETt3NEfj8uI3qQAdLGZTKSmdDR+kIAAO1Qc
	 1q4Fg3nONwXAGllKkBtscs0aCJto3EueSFE2Y3j5JzgbTReA0+O9JxaAExtJByVnba
	 TJs2vyKldmmWw==
Date: Mon, 27 Apr 2026 01:24:03 -0700
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 "Rafael J . Wysocki" <rafael@kernel.org>, devicetree@vger.kernel.org, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Balsam CHIHI <bchihi@baylibre.com>, linux-arm-kernel@lists.infradead.org, 
 vince-wl.liu@mediatek.com, Philipp Zabel <p.zabel@pengutronix.de>, 
 justin.yeh@mediatek.com, linux-mediatek@lists.infradead.org, 
 jarried.lin@mediatek.com, Daniel Lezcano <daniel.lezcano@kernel.org>, 
 Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org, 
 Zhang Rui <rui.zhang@intel.com>, linux-pm@vger.kernel.org
To: mtk36707 <kuanfu.lu@mediatek.com>
In-Reply-To: <20260427065236.1685057-1-kuanfu.lu@mediatek.com>
References: <20260427065236.1685057-1-kuanfu.lu@mediatek.com>
Message-Id: <177727824371.1363528.14088477684280198031.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: thermal: mediatek: Add MT8189 LVTS
 bindings
X-Rspamd-Queue-Id: 392BF46F11A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,vger.kernel.org,gmail.com,baylibre.com,lists.infradead.org,mediatek.com,pengutronix.de,arm.com,intel.com];
	TAGGED_FROM(0.00)[bounces-290432-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


On Mon, 27 Apr 2026 14:48:29 +0800, mtk36707 wrote:
> From: Kuanfu Lu <kuanfu.lu@mediatek.com>
> 
> Add support for the MediaTek MT8189 LVTS thermal controller to
> the device tree bindings. This includes new compatible strings
> and required properties for MT8189.
> 
> Signed-off-by: Kuanfu Lu <kuanfu.lu@mediatek.com>
> ---
>  .../thermal/mediatek,lvts-thermal.yaml        | 27 +++++++++++++++++--
>  .../thermal/mediatek,lvts-thermal.h           | 20 ++++++++++++++
>  2 files changed, 45 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml:99:11: [warning] wrong indentation: expected 8 but found 10 (indentation)
./Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml:119:11: [warning] wrong indentation: expected 8 but found 10 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260427065236.1685057-1-kuanfu.lu@mediatek.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


