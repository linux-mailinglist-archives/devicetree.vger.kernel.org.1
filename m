Return-Path: <devicetree+bounces-274650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LUaHrbasmlMQQAAu9opvQ
	(envelope-from <devicetree+bounces-274650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:24:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 753B9274528
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:24:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AADA33099174
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753B53C6A4F;
	Thu, 12 Mar 2026 15:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebdNbp5c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBBC3C6A40;
	Thu, 12 Mar 2026 15:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328390; cv=none; b=o4iqWYHv52hSRXDbSXECNEJS7ornMrWcmdU74/SEAjJ5JLpIW5Xyq6xDCpma2iKodSowGjOPX4d4OlIvTfP0r/nVl86EwRArVvb6sbiShIorYFJuXrkoAvokf3KQW8Kz/JBan97p2kRmbBWlqEDJ9XM3yMje/IMfaAjao3BGFeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328390; c=relaxed/simple;
	bh=qmd4fXGEUkzPL6jhYNgQSGXEqS1ZGmKTp8UonTLZLQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LEis3+rMahImqa5sFRsM0a+2jFWjdVWk/PRdbVsoBN7br+kTKjHvtDz/+uY1Fwse8EZv3oQek1L4NcRz2j6Ar0xGih+g4WBsuZ081eAhVgEyC5d5mI1OUmB/+oilDJt1p4pytxjyAFrKXRFX4dgHNYrRdruCtTVvDcxs/xQ6rzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebdNbp5c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2134C4CEF7;
	Thu, 12 Mar 2026 15:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773328389;
	bh=qmd4fXGEUkzPL6jhYNgQSGXEqS1ZGmKTp8UonTLZLQQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ebdNbp5cbrYFvu/hWOzgRU4Ul05aIdTTiYeQBIPAiyKlI7kQOE0Pk0YkJs30uZt3h
	 kClOsQ/Zk7NfcW7zo4COkkffexh4spyEBUE06ivy0AUm211C2Hau6X/PF19sMsbFQn
	 Y3kcFKcCufoeAludy9cYYBHM2JEK/3EsDY33SAATUwc6nUT1wRzknLWZ3QcRPphG7s
	 luxtVzblW04j57GM5exCqU0gmJNpNU1iu194tyZCYqGL5e0dkS1Uk3uTxbdLCMqg9h
	 vsZZ6ucqQGyOmA68+NgKJtnXghIL2y4cQVOfqXe56UiTyo6+ldTV3BbgZ193qnHwt6
	 1apNSO8lmaAGw==
Date: Thu, 12 Mar 2026 10:13:08 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Thomas Gleixner <tglx@kernel.org>, Marc Zyngier <maz@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: arm,gic-v3: Fix
 EPPI range
Message-ID: <177332838742.3145528.6567102569919276162.robh@kernel.org>
References: <3e49a63c6b2b6ee48e3737adee87781f9c136c5f.1772792753.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e49a63c6b2b6ee48e3737adee87781f9c136c5f.1772792753.git.geert+renesas@glider.be>
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274650-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,glider.be:email]
X-Rspamd-Queue-Id: 753B9274528
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 06 Mar 2026 11:26:20 +0100, Geert Uytterhoeven wrote:
> According to the "Arm Generic Interrupt Controller (GIC) Architecture
> Specification, v3 and v4", revision H.b[1], there can be only 64
> Extended PPI interrupts.
> 
> [1] https://developer.arm.com/documentation/ihi0069/hb/
> 
> Fixes: 4b049063e0bcbfd3 ("dt-bindings: interrupt-controller: arm,gic-v3: Describe EPPI range support")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Brain-farted-by: Marc Zyngier <maz@kernel.org>
> Acked-by: Marc Zyngier <maz@kernel.org>
> ---
> v2:
>   - s/v3 and v3/v3 and v4/,
>   - Add tags.
> ---
>  .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


