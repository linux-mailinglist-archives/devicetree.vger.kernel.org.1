Return-Path: <devicetree+bounces-281465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAF6CqYdxmnvGgUAu9opvQ
	(envelope-from <devicetree+bounces-281465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 07:03:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECCB33F5D5
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 07:03:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA6F6302570D
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 06:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92FC32F83B7;
	Fri, 27 Mar 2026 06:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tinyisr.com header.i=@tinyisr.com header.b="hEfqOV4L";
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="dsDUD+Vj"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205B83054EB
	for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 06:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774591303; cv=none; b=V/eKziTb82zqFd7OcKXcpb8EtUcPWwxDLGaNj2voi9XmxkE2+SQ2VyPJVOKM0kB0nVsw1nCiYNk15Z+d4azieQKMjWHeuubKuKnaQ63w33L7beD16sCK5pGgMD7pg9RZgDidD7u8jFtu8bERDEKx6tr6xcrasRA9F4h7x0FT3+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774591303; c=relaxed/simple;
	bh=Z5Jo+6Hp+Ie1MkZalrd3zjOs7QYWJ+eZe1Mk5hz3lA8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j0kmTqSGrq5UwVwb6/inUX8BRHBU1Ca+9v6iOHoeIykoB1W63iO45heIyisnpOO95W1PXmxzWnZHIKSA5uLLaCRUn1Gv2WtuOvfMthbw5JhAoJFhebnqZbegYTMACPmTEkyB3MTyHllOmIZBDBcJYNJy8xaxrYbwxTfhysN+B/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=tinyisr.com; spf=pass smtp.mailfrom=tinyisr.com; dkim=pass (2048-bit key) header.d=tinyisr.com header.i=@tinyisr.com header.b=hEfqOV4L; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=dsDUD+Vj; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=tinyisr.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tinyisr.com
DKIM-Signature: a=rsa-sha256; b=hEfqOV4Ll6XzCLtGoYp4eXwZ7za1C92JJVNDWVO6I0xKundBGUekw3Dj7SgVSJXFG7i+tPUmOpikcPFnHNNcSXJco9Lm03P2XId3jGHeTLB00JA85twpjAYqJWP7vI12IP6OTjD9h2Ly9x+NNmpvXIHmnS+b46thHYWbSxzbVJUwRzjDSpwkIK/Ckza70w5UFkGeMYe0Q9cciAp8ruVKgmL280Stzz+komSJ6ayezS9qaW5OTtyif+9tTgw8JrVtlZrCw6PWQfBSwaDnHhS9TpfjE40dfrWwk/SrDsoUuKQ0t7P8Js1P08ghV4R/R43lyyJ0Oecj6s8piP3xjXDGBA==; s=purelymail1; d=tinyisr.com; v=1; bh=Z5Jo+6Hp+Ie1MkZalrd3zjOs7QYWJ+eZe1Mk5hz3lA8=; h=Received:Date:From:To:Subject;
DKIM-Signature: a=rsa-sha256; b=dsDUD+VjXfLjfmCDVTLOErO0aaDucx/rDM69bMiW1B5mYfDKcJ6tD09BzP75Oykqf3WITYSJTe3vDULkup9QJs0Z9WBq8z7MgBHqTTHa4Qv6JcuxcROjH5Yth74LPdgWjHQN1cjBOn+e/BqnRhrsSSrUDkF3TiyRhfg2+QUuPVLPt9h/GBNSurxYIS8u6vfbIRYYOuGIpcTp03va3GGlISMYaJPfB0c+TXPb9ffzaNQ10hPu6e0+xK1RCfufY63mnHXAL3RPWMWPAmC1d9jDBAE2um/EqGtXr6p3BgTzpwydkQrwGcd4Rt69hZetW2aSysmDNhJMC9kEe0LvDVRoJA==; s=purelymail1; d=purelymail.com; v=1; bh=Z5Jo+6Hp+Ie1MkZalrd3zjOs7QYWJ+eZe1Mk5hz3lA8=; h=Feedback-ID:Received:Date:From:To:Subject;
Feedback-ID: 99681:12517:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 703749943;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Fri, 27 Mar 2026 06:01:03 +0000 (UTC)
Date: Fri, 27 Mar 2026 08:00:51 +0200
From: Joris Vaisvila <joey@tinyisr.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: netdev@vger.kernel.org, horms@kernel.org, pabeni@redhat.com, 
	kuba@kernel.org, edumazet@google.com, davem@davemloft.net, olteanv@gmail.com, 
	Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH net-next 1/4] dt-bindings: net: dsa: add MT7628 ESW
Message-ID: <acYZOEksxcc-uHcT@archlinux>
References: <20260326204413.3317584-1-joey@tinyisr.com>
 <20260326204413.3317584-2-joey@tinyisr.com>
 <acW9G8vrMz89Enss@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acW9G8vrMz89Enss@makrotopia.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[tinyisr.com,reject];
	R_DKIM_ALLOW(-0.20)[tinyisr.com:s=purelymail1,purelymail.com:s=purelymail1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281465-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,redhat.com,google.com,davemloft.net,gmail.com,lunn.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joey@tinyisr.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tinyisr.com:+,purelymail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tinyisr.com:dkim,purelymail.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.6:email]
X-Rspamd-Queue-Id: 7ECCB33F5D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Daniel, thanks for the feedback

On Thu, Mar 26, 2026 at 11:11:23PM +0000, Daniel Golle wrote:
> > [...]
> > +            port@6 {
> > +                reg = <6>;
> > +                ethernet = <&ethernet>;
> > +                phy-mode = "rgmii";
> 
> Is this actually RGMII internally? Or some unknown internal way to
> wire the switch CPU port to the CPU MAC? In this case, "internal"
> should be used here as well.

I don't know how to find this out for sure.

In the MT7628 doc (https://vonger.cn/upload/MT7628_Full.pdf) port 6 is
refered to as RGMII port 1 (RGMII port 0 being the non-existent port 5),
but there are no clock registers to be seen.
In RT3050 docs there are RGMII clock registers for port 5, but nothing
for port 6, so maybe the CPU port is really using some mystery internal
connection and only uses "RGMII" as a way to say it's a Gigabit port?

On the hardware I'm testing on, it works fine with the port set to
"internal" or "rgmii". Would it make more sense to set "internal" then? 

Thanks,
Joris

