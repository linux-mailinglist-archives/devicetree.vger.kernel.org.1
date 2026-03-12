Return-Path: <devicetree+bounces-274642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLx1OGXXsmlDQAAAu9opvQ
	(envelope-from <devicetree+bounces-274642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:10:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE36273F5F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:10:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95313315A2DF
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458793909B5;
	Thu, 12 Mar 2026 15:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TL8L4A2J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D1B38B142;
	Thu, 12 Mar 2026 15:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773327768; cv=none; b=fwSraq4Z7jCnK99lcjp5tbjqe2dZn3bch9jpE59CXuW9CLmKXzqG0N2P34U/4CWuIl6lHAoGlOlzLI/9SRSJfsZX/drVcGVEDB9G1accS9J42BinyI98U0PnZDo0fBPpRl7ZhlPiTCoc+d64eLnKSlrXRxIALagOiSKPZuqItnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773327768; c=relaxed/simple;
	bh=TpkPTB7QLdvbC4dHR6TujTwcsq+UZavtyYNcVQaIn8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C5zMYs7NjNIW6U2lafhjXVVpDaoR+dXb2llfgK6cE75HYuPLCwVC12+G9FkBI9WhFpKhgwCv0WflIhaXedwgyMHr68OrzjWJPGivK9iGotzpSZ6V8rQM8f33HRfoQQyoDL/eLA12SNZ+m87PoluNWfeb1KLoz40e1LCl5fDVZ3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TL8L4A2J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0FC2C4CEF7;
	Thu, 12 Mar 2026 15:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773327768;
	bh=TpkPTB7QLdvbC4dHR6TujTwcsq+UZavtyYNcVQaIn8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TL8L4A2J+OVcHSsW+sFEF8DX+wdUdayeayT2LpXXU/x3QX/5AbQZxSOTO9XFc7CW7
	 nDBsbE9oPxei35cVaz+0I2D/f7j+WlxQLJpEM13wAgzSSil+rJ8TPWzmwozp1WucMD
	 47NMaLwv/Sr+2TYoGCxEef/JWKlKXPvor4Vm+VzlmG9kf3bJONL5Ta4x1WXm/KhMXV
	 CMQlvBeLQyZyLQm7BU4J45zdullwA9qAtUpHbOkAdRc54N7vYsSLCGEfTe25/CdnfM
	 gzXUHulqafOUEPo2po8tFnnskkAWDpthmtT2zfyv4JC3ICEoWCq0FxbEICRJkZm2fB
	 h78LjOdVZ6pTw==
Date: Thu, 12 Mar 2026 10:02:47 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: akurz@blala.de, linux-mediatek@lists.infradead.org,
	mkorpershoek@kernel.org, andy@kernel.org,
	devicetree@vger.kernel.org, alexander.sverdlin@gmail.com,
	dmitry.torokhov@gmail.com, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
	matthias.bgg@gmail.com, lee@kernel.org, robin@protonic.nl,
	linux-input@vger.kernel.org, conor+dt@kernel.org,
	marek.vasut@gmail.com, hvilleneuve@dimonoff.com,
	geert@linux-m68k.org, angelogioacchino.delregno@collabora.com
Subject: Re: [PATCH v4 3/4] dt-bindings: input: add GPIO charlieplex keypad
Message-ID: <177332776621.3126889.16026156130288096432.robh@kernel.org>
References: <20260305192101.2125660-1-hugo@hugovil.com>
 <20260305192101.2125660-4-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305192101.2125660-4-hugo@hugovil.com>
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
	FREEMAIL_CC(0.00)[blala.de,lists.infradead.org,kernel.org,vger.kernel.org,gmail.com,protonic.nl,dimonoff.com,linux-m68k.org,collabora.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274642-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1FE36273F5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 05 Mar 2026 14:20:49 -0500, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Add DT bindings for GPIO charlieplex keypad.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  .../input/gpio-charlieplex-keypad.yaml        | 108 ++++++++++++++++++
>  1 file changed, 108 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


