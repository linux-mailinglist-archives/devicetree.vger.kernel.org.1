Return-Path: <devicetree+bounces-269709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UF/mFJ4ppGnYZAUAu9opvQ
	(envelope-from <devicetree+bounces-269709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:57:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 495911CF7AD
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:57:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 447D13002D07
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 11:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BED1317179;
	Sun,  1 Mar 2026 11:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiwUa56E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD13630C356;
	Sun,  1 Mar 2026 11:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772366225; cv=none; b=uslUtc05ZBQidAJz3n+t2R0UpytSBs034Dq+KWE88zea7BqBpHl4G1wV9TVofAxj/Kzg22umJJA3Jkmp1JmtXC//J8pMxPuqdvG784HpMYTjN6Hoxu5RIE8NFQ9jxsqbPc9XcJZlOc5GmXUYzOMA6DLqdkTrP2HZHDGxAK5NFw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772366225; c=relaxed/simple;
	bh=LHspUG1gPw4r6JNluWjjZ9kJfoAty+suillBorvVnKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CPhtBNEqPc7KpAtgwwGpmO7sQp3fAYW+lFs8Ft83+lZw3+mh2giwuFOu1o3jERl7EvuuxaDe2a4sEf4DX3UofLPDqEVU93T59jAOD2vRkjgzjpXrJNlGn/dyehiGW83ZANe9+DpYx0hMDIKspCD2lz2FwZgjV3Pcrrnqt7LkO0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiwUa56E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA647C2BCAF;
	Sun,  1 Mar 2026 11:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772366225;
	bh=LHspUG1gPw4r6JNluWjjZ9kJfoAty+suillBorvVnKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CiwUa56E8JH90lRbP0ZT1twRHa78KV1ntDAdUpHRRy7BEpIwuzeRNbRfJc0jo8ASz
	 Nm0K4qhpcggpN7TSM75Qsb4GtzLE0VDJGCV8aSRMPz0A9hc5kfVIbri7vw6lwBx6aS
	 b43IYW1eyCb8bGNREFRugJsKasauQXnZGrvaMQmf1E/LzYdL6GpZPrtBBX58TMV0fZ
	 5CX8muviWedwyaUPM9qpXRVG5bw08zv/oug2IO7PQWwzzzDMmEZQSj6Pj2dffxHlVO
	 p4XRtdMknGE4XlCsNKlLJFx6NC4xzwbb0p5h5n2Y0wuudPVQ9tpF9b+08J9EyHj8jT
	 E9Aig9OPIhMNg==
Date: Sun, 1 Mar 2026 12:57:03 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>, 
	Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, Alexey Charkov <alchark@gmail.com>, 
	Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Message-ID: <20260301-pearl-snake-of-innovation-5f917a@quoll>
References: <20260228205418.2944620-1-dennis@ausil.us>
 <20260228205418.2944620-2-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260228205418.2944620-2-dennis@ausil.us>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269709-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 495911CF7AD
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 02:54:16PM -0600, dennis@ausil.us wrote:
> From: Dennis Gilmore <dennis@ausil.us>
> 
> Add compatible string for the Orange Pi 5 Pro.
> 
> Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


