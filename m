Return-Path: <devicetree+bounces-297871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKhhBHh2BmoUkAIAu9opvQ
	(envelope-from <devicetree+bounces-297871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 03:27:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B01A548657
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 03:27:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1573330887C2
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 01:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9199236922D;
	Fri, 15 May 2026 01:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBgNKbXL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F09B368964
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 01:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778808058; cv=none; b=VOjn5LXujNShVfLloPvqOHC7av4gmVOnpdH6IZoKNXfNKynWEyDodeOBcpqSfVlk4O3Pnzd7tphp7/7DBeb529XlDlgMZF1T3qX0k9g9WXpxheqwaBoysrBcKBxjqnW2U5xYOVoD0qFzHnvz7rEi72I4qXz7LxYmYCWG5iyssRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778808058; c=relaxed/simple;
	bh=N1r10OChhUO84kpS59xO0RaqZrPiIBGpm3EgkHZngYI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dWThX68oyNjWm5H5U6QJ4z7ts8wRuHfN0pgcplKsfO0VayZ6+LjRJi1MjwluhgRoEyo4uIzhdTg92Hw+gU3Vnm20chHm4mekzgYTJtLnnaqM2NphgfncGitANPfYPtlReGSQ5hX5vM5ikR5G1OYzq5RsvkM8UMvR+42EUqfVys0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBgNKbXL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E06EDC2BCB3;
	Fri, 15 May 2026 01:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778808058;
	bh=N1r10OChhUO84kpS59xO0RaqZrPiIBGpm3EgkHZngYI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=TBgNKbXLQNxTPuE8tbC4AqAL7/B50xywCWjPXPwhQzBXRWMuDec1SRcBhAUzsov+Z
	 Fw20kykw2W7jaxNbwZViwi38/or1GnCE8UITyVc89EC9w+RiTX3XhTxkN23wJvVnev
	 YajXtO2nOigssHAzFYYyfsVcgc4cQfWGCiF24YAB2qOcP6neLBGyvEraiMkgStM88Z
	 fI6YW14eJeqm8Is1NOe/0FaleW/tXfKR5CCZ7oHFv1ANjdxYZxUFe0dZRg7PiuBM/z
	 FPs0ihPsc6dpU/KdufOiRfv3SAnrqKKI4I8h5ZynVP61xM7rF1RLda28EI2fD6trDa
	 6hwdNgzLfJdMg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/9] dt-bindings: vendor-prefixes: add Rongda
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jia Wang via B4 Relay" <devnull+wangjia.ultrarisc.com@kernel.org>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515-ultrarisc-pinctrl-v1-1-bf559589ea8a@ultrarisc.com>
References: <20260515-ultrarisc-pinctrl-v1-1-bf559589ea8a@ultrarisc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 01:20:57 +0000
Message-Id: <20260515012057.E06EDC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 6B01A548657
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[shenrongda.com:url,lists.linux.dev:replyto,ultrarisc.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297871-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,wangjia.ultrarisc.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The new vendor prefix '^rongda,.*' is inserted in the wrong alphabe=
tical order in `vendor-prefixes.yaml`.
--

commit dca4b6c39a857922a831a430a56bddfea711476c
Author: Jia Wang <wangjia@ultrarisc.com>

dt-bindings: vendor-prefixes: add Rongda

This commit adds Shenzhen Rongda Computer Co., Ltd. to the devicetree vendor
prefixes list.

Link: http://www.shenrongda.com/

> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 28784d66ae7ba..04e593c66c7c4 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1407,6 +1407,8 @@ patternProperties:
>      description: Rockchip Electronics Co., Ltd.
>    "^rocktech,.*":
>      description: ROCKTECH DISPLAYS LIMITED
> +  "^rongda,.*":
> +    description: Shenzhen Rongda Computer Co., Ltd.
>    "^rohm,.*":
>      description: ROHM Semiconductor Co., Ltd
>    "^ronbo,.*":

This isn't a bug, but is this entry inserted in the correct alphabetical
order? Alphabetically, "rohm" and "ronbo" should appear before "rongda".

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-ultrarisc-=
pinctrl-v1-0-bf559589ea8a@ultrarisc.com?part=3D1

