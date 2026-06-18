Return-Path: <devicetree+bounces-313538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /0AoAtwENGriLAYAu9opvQ
	(envelope-from <devicetree+bounces-313538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:46:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 563746A0FF0
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:46:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VrZNhReK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313538-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313538-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 838623020A42
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E6862C11F9;
	Thu, 18 Jun 2026 14:46:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA7B4C6D;
	Thu, 18 Jun 2026 14:46:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781793989; cv=none; b=SJ9f4gb8ak4hCcXrRIlBCy4uKXqVbf94SZjtQknVJvdpiJ92RnDE5QTLHvLIo/JGtCDGPbwjf6Xfiz1VCFukO7OFTRlcFdQ4W6ZsqZYmkrTjZfXRVj9T5RWCasJuIyZF+/3L2fmnhKyL8Q7lIdqd9AhXnOrPh+nrE8qBG7mRwrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781793989; c=relaxed/simple;
	bh=tIL3N4FCSzxSCcqqit+CwoquJObjshN2ehpATAjGl+o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qHqf/3M8Y9QBv+0E2PYrZ44p7/8oj41guceosNRH9T0N6DbXJQ4ZLLogjE5s8JS3XcLoSTBNPgKvlyUyOTBvgqiK0XxRdXnU+OsR8FewpjG4NzTO+J4TeS5+uY8AHa90lZU4vHKUIfho2aolPLBl9oHOhHKSXxL6zP5kp69fS9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrZNhReK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBE901F00A3A;
	Thu, 18 Jun 2026 14:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781793987;
	bh=f+ggASj4J7LAitcBaDVBbOsJX6UFi2HRZh6EmL+3+t4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=VrZNhReKpBJfzQkOdn1isgU8aY+dTJ3SZYyvJLilYsw/52dQYjylMLSNHebDObeTv
	 aMjqYZg+1H5gfobQLd33zlkJeSdpjZh1itVP5zLFKMIGOKf0qXzo6UO/UO/pa/ITqp
	 v9G2CtspU+WTYwkHqe1sSe63N+B+q9Hk42fImDOW2mkCbJwVyj59buSry0HLcPoYmq
	 QfXIsbm+PwCQwh0N1kJ3jIrwWSqAfxZmCRX6T7W1iCTlshXd2qJNbf+CREgQkkO39b
	 PQcjSWEAf4dEIBRCZw46ldkZX4kPsVq+M8VXcpUBGOlkQKZdK5qmXzP8bDHoUb2+Fh
	 IFbPfMj+f/0rg==
From: Lee Jones <lee@kernel.org>
To: Karel Balej <balejk@matfyz.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Cc: devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20260613-88pm886-vbus-v2-0-021dfb02c6bb@dujemihanovic.xyz>
References: <20260613-88pm886-vbus-v2-0-021dfb02c6bb@dujemihanovic.xyz>
Subject: Re: (subset) [PATCH v2 0/3] 88PM886 Vbus regulator support
Message-Id: <178179398462.2177198.14068604464612849040.b4-ty@b4>
Date: Thu, 18 Jun 2026 15:46:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.16-dev-ad80c
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:balejk@matfyz.cz,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:dujemihanovic32@gmail.com,m:devicetree@vger.kernel.org,m:phone-devel@vger.kernel.org,m:~postmarketos/upstreaming@lists.sr.ht,m:linux-kernel@vger.kernel.org,m:duje@dujemihanovic.xyz,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[matfyz.cz,kernel.org,gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-313538-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 563746A0FF0

On Sat, 13 Jun 2026 16:20:52 +0200, Duje Mihanović wrote:
> This series adds support for the USB Vbus regulator found on Marvell's
> 88PM886 PMIC. The regulator enables USB role switching on boards using
> the PMIC.

Applied, thanks!

[1/3] dt-bindings: mfd: 88pm886: Allow vbus regulator
      commit: a5026999e04d92ec0cf539731ecc56c85f843b3d
[2/3] mfd: 88pm886: Initialize the battery page
      commit: a7c4cc8109c386bff04dc3567d92edc0a69d29c2

--
Lee Jones [李琼斯]


