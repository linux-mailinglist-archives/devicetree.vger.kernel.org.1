Return-Path: <devicetree+bounces-309459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9jUBG9cUKWo/QAMAu9opvQ
	(envelope-from <devicetree+bounces-309459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:40:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF45B666B2B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:40:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GgTw9hhK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309459-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309459-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8F3E30C28E1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4866D38E8D5;
	Wed, 10 Jun 2026 07:34:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F567233921;
	Wed, 10 Jun 2026 07:34:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781076842; cv=none; b=RoqCw9lJeUbkS4VgYA1y9/gRP/Sj2WCzjkWKkbJziR4LptmuYDG5nlNsUmbLWDjqaQ6PhSG3cILOeS+DDCqUYdphfqV0+1PF3Q0ACsgjl8t0XrJQ9wmdVBLGDiLTZM8dMF5Fy71l33ORuuirw4UZXUP99quuDTNOwJx++FHd3LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781076842; c=relaxed/simple;
	bh=lESviC0svE2amCYVoFVRRhr+ieJ5rZBQw/NWsidC/Bw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AWxDzPtzegpAYc8dSDAyPi7G7656NyC5TX7evAiMQYZOCf7yWKAhcVRpr8owTAdLB0FJYiUtnTnWRn8tTWGbtuB3kUmMY07E3PFwkGkiz678wHZScYdRARNLpAlr6M0DouTwpEeqLW4lMSaIz5YlOuXI0I3ziNYOmgldr4z9zGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgTw9hhK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0AD71F00893;
	Wed, 10 Jun 2026 07:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781076841;
	bh=inaKj5F9i8g82bw4/T+OBOlX2Daw4L5xiNY8VDLR7+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GgTw9hhKmYwD++at19+B+prZ3LwW7NEJuDj62qxL5DMSC7aXDl2HlUhKvxn2M3a4m
	 3wXYd3xl3bU/glT5A0oJvDqALKuaA2XOqOikUgDVdHKW1F5I/eDngldqhseyHa3XaJ
	 JxCTfSQLTw2U5K7JdA7EVH4WHJN8Ygs2qZo5Ah6lRmbgJmBfS50PvLC8kS8qu7puF+
	 lZCLi7mC0CiwIrs+Dx3C9lmsDulsMYyiQm4j2FmL2B7nOYG6LTOwoZsNAVW870yFP4
	 /H0OrMYqUx/trQZN+Hf7ChMPS4XqGZ2h3ygBlSV7Iqa6vrQeiPQb70ZCxwnzNpfMib
	 fvbiw6WFY2zeA==
Date: Wed, 10 Jun 2026 09:33:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sanghoon Bae <sh86.bae@samsung.com>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, 
	alim.akhtar@samsung.com, kishon@kernel.org, krzk+dt@kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	sowon.na@samsung.com
Subject: Re: [PATCH v3 1/2] dt-bindings: soc: samsung: exynos-sysreg: Add
 hsi0 for ExynosAutov920
Message-ID: <20260610-arrogant-papaya-pudu-a0fb2b@quoll>
References: <20260610050326.2903402-1-sh86.bae@samsung.com>
 <CGME20260610050335epcas2p3ec1c019e86b75e9a4edd965a8b27ebd3@epcas2p3.samsung.com>
 <20260610050326.2903402-2-sh86.bae@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260610050326.2903402-2-sh86.bae@samsung.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sh86.bae@samsung.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:alim.akhtar@samsung.com,m:kishon@kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:sowon.na@samsung.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-309459-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,samsung.com:email,quoll:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF45B666B2B

On Wed, Jun 10, 2026 at 02:03:25PM +0900, Sanghoon Bae wrote:
> Add hsi0 compatible on samsung,exynos-sysreg
> To support ExynosAutov920 PCIe settings:
> - PCIe PHY power control
> - PLL settings for PCIe
> - PCIe device direction (RC/EP)
> 
> Signed-off-by: Sanghoon Bae <sh86.bae@samsung.com>
> ---

To satisfy DT patchwork:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


