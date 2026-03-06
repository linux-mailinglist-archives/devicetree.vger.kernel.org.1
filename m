Return-Path: <devicetree+bounces-271788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOv6MvUlqmkPMAEAu9opvQ
	(envelope-from <devicetree+bounces-271788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:55:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C99721A0CF
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE869307B7CF
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 00:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B0A12EF660;
	Fri,  6 Mar 2026 00:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJbUUfEo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3675FEAC7;
	Fri,  6 Mar 2026 00:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772758376; cv=none; b=GBKstu+JIf5roEOE4HTHxNbZwKy7ELMAr7ndN+Mi20v5U+lIccfMsTDci3ANLQt8aQdtvTvUjkIYeRS26EtsCQ/++6QM1wGv/4A/neD+kHXPD7/gC4nZ/7R6Q95tAAq8vInrCRvzAuI/rVhvExF2Io9TlupQFjOEquw69VM9Wxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772758376; c=relaxed/simple;
	bh=/5JnizdhHccFL2jTbxkK/WMVih4JUifyez8WckSgxoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V72XjNF3Lc+TlcLMGezVDSuTWwFO3oBcAjXvp6+H8X8eb6Gtbk0hflJCfhFwraWxVAPeTz/Epp8NuURs3Dk9plySz9jvvmeT1eOddW/SZpFCK7EX9wdnCpWwpGEgMYlB3HamGZPljGsxsNA64pr8PnjrrSnXpoPeVzsWEenqpUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJbUUfEo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62412C116C6;
	Fri,  6 Mar 2026 00:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772758375;
	bh=/5JnizdhHccFL2jTbxkK/WMVih4JUifyez8WckSgxoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bJbUUfEop+lNcHmAQRGoxq5x07RRuMGURJiMm0jiVuuZJIHdwR/K2I7lQqEdRnAEQ
	 VS3hovDBochs3ojVwPDiPT6JdvdSlgdplvXDa3TEQ4MU80ClCXRHhNOlcYCxCzSO2z
	 IYaIdGpWLdlyvnsf+i61XjFAO8I7fstfc5kGJYLHRDHsyaE+/Lk6fDMU380qoguNE5
	 QbNwvZHgNFweHc9mOhcqA707Bg12rzxAzEqx7vxOAmzBUesjvBLDY60f8vvUFZuPiz
	 QXmcY+9bF5S/58U2zzoEyIOZN9NP5IbyaCDqwe7cu2em9ktp9ssOo/ZIUWvFmfKUu3
	 iE6PSOnCDjVrQ==
Date: Thu, 5 Mar 2026 18:52:54 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH] dt-bindings: i2c: dw: Update maintainer
Message-ID: <177275837419.881567.16661119186362463833.robh@kernel.org>
References: <20260225125109.3794977-1-mika.westerberg@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225125109.3794977-1-mika.westerberg@linux.intel.com>
X-Rspamd-Queue-Id: 5C99721A0CF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271788-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Wed, 25 Feb 2026 13:51:09 +0100, Mika Westerberg wrote:
> Jarkko does now work for Intel anymore and since I'm currently
> maintaining this driver, update my contact information here to make sure
> patches get Cc'd to me as well.
> 
> Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> ---
>  Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


