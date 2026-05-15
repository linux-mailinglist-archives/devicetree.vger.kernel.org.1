Return-Path: <devicetree+bounces-297945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBhlFSzJBmrynwIAu9opvQ
	(envelope-from <devicetree+bounces-297945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:20:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AED9354A785
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:20:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20A033063831
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 07:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC283DEAFC;
	Fri, 15 May 2026 07:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jurP/U4r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68002363C4A;
	Fri, 15 May 2026 07:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778829207; cv=none; b=rPnmLLRjyi3GD+sdslxjNLlgWcMexGdtPWAitheUcqQH883qbfjtn6eFrfvs2EIjf9Bc15NYJfqeU3BruaPJObKAq23UzM7P9X6Pf4I4YrElIFo6tR7dNcZpUA7UWd5mQ3CqCMX7NjYamRub9T5znhM7bJ6p/gABWxHq0RnJIs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778829207; c=relaxed/simple;
	bh=ylk6TA5WvepWdgul2vd6F5cmAObEZ2AqgOsnZUxrZbY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cDmg/alOp3c+25DYn2p2BDCZpvX0HMy6pCM83LsulPgLKgKk5qzP/60Q0PQ8BVtSEUZj+9U75ra5Y9mcmiuFdn1dI9BLTBanR8k+jbb4+WCWp5k10ceBzlGp2vmR2kluztpDvejApp3V/Jyh36s9bVeGCvB4OKrpmS5647Odjxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jurP/U4r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9D21C2BCB0;
	Fri, 15 May 2026 07:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778829207;
	bh=ylk6TA5WvepWdgul2vd6F5cmAObEZ2AqgOsnZUxrZbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jurP/U4rt8M3fR9EIf2MBCAwzhbgtjo/aV+CJKcra/18KYfN6mkg2Jnp4n+JLJ4CC
	 4MKLLGYiAGWGdEORbj1VjULUAzahERhfyXdsy+d0ZmIHFoceoE9hm3iNYPpm129j2m
	 aiIkSAQ7vbiFLNbB4KAsb1r8hjmZSMIP2vRNEONn2Gu2t9+1I84VU0f+NKUIWj4Nhg
	 ZBubTEJ/j1H40x3ExCP6+Ec1Vp4QbBBiUWhKkHZvcttT3OW8pEbNryHQn0GoEAkXNJ
	 Vv14q+R1IYod/5EwFqoe2+nFZVItW0VomWbIn7Ru6+hmpiJAkuDdGM+31tpJszVzrH
	 +ay4bxvxFhTHw==
Date: Fri, 15 May 2026 09:13:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Hawi compatibles
Message-ID: <20260515-expert-azure-dove-5a73a8@quoll>
References: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
 <20260508-hawi-phy-pcie-v1-1-237b894353fc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260508-hawi-phy-pcie-v1-1-237b894353fc@oss.qualcomm.com>
X-Rspamd-Queue-Id: AED9354A785
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297945-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 11:31:16PM +0000, Matthew Leung wrote:
> Document the compatibles for the Gen3 x2 and Gen4 x1 QMP PCIe PHYs found
> on the Hawi platform.
> 
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


