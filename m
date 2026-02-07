Return-Path: <devicetree+bounces-263592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4A8GLSAch2kgTwQAu9opvQ
	(envelope-from <devicetree+bounces-263592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 12:04:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D1B105B46
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 12:03:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA11B301AA64
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 11:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3DF340290;
	Sat,  7 Feb 2026 11:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKousi4H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A2E1D6193
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 11:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770462237; cv=none; b=UWjGtD3ZEKf8UGijudjbTmJmbeaG/x3qQ33lyGDXEGkg/yftdRZOYeajEr5y+NUGXeSvINIHDrRDSKNglJicBb9A5T844FvlThdrEr9J+VFxpg3DgT4IvkJ/SyOUeYozYzKrjGC0Q8BVYA8JyvFZipM6Dx9qeXbXGvgKc3+PgFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770462237; c=relaxed/simple;
	bh=5Y8pWUfb2MHUSeRywGBORqgLcuWNSVW5eedr7SUp5GQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a/ByoYx5qhEtdip4Rqs+sHYEBDeeU8niScyMxh1j/MseXDlj1kp7vGrVSqUcirH9oR5oFSYpho0jwETTznhdsaGC65r7mJqXP2kb4C8VuA5zl4kgT0owPiucydaASWZO0+8t9dx3XMyw91VPix3vK4divENmmthbe66UoVk26mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKousi4H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB643C116D0;
	Sat,  7 Feb 2026 11:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770462237;
	bh=5Y8pWUfb2MHUSeRywGBORqgLcuWNSVW5eedr7SUp5GQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WKousi4HCF9BPFvdbxCBeYZ1WkbAXtCO4c5vJIKC+dAtnbs2dZkvVtEFZVo4JQ7RE
	 /pre29h35WX4sXKam0lMo5/KqDM7NRn5MdRrOa8E8DnJdIaOwU6Budddv5MtNkQZBg
	 lnT6VPIrhNulnFxyJodUoVfvOnIJnr9Zsgm8t3xYuElDPIy5+1nE64tJsek4Ysh0AJ
	 H0CgxyPyvq10GJ9DhTlNEkiTIhTmt15Uh1yuPK9ieujGd5egU+HFumN/PJUI+trH+b
	 Wd4qWFTBPxavDvpAMpn02GlSvIy1Q7haIuy3NJODUMFNGQW7bTfzGMJpO2Zlc5Ums2
	 zDIri82iE5Q7A==
Date: Sat, 7 Feb 2026 12:03:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH 08/11] dt-bindings: soc: rockchip: Add RV1103B IOC and
 GRF entries
Message-ID: <20260207-fabulous-zippy-woodlouse-e8adcb@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-9-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-9-festevam@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263592-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: 13D1B105B46
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 03:13:06PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The "General Register Files" provide additional setting bits
> outside the regular IP block register space and it is accessed via syscon.
> 
> Document the RV1103B IOC and GRF compatible strings.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Why there is no update to the list of children? You added it with MFD
fallback on purpose.

Best regards,
Krzysztof


