Return-Path: <devicetree+bounces-307799-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UrATJSVQJWpjGwIAu9opvQ
	(envelope-from <devicetree+bounces-307799-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 13:04:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 21964650461
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 13:04:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=vinatta.cz header.s=default header.b=Cw4ZIG8l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307799-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307799-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=matfyz.cz (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 698D130205EA
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 11:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B35338C407;
	Sun,  7 Jun 2026 11:03:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from vinatta.cz (vinatta.cz [37.205.8.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B9F3164A1;
	Sun,  7 Jun 2026 11:03:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780830213; cv=none; b=OmeVmJOkeSwwtA74eWuXUklXrYsscGNzXhRtks97lMN87/9ke7HNICo7z6bFdUBPn79rxngL/ovbN3jGeKuczoU6f3YQo1nxuMg1NqLFlMrGuB8Cd3u2usXGYGB5J+UrB+FL36HYZmWq5hVwdjmPCjWeMh1ggHkMqzF6Z5cc9no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780830213; c=relaxed/simple;
	bh=ev3oQAl3uBwj/TUUxZSdrlpEYfObdBshwPKxqaqax6M=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:To:From:
	 References:In-Reply-To; b=VrxVv8JAW5irDVkljATzIwwEcyrJg8IBCuJl3tcvk8gGmwB8YLT7RbxGdMlt0cUCOrfC6yENt7V0BJo2m4KsiUm3+T9t6dxG5MaC6Kq+bwew0a47Wv01lYOYKArEVUBGhUeR78hVXGW4/Lg7oPNEp1JvaoO9sogEOxKoceQlhZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=matfyz.cz; spf=pass smtp.mailfrom=vinatta.cz; dkim=pass (2048-bit key) header.d=vinatta.cz header.i=@vinatta.cz header.b=Cw4ZIG8l; arc=none smtp.client-ip=37.205.8.231
DKIM-Signature: a=rsa-sha256; bh=ev3oQAl3uBwj/TUUxZSdrlpEYfObdBshwPKxqaqax6M=;
 c=relaxed/relaxed; d=vinatta.cz;
 h=Subject:Subject:Sender:To:To:Cc:Cc:From:From:Date:Date:MIME-Version:MIME-Version:Content-Type:Content-Type:Content-Transfer-Encoding:Content-Transfer-Encoding:Reply-To:In-Reply-To:In-Reply-To:Message-Id:Message-Id:References:References:Autocrypt:Openpgp;
 i=@vinatta.cz; s=default; t=1780830188; v=1; x=1781262188;
 b=Cw4ZIG8lf3A3lgHmVIrz5nCRxv/SWOcHn/QzbCb+1J/2Zdpk2kG/RGnh6RgdKXiJJMVxS0Cg
 jxGvNw6wP6F7LPgN3P+0nAMVlZ3F9EEzHIm47VcCbmI/1ALL+cCiq4meXm0R3ubnLMg1bZTtFBG
 +sNK/38ykLe2NyA4PpNQl9ONZFRIm4zBsEF0zELWle4DCUlvFlr8cTv6ZIhm5Cycv0lAAHNeyJQ
 rK7OzQZlDEGGL/2GbaOpaHjJ64pDash1HnlThdjbXFS/+PFZ0AYd9OIlwmYYzjr6unDS1asQmeD
 uUBLh2t9RZnzfRUqdbv8MrI0NWJFdwLBpMy3VT+ClMy7g==
Received: by vinatta.cz (envelope-sender <karel@vinatta.cz>) with ESMTPS id
 ae42f724; Sun, 07 Jun 2026 13:03:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 07 Jun 2026 13:03:08 +0200
Message-Id: <DJ2RM6JMQ0OC.3JSC20A2FDNBX@matfyz.cz>
Cc: <devicetree@vger.kernel.org>, <phone-devel@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <linux-kernel@vger.kernel.org>,
 =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>, "Lee Jones"
 <lee@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: mfd: 88pm886: Allow vbus regulator
To: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
From: "Karel Balej" <balejk@matfyz.cz>
References: <20260526-88pm886-vbus-v1-0-f2bd1fd3c19e@dujemihanovic.xyz>
 <20260526-88pm886-vbus-v1-1-f2bd1fd3c19e@dujemihanovic.xyz>
In-Reply-To: <20260526-88pm886-vbus-v1-1-f2bd1fd3c19e@dujemihanovic.xyz>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[vinatta.cz:s=default];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[matfyz.cz : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307799-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[balejk@matfyz.cz,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:phone-devel@vger.kernel.org,m:~postmarketos/upstreaming@lists.sr.ht,m:linux-kernel@vger.kernel.org,m:dujemihanovic32@gmail.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:duje@dujemihanovic.xyz,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,kernel.org];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[balejk@matfyz.cz,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[vinatta.cz:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	SINGLE_SHORT_PART(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vinatta.cz:dkim,vger.kernel.org:from_smtp,matfyz.cz:mid,matfyz.cz:from_mime,matfyz.cz:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21964650461

Reviewed-by: Karel Balej <balejk@matfyz.cz>

