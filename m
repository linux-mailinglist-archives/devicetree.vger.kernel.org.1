Return-Path: <devicetree+bounces-320315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WNR5OoELSGqmkgAAu9opvQ
	(envelope-from <devicetree+bounces-320315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 21:20:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B316705153
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 21:20:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Zsqq16SU;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320315-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320315-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E7AB305128D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 19:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AC533264EA;
	Fri,  3 Jul 2026 19:19:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7024C322A2E;
	Fri,  3 Jul 2026 19:19:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783106363; cv=none; b=iCVLbnTGdxDrsIQIAfV1hzTcG3h6HNXyX+o7GSHLMtu7K8YIRBWaJ2VQn0xKdQZS3psrLQEPs2ynLHc29wgGRXKIZQdty/IfGMvjs+/oreZZFDQy7aoGqPzgDNizznZDbDJCCSGH7QK1q94mvzRo+Q8ytNLIaUlAqJrt1+pkcoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783106363; c=relaxed/simple;
	bh=3ln54y7AYCnHAKVcK9OOxnbwpT2CY2v3Z3ZnPKuMFiE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FYfbILZUTtVudLKNl0J17QHQ1ylNK6kzHv3zjbsz8RnfCVJdtVJ7RgAHDtZnhUrOlh5Wo/iQm3+KHr31hvoOK/j9GQkbaDWIqRqgSqj36Qz3wGAeRxuET/Mx4prDxrEX+dRpPVh6k6XDc2Omf8sXR2qWzYQh+ueJJvHVzNjzD/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zsqq16SU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BED01F000E9;
	Fri,  3 Jul 2026 19:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783106362;
	bh=YfSaMiMr3qP+gCrv1tdZBrQS1fKgRIoZC8h3usekZZc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Zsqq16SUE9V7hlU+f3A2NDlsbMW8n2hgI7x0evTjwbytAuQoSHovrbpOdukpwbx0L
	 sfAIGHsxmE+zNNMRXdIXEPbyfuegtKcC6obe1QGnbhSAfj++oo5lvpdbShVoFDCGS4
	 4XC+naxU0siEYXh9pJOAnl3jJZk8qOCc/L2nFgGuzwdvhi58Yiu0AcThG7PE6/FPqO
	 socB7lsmcSBgd4l57HtGU6/Gn1QGS12O2KvG23moIEA7F2mZjNbi5+SaHemYO0+Tng
	 rw1OE2gh1hH1iNeURfxtUvK94LLPE0Gr8A9kp7uEmtatTsAfE03ya1NnfYsBqMTvKI
	 tPDAB5Tk6uTog==
From: Mark Brown <broonie@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>, 
 Matti Vaittinen <mazziesaccount@gmail.com>, 
 Matti Vaittinen <matti.vaittinen@linux.dev>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <akZGe1CaQFDd3idm@mva-rohm>
References: <akZGe1CaQFDd3idm@mva-rohm>
Subject: Re: [PATCH] dt-bindings: regulator: ROHM PMIC state-machine
 voltages
Message-Id: <178309495388.182374.12534087417242175256.b4-ty@b4>
Date: Fri, 03 Jul 2026 17:09:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1141; i=broonie@kernel.org;
 h=from:subject:message-id; bh=3ln54y7AYCnHAKVcK9OOxnbwpT2CY2v3Z3ZnPKuMFiE=;
 b=owGbwMvMwMWocq27KDak/QLjabUkhiwPbvNtZ7Kn563QuabEsKVQwL5q9VShyxdXBJRGNLGcU
 0r9Wh3RyWjMwsDIxSArpsiy9lnGqvRwia3zH81/BTOIlQlkCgMXpwBMZE8rB0NLp8qUkJA2/8it
 eTMnvdapbJfe/kpMn3uNZJRRKtuPuw9Oxusw92kudTdVs97Xw50VkJMVK215Tk2U1z/rmWl9cnB
 v54kv1YvCjr0OyQmJmJDwn+m6x/OmH/Gpvnyu/opXXub2J3Lcyqi5f3nnwqhPjzY55PMr7rGWai
 3jPpti98n90eJ9vOqV/z971R5Qm6nAoXRdeeuB546/5lU+vN674EtVitXNn5MU8mwSVpXzRDhFm
 31Pl+m5/LeO++878ROr14i9ltjTz3nx2bZ9QS6afSKaN4I0dqRqBnKLfd1Y5Hd/1+7QlefOT2l6
 rfKUIfhUhu5889NiRrFPP2378TUk3lxwz6K8ZFPdZgtnAA==
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mazziesaccount@gmail.com,m:matti.vaittinen@linux.dev,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux.dev];
	TAGGED_FROM(0.00)[bounces-320315-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B316705153

On Thu, 02 Jul 2026 14:07:39 +0300, Matti Vaittinen wrote:
> dt-bindings: regulator: ROHM PMIC state-machine voltages

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-7.3

Thanks!

[1/1] dt-bindings: regulator: ROHM PMIC state-machine voltages
      https://git.kernel.org/broonie/regulator/c/f29a8bf6fde1

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


