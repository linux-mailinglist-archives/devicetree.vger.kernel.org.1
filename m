Return-Path: <devicetree+bounces-294683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FQFMVRM/mllowAAu9opvQ
	(envelope-from <devicetree+bounces-294683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:49:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE2D4FBA1D
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 690A93018D40
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 20:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08513D565B;
	Fri,  8 May 2026 20:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8JezJfO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB9E36B06A
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 20:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778273356; cv=none; b=dz5m0vBq4szNrYq3Q5Np3OwHj0MLy37ZlqTMjg4kL8TC6+YMk2hfFMJwH12vwhCT/ERfQ49fx9Rz4w581kLULYtR4QgGT0dSD16QFv0bNvWYopNpvMkJQKxAo9teFVg2P4teRjwtDBs5yQ9ugO+i8OrJ87zlP2LqLV2If1G0V/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778273356; c=relaxed/simple;
	bh=MOcaTpJ/QJfwdYc5UKVJR9gCi3vTzmlEaN96gVw2b6c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bd2Bq5GZ61L8i/tpa8RKNJG8pDcmUm01nv+PECOfBNUGQjxKOrEguj4dWcev7UkggELeCnfCJRXgaE6MREIpZh8dOpIfmSsX2W5xoQYVMg98ZjiayUgjA/UisEzqo6f1XkDVgxluU6x0ONeCTYiiHVyBGVtjZqq5wpCBYRI1ykM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8JezJfO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99C2C2BCB0;
	Fri,  8 May 2026 20:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778273356;
	bh=MOcaTpJ/QJfwdYc5UKVJR9gCi3vTzmlEaN96gVw2b6c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=I8JezJfOX9u8Vuxb8BS2BL6k/1TxighbeJl2kQXr/2nzYgrPGbS2TUuFx7SzL+yeV
	 E1AVcpfENXCQRBMTAhRTbOlJc1ViKtqsWH70008fUcuWTKRKnKANi8ULOC5WuusWPP
	 ttHhqf9Wpd9sEsXDsgzZEbIvUy1FOXOFT00G5S94i7+FMWEhP4xmJ/xZUCjyQY6CMf
	 XGXiZUgZGHjlsH/6NzQxO3Zcf2e4H0oIPioa1btHBvdWhNVWsh7EPRuPAxOjE9J3bn
	 GddCsirJhgOID8dj0ibXnhyG/UY4sRierOrQqZJRqOUD1KJUYlRePBvWwX3jH/Rp+z
	 CWYVl3MXeHJQw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/5] dt-bindings: leds: is31fl32xx: convert the
 binding to yaml
Reply-To: sashiko@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260508131139.1523597-2-jerrysteve1101@gmail.com>
References: <20260508131139.1523597-2-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 20:49:14 +0000
Message-Id: <20260508204915.E99C2C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 2AE2D4FBA1D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294683-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The YAML binding filename and its `$id` use an incorrect vendor pre=
fix (`issl` instead of `issi`).
--

commit e7636bd58d531019b888ef291c9c0d2fe4fa5e0c
Author: Jun Yan <jerrysteve1101@gmail.com>

dt-bindings: leds: is31fl32xx: convert the binding to yaml
   =20
Convert leds-is31fl32xx to DT schema format.

> diff --git a/Documentation/devicetree/bindings/leds/issl,is31fl32xx.yaml =
b/Documentation/devicetree/bindings/leds/issl,is31fl32xx.yaml
> new file mode 100644
> index 0000000000000..f4a6ef99b4777
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/issl,is31fl32xx.yaml

This isn't a bug, but there appears to be a typo in the new filename. The
correct vendor prefix for Integrated Silicon Solution, Inc. is issi, but the
filename uses issl.

> @@ -0,0 +1,151 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/issl,is31fl32xx.yaml#

Should this $id URI also be updated to use issi instead of issl to match the
correct vendor prefix used in the compatible strings below?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508131139.1523=
597-1-jerrysteve1101@gmail.com?part=3D1

