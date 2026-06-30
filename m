Return-Path: <devicetree+bounces-317949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uTCeC3fuQ2rxlgoAu9opvQ
	(envelope-from <devicetree+bounces-317949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:27:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D6E6E66F7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:27:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GNZT32yv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317949-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317949-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 267363029AFA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD4B413244;
	Tue, 30 Jun 2026 16:27:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBA2182D6;
	Tue, 30 Jun 2026 16:27:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782836852; cv=none; b=KsWUFeniIh++y59HdCpME9PMSu88trHQs61ZvBarN2PRtvO/efKZ6vRqQP3iGj9BFwmPDeeABPSGPxXMPY/RCsB9HjXZ1xPVJGmVDixojx34Q12dRGBwnVX/JvrxXsRjttg14t8cjlLtfXtlczLtHSKiFxs4PSejHCptgv1wnD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782836852; c=relaxed/simple;
	bh=2iAEWYXw7sNp06aPCuVjvdEvMIHIAJ14sFrs9Se6c48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T5T9g2YfY1xZs4SY3ozBBEHUqE6Ale0M84N5STALyvhybCFVeClhmOLxxJ1op97eqZTvfe+waPIdpFv7FYbhdHcgGSWkyvMuNyiNw2YQMiCF96IywDeuAgpzl/xt7vCx/PMg6O+UvAfGw2JGFh/TKTw3jEPmvLLxqayW09+2R90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNZT32yv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECCDE1F000E9;
	Tue, 30 Jun 2026 16:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782836851;
	bh=7kmpKfvvBq7okZKQCv/ehPu4+EnCnsCutR8T0mBIkBs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GNZT32yvJLdJ9oiNwq1uq8btk5mn6FMFtTNJuaARi7C/6SDjKhP7KSAaWm9UnofMO
	 RKbWmdPmJggcF8ZorMX4J+UXNxkzdvSXNifyDtPl4kHuWYfpKf/4oDzrop5JWRiNr5
	 CYSMoM8TO7KhLRsSuhqyZt/9sHr6WSJfZ0foUPbRL5WXd4z3xSjtukTL5MWzC8D/Zd
	 nlCu9MLjKvvdH1sFVBzrlwTcWh7MUYB5X9sF5pWT0YgPAIjtrlxiSpOe8c/fmVXN9g
	 4ZFXjImzcoQ25PU8LkHgL8I+8Uqkt8t+T3k7A7wj7OZ4N1FJ6gs7yaXSvkhbq60jzt
	 a0xS7JdHkvKOg==
Date: Tue, 30 Jun 2026 11:27:30 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: usb: generic-ehci: Document clock-names
 in top-level
Message-ID: <178283683796.3902793.5018890843722271107.robh@kernel.org>
References: <20260625091744.109467-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260625091744.109467-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317949-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:gregkh@linuxfoundation.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:linux-usb@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
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
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3D6E6E66F7


On Thu, 25 Jun 2026 11:17:45 +0200, Krzysztof Kozlowski wrote:
> Convention is to always have properties defined in top-level part of the
> binding and then customized (narrowed per variant) in "if:then:" blocks.
> The clock-names were mentioned only in such "if:then:" block for
> atmel,at91sam9g45-ehci, thus add the top-level part and disallow usage
> of clock-names for other devices.  This has no practical impact as
> clock-names are not used by other variants, except in
> hisilicon/hi3798cv200.dtsi, but that SoC has it undocumented.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/usb/generic-ehci.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


