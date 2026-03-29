Return-Path: <devicetree+bounces-282099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EFADbAnyWm/vAUAu9opvQ
	(envelope-from <devicetree+bounces-282099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 15:22:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8898035235F
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 15:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A681A3004C9B
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 13:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D44CF374722;
	Sun, 29 Mar 2026 13:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAtJFWNG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1921372692;
	Sun, 29 Mar 2026 13:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774790569; cv=none; b=S8aNebVLsVgfMQaLzWtscs64aeIM6G2kZh9te8+Ujgr7HSs89cPxXT9o7dOymMjOrB2XnEM7cVsltTTlNZMgl4QtfOsWlo9Gt5kjDLImkVFZCJDFiwX2uf6adKBax/mvNbuQQxPJhJnwjGJL37mRhaHE+2ODBJPZ8hCnxEENKOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774790569; c=relaxed/simple;
	bh=BoDuH3kwc9HtdZAeOJWHQn5qzdnPMryGq5rPy9i2YGA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qr25iTx6GSSZfdI1D0hhpC0qDwOf3X4Bf50vz1kv5Uhuko83WBjG6LsHhyqNYtk578ewJYin+ooiUweRRIsFUBrIRsBt42vjhdtLbOE0PBfnD4CFkWSafXzvDX60FjfMEEhPKldepDYWAgh95anUTnGL2USSMbsk9ahOG1kYAcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAtJFWNG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02E51C116C6;
	Sun, 29 Mar 2026 13:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774790569;
	bh=BoDuH3kwc9HtdZAeOJWHQn5qzdnPMryGq5rPy9i2YGA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PAtJFWNGvuUNWYYK67pOu1ueKBBJMkcJrDnhO9KdzSZrOZPP19aIdrhgTxnkopXnt
	 aUoLTmXKyCB4DVIRoh2eKKTfPoRSTgV/76YZc6KrVWXf5ayRwinbdgyofrmn5XgbQ8
	 Dh8rWeISDsMvnbREPqvnQzPyr8pq8XhjArloiRN0LmJEdlcbSG0/go0WQiDyPgEBfq
	 LZyn8tVx2WD41A6p+oprE5RwA2bTkQjMbBhXYhdhiHdgU9Q9jKVLW1tCgzoAD4Xj73
	 chBJZxCdRdYlkGnzs6LMfQwjaYSAZFUlxWACjHcfKp0UsyOYhKiBJVdCsaS4PG9TT/
	 bdoImMPace2Vw==
From: Chen-Yu Tsai <wens@kernel.org>
To: Jernej Skrabec <jernej@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260324161930.1602083-1-wens@kernel.org>
References: <20260324161930.1602083-1-wens@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: allwinner: sun50i-a64: add UART DMA
 channels
Message-Id: <177479056775.84952.18274647332056749333.b4-ty@kernel.org>
Date: Sun, 29 Mar 2026 21:22:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282099-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8898035235F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026 00:19:28 +0800, Chen-Yu Tsai wrote:
> All the UARTs support DMA and are hooked up to the DMA controller.
> 
> Add the DMA channels for the UARTs
> 
> 

Applied to sunxi/dt-for-7.1 in local tree, thanks!

[1/2] arm64: dts: allwinner: sun50i-a64: add UART DMA channels
      commit: 1e80a0367bca7ffe3dfff41948474fe3c3ad3587
[2/2] arm64: dts: allwinner: sun50i-h6: add UART DMA channels
      commit: 2e4858d2f027080827c5fc557306a06fbfcecd0a

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


