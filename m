Return-Path: <devicetree+bounces-304038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHMXHKHtGGrbowgAu9opvQ
	(envelope-from <devicetree+bounces-304038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 03:36:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9FF5FC0B8
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 03:36:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D6E363006F24
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 01:36:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E8E734DCD6;
	Fri, 29 May 2026 01:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hes/Szro"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5592853E9
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 01:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780018591; cv=none; b=Xl9bvHB3rWB1+wskqwdVUuz/f2DVjNzNqFeQcyp1jVUGVjuneRAeS4fjVeAhJPC34+ItT3yTU1haR9wNTd4JUSabEBYMz3KigMiNNFYd9FbWNFYKap1+7hhMPnc7oWh5hzXHJsGYmL3zcGMusnB4n2wxvevGii1rHD3XUHP5CyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780018591; c=relaxed/simple;
	bh=KkWfu9NdjbcpCCcxmUIJKwuw0FdQ2l41/YB7mfT2XXA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ix3s0/kk5hBWlE/BTFGfltptx9fq6m9Frxq8468rr/zIT1Kmt5Ka8BmI5vZeQNhINzJavBSv/uIFU6EBVehjTFVJeyiYZJWegt2duK3UWUt9Tjan3q2+lD7cd543egATFL7WZHwsa9A6/1ye+4NzQhLbCMRaszYG11tsyHQeJLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hes/Szro; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB0E41F00A3A;
	Fri, 29 May 2026 01:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780018590;
	bh=kFGrQPQFHwXGvcYVMag7zTDcwgS0hD0Fw/mUpJeHiHE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Hes/Szro+Q56L5gMqZYqCjErbCKAVMA9a7B3GTFy6ZkCxmjueqBVgoziAsqZiC4Mx
	 Cc/r4AshcJMXQAzc5/l+IqcoCeVqGYnO483mTBy3qBDyVAXIfTYOOwc5vqDB2XOhJ7
	 0QJ8IlrWBwomsyOtiM57XZZrX3CmegA0u3rVMnO62nX1mADJfk6uuyFUg1gys4ThWp
	 oqC+UzTXplWbUkugbj548S9PKyZrk4M7vaUEPvEcg1zZBkIOS+u0mLIOCOTbaeZRJr
	 BW4c4whG2iaYvhGM4xqvD0AecQ/puPXTP6buOo1i0Slhb2J6puEZuIKj+4UrI4Dsfp
	 j0CFK3WwGmYcg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: bus: add brcm,bcm6362-wlan
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alessio Ferri" <alessio.ferri@mythread.it>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260529-add-bcm6362-wlan-v1-3-722242777f58@gmail.com>
References: <20260529-add-bcm6362-wlan-v1-3-722242777f58@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 01:36:29 +0000
Message-Id: <20260529013629.CB0E41F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304038-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mythread.it:email]
X-Rspamd-Queue-Id: DD9FF5FC0B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The child node patternProperty references the meta-schema `/schemas=
/types.yaml#`, which is invalid for device tree node validation.
--

commit 7510c5aa15726d2bac53841600becc3ad5dfc096
Author: Alessio Ferri <alessio.ferri@mythread.it>

dt-bindings: bus: add brcm,bcm6362-wlan

This commit documents the binding for the SHIM bridge that gates the on-chip
2.4 GHz WLAN block of the Broadcom BCM6362 SoC. It introduces a new YAML
binding for the brcm,bcm6362-wlan device, including a child node for the
bcma AXI backplane.

> diff --git a/Documentation/devicetree/bindings/bus/brcm,bcm6362-wlan.yaml=
 b/Documentation/devicetree/bindings/bus/brcm,bcm6362-wlan.yaml
> new file mode 100644
> index 0000000000000..c8d49ccdd2c1a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/brcm,bcm6362-wlan.yaml

[ ... ]

> +patternProperties:
> +  "^axi@[0-9a-f]+$":
> +    type: object
> +    description: The bcma AXI backplane behind the SHIM.
> +    $ref: /schemas/types.yaml#

[Severity: Low]
Is it correct to reference the meta-schema /schemas/types.yaml# here?

The types.yaml meta-schema provides property type definitions (such as uint=
32
and phandle) via /definitions/... and is not meant to validate a node's
structure directly. Using it as a schema reference might cause dt-schema
validation to fail or apply meaningless structural constraints during
dt_binding_check.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529-add-bcm636=
2-wlan-v1-0-722242777f58@gmail.com?part=3D3

