Return-Path: <devicetree+bounces-259276-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOmSIMlEdmnYOQEAu9opvQ
	(envelope-from <devicetree+bounces-259276-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 17:28:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 019FF816FF
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 17:28:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 419A03000FEE
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 370C6324705;
	Sun, 25 Jan 2026 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="tTQDhVzg"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C485918DB35;
	Sun, 25 Jan 2026 16:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769358533; cv=none; b=YC/K9QyRKjmhxAWsTXcRdkjMsxKllFwQVgkf7leiyEUJUz18Ofcz52SD3kYDyowIZy2mudJ0Sv/SOz1s454QoHrT6U4IN5ok46hlN2/4ZR4Ct0dEEQfLQtWesFt+YnUoZ5Iw+q6M6erQVZe9ON5pN7XDArhxgV8iPXK/YNBo4dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769358533; c=relaxed/simple;
	bh=PAuMMpagtxP4dOjA60WqiYjCRDac0VKHV3Da4zz31pQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C9AEoHFSf8jLGO+kOcBmzJrVE05RGU/kH+BRg4seIebW21dvXD3QoTJrJv+8jkdmY5ZGX46FXh+4gj1ElFq5RbBCGtr27t9iJ1lBDbLNSxgJGdL3tLSa4uBrecM0TrTQOx1+uPZYvHhczLJU5syMol6lDmN+JxMS+hZNhK39U48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=tTQDhVzg; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ACFr+emG6c+HSjLRFGH9IDZ5SyzcIYaTDvRfsT2A1dc=; b=tTQDhVzgB0hC6erW+zr3mcBAGc
	POfQbcUIg5mXpjYJXoMQGcybC0xaOfWWKeVN3jFmL2VEXiwBFlJ1TWWjDqtOCAt35ftalR021hKjD
	fkSTvrfW2zPzOaQrkfvJ2iZDoC3aG1oGffs2GWFJJ7/RiAU8OojRZ1PKc/+9b+yC8feE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vk2ya-004coJ-8G; Sun, 25 Jan 2026 17:28:36 +0100
Date: Sun, 25 Jan 2026 17:28:36 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/3] arm64: dts: a7k: add COM Express boards
Message-ID: <38fdefa0-a13e-44e4-918e-d2e54c3fb668@lunn.ch>
References: <20260125152347.2518538-1-enachman@marvell.com>
 <20260125152347.2518538-3-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260125152347.2518538-3-enachman@marvell.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,bootlin.com,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-259276-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 019FF816FF
X-Rspamd-Action: no action

> +&cp0_eth1 {
> +	status = "okay";
> +	phy = <&phy0>;

Documentation/devicetree/bindings/net/ethernet-controller.yaml

  phy:
    $ref: "#/properties/phy-handle"
    deprecated: true

New dts files should not be using deprecated properties.

What should be used is:

  phy-handle:
    $ref: /schemas/types.yaml#/definitions/phandle
    description:
      Specifies a reference to a node representing a PHY device.

	Andrew

