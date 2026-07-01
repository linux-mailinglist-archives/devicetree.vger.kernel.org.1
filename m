Return-Path: <devicetree+bounces-318689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GTAbFFwlRWod7woAu9opvQ
	(envelope-from <devicetree+bounces-318689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:34:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E576EECAB
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:34:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dm+ezxjK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318689-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318689-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 50615307E336
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777FB3570AD;
	Wed,  1 Jul 2026 14:23:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ABA3546E0;
	Wed,  1 Jul 2026 14:23:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782915826; cv=none; b=OIqU/ZoU/gz8CjrK/2sfL+xH+/Cco/VUUMcyMTu/YgRr62EF0gt1FFYXP5a6taQm8D72z8qg7GmDJOtPRIrlJOSASHH5q7wBsZD/0AOWL6MJ5ZhDR0T/NLNTt+kNgiJAjVoRCFIbMFl2HHfWC7YhP2O0raGN8dEh3lcV+Y8w2pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782915826; c=relaxed/simple;
	bh=jcyAe/i7l2WXLwr5I64+B9bhRfdjsktmMhodAMxmk+w=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=few5gBG54m3y/SMemq6EDEAoMMLJ3Mn7f9KeS7bBrS+GPv5eADi6IFqYlU7jWrjO2A7cYeqE3HyUgqskNnGR2xu6ekwCuMAavs6AdHO9OHUc0vVFjlZ6vIZ7OobTvv5PmmKqnqn/bv3VoGWfFfE8EUDDkhbjiVvE45mlJjouJGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm+ezxjK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AF011F00ACF;
	Wed,  1 Jul 2026 14:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782915825;
	bh=yM8HcAoywZQROnbGbiMNPlQQuS/3De3vvYBkNdJ6Ssw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=dm+ezxjK6+6YX6PEsusjTDfb3QpL0aI6bc4m2j4IIuhZcA5kuFU5OmJecyRnYSudt
	 RWt8/QEs82rbWzGasUdJzfrtb0tGuMGTH7qlNqzeeVDtRdIVgPeB8s6Vf2id9P0x5c
	 YK2+LemCD/pK5dDwILNNRHzfaaL4ySljWEmvNGzLtN+xC2XqhUuAWJLCW/OMvk8ZG5
	 Ucq8jv5gUx1IeNk6dkBdwaWSx2jPISueSh/HQ3jUMsLjKaCMsuNSZkTNdkRdeoxRQ3
	 ouvVvXC9pRjlAbKM3+Wq2JohCdCuNVni31Y0PjWBiMZbOtnSpKIuO2HH3A4TIgfqhf
	 pbKgkUNtjcL8A==
Date: Wed, 01 Jul 2026 09:23:44 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: dri-devel@lists.freedesktop.org, p.zabel@pengutronix.de, 
 tzimmermann@suse.de, justin.yeh@mediatek.com, krzk+dt@kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 kernel@collabora.com, mripard@kernel.org, chunkuang.hu@kernel.org, 
 maarten.lankhorst@linux.intel.com, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, 
 jason-jh.lin@mediatek.com, devicetree@vger.kernel.org, airlied@gmail.com, 
 simona@ffwll.ch
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260701122057.19648-41-angelogioacchino.delregno@collabora.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
 <20260701122057.19648-41-angelogioacchino.delregno@collabora.com>
Message-Id: <178291581931.4116323.2079243136968676585.robh@kernel.org>
Subject: Re: [PATCH 40/42] dt-bindings: display: mediatek: Introduce MT8196
 Image Resizer
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318689-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dri-devel@lists.freedesktop.org,m:p.zabel@pengutronix.de,m:tzimmermann@suse.de,m:justin.yeh@mediatek.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:kernel@collabora.com,m:mripard@kernel.org,m:chunkuang.hu@kernel.org,m:maarten.lankhorst@linux.intel.com,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:linux-mediatek@lists.infradead.org,m:jason-jh.lin@mediatek.com,m:devicetree@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:angelogioacchino.delregno@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,pengutronix.de,suse.de,mediatek.com,kernel.org,vger.kernel.org,lists.infradead.org,collabora.com,linux.intel.com,gmail.com,ffwll.ch];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F2E576EECAB


On Wed, 01 Jul 2026 14:20:55 +0200, AngeloGioacchino Del Regno wrote:
> Add documentation for the Image Resizer "RSZ" Scaler block found
> in the MT8196 SoC and its variants.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../display/mediatek/mediatek,mt8196-rsz.yaml | 97 +++++++++++++++++++
>  1 file changed, 97 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-rsz.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-rsz.yaml: ignoring, error in schema: properties: compatible
Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-rsz.example.dtb: /example-0/scaler@329d0000: failed to match any schema with compatible: ['mediatek,mt8196-disp-rsz']

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260701122057.19648-41-angelogioacchino.delregno@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


