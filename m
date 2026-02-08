Return-Path: <devicetree+bounces-263694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AvbMBgaViGm7rgQAu9opvQ
	(envelope-from <devicetree+bounces-263694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 14:52:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 584B6108D1C
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 14:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D87C7300CE7D
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 13:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C877280325;
	Sun,  8 Feb 2026 13:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qao9non0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3F7248F7C
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 13:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770558723; cv=none; b=BWfnFIPuyywYJXJuWVZlCQnyqDEvF/RE2R4EExuCa+7uI9FIbuC+xYi/G9CpYLEl0VfgmdZ11HILfjiNNi54hxyXRE4GMg6GMIz6LF/XY8kh24sVv2AbhlJPdv0Ze6fPEdwBWK2FPzhJrXaMV0LM+zLS4asiNZF+SNw7NBNa2AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770558723; c=relaxed/simple;
	bh=SCOqPgpOs6JgrzzzsvNoYMWOkNcynFFT/x+hV44QYUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=teVDH2YCVnCyWoZqWmr9W9l1Ng+ii16z/PnrpQnzOj3VoatrX0vrhlxQ+DJljCNalq0/PiO/h/AYXzxMncunONF4u8hTaz9EoMQbi8wYrLrSUdh/5OfikalEPpZ/Y5quTdd5gjMJwmDHIFe2qDnIJdcI1ScfNFx/Wjq9yT1p3PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qao9non0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 369A8C4CEF7;
	Sun,  8 Feb 2026 13:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770558722;
	bh=SCOqPgpOs6JgrzzzsvNoYMWOkNcynFFT/x+hV44QYUk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qao9non0j1tzkdoEdZwRijuNi52bWkVmumJL4E43t7LOt8/MrW5144wVtvp2TbMWz
	 ceI7SVKDR4vUD4UilwYHHGO7c4KFOrQAEwlD/vkbJxi3+8mAkFChUyETXbTx+64+ZW
	 O+DWMA58QQh6vgyZHSfyLGcJVs/JjJ4AwpwwP/Y/7rkSkH0YGL3HvROOthe+1siHAb
	 Zl/KyZaaqjPFtDsfUtuHn/5t9VRZh6EWcrMUo7HxWJTa4QezEl0L3IYFnj2onglw3t
	 cTMzHCX61EVPz67awaI1TvrnU4/MHTdA9wgnKbUHcxDNRaL0CEsvX1HScM+tK0faHS
	 2n5zrtuvhjN0Q==
Date: Sun, 8 Feb 2026 14:52:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B
 compatibles
Message-ID: <20260208-analytic-fine-grouse-e17baa@quoll>
References: <20260207131803.2834749-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260207131803.2834749-1-festevam@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-263694-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 584B6108D1C
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 10:18:00AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add the GRF and IOC compatible strings for the RV1103B SoC.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v1:
> -  Update to the list of children.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


