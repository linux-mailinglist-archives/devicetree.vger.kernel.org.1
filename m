Return-Path: <devicetree+bounces-318688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9JssNqMoRWr97woAu9opvQ
	(envelope-from <devicetree+bounces-318688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:48:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAF26EEF20
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:48:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CW81gr08;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318688-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-318688-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ADB523029A61
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86734356754;
	Wed,  1 Jul 2026 14:23:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D71350285;
	Wed,  1 Jul 2026 14:23:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782915825; cv=none; b=FCyPosH9Q3NSla7fe5HEsAY+uaCAgE7RBsALfAK0aQnrg/7Ph0ula/hzEzQUCIcPjdsWRagwCHNiJBPkzF8t77ePi0E0dnMVb9zCtdsd7oxsE3ZNJ663Y4j7ILnIUj5NnJcV4hTiLbQlkSH/QajSZyCHPUJK4LdUaV1YWnhwlZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782915825; c=relaxed/simple;
	bh=0tpGcZHT7ACd4SPBaLhLXekCZ6rJ9JYBya+HKjdoYQg=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=a0e+A5AZTP1TEmUXdgs8IJ/A0i1s50qnJPfGCz8KpfY2DmWvGuDiZKFVRE64/DITnRxurYM4dKcciHozlUensEWfIZJj8Bb0Nu1tnoKOsg9I3HY0ZiZwJelLrG0gEIOM7J0ihbRNOw35jjsUfLcXEcO8tJuptkoyLxQo6kdPvOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CW81gr08; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 288F71F00AC4;
	Wed,  1 Jul 2026 14:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782915824;
	bh=L+MQqoMdTb10quuKjj21cquQc2SQagarqLqHoeQ9/rY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=CW81gr08/6J3xgLYZqeMUjS5S8MAX27dufuEN6oZM/k/TED4PyD+vkkGZ5DmD5J1E
	 uZ49HNe3o4iDB9XKWBlELTolRsUaDMTt2jKlaHfXCFlZT/INQEHZXNozYwNlQsQZe4
	 JvKjXqzgOt0iq62BIusGQ+anmtq8f3FxDStbZNW5HbIHEIeOuqjUgZ4bgqauiZa3MD
	 9gWB9X1JR8kU37EUKr08+s4nmL363X43JW/sB2tjC3MQINmycor97RpJFo1oGicYB/
	 Zt0jNTBcVsnBh+bhF4RTtFBQTau7XUnFQlnezMZwBZDt7ryWbew0RO/wyYBoNrQkzH
	 bdtra1G8tBtPA==
Date: Wed, 01 Jul 2026 09:23:43 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, chunkuang.hu@kernel.org, 
 matthias.bgg@gmail.com, mripard@kernel.org, jason-jh.lin@mediatek.com, 
 kernel@collabora.com, devicetree@vger.kernel.org, justin.yeh@mediatek.com, 
 simona@ffwll.ch, p.zabel@pengutronix.de, tzimmermann@suse.de, 
 conor+dt@kernel.org, airlied@gmail.com, maarten.lankhorst@linux.intel.com, 
 dri-devel@lists.freedesktop.org, krzk+dt@kernel.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260701122057.19648-39-angelogioacchino.delregno@collabora.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
 <20260701122057.19648-39-angelogioacchino.delregno@collabora.com>
Message-Id: <178291581802.4116105.6915436352274822148.robh@kernel.org>
Subject: Re: [PATCH 38/42] dt-bindings: display: mediatek: Introduce MT8196
 2D Sharpness Processor
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318688-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:chunkuang.hu@kernel.org,m:matthias.bgg@gmail.com,m:mripard@kernel.org,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:justin.yeh@mediatek.com,m:simona@ffwll.ch,m:p.zabel@pengutronix.de,m:tzimmermann@suse.de,m:conor+dt@kernel.org,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:krzk+dt@kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:angelogioacchino.delregno@collabora.com,m:matthiasbgg@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,mediatek.com,collabora.com,ffwll.ch,pengutronix.de,suse.de,linux.intel.com,lists.freedesktop.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDAF26EEF20


On Wed, 01 Jul 2026 14:20:53 +0200, AngeloGioacchino Del Regno wrote:
> Add documentation for the Two-Dimension Sharpness Processor, or
> "TDSHP", found in many MediaTek SoCs including MT8196 and its
> variants.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../mediatek/mediatek,mt8196-tdshp.yaml       | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-tdshp.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-tdshp.yaml: ignoring, error in schema: properties: compatible
Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-tdshp.example.dtb: /example-0/tdshp@321e0000: failed to match any schema with compatible: ['mediatek,mt8196-disp-tdshp']

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260701122057.19648-39-angelogioacchino.delregno@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


