Return-Path: <devicetree+bounces-325472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W98aLV3OVGpMfAAAu9opvQ
	(envelope-from <devicetree+bounces-325472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:39:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C8574A6FF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:39:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l4AJnxxw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325472-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325472-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BD4683001441
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 906F13E8357;
	Mon, 13 Jul 2026 11:39:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CF33E5A2B
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:39:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783942746; cv=none; b=auaODNOBKljtpw0lw3cTU9X/0siUMeDBwHujZ1FppH/7O2b3+gnCNglQgCgd0JOYBV4tN9niryWbxCtFtn6Gp6g6vCfORBvxcy2OpPAXfwRGA75AZxVi/KDS1qOjdYC8xKnsNXnJTFkHuVob6pfjjJ8oG7kMQ/6DzCPzEhf6RMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783942746; c=relaxed/simple;
	bh=Ma5391Cqb/y6aQhAZWWefapi/hITbyfcodm9edhan1Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nYPSlHwoQeSC0HGSVKUv21leTvovpoQnHH+qFhhNTBkgyrJ1tF0BkPMewgoG2rqL44zHK7pNeAwTnaQ+puPA7/S/iFzFs3E4omPIK6oVVLDie4kq90eoX1ymXWV7wm9kOsCGQUGgwDGibpbGJDcX1R5QU20KtLDn7TM7fZvrAUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4AJnxxw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8FAE1F000E9;
	Mon, 13 Jul 2026 11:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783942745;
	bh=vjUNoxbnoVzjgxQLa2hBpFzn2KLnn/bd/B1egmQFBfU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l4AJnxxwXASnSBwvG/HK485dNSv8/Az0CfCXVe/T61+YCpnOoAkA4vNoyw2bFZiAz
	 v4aB9gBj08D1E/yZlCH5BTsjBVzuxo3DjmB7tYoI39i7eLEu1mNgfx/DLZkbKlSwey
	 +hFohhj1NWMB7i3i1ZCKNm5B+6giN4upgHeDRm9iF0vj+zXTuE+sbKxvAyN42M/W0y
	 xkeff2TooeDCxkq2CMO1xGJWq400izQgoAOTLVDfewlMcu2K7nQu9Reyubvvhllv3s
	 BGz/90qwxs0ZO0fIB8QbmF7s6p/RZWxZBCHrZONOPQy/adul5nselMAx6YAudPFrnX
	 5I3Hcqg8mR0MA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4] dt-bindings: net: microchip,lan78xx: convert to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikhail Lukianchikov" <avermoal@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260712113821.12543-1-avermoal@gmail.com>
References: <20260712113821.12543-1-avermoal@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:39:04 +0000
Message-Id: <20260713113904.D8FAE1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325472-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:avermoal@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46C8574A6FF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Commit message includes inaccurate claims regarding changes to t=
he MAINTAINERS file.
--

--- Patch [1]: [PATCH v4] dt-bindings: net: microchip,lan78xx: convert to D=
T schema ---
commit f1714d97cf714d559260a426c4169db231384ff6
Author: Mikhail Lukianchikov <avermoal@gmail.com>

dt-bindings: net: microchip,lan78xx: convert to DT schema

This commit converts the Microchip LAN78xx family binding documentation
from plain text to DT schema. It also updates the MAINTAINERS file to
point to the new yaml file.

Link: https://lore.kernel.org/netdev/20260711105537.11065-2-avermoal@gmail.=
com

>     Restoring a mistakenly deleted email in MAINTAINERS file and fixing
>     microchip,lan7800.yaml.

[Severity: Medium]
Is this commit message description accurate for the changes included in
this patch?

Looking at the diff for the MAINTAINERS file, the patch only updates the
file path from .txt to .yaml:

> diff --git a/MAINTAINERS b/MAINTAINERS
> index f37a81950e250..5de154167b332 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -27931,7 +27931,7 @@ M:	Rengarajan Sundararajan <Rengarajan.S@microchi=
p.com>
>  M:	UNGLinuxDriver@microchip.com
>  L:	netdev@vger.kernel.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/net/microchip,lan78xx.txt
> +F:	Documentation/devicetree/bindings/net/microchip,lan7800.yaml

It does not appear to restore or add any email addresses. Could this text
in the commit description be an accidental inclusion of a changelog note
meant for below the '---' line?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712113821.1254=
3-1-avermoal@gmail.com?part=3D1

