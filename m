Return-Path: <devicetree+bounces-276840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENMFK9GkuWlILgIAu9opvQ
	(envelope-from <devicetree+bounces-276840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:00:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F02B14C6
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:00:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E1A6305260D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479C73F65EF;
	Tue, 17 Mar 2026 19:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoAGLAbt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2498734A3B1;
	Tue, 17 Mar 2026 19:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773774028; cv=none; b=VPAsrujpbUkPy3KxUZbRAkOXSKIEaK+w1Cy3WFI+RWsO/ZL/G7xnVGQeggXJk++y7y3jZsOKKc5ogf7Brrb9YdYeKwUFQoL1pzZXZrCEUJ/genPCn8TtPgrrnoIvpMG4tZKf+IjFNK2JcL6QV3PgoIo/rDKo7Q57Rgwrb9Y0iW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773774028; c=relaxed/simple;
	bh=ZpOunXFG7UJB1+kLtylw05RgGC9wSa/yEZkHh3Kqdp8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=F5MqSvRuZSnPCRWyNJRsJatEdWLPxIoBq0Wd3rK5CsJ/Qjr/Bkh1ojGoOQDUPng5Hfeff5J/fI5BXIb+afnYq1PgKsb7aHD0xAC8orP2S4eRV9XFDHHz3685WJywmdJo2fTmXLtIGntPpB5daAqfmwI9tgAdLwFhqvlMHiZSffw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoAGLAbt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE743C4CEF7;
	Tue, 17 Mar 2026 19:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773774027;
	bh=ZpOunXFG7UJB1+kLtylw05RgGC9wSa/yEZkHh3Kqdp8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VoAGLAbt8sWE9ES4hnhGML0av3V16JcglRiymLxEm1yR5J8/6voWqx0U0eI00TXoD
	 uHHmtpQ3gC5KSE0TMLNfpRwQnH2zuiBbM1nLufbQsNDe6tsKR99Kn8E7mOYJCeFL9V
	 UzSwYbby6WLh55yGuoFwVUETewMXRPFfTgzhf9ZGJ68MYCqWruY7/Cp1iWBpwcC4e0
	 gFuD9c85C2zJDTREOLDyc2btcpiYRb4yOY46vaDaNrN4AyWB4af8jYGNUYUht9HqH8
	 zwf7TVjKH4aNN+1KG7bGUPglMV9DB5CZudFgzXJ8VMKSb8Ti5439Wmn83kY1Blc+kL
	 +3TtAwCodchcA==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, andreas@kemnade.info, Robby Cai <robby.cai@nxp.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev
In-Reply-To: <20260313133102.2749890-1-robby.cai@nxp.com>
References: <20260313133102.2749890-1-robby.cai@nxp.com>
Subject: Re: [PATCH v2 0/2] regulator: fp9931: Make vin-supply mandatory
Message-Id: <177377402561.742239.3128345398754838548.b4-ty@b4>
Date: Tue, 17 Mar 2026 19:00:25 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-e1b5b
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
	TAGGED_FROM(0.00)[bounces-276840-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,kemnade.info,nxp.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 155F02B14C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 21:31:00 +0800, Robby Cai wrote:
> The FP9931 regulator requires a valid "vin" supply to operate correctly.
> Therefore, the driver should treat "vin" as a mandatory supply.
> 
> This patchset updates the binding documentation to mark vin-supply as a
> required property, and modifies the driver accordingly. As suggested in
> the reviews from Andreas and Mark, v2 switches to using
> devm_regulator_get() since the supply is mandatory.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] dt-bindings: regulator: fp9931: Make vin-supply property as required
      https://git.kernel.org/broonie/misc/c/d342f5e355aa
[2/2] regulator: fp9931: Fix handling of mandatory "vin" supply
      https://git.kernel.org/broonie/misc/c/58068932402c

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


