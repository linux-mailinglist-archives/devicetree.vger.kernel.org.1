Return-Path: <devicetree+bounces-300183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEgbLmh/DGopigUAu9opvQ
	(envelope-from <devicetree+bounces-300183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:19:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F9F581475
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:19:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 50EDB30058EB
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D635939C017;
	Tue, 19 May 2026 15:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkDd8+lq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA12370D6B;
	Tue, 19 May 2026 15:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779203487; cv=none; b=C/aP4mGVMJEfM4YnUyMMetrf3YO9PQb5x1JywmZ034IfB8cfXupDGDSAYMrNmd4NnpqAECENoRe7kMxCPrlz2G+quQTDMeZ+i0G/NBoY6QmfrpqcJNxwB7kmKfgKZq0SQkYfwx93GCulLoLA4e5W0+jTxi6NC7tK1fsioRRN3H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779203487; c=relaxed/simple;
	bh=2at4VulYor1uXp41+7kdU+pC5cibXA6o89H6Hc/QgJc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fcKKzj7RPoUMJevreu34I2Qh1Yk6XGRmgjE65hIXMdAfAg8R3N3RXNPJHVodguNp9f0zLRRyVTw/+04GlWpLaI/6ZdCB7MXg+1NadZAWVIJw27cyvWgZlZVSEAo6eKyngvKk4gaP48gTj/SNbhvE68t7THSRj6w7DRzW7Gn9hLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkDd8+lq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74FF3C2BCB3;
	Tue, 19 May 2026 15:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779203485;
	bh=2at4VulYor1uXp41+7kdU+pC5cibXA6o89H6Hc/QgJc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tkDd8+lqTV6I+cj+nU7IpVfQae7SE9jvtrQl70Sk1tedxpIWa5sWv28HWx3DLmNfF
	 AGuaLcCRwGU2Pj7eE2CO5KZtGVlXlqV7rRKfsT6PRw3zBG+ErW+1vJTQuVsWyMaa7c
	 LMAOH0Hx6TMWZoI/qliSR1/Y6kuKooBIM4814qS0xowqjDhiDwk/NyfL9xpG72ZKDp
	 +cewumJuJH4XGgpLlXl3dAlp7GZXtoq8KkLtSSWSdVh2CdfJklWej2Ilj2NIEO6AMX
	 F/7EsuVLTU2IDnhaYlgzc/I3Mr+VXQJjiOSNUAI6iARZz7DHAazv6hN9TVMKp38z5v
	 y//3wn2+t36uA==
From: Srinivas Kandagatla <srini@kernel.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 nicolas.ferre@microchip.com, claudiu.beznea@tuxon.dev, 
 horatiu.vultur@microchip.com, daniel.machon@microchip.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Robert Marko <robert.marko@sartura.hr>
Cc: luka.perkov@sartura.hr, Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20260515115954.701155-1-robimarko@gmail.com>
References: <20260515115954.701155-1-robimarko@gmail.com>
Subject: Re: (subset) [PATCH v3 1/3] dt-bindings: nvmem: lan9662-otpc: Add
 LAN969x series
Message-Id: <177920348320.46651.10379422928987643121.b4-ty@kernel.org>
Date: Tue, 19 May 2026 16:11:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300183-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 93F9F581475
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 15 May 2026 13:59:07 +0200, Robert Marko wrote:
> Unlike LAN966x series which has 8K of OTP space, LAN969x series has 16K of
> OTP space, so document the compatible.
> 
> 

Applied, thanks!

[1/3] dt-bindings: nvmem: lan9662-otpc: Add LAN969x series
      commit: dbb14a8de386286bd986513c89eefedd8471aa45
[2/3] nvmem: lan9662-otp: add support for LAN969x
      commit: e5b013d742acf9894c9ec534bbc8ebf1a3dd3c64

Best regards,
-- 
Srinivas Kandagatla <srini@kernel.org>


