Return-Path: <devicetree+bounces-298580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJw1DGCkB2rP/QIAu9opvQ
	(envelope-from <devicetree+bounces-298580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 00:55:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C71195591EF
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 00:55:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2A49830078AB
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 22:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6FAE3CF664;
	Fri, 15 May 2026 22:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0fYb7kH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A88395243
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 22:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778885724; cv=none; b=ZDLUhy3cbeXeaBr4UtbVFP8um33itAR5UdKWfwE8l6da+qQgnG29Ah+Y8WmBpQiv5JYs2RYiKHWYXVIBLAXbVShY+lN/0XjVFRcjhoEb5nVPAMFZZhOa2v1Wpcnn/PJcrNtDpkjx4KoOG1ER8j1jU8MCJVjbKBnEx5X97aQR/Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778885724; c=relaxed/simple;
	bh=qAZU9KXzEMhQER7M2HhOcqibjghOsciau3ty79QFc/8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jss9ebGVzLjCiGicOT37iARdkQQa1cFe15sDMuOrpCRuiZqtLHtHsiBdgjIBsalsxgJwoA9oCn9nUidfldoQc9Xe85/jRInqVMQp6EJDSK4Dd+U7ld6AeenH5cTMMl3kC2+ga7vc3apIkcY7cGvn4R9CS1rxuUjE3QnzQAPxT+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0fYb7kH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19DC2C2BCB0;
	Fri, 15 May 2026 22:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778885724;
	bh=qAZU9KXzEMhQER7M2HhOcqibjghOsciau3ty79QFc/8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=A0fYb7kHtVBTlmIzPHuJIkQ7OwinSjyT2RUY3v1HdWaDJrRdJ80iNMfrd1GMCEWGf
	 1mt57JTA5PbkwdZTgFvlV19/1R1Jog2lQ79+rYZ7bV0qaZ1EwMS+dOXX1up4eGEVM6
	 uO0ohOBbcrqt3ZMpFMc+a+0gnoajivhrhBrZE6zP44GtVYkG/I9eYQ4qOByJ1ddMkC
	 G4f02P9Kud2CXxntXPPW8j1XY9/bAV+Krquhzv6VHqWu2wAFbty7YkKxmrQ5eWCKgb
	 TEccXH1tMVJ6jw6WDqJE3mC9jt38mY1KJFEhpsbXEqB4UQVz1bLU9bM3BAUnX/luew
	 7ry5kG+2qrLiQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V2 3/6] dt-bindings: display: panel: document Anbernic
 TD4310 panel
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260515221947.299229-4-macroalpha82@gmail.com>
References: <20260515221947.299229-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 22:55:23 +0000
Message-Id: <20260515225524.19DC2C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C71195591EF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298580-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The YAML filename does not match the compatible string.
--

commit 5f66eb8e2fe14ce244cbb7ee82f13643cfae18e7
Author: Chris Morgan <macromorgan@hotmail.com>

dt-bindings: display: panel: document Anbernic TD4310 panel

This commit introduces a new device tree binding for the TD4310-based panel
used in the Anbernic RG Vita-Pro device.

> diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4=
310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.=
yaml
> new file mode 100644
> index 0000000000000..5068dd6b2d524
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml

[ ... ]

> +properties:
> +  compatible:
> +    items:
> +      - const: anbernic,panel-vita-pro

This isn't a bug, but the YAML filename is anbernic,td4310.yaml while the
only defined compatible string is anbernic,panel-vita-pro.

According to device tree schema guidelines, the YAML filename should genera=
lly
match the compatible string.=20

Should the filename be renamed to anbernic,panel-vita-pro.yaml, or should
anbernic,td4310 be added as a compatible string here?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515221947.2992=
29-1-macroalpha82@gmail.com?part=3D3

