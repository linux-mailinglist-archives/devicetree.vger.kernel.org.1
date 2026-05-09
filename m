Return-Path: <devicetree+bounces-294990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0RD4KRed/2nc8QAAu9opvQ
	(envelope-from <devicetree+bounces-294990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 22:46:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9308F501655
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 22:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B60083003492
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 20:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4CC630E84E;
	Sat,  9 May 2026 20:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NESeQLXY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1378CA4E
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 20:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778359568; cv=none; b=Yn2WWw3B4rvoWBwfDAOouKx52ci5lsBJYyA+Aqs24XlGFLUczq7qz+ooBTOFQjZkUIdlYvG5WN1JIq7K50K0wk1kW0pyPpJcObRVzk0QJNFpzHB3xwg4NY0357sCBAtw5R8PNaH0/8qnWeOb2rGxiptageqKiKUwIKSYkExhJD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778359568; c=relaxed/simple;
	bh=jItWHos1Hn5XBO11RWjVC8/ok3UcnMAuxALvgTpQQnI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JlFiKKjW20RIppspUsbewAWdFGJ/11BIahhyjDLmgnEpgqVycZ6Lm4/B4siEY5Vp07GJsE+H1obDujElGmkRAqsvaQxrIbWXvdFYcfDxYsgPfxGVU5pUz/U+yNVQG1QQqvuWtVwA0rH+LenNfjKqqq/kdYo93CDcOMbpPdFOHo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NESeQLXY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05915C2BCB2;
	Sat,  9 May 2026 20:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778359568;
	bh=jItWHos1Hn5XBO11RWjVC8/ok3UcnMAuxALvgTpQQnI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=NESeQLXYgsWX65Ea42v+BuCymkwdtgk0E5YJsIqQmbVBNFcTYktXUVbFK9YWi7hUM
	 QSe9uq8sWN9Lnwr6RJ6wdNTB8oiy148GKbpOP3VOY95zmCpz9j+S0u2xihcB9bcO0B
	 OGi3rBch8BOuaZJxNECAk+Emaqy048+OIj6Ok+Z2aiEbA3ZYG239oaBqhC8mr1Rv+b
	 rKVvQPTuIPoO63Aegd1PC7EFRTXaJHEv8h2uhKDY5gTdQFcRUzqlRXsrHmFS1Ln/0Q
	 5i5IfrVg3sTZL2T1+9Wmj6u8s+/YSuJ7twtU97Q0TRNzrGXyEojLJ0hkszsHZDzNZV
	 xfVVBgcBdZ6cQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Chipone ICNA 35xx
 OLED driver bindings
Reply-To: sashiko@lists.linux.dev
To: "Aaron Kling via B4 Relay" <devnull+webgeek1234.gmail.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260509-icna35xx-v1-1-688d3d4e10f9@gmail.com>
References: <20260509-icna35xx-v1-1-688d3d4e10f9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 20:46:07 +0000
Message-Id: <20260509204608.05915C2BCB2@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9308F501655
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294990-lists,devicetree=lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,webgeek1234.gmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `ayntec` vendor prefix used in the new compatible strings is mi=
ssing from the device tree vendor prefix registry.
--

commit 2a0dec37c2745490f796112b94d143b7a694cd12
Author: Aaron Kling <webgeek1234@gmail.com>

dt-bindings: display: panel: Add Chipone ICNA 35xx OLED driver bindings

The Chipone ICNA35xx series of DDICs are high refresh, low power
MIPI-DSI drivers for OLED panels used by Ayn Odin and Thor devices.

> diff --git a/Documentation/devicetree/bindings/display/panel/chipone,icna=
35xx.yaml b/Documentation/devicetree/bindings/display/panel/chipone,icna35x=
x.yaml
> new file mode 100644
> index 0000000000000..3c497a4010173
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/chipone,icna35xx.ya=
ml
[ ... ]
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: ayntec,odin2portal-panel

Is the ayntec vendor prefix documented in the device tree vendor prefix
registry?

It appears this prefix is missing from
Documentation/devicetree/bindings/vendor-prefixes.yaml. Although the prefix
was previously used in another binding without being documented, adding the=
se
new compatible strings introduces new dt_binding_check validation warnings =
for
this newly added schema.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509-icna35xx-v=
1-0-688d3d4e10f9@gmail.com?part=3D1

