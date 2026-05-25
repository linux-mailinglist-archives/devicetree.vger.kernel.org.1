Return-Path: <devicetree+bounces-302648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFn9J0YwFGqUKgcAu9opvQ
	(envelope-from <devicetree+bounces-302648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:19:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B835C9E27
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:19:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1177303EC0E
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2205E37E2F5;
	Mon, 25 May 2026 11:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOzzvhQS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB7137E2EB;
	Mon, 25 May 2026 11:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779707630; cv=none; b=n4sEyrmEaXpzL0qu/FRFIzOn76LLlx5r8D7iuUBRUzGoxgdk4491G3/4BagoPiZRVNgsU7302vWsvwJxpSsXmBaN6iS7JCvIeNkhGAlBIigH5ytiv8Eav2So+qJaNQEmfO2WhAh+AQoyljc3ODcQo1cWfGm1ZskKJwbUEwrkTWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779707630; c=relaxed/simple;
	bh=LvUqYJqeZE+/zNF2jioA/WkRcXM5DHcyfhDCLnDwtaU=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=nIw771Tvb66TXcpQsIoOii1tdKKatYp3zjew1sP9Iozs0cco6rMixMG1j4XDcvyGN8As0aLFM1rCwgf5zB8ajEULz4AHBuRU0FqSNVtoBF+ldfc80VS6qQaActu7uNZnNpQiX3mQ2ep4fMG2MXGV/KW35TnMokaV/c+MYS/irDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOzzvhQS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFB331F00A3A;
	Mon, 25 May 2026 11:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779707628;
	bh=gzBDFr43Boq9Lj7lrwvex2le7up+8Wg9eGEwYQ+PjtU=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=DOzzvhQSiS34iWE7nXECeeQpcxWWsGg/C9aX/BghWrz+rvSMthodByxXcIe2gTPn1
	 frRj9aAbz9cFPG+jTgToU6avpbHx5CJrJf2YC6R4DMwn28O+lXO3eAucd2tyFiPTae
	 zMAQZxXfUzM1gt4rvwfBKhgk5zcbHC9vxFX/eL3Kx0MSplvx+mOvzndibbwCnWYr8m
	 81deYGQtF89WAPPHMTAzCz2VrFYfom70TOUbauHvXMQR4Kjq2uXrt4Zid/Cat4knP/
	 /NTqdujID3PpecLSePgSx/DyFTN66aS601brDxoDcIYE0JaGgrv8e7wU0rC3WeEBAh
	 Bnix/jWsap93w==
Date: Mon, 25 May 2026 06:13:47 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: mripard@kernel.org, luca.ceresoli@bootlin.com, tzimmermann@suse.de, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 krzk+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com, conor+dt@kernel.org, 
 cristian.ciocaltea@collabora.com, Laurent.pinchart@ideasonboard.com, 
 rfoss@kernel.org, sebastian.reichel@collabora.com, 
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 andy.yan@rock-chips.com, andrzej.hajda@intel.com, jernej.skrabec@gmail.com, 
 simona@ffwll.ch, devicetree@vger.kernel.org, 
 nicolas.frattaroli@collabora.com, m.szyprowski@samsung.com, 
 Conor Dooley <conor.dooley@microchip.com>, hjc@rock-chips.com, 
 airlied@gmail.com, maarten.lankhorst@linux.intel.com, jonas@kwiboo.se, 
 dianders@chromium.org, heiko@sntech.de, neil.armstrong@linaro.org
To: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260525082033.117569-7-damon.ding@rock-chips.com>
References: <20260525082033.117569-1-damon.ding@rock-chips.com>
 <20260525082033.117569-7-damon.ding@rock-chips.com>
Message-Id: <177970762670.3598384.1698792096821270137.robh@kernel.org>
Subject: Re: [PATCH v7 06/10] dt-bindings: display: rockchip: analogix-dp:
 Add support for RK3576
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[sea.lore.kernel.org:server fail,microchip.com:server fail,rock-chips.com:server fail];
	TAGGED_FROM(0.00)[bounces-302648-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,bootlin.com,suse.de,lists.infradead.org,vger.kernel.org,oss.qualcomm.com,collabora.com,ideasonboard.com,lists.freedesktop.org,rock-chips.com,intel.com,gmail.com,ffwll.ch,samsung.com,microchip.com,linux.intel.com,kwiboo.se,chromium.org,sntech.de,linaro.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,rock-chips.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 02B835C9E27
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 25 May 2026 16:20:29 +0800, Damon Ding wrote:
> RK3576 integrates an eDP TX controller compatible with the existing
> RK3588 hardware design, reuse the same binding configuration directly.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Split out a separate patch to add the "hclk" clock reference.
> 
> Chanegs in v4:
> - Modify the commit msg.
> 
> Changes in v5:
> - Add Acked-by tag.
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml:34:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260525082033.117569-7-damon.ding@rock-chips.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


