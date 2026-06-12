Return-Path: <devicetree+bounces-311069-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iTfNHNEyLGoTNgQAu9opvQ
	(envelope-from <devicetree+bounces-311069-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:24:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9F367AE29
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:24:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Hw/LGPTg";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311069-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311069-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 43C653017E6B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B8D3368B8;
	Fri, 12 Jun 2026 16:22:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E62233CE9A;
	Fri, 12 Jun 2026 16:22:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781281357; cv=none; b=IQxeY7/Wdr4AXDkzASIKs6lLlj9WrYTmu9glm5qzhxphi94KYi5Z8eUwc9T2bnqA5rg95Ogp2c9KZfXxN9uqm7oXE7fVYpkgY0Ww2WigT+Ja8Js1j2W4U4IKlQAADdBDD4vuuqI64Uj1c1pxLLwZi18EMeuyh3cCz262T7QS5YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781281357; c=relaxed/simple;
	bh=IVvjDAiTX+EkmoCtAYwWgF9K3/13Sbwz2Oz3EOrZuyE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cDeyOoA90yyilUPxFaCIDEBMoAOAD8r9zWWDmJ0vsl5JMjsQ2FqqJgYl6NybaOTra1/8c8AuhmsK+wIEhYtfj48hAFAIodVl3TZRG0V0rP/zi+MmcHImKlOPxCAkmCcPlS9016R5XmFyu6QWyK2PMllB2uMPVITezOM4jXCh1Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw/LGPTg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D15BA1F00A3D;
	Fri, 12 Jun 2026 16:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781281355;
	bh=OVPiKHbP5F+x5vf3YbVR/fxqVUp39ETAng9/6pe758o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Hw/LGPTguhY8NgRIzInzXZoBTpcRlDBt8peOuo8gMRS5wp3XItJevTAIyFzNXqzZH
	 yzsfJMfBgIIMtrxwaSJNASDvLdqZYcWAI0BtcJ9txZG5kabb/Hw+wbsPCOiCumNMAG
	 pfk1GxROopS9N08EyvAUOJ0FwbGcLNHhMDKaMrWCcIY8Ni943gMMrly58CigCaA9em
	 aQ0JgIEiCcnHSE5z/Pdo44jqS+uWyH98+BsZybS2FlwawWaJfzZRAUWST6FUxqy69+
	 d1t1NlTFrde0GItkmVeAhAqMq8mby3gZJ+vPoibb2OupsASfYoPbVkyadF8w9JLqd8
	 xQVRfzTVLVlBQ==
Date: Fri, 12 Jun 2026 11:22:34 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH] docs: dt: writing-schema: Clarify what is required in a
 schema
Message-ID: <178128135345.1154740.3219775491208873528.robh@kernel.org>
References: <20260609103550.234472-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260609103550.234472-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311069-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F9F367AE29


On Tue, 09 Jun 2026 12:35:51 +0200, Krzysztof Kozlowski wrote:
> Clarify that we do not require all properties from a binding, but above
> schema keywords/properties.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/writing-schema.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


