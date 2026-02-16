Return-Path: <devicetree+bounces-265908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPW7LitSk2nA3QEAu9opvQ
	(envelope-from <devicetree+bounces-265908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:21:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 248FC146AAA
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF4E9301496B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0975C2D73B6;
	Mon, 16 Feb 2026 17:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="cjOgiwYl"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1921038D
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 17:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771262490; cv=none; b=FUxKkwIZJraCfnMOA7/Ix8AOWhXJ76/uFnIqLc6W+Fa7wlWcy/9ujlJW/Zeibl/jE3pouVSuPBDxpfBR+wNbqhokyOUtQCuCzenTUgf7pLY7IxAB6RbcbO4BqNDdnv9qX+GVEVPN8kA0qhPLlL6kLW4S/u+H2oauJAkc6dXZDIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771262490; c=relaxed/simple;
	bh=bT2fiqRkjI9axK4fJtClgUV/TJc6YLz7YhqPHByH0kk=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=J/GSTpB3NLYdBuHuVti1QuYuzrb7vRSptvoSGk3isr6Hrz1lQjzXYlBJJmpR31v5v/MokYBPtmqOQFCGF4sE/zirVEjGrY6igr3UqKWZ9b6V4GYD+MygwmjFAiC/ZeBvMpV51lRG47fi2FqFWMgkFb7BvXxibckOr8cprkv9A0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=cjOgiwYl; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1771262476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bT2fiqRkjI9axK4fJtClgUV/TJc6YLz7YhqPHByH0kk=;
	b=cjOgiwYl2zixY+bjimSYCRXIK8VH45q1zpZ1bCPWBn6AL3obFgYyxLF/iACRf63TTAktFJ
	AEPwW/vgIDKy/zZwcOJ8dAr9pFBaV7VzA5IMFMD02K3WfN2dAHj8VDBdyzAVYBwdwFv896
	xbeNmH0OqheYp6HHoLu25WAtADiCWSZOj/ajeIZyJt4H85EYm1UzPuGfk6pe+Bl+TcSk/t
	h1JmbrHDLXfjIeoKWwFmhoJmcf/yF7TtQCAdk4+u5+joiz80eZ1Qnm2FmwfVcVHRpPALy6
	R06ZFyGXSo09DlUZpFifiVeEfgTcum63vNhsQldwCRxfARIGMEDAncFyEq5m8Q==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Feb 2026 18:21:13 +0100
Message-Id: <DGGK56T574F0.TJSLQL9P1SM@cknow-tech.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>, "Andrew Lunn"
 <andrew@lunn.ch>
Cc: "Yao Zi" <me@ziyao.cc>, "Heiko Stuebner" <heiko@sntech.de>, "Heiner
 Kallweit" <hkallweit1@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <netdev@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: Re: Problematic understanding of phy-mode in Rockchip DWMAC driver
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <aY9s5PXP4zZ7R6fa@pie> <aY9xsslT56D9LGLe@shell.armlinux.org.uk>
 <f1e047e1-3f1c-4562-ab43-af2fe358fe04@lunn.ch>
 <aZDGsJNLZIty0242@shell.armlinux.org.uk>
 <a4aebacc-c273-4e42-97ff-0cdd88d771dd@lunn.ch>
 <aZMxKdkl2Qa7e1WU@shell.armlinux.org.uk>
In-Reply-To: <aZMxKdkl2Qa7e1WU@shell.armlinux.org.uk>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265908-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[ziyao.cc,sntech.de,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cknow-tech.com:mid,cknow-tech.com:dkim]
X-Rspamd-Queue-Id: 248FC146AAA
X-Rspamd-Action: no action

On Mon Feb 16, 2026 at 4:00 PM CET, Russell King (Oracle) wrote:
> On Mon, Feb 16, 2026 at 02:57:48AM +0100, Andrew Lunn wrote:
>> On Sat, Feb 14, 2026 at 07:02:08PM +0000, Russell King (Oracle) wrote:
>> > On Sat, Feb 14, 2026 at 05:50:15PM +0100, Andrew Lunn wrote:
>> > > Rockchip have recently started adding support for a new version, and
>> > > appear to of listened to what we have been saying. So it could be th=
e
>> > > next generation of chips get this correct.
>> >=20
>> > Have you seen any proposed code from Rockchip for their new scheme?
>>=20
>> There was a patch, including a rather odd formulae to convert register
>> value to delay. I gave some feedback, but it has been silence
>> afterwards.
>
> Searching lore's netdev archive doesn't seem to bring anything up.

https://patch.msgid.link/b25d6eb2-e105-4060-86fa-c1a06396ca92@lunn.ch/

