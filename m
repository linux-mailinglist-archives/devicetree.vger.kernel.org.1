Return-Path: <devicetree+bounces-264160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jpilCAVzimknKgAAu9opvQ
	(envelope-from <devicetree+bounces-264160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 00:51:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9569E11574B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 00:51:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BBE7301A717
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 23:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A627D314B8E;
	Mon,  9 Feb 2026 23:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJA8qXSp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A363033DE;
	Mon,  9 Feb 2026 23:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770681083; cv=none; b=A2nLNThYbgPTGTLcgHhP7+iq0uLXYv+2PyYZ2kCsiJFZjG2E8FjCnDkxhnJRNLXEiJUVDDpd/LQXnnTa0y0LyJVP02unVg+ZOE7mKI8Qx0CmwePrCFg2thEVrD4GBK7Lob6SW155zF+SOoy4VnC98ZSv8jU1MfBiUAKJOgIO3oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770681083; c=relaxed/simple;
	bh=bsixGke1hf8jsC2lbY+jfdw5/Z3wiHssdbSANJKDnYA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b5rdCsjDeOz2U3evuBmdJevCpDwEUc1W+DL6YvB/nBo62ZTPMbk15bZdN2L1c+KovaOdnRIUYlc6C/8vxkKJlcZEyoGFk7b3/2oNIqYGRdNFyCssaxg8+XpVbMaMFJ71vN3E7MShpD3xQMgIs/PtZUZFa/5EhOvQ7hrS1VcUsDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJA8qXSp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42B48C116C6;
	Mon,  9 Feb 2026 23:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770681083;
	bh=bsixGke1hf8jsC2lbY+jfdw5/Z3wiHssdbSANJKDnYA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JJA8qXSpN7cMYVlKDK673OujyjWo9NC6xvM//l4Ci6azdb0sCRdCHy4M3gdHQTFHL
	 keht2yaCDEM8iIPHW53Piyz6Haz1ObZVX9RPZsgg1jpnIn9Ij0/WNpozm5hfoyiWS0
	 uBquyTxoCjw1KRvTxUUnNsUZL3yjrOPHXzroayoZirl4v6cJbh2Iw5IkloEjLQNYDC
	 cFuqy61Yf1I+0uVols2edkPe6xLy7MUV9kuOGguLqmqNUN7jClvPHBzBysB58ZCNEc
	 +6tJfN0IjTUl2QCOVfMi2d6Cr893EzzjqIpND43cBnGl4cRuB7NSXUuUI39scPsRhz
	 SaW/4P8R1OBeQ==
Date: Mon, 9 Feb 2026 17:51:22 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: soc: imx: add fsl,aips and fsl,emi
 compatible strings
Message-ID: <177068108180.2136981.14673421457748646497.robh@kernel.org>
References: <20260201011913.2419626-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260201011913.2419626-1-Frank.Li@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-264160-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 9569E11574B
X-Rspamd-Action: no action


On Sat, 31 Jan 2026 20:19:13 -0500, Frank Li wrote:
> Add the fsl,aips and fsl,emi compatible strings for legacy i.MX3 SoCs
> (over 15 years old).
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/bus/fsl,spba-bus.yaml      | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 

Applied, thanks!


