Return-Path: <devicetree+bounces-289658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKm4F5MG6mk/rQIAu9opvQ
	(envelope-from <devicetree+bounces-289658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 13:46:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D12F94516FE
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 13:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69E1530086F5
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E4B37B41F;
	Thu, 23 Apr 2026 11:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REY8dtkd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D152FD7BC;
	Thu, 23 Apr 2026 11:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776944762; cv=none; b=s2JmSeB0YcXuSpFdlXCuvweevGevqV4NNe8wRjnozpj3G8SsvEf2/HZKhNsjtAa47qCdKW8vB8PS5slrJhMNxZSFAL8Czh4F3rVcYWD5HmJ2S42bmlyOFQ/jETN4QxfibWyN+JWUxA0Vxya78vq3+erk5LqVc0Y8KnfNC4hjkWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776944762; c=relaxed/simple;
	bh=FlBRd76Wf4UdbkyU24qsKdC81AKW3AqatiosydymFOw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dwtqMLlaMymR6Ec1KaVn1tYDsFhHrT3lqusvyShuJvKVflyLH5b3w0vsef86GNlvuUv+LT9kguS4WXbrokzGfld1+MYy7PertLAgfIoWl5U1shtbLb4sNQJxguTLu1oMeoqyQ0Ff5Ec0hoELW0PJKH8VPnU8S280of6zRg6mdfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REY8dtkd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0337FC2BCAF;
	Thu, 23 Apr 2026 11:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776944762;
	bh=FlBRd76Wf4UdbkyU24qsKdC81AKW3AqatiosydymFOw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=REY8dtkdaZxdUR6okwtIXOG/XGyWzPkGf0MYf3QwzfvxjV2kpDLd3Ro3+bQx+QQ3u
	 wy/JKltqE4FC61pI61fS2Hgb8wFuSuggGXnIr/GMsrMBtV8utMusBfLm+JEcnFJMSr
	 Lr7kiw0mRhlKf9NmNe5s01IF/iT+OIaCC0heBFuUPru0L7JXhSK9WtaAHdPjQqOmLI
	 f202blDCRAGwXIfdMZPJBdDEW5/yF0sF3elaXYS1g4Lhg2WUvqgKtD5+YTLxRVd7Du
	 YyFKyiSpiiDJAYEh+X0QG93OuXRpVXL6kUgU5Uwu/fGRsgYO/wdN0W03N2Kroml+0d
	 2m63MJmUmpwSw==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org, praneeth@ti.com, nm@ti.com, afd@ti.com, vigneshr@ti.com, 
 kristo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 aaro.koskinen@iki.fi, andreas@kemnade.info, khilman@baylibre.com, 
 rogerq@kernel.org, tony@atomide.com, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org, s-ramamoorthy@ti.com, 
 Akashdeep Kaur <a-kaur@ti.com>
Cc: vishalm@ti.com, sebin.francis@ti.com, d-gole@ti.com, k-willis@ti.com
In-Reply-To: <20260401112257.1248437-3-a-kaur@ti.com>
References: <20260401112257.1248437-3-a-kaur@ti.com>
Subject: Re: (subset) [PATCH v3 2/2] mfd: tps65219: Make poweroff handler
 conditional on system-power-controller
Message-Id: <177694475669.204183.17654636429051313740.b4-ty@b4>
Date: Thu, 23 Apr 2026 12:45:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.16-dev-ad80c
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289658-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D12F94516FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 01 Apr 2026 16:52:57 +0530, Akashdeep Kaur wrote:
> Currently, the TPS65219 driver unconditionally registers a poweroff
> handler. This causes issues on systems where a different component
> (such as TF-A firmware) should handle system poweroff instead.
> 
> Make the poweroff handler registration conditional based on the
> "system-power-controller" device tree property. This follows the
> standard kernel pattern where only the designated power controller
> registers for system poweroff operations.
> 
> [...]

Applied, thanks!

[2/2] mfd: tps65219: Make poweroff handler conditional on system-power-controller
      commit: 0af600b8e3bced37afa267ac9a7f68e15764f502

--
Lee Jones [李琼斯]


