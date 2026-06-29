Return-Path: <devicetree+bounces-316905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y7i2AIZFQmqO3QkAu9opvQ
	(envelope-from <devicetree+bounces-316905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:14:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E596D8C2E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:14:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gQxCdrYg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316905-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316905-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9246B30300C8
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E05723C4172;
	Mon, 29 Jun 2026 10:09:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D60F35DA67;
	Mon, 29 Jun 2026 10:09:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782727782; cv=none; b=F3w0MaoSkXKrl4gRHfP6R4bvfXvQAKCp/KVI4aiZIJws32xEiqbp5KY4JOjtrUF8tbvhRuMQ06W+ye+hLloylsGPcklGQEbsXbSVJqHI1m9YTYrZRfZtx/sqC6beCBpJs2p2zGDrzRvKGD8zlwN2OoYczcgk851eoCeQrQX84dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782727782; c=relaxed/simple;
	bh=rJ7behxGWlK4N5LOMQ0+yWv9zW0C6Ey1TP3CJDWXHwA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ePaOCp1oN0Y70QCQpfo+4wp7nHM7mnM9MsoR+DrSg8tLeuGIjYU8o9PV5J85hYQFAb88R/zf0u5m6+GKQ6VV2lUOZGOhfiZP6QsWcyclJ1lgWkVcKcN4XrcxCxdDH1STmfxOMTGmbw71xKrvu8GYoDO90pgDrA4dGkJxkactJ5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQxCdrYg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF7791F00A3A;
	Mon, 29 Jun 2026 10:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782727779;
	bh=ebjnWQv6XltAAY8DynSNwP32+/XGXdALp+3/b+dFArU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=gQxCdrYgAbwXldvgcL6PG3ezQ8sIeHf7AdSndy2A1JJr3tIBJMJOtHOAuVmGJO0+4
	 clfjGn88ZIyJdYVk3/CLs07Ccetk6bU+jTQyT8TfMkwQZlhI1Bl5zu0W8nPZlTdaee
	 dFczxm1IWhAJguvxQxjUOZNKrxff9yjZ1b440sgVNxBMcBPCKTIRLSR1hx1Q8qZddG
	 pZFuS+rtFiWUjej5+WWE70L4b4yKvvX4SFC4CBlgX4bwFbuIsbZkmP3dip8pUVVGWY
	 uhiM64WNNGwUZjFe/ZwG1c2x/l/X91rebzPl829H9qVapsVIveuV5WEHOVmtaUmCqW
	 DF5kui8rQIuQg==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, 
 alim.akhtar@samsung.com, kishon@kernel.org, 
 Sanghoon Bae <sh86.bae@samsung.com>
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 sowon.na@samsung.com
In-Reply-To: <20260610050326.2903402-2-sh86.bae@samsung.com>
References: <20260610050326.2903402-2-sh86.bae@samsung.com>
Subject: Re: (subset) [PATCH v3 1/2] dt-bindings: soc: samsung:
 exynos-sysreg: Add hsi0 for ExynosAutov920
Message-Id: <178272777644.113362.12732081976179857200.b4-ty@b4>
Date: Mon, 29 Jun 2026 12:09:36 +0200
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
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:alim.akhtar@samsung.com,m:kishon@kernel.org,m:sh86.bae@samsung.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:sowon.na@samsung.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-316905-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0E596D8C2E


On Wed, 10 Jun 2026 14:03:25 +0900, Sanghoon Bae wrote:
> Add hsi0 compatible on samsung,exynos-sysreg
> To support ExynosAutov920 PCIe settings:
> - PCIe PHY power control
> - PLL settings for PCIe
> - PCIe device direction (RC/EP)
> 
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: soc: samsung: exynos-sysreg: Add hsi0 for ExynosAutov920
      https://git.kernel.org/krzk/linux/c/d3ebfcb66147497c1f6a4ceaed9a499cec2b3fe2

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


