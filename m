Return-Path: <devicetree+bounces-272399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6F+cGxH/q2mfiwEAu9opvQ
	(envelope-from <devicetree+bounces-272399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:33:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C903222B136
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7B0B3016EEB
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 10:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2C8234AB01;
	Sat,  7 Mar 2026 10:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQXbp8KI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA987081E;
	Sat,  7 Mar 2026 10:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772879579; cv=none; b=iAYuzvoQfrmOkGhrqfrTJOlVB+O/pbSGi0rkocj8/OS/Vn9uft4cGPTHBdisjoGWp6e+xGJq0yuPMrA/ohV7Y1p1LywDMTktdQL+Kg/8uAVOXBcp8xZ6MRZarbpJoC0SPIefBcyoRpxjp6XtOGNPPpv7QaG1RT7cJxqnCuVKvgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772879579; c=relaxed/simple;
	bh=XQO4sCLXxXDne2+PAc+XCPnSDZI9JjNGghwMRWmQ2O8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FYPxB3OkgecbVB6Rte3IcGxBlHiZXPIY6xLwyPi/8XTCSaolZWeGmMwQGssEipsXWKdbFPRh17KiMsg6TCt0CfAoal3gU8HsdO+A4xEIS+vJNoYCipTBy+C3Iss8oyWcAx9ejc1HVZiRWJ5k2LSIeQI89YcKICXhpeOdI1ojHdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQXbp8KI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7A07C19422;
	Sat,  7 Mar 2026 10:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772879579;
	bh=XQO4sCLXxXDne2+PAc+XCPnSDZI9JjNGghwMRWmQ2O8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sQXbp8KIZsdHycc72E7W0k4ZKb+xVdA+DD1CmhISHUGUaX+I4jIQwbQ4mNL+wImNL
	 bYjQt60TOtHVGvrEPjZCgtZnU4RudcHrLVU4bAaS2vr7tLski067aLciZs4o7tPBrj
	 QyglSwwFq0r2aZmAMPxbUgtYUAzyL2b5ZeApYCX+vMSy4ltP0BUlqaANiFijr3pr6h
	 wufkXPIRYclC4Ez4nKgHOm41JB26Ipg2trI9jqIW4E9EYW+glTc8RPl13EH+dMbNrd
	 kDqCGS54itw8SbW+w3nUb8TF4Edk9tnJsOCgAD3SOVC5lt1Q/cVxsgSvCrBarRKQZt
	 srcRJZtjwctoA==
Date: Sat, 7 Mar 2026 11:32:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/4] phy: airoha: Add support for Airoha AN7581 USB PHY
Message-ID: <20260307-otter-of-imminent-merriment-d3475d@quoll>
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-5-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260306190156.22297-5-ansuelsmth@gmail.com>
X-Rspamd-Queue-Id: C903222B136
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272399-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.965];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 08:01:53PM +0100, Christian Marangi wrote:
> +	for (index = 0; index < AIROHA_PHY_USB_MAX; index++) {
> +		enum an7581_usb_phy_instance_type phy_type;
> +		struct an7581_usb_phy_instance *instance;
> +
> +		switch (index) {
> +		case AIROHA_PHY_USB2:
> +			phy_type = PHY_TYPE_USB2;
> +			break;
> +		case AIROHA_PHY_USB3:
> +			phy_type = PHY_TYPE_USB3;
> +			break;
> +		}
> +
> +		if (phy_type == PHY_TYPE_USB3) {
> +			ret = of_property_read_u32(dev->of_node, "airoha,usb3-serdes",
> +						   &priv->serdes_port);
> +			if (ret)
> +				return dev_err_probe(dev, ret, "missing serdes line for USB 3.0\n");
> +
> +			priv->scu = syscon_regmap_lookup_by_compatible("airoha,en7581-scu");

Nope, you need phandle to express proper device links.

Don't sprinkle compatible lookups for new code which does not need to
keep things backwards compatible. How do you manage device links
without phandle? How do you manage device probe ordering?

Best regards,
Krzysztof


