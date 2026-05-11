Return-Path: <devicetree+bounces-295791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPBYJgE+AmrmpAEAu9opvQ
	(envelope-from <devicetree+bounces-295791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:37:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC62515F06
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:37:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C8B0307F837
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A24397688;
	Mon, 11 May 2026 20:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hmk40Baw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B3D396D28
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 20:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778531539; cv=none; b=pB8mWExDaKtFIw0lW7BycSwD7vUEXxzSXfK1b2Ymb3LPmi6Kq1Ex73nUu9RCRAtgmKa0Sb8SMHbVlIk3onb2haalcLXGIZQgLPV77KVFVfth/9DoesInLXYISffijxTQ9SjAP4z42ZAk8jdokBI6ZC5GrUTk/XC/DtharoN0nYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778531539; c=relaxed/simple;
	bh=ZUqKrpP85m5QrwlaZSUqg3DvoYWLdvPUSdIGIwLSfVg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ie5ZDWBtQseXeN3pUpQ5v1PMag4vGZLZqWNoytvYiUCCdXvbekdUROPzWYoxFPpe0652spBfPRNDxJ+xchExDcmS7j1JBYeaB52PBM4ouZTPAh09CBjLgL4kMu4llH0T97vqeZF2nn2WuVXHhNYU5LTy02YIENvPkBoBe9kuM/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hmk40Baw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 880AAC2BCB0;
	Mon, 11 May 2026 20:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778531538;
	bh=ZUqKrpP85m5QrwlaZSUqg3DvoYWLdvPUSdIGIwLSfVg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Hmk40BawvgmbtTBIviUOvg6nlcVUhJocuLkkZcUcSH50Gcc+5OTPcjLNJIJZ60lq4
	 +7bXkMOR4S0UPG6sx7l7C6+iVwN0QUVM9juo3V1LuK3J8Xchhcv4QDZ/W9iHQJTAZi
	 ClfMXuqIENW82rxuL7t2KhBm9Ba54lFODmwB0aJQVihWZYMvXkJW79jb15IV5+GwVg
	 hSt3/ylJLAeLFwSkq63hk1IjBkiOWHYi3dmOO6Zlez1duc3tFKBENZESlhFxUNz4qo
	 OX+eTmBrarY82UwoeylrgojleL2/3A2BTDBsKxAVdTcB/xtE3crz1Db6E2D8aKfkLY
	 eNAUtHE6oXlZQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] dt-bindings: iio: adc: Convert xilinx-xadc bindings
 to YAML schema
Reply-To: sashiko@lists.linux.dev
To: "Pramod Maurya" <pramod.nexgen@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260510083219.70224-1-pramod.nexgen@gmail.com>
References: <20260510083219.70224-1-pramod.nexgen@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 20:32:17 +0000
Message-Id: <20260511203218.880AAC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EEC62515F06
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295791-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Invalid use of 'minimum' and 'maximum' directly on the 'reg' array =
property within the 'channel@...' subnode.
--

commit 1ceb6107e206dae61695383d0449f5edc509e233
Author: Pramod Maurya <pramod.nexgen@gmail.com>

dt-bindings: iio: adc: Convert xilinx-xadc bindings to YAML schema

This commit converts the legacy plain-text device tree bindings for the
Xilinx XADC and UltraScale System Monitor to the YAML schema format to
enable automated validation.

> diff --git a/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml b/D=
ocumentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
[ ... ]
> +    patternProperties:
> +      "^channel@([0-9a-f]|10)$":
> +        type: object
> +        description:
> +          Represents an external channel connected to the ADC.
> +
> +        properties:
> +          reg:
> +            description: |
> +              Pair of pins the channel is connected to.
> +                0: VP/VN
> +                1: VAUXP[0]/VAUXN[0]
> +                2: VAUXP[1]/VAUXN[1]
> +                ...
> +                16: VAUXP[15]/VAUXN[15]
> +            minimum: 0
> +            maximum: 16

Are these minimum and maximum constraints taking effect as intended?

In dt-schema, the reg property is inherently typed as an array. According to
the JSON schema specification, the minimum and maximum validation keywords
apply only to numeric instances and are silently ignored when applied direc=
tly
to an array. Because of this, the intended limits on the channel values mig=
ht
be bypassed during dtbs_check.

Could this be updated to specify maxItems: 1 and apply the numeric limits
inside an items constraint to ensure the correct unit address values are
strictly enforced?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510083219.7022=
4-1-pramod.nexgen@gmail.com?part=3D1

