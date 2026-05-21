Return-Path: <devicetree+bounces-301392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKDFK9E/D2pNIQYAu9opvQ
	(envelope-from <devicetree+bounces-301392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:24:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B50365AA29A
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6B07232A956C
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 15:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86D01349CFB;
	Thu, 21 May 2026 15:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqr/R2iJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C49349B0A
	for <devicetree@vger.kernel.org>; Thu, 21 May 2026 15:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779377238; cv=none; b=FlYNsqIvI4QMrXU9fRydYaRNpU30n48/WdVl3nUsJCq5uWMog44QXRqXgpvvou/lZ9MozU9KvqfoJS94qcz5Svr3ITkwEgAdwrSnq2aX009V78nHqDYko+u9wDPBPOBuHOsb/g5zf+gpCt5Z8yxY1dafav64xdz2E7uqT3bzlj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779377238; c=relaxed/simple;
	bh=gtaG/CTVNkdHoAJnZOTxrnjUKBxFfEL9M89l1nj+Yc8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oePlV7cxJgNDYkvYWQBOHtmpauyuNw9gNmzUNwWB4goRn37gJR973AYYzY1aaCedrMt8xieRNg3LwHsWPdb1MrBfsTi74CNdWvntUvLsQr3AE6KIT+0dwsXZrWM/V2h/VRguA7Z/ZPaixvMTiocmB3Qir/sQm/NEI2T/LSh23QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqr/R2iJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD2FD1F000E9;
	Thu, 21 May 2026 15:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779377237;
	bh=SDZv29lwS/56R0VAjoIJh92oin3dYH/MEwE+zVZco0M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kqr/R2iJII99c7++MOWPFaYvhoGP+MPud00tvjJz9GWd0OpNRKgLHSDVJ77givS2X
	 4fbD82GYhakANwSBxwdjb3tw5IA1nE6EeGTyn8hDjKouF/xZ4d6AWNhiLjC9fRj6nx
	 FUnz1SowoeETqza6a9P8VUz0YXQdisIMg+rv7xUF6Pec0GDdU9uT7idCANokQ4VSd8
	 T5uuofIwiMZ3zrWiuGsxqNnVb7oPaQ1plBLCCxp6LP/SPYfuVMG+GYzubH9OhWmuGi
	 kvtdEx/VG342mfr6g5QJWKRhV/b1Tyu8YqlWFPg15gH5ArVqD4rD20fTw8qVcLUldW
	 B9YSu0HUbV0XA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 14/15] dt-bindings: display: panel-lvds: Add LG
 LP156WF1
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vitor Soares" <ivitro@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260521150038.103538-31-ivitro@gmail.com>
References: <20260521150038.103538-31-ivitro@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 15:27:16 +0000
Message-Id: <20260521152716.DD2FD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301392-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,toradex.com:email]
X-Rspamd-Queue-Id: B50365AA29A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The dt-binding fails to enforce the dual-channel requirement (th=
e `ports` property) for the newly added `lg,lp156wf1` compatible string.
--

commit a568203d1851908daadd835b566099e0a123357a
Author: Vitor Soares <vitor.soares@toradex.com>
dt-bindings: display: panel-lvds: Add LG LP156WF1

This commit adds the compatible string for the LG LP156WF1 15.6" FHD
dual-channel TFT LCD LVDS panel to the generic panel-lvds schema.

> diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.y=
aml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> index 45183a1439ce9..a6af2b9cc2f9a 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> @@ -58,6 +58,8 @@ properties:
>            - hydis,hv070wx2-1e0
>            # Jenson Display BL-JT60050-01A 7" WSVGA (1024x600) color TFT =
LCD LVDS panel
>            - jenson,bl-jt60050-01a
> +          # LG LP156WF1 15.6" FHD (1920x1080) dual-channel TFT LCD LVDS =
panel
> +          - lg,lp156wf1

[Severity: Medium]
Since the commit message indicates this is a dual-channel panel, shouldn't =
we
add an if-then conditional block to require the ports property specifically=
 for
this compatible string?

Currently, the panel-lvds.yaml schema allows panels to be configured with
either a single port or multiple ports. Without a specific conditional block
enforcing required: [ports] for lg,lp156wf1, a device tree incorrectly
configuring this dual-channel hardware with only a single port will silently
pass validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521150038.1035=
38-17-ivitro@gmail.com?part=3D14

