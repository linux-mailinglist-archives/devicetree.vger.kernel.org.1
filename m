Return-Path: <devicetree+bounces-274496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA3mBouAsml2NAAAu9opvQ
	(envelope-from <devicetree+bounces-274496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:59:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 225D426F4F8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:59:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AA8DF3035170
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A300038C41B;
	Thu, 12 Mar 2026 08:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GN/0UJ7X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8062C38BF67;
	Thu, 12 Mar 2026 08:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773305922; cv=none; b=ijDju/wtZHrZiB+FfQxqPHNLuzX6Y2RoODmoeymt1YptKG7gA4F4n2mqsQF5ka0rMZZuA0cSTgCGuIM03fc3p4XoTw0ArvbqblGjbNJQCBoc8UT4VZJ7CMOTqZoJR/SLQuV8560PN6aimpuVI3URIka3ocNeWUcm5RZHUE54Qkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773305922; c=relaxed/simple;
	bh=gzwQbXlxGCgV7ayjoCQc2C/VT8D0c/zVDcxM5EFbBdE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dhZ399Aej5nUZXnhISQwF/K8fCwahoJISesbE7WU9EPoBkfQYsdmnJAJYXZlIvxKsEYmTf4xy70XO0b70PUUVse0uI9WNmemGpA5wgopitiY/gudSMPJSYuhzbB7p2CrX+M3HqDLlxrGYA7N/00EybpQeqA7sDh3rsU/kYYHEDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GN/0UJ7X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F260C4CEF7;
	Thu, 12 Mar 2026 08:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773305922;
	bh=gzwQbXlxGCgV7ayjoCQc2C/VT8D0c/zVDcxM5EFbBdE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GN/0UJ7XfZ0kkoE3uBKLZOt6mJsIegV/pdEjAKaueyy4bmTvDYADf4BVzfysTQ9Go
	 6HihvWbV8OnKnrmI5OSA6FlHEj570vtkzi7hXdBSDBFhwQU6c9/0Csi13xmK2BlSUc
	 +vEeAgwcrxob7hRLsp2a6EaeUe1HwbsM96Qu5tGCaFdrvR7+eLbOyhNCZ9VUgu6b/q
	 /lmF7UwScg+DRwwgPrHZv3oEqqFGd3zDUTsxPh5Jew/kkniBvb6HjBzKWHJcL/T9+8
	 9RNXaJxMWt97UIb/p8duQe07KVd9V1lYzDvKox5lI41TNlZs+9vw189B2DRMZjvsH0
	 jbLB4fkCYYznQ==
From: Srinivas Kandagatla <srini@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kever.yang@rock-chips.com, finley.xiao@rock-chips.com, w@1wt.eu, 
 jonas@kwiboo.se
In-Reply-To: <20260205211901.490181-1-heiko@sntech.de>
References: <20260205211901.490181-1-heiko@sntech.de>
Subject: Re: [PATCH v4 0/6] rockchip,otp: Support for RK3528, RK3562 and
 RK3568
Message-Id: <177330591995.2413713.14025044047873415718.b4-ty@kernel.org>
Date: Thu, 12 Mar 2026 08:58:39 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274496-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 225D426F4F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 05 Feb 2026 22:18:55 +0100, Heiko Stuebner wrote:
> This is a continuation of Kever's from april 2025 [0] - hence the v4
> The original patches seem to have fallen through the cracks.
> 
> Additionally this directly inclues the interal word-size patch [1],
> that was previously listed as an external dependency.
> 
> And finally meanwhile patches for the RK3528 SoC from Jonas have appeared,
> so I've included those too, to get the support for all not-yet supported
> SoCs done
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: nvmem: rockchip,otp: Add support for RK3562 and RK3568
      commit: 9438f599e77795f59571e57c438b28da59e1e5df
[2/6] dt-bindings: nvmem: rockchip,otp: Add compatible for RK3528
      commit: c3c46b2a5bdbe254c6d7546d693a6b3886fd2993
[3/6] nvmem: rockchip-otp: Handle internal word_size in main reg_read op
      commit: 9e7aba140eba2aeb72e65ea778c89a245fa235a4
[4/6] nvmem: rockchip-otp: Add support for RK3568
      commit: 11e01bcb827d369344f7f0e960698d33db9ced5a
[5/6] nvmem: rockchip-otp: Add support for RK3562
      commit: e482a8d8a0b4fef407084da1d6a00ad86993e7df
[6/6] nvmem: rockchip-otp: Add support for RK3528
      commit: 85e2134182e21dc9550a1e316d690b1dda52d8cf

Best regards,
-- 
Srinivas Kandagatla <srini@kernel.org>


