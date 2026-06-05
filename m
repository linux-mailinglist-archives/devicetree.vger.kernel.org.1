Return-Path: <devicetree+bounces-307530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B9jsAuwwI2rKjwEAu9opvQ
	(envelope-from <devicetree+bounces-307530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 22:26:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E18E864B265
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 22:26:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CmlBOtbw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307530-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307530-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AE1A830136F2
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 20:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB09A3E717F;
	Fri,  5 Jun 2026 20:26:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3383CF219;
	Fri,  5 Jun 2026 20:26:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780691171; cv=none; b=iMD4+ZvnJ10utqau3R4W+w6qAhdOQJLna6bpdL3vSHgqHryQDVMiANeY7a/YdAIwW+YD8OVsHMudlibd45rEtP+oz7StdPfdwtGyCAuXKP3VvtZMICdmQrHnOKb6VNVnzx7ZmeUpbNJUwgbPr8oT0k2IP2k5WWwYmka36ouCdTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780691171; c=relaxed/simple;
	bh=9j5asr/zsGysuYEdXttW24pGeqPWjSbm4MBzoSgxFjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k3vrp1noOx3SPCQZQ0SG3s7eKZh0LWGt/nTt3qzjSCx33QuTz0ChSKBNluZYpJiuMEwuFH5QfuRP8CNPCfBsfT0hnQnmqE4VlEFAnFncHepWR/XLVYJ8IH+K3mUodaZceefyqVjdRwQTlaoqpyeSrovcEKe4ojZVGSdCWkHQPAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmlBOtbw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C3EB1F00893;
	Fri,  5 Jun 2026 20:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780691170;
	bh=H4BqWzri2CxJu6pwE+muPny5iZ2OH8Gn8td2afpPXoQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CmlBOtbwclUlefCH6WNZfPW0j/fV5z3Y9rsLMwHEol4nSdVupg0g7TDUJ3Fetetx6
	 zMAYUVF9XZC/ET1H20rwgxofDaMs31rzxTPYcelx4AuAf7u+wzkQQktJBeP6KWZt6L
	 5YC48mf2/Dd8uBgbXmCyS7TwDnO0LtkMYRQl0t5kaQWTQ7Ac5ZAHP9VlJGHvVk+hkV
	 SVzFjYs4xu5qfz8FZJ2yqtupgbFxKrC1e91HEemoKVaoUkSdAJ43cBfQoonWPmyTUQ
	 AU4F2gtqY2E8WsefeuSjl3k1lC9wT6LcZvk7mzVCj9MiUdFh6PKHnBQC1DEndAJSmK
	 hQ4pWSbrJ8BPA==
Date: Fri, 5 Jun 2026 15:26:09 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 phy-next 14/16] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <178069116842.97729.11485900665784589365.robh@kernel.org>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
 <20260603132059.503527-1-vladimir.oltean@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260603132059.503527-1-vladimir.oltean@nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307530-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:ioana.ciornei@nxp.com,m:vkoul@kernel.org,m:linux-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:tanjeff.moos@westermo.com,m:linux-phy@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,nxp.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E18E864B265


On Wed, 03 Jun 2026 16:20:59 +0300, Vladimir Oltean wrote:
> Add a schema for the 10G Lynx SerDes. This is very similar to the modern
> form of the 28G Lynx SerDes, which is very much the intention.
> 
> There is intentionally no generic fsl,lynx-10g compatible string due to
> the hardware inability to report its capabilities, despite having a
> common register map.
> 
> We allow both forms of #phy-cells = <1> in the top-level provider
> and #phy-cells = <0> in the per-lane provider for more flexibility to
> consumers, and because the kernel code is shared with the 28G Lynx which
> already has that support for compatibility reasons.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: devicetree@vger.kernel.org
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> 
> v2->v3:
> - move fsl,lynx-10g compatible comment to commit message from schema
>   property description
> - make big-endian required for LS1046A
> v1->v2:
> - move patch later in series, right before driver
> - deliberately ignoring this Sashiko feedback:
>   https://lore.kernel.org/linux-phy/20260529125017.ifqunh52gdzhthdg@skbuf/
> ---
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 136 ++++++++++++++++++
>  1 file changed, 136 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


