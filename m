Return-Path: <devicetree+bounces-323778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id obziFACgT2oKlQIAu9opvQ
	(envelope-from <devicetree+bounces-323778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 15:20:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F5D7317E3
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 15:19:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="h6X+tF0/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323778-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323778-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 17FE5301FF30
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 13:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF668280331;
	Thu,  9 Jul 2026 13:19:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F6928000F;
	Thu,  9 Jul 2026 13:19:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783603192; cv=none; b=fFLeOFX0rCs/5K/lAwSdAVI7Alr0u24io0VtLbGaA2Rp4M1eABXaFAkjs+lvS8rckuK8/xyCl7EutNBk6BsVLzPo7fouLFIm7ekBv9Yt8j/2Bninr11rII1iKj2JySTYsCaSagq9QQSd3pGLJ0x0BWM9VvdLgSNdAr4Dl7qJidk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783603192; c=relaxed/simple;
	bh=2Mo4RM80sDPxpafrL7jOSW6LXyEzpyEo3CSc/UIXnds=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=E91yzGDIhKjatnfid5dPUIgG6PjUqx5tHP/8m0Fh0BBwgz32Q0Siqi/asT3hYxB6T2lFhvbhcrj11VslR8LLUgQyotR359IImFkwlgI/jnsolJTx21mKMmOprkDvyOBh4pmTUx20vtgNRhGI8jTkzU5Saix+Ih4sSQfD9exXs5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6X+tF0/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A42E71F000E9;
	Thu,  9 Jul 2026 13:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783603191;
	bh=0WLCVQsvZMqqfH/K0AWHWpcFwi5Xbu/MV1fA5PKOgWg=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=h6X+tF0/BBXN9PxosE6RenLIymvAa2EGxIlzh1woWhTzEctYLSPkemOfJ9CWorfeR
	 AZzYt6qHNhmxv1+BaxzXyqzNRnivFLnnfvE8tlFi/dbBDUyWf077az9me2KXY+f6OO
	 ODh0JtzhXeaB0KZMSsry32HIdUc9lSY7vENI3ihNHUeAvMxbDIZBjRTu/Wj1aKNOwE
	 XZ5Um8r9lPbPNzH4j4w4IGzT0sDi3gCvpvFlxWpFCruprK1TCAhIMTT4dxeUNiQxMD
	 6BEpicdMfq0Oj/JsA4aQe2OQP4wJU1PrvXnUq10bYG+Ry+iVUDOOJEDhuUCKIj4YyR
	 4xhAF5vIT9Smw==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260701105731.196618-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260701105731.196618-3-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH 1/2] dt-bindings: samsung: exynos-pmu: Restrict
 children with unevaluatedProperties
Message-Id: <178360318738.284535.1868657789892551663.b4-ty@b4>
Date: Thu, 09 Jul 2026 15:19:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323778-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:peter.griffin@linaro.org,m:alim.akhtar@samsung.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3F5D7317E3


On Wed, 01 Jul 2026 12:57:32 +0200, Krzysztof Kozlowski wrote:
> Each schema for a child node should end with either additionalProperties
> or unevaluatedProperties, so add missing one making the schema tighter.
> Defining 'type: object' is on the other hand not necessary when other
> schema is referenced.

Applied, thanks!

[1/2] dt-bindings: samsung: exynos-pmu: Restrict children with unevaluatedProperties
      https://git.kernel.org/krzk/linux/c/3527091de0feb27e437bce175048b54be835221b
[2/2] dt-bindings: samsung: exynos-pmu: Narrow allowed reboot modes
      https://git.kernel.org/krzk/linux/c/e131ca83dabc8bfb8c1d455d02bf2d7a7bc1198a

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


