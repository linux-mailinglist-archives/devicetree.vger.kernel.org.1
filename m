Return-Path: <devicetree+bounces-281608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCJbIs14xmnwKgUAu9opvQ
	(envelope-from <devicetree+bounces-281608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 13:32:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE5E3443A4
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 13:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9500430F16BE
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 12:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 105ED37BE83;
	Fri, 27 Mar 2026 12:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="QkH+s3Mg"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F742DCF41;
	Fri, 27 Mar 2026 12:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774614283; cv=none; b=qwuP8vCmB/5BrFSvlkWdebu0o9A9Ghirbncu7yZFGx5euHoQx3LovqDhW5KlOSkNEWm6MvfjeCIRg7Xd23Ok7LrXYKbSufrdxTQAFWXKyUMM1StV7Fd0DIEod7ViWxUufXy3PCiPAxRRrWNZDisMgEqMx3VNSgNQH9ctyU6qvZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774614283; c=relaxed/simple;
	bh=L6Unwkbduv24WN8Hj/gVJQi0a3RThVL0m3QUE6b6M8A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dex2yaqpNaxRMwjcA36zLf7nlCtKdIZ8yxev2OKyCxX/jZQp4867zWAOc7vBLjddwl7Ba6+ny68fgrq3kIeYP5XNeGv5Yl7jOFd32ACTZTqZQKPUoLtKXjQFt0CkG0sEBO9UoQmwhW3deLfrdMz+w2JBBdqfnD59WqC6LwVaMN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=QkH+s3Mg; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=YBsax8nGU7llN4Jh0OptfmRNsfhKlIWfNl3VBT7S9ac=; b=QkH+s3Mg5nHaHO5ytrpYnfNEqT
	pSS7IO4qPn2kLaYbNxIdYn0sRu9H2b6w++cleyNzuewwei+ZWrc3sAiQQFzvvI77LBhTwNBbdPN9N
	+4BOjsprnmxS5eqKBfjhVKGP/faZkGh/+0waovhTC00xO5f4ixqTYbbmlmzJnm9x2DpQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1w66Eu-00Dedw-NU; Fri, 27 Mar 2026 13:24:36 +0100
Date: Fri, 27 Mar 2026 13:24:36 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Padmashree S S <padmashreess2006@gmail.com>
Cc: gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm: marvell: Convert
 armada-380-mpcore-soc-ctrl to DT Schema
Message-ID: <3c995404-1b58-48bb-8606-bf7e60a494bf@lunn.ch>
References: <20260327114653.593582-1-padmashreess2006@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327114653.593582-1-padmashreess2006@gmail.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281608-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[bootlin.com,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lunn.ch:dkim,lunn.ch:email,lunn.ch:mid,bootlin.com:email]
X-Rspamd-Queue-Id: DBE5E3443A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +  - Gregory Clement <gregory.clement@bootlin.com>
> +  - Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Please drop Sebastian. He has not been active for many years.

       Andrew

