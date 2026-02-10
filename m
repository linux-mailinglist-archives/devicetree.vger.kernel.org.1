Return-Path: <devicetree+bounces-264212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLSpBjyaimk8MQAAu9opvQ
	(envelope-from <devicetree+bounces-264212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:38:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2EA1165F8
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBD9F301BCDD
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304A22DC339;
	Tue, 10 Feb 2026 02:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0bLPROy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFBC1F09AD;
	Tue, 10 Feb 2026 02:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770691128; cv=none; b=WwC7grYBfNUqk3sOpEpnlqx5qw0vqhp8iHlgE7obvHblS5kO6pZD7Mb7J8AIGzpTLZ2Tns0lSBt6tkhwasujgFhRfkHd+IAqRJHPnlbEf7wqLhCLAvCCQfUMuolMBVgK0tvaVpGLZVb012WecUWmTJyKX1s+uBhZZZ+T36/E7IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770691128; c=relaxed/simple;
	bh=a+W7rJ+nSy+E9nA72vbcHKdll0IUBuebzRkNW6TOQCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kqBZQZ1d8y8JVhFQshQHle6kLELIhAI9prPil1T0P8Nua00VAdrRcjy2pRO3KK/kYwo3/iNBzjP64sxYxLzw70sUCkcX98l2Ji3kSVYbz1tkFEZgGEbsQKMRRirs552y/UMP0i5eCvj98PdX1HMyAy8AZZieSwohwlRi+JLp998=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0bLPROy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91A48C116C6;
	Tue, 10 Feb 2026 02:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770691127;
	bh=a+W7rJ+nSy+E9nA72vbcHKdll0IUBuebzRkNW6TOQCk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e0bLPROyxDCoW0Ba2kuk1CrnHUjouIrJ+qAeMpKsrzGL0pAoXXZDS9oFcpzPO/Hgz
	 uuxEF5aB1RJL73Dzu6EExnkKRi8o3fPzVoj+hiE9qQOHs5iljlqoPv6enO54jq+PgF
	 ZNrJ3tXnLiQZQLLpqoaB7lSKNa/MPqu62hIUPgqUjn5rVLPLN52TmEbPqarN6IG5tm
	 wBR10qQxwXibX/3xS27vdZXYK4S/Da4zA2TtcwAaTmidT9wIfLnlbUdhHg7xGLJ3GW
	 4mIpZoHxjx+t02Ei6/V7GNSS1lOEEcDgqEAAWwh8Fte1io17gSI9lQrcn/hHt77VQq
	 Szctz8ECxQxqg==
Date: Mon, 9 Feb 2026 20:38:47 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: power: ti,omap3-smartreflex-core:
 convert to DT schema
Message-ID: <177069112619.2374074.2138585999534731553.robh@kernel.org>
References: <20260206-smartreflex-v2-1-b258498917a4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260206-smartreflex-v2-1-b258498917a4@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264212-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 7A2EA1165F8
X-Rspamd-Action: no action


On Fri, 06 Feb 2026 16:57:54 +0000, Akhila YS wrote:
> Convert Texas Instruments SmartReflex module binding to YAML format.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
> Changes in v2:
> - Remove unnecessary examples.
> - Remove "ti,hwmods" property from example.
> - Link to v1: https://lore.kernel.org/r/20260128-smartreflex-v1-1-2ab7a35169ed@gmail.com
> ---
>  .../bindings/power/ti,omap3-smartreflex-core.yaml  | 58 ++++++++++++++++++++++
>  .../devicetree/bindings/power/ti-smartreflex.txt   | 47 ------------------
>  2 files changed, 58 insertions(+), 47 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


