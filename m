Return-Path: <devicetree+bounces-319592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pbnnC3u9RmrtcQsAu9opvQ
	(envelope-from <devicetree+bounces-319592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:35:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 953BB6FC8D4
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:35:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chaosmail.tech header.s=mail header.b=TliEX+k5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319592-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319592-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=chaosmail.tech;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0EDBC3024E61
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773E3390218;
	Thu,  2 Jul 2026 19:35:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.tech (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5EB38F621;
	Thu,  2 Jul 2026 19:35:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783020920; cv=none; b=aII8iEHj8Ck7JE4snYtypXvWSx3Zh+Y2532fLhkFsucEoen8TcXmTCy9cHXeRPTmETC+sMDnb/3ojUDN2yDAXfi7ZleXMZvsqTsyqXrrq4wCZWN4nt/ARXTXicJaf1zvC8byRWsTvbQ89eNBsjapDstvKlxforjA9tSpsvApqBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783020920; c=relaxed/simple;
	bh=Kj18O54fK1pbDk2eoxrRJzyCFomk/x4UshRjF1lmSjI=;
	h=Content-Type:MIME-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=LwooR3RvdKnvVt6LbPYG+g39eznHCblhB3JJtIHq1pR/5AEuRC4uZG0tCoypO1TsTa0smAbhCRTz84LH2e3eK1NTUbSlPVoj+MPmzx9dXbRpJn/jbuvWT4M7FcUfCrgSxZrf13RcSH+G/Nm3OYfSA+vbNE7eJBl2BnSCV8+dfiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=TliEX+k5; arc=none smtp.client-ip=77.81.229.115
Received: by chaosmail.tech (Postfix) id C7EB21C888A;
	Thu, 02 Jul 2026 19:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1783020916;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kj18O54fK1pbDk2eoxrRJzyCFomk/x4UshRjF1lmSjI=;
	b=TliEX+k5ea3vKtsVz0nJMU/ZYYQuehaNekOASgLfittsbS+fidYCkYblpCH5eQa9+hvMki
	t5EFWBF+dIIqls2s8jeCCzcOl9GzYdGttmSyrDyY7LSzqMShJnemV1wrzPC/loe9WcvhG2
	rMs3IrWYjRAVmw7Fq7AEYQVlxbPxUE0=
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] dt-bindings: soc: apple: Add bindings for apple PMGR
 misc controls
From: Sasha Finkelstein <k@chaosmail.tech>
In-Reply-To: <20260702-kitchen-census-d79e1abb9f36@spud>
Date: Thu, 2 Jul 2026 21:35:05 +0200
Cc: Sven Peter <sven@kernel.org>,
 Janne Grunau <j@jannau.net>,
 Neal Gompa <neal@gompa.dev>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Message-Id: <3B16D291-0C5D-489A-B8F7-60ECCB85141E@chaosmail.tech>
References: <20260702-pmgr-misc-v1-0-4f075a3a95c1@chaosmail.tech>
 <20260702-pmgr-misc-v1-1-4f075a3a95c1@chaosmail.tech>
 <20260702-kitchen-census-d79e1abb9f36@spud>
To: Conor Dooley <conor@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chaosmail.tech,reject];
	R_DKIM_ALLOW(-0.20)[chaosmail.tech:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319592-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[chaosmail.tech:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,chaosmail.tech:dkim,chaosmail.tech:mid,chaosmail.tech:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 953BB6FC8D4

On Jul 2, 2026, at 21:18, Conor Dooley <conor@kernel.org> wrote:
> Are t6000 and t6020 the "certain Apple SoCs"? I assume so. The bit about
> "existing SoCs" is confusing in a binding (although it would be ok in the
> commit message), because you run into language semantics that imply that
> this sentence is about devices to the ones you're addressing here. I
> think you can just do s/. On existing SoCs//. And add an s to the final
> "state" to make it "states".

t600{0,1,2}, t602{0,1,2}, t603{1,2,4} (no upstream DT for those yet)
It is kind of a long list, with most t6xxx ones on it.

> "dcs" means memory controller then?

It is memory controller related, unclear if this covers the entire
controller or a subset of it. The name comes from Apple device trees
and macos kernel logs


