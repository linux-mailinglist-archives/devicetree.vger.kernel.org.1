Return-Path: <devicetree+bounces-273071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMJOOkUTr2nJNQIAu9opvQ
	(envelope-from <devicetree+bounces-273071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:36:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE3923EAEA
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:36:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3AD3B30234ED
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 18:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7F1134FF41;
	Mon,  9 Mar 2026 18:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="iRojvJf3"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04913A6EE9
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 18:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773081384; cv=none; b=bKePZx8wwLAJwS8/8+BcMKf3mRf01rejvtQ0DaH8/Mwxk9I4wXpGMZgypzONYCMH+BP9hf/CmDSSXdgSOTscYz5aFbkRdQ3zaWuZ9c4Eeo5VHU3Cslk0ttIwbEk/2XvZ9t9gXyJkX/Vti2DJPqVneLR0J4i4/okp83iepbVpbIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773081384; c=relaxed/simple;
	bh=ozO2Sn8COBaX/HbGV/BW3Qodwlh9xNGpgKdKehpzq5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fWU9q/HNlPz087XsBNQlCo/s42GWpLyY7WogZPT0BpuWiQzZrMoBEVZXQ9wtArOHkAhshf8wU5u2KZSk4kZ7MolyrMRlb9u7mkvlpJaTSUZ99X/gIhYtm9Az4jy8E5bFR31H+CRNzrBEkCtDKEjgjwoSmf9ovozXveQRdL8T7Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=iRojvJf3; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=q/TfHCggaK0gVtYPsqbz7F7y1Ga7ttodbmIqmJ/6mBQ=; b=iRojvJf3wUHaq0wbRFFKxthBNv
	C5FfuW5GrC7MOJRQlZW09lAzTszh5A79eCPGU534Sz4WSkmliaeGJ/rKvG9t42SDA/12c3kAsuLm5
	kLqB/5JgKyyuLZvKnz1Ng+oAQnyfhq0RFnIeIIMdchjsmVau8syDK0Wukhm/VgEUIJyM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vzfSV-00AuHV-P9; Mon, 09 Mar 2026 19:36:03 +0100
Date: Mon, 9 Mar 2026 19:36:03 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: airoha: en7581: Add switch node to to EN7581
 SoC
Message-ID: <a9638d70-c474-4c03-b57c-5c15e9ef273e@lunn.ch>
References: <20260309-airoha-7581-dsa-switch-v1-1-448530b7f91f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-airoha-7581-dsa-switch-v1-1-448530b7f91f@kernel.org>
X-Rspamd-Queue-Id: 6EE3923EAEA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-273071-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.1:email]
X-Rspamd-Action: no action

> +				gsw_phy1: ethernet-phy@1 {
> +					compatible = "ethernet-phy-ieee802.3-c22";
> +					reg = <9>;

The @1 should match the reg value. So this is wrong.

> +					phy-mode = "internal";

phy-mode is actually a MAC property, not a PHY property. It is not
listed in
Documentation/devicetree/bindings/net/ethernet-phy.yaml. Which also
suggest this has not been tested using the DT validation tools.

	Andrew


