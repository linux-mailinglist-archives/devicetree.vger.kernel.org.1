Return-Path: <devicetree+bounces-317686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4p3XF0qoQ2qeeQoAu9opvQ
	(envelope-from <devicetree+bounces-317686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:28:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F106E395F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:28:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gTbg79v7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317686-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317686-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1DF53311E0D0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47155404BF3;
	Tue, 30 Jun 2026 11:17:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B393CC7CC;
	Tue, 30 Jun 2026 11:17:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782818244; cv=none; b=L0WLYhKMxRJWU01cV4thxMugSaVoIQxKOPW3fCdbvOYEHbsVoFMrXfJ0Obl/tTda37QgdmkJb4Fsh/+lnnLFgylx8BDM/3vurnUsd04UCssyvjWbiBVsOAiEXTxLYqOarJAYqdd2usjcNB9qDXgY3xGpQJZZSgIWFxS0lCZj2gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782818244; c=relaxed/simple;
	bh=aKfGsNB/rYGTPsm7SpBmxT4bJNWAAK7ysLKQHTgW/Mw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tkd0UEH9m9fyBODk0UyZu7rwXBjTR4BgVXC/fqVneelVcr1seonLlzcOOo6largEcyxtYJa/EGH5MgbtmkkkG3Q0gzB/6nQacBltnGSYgv/gnEWs2EfE6AKeXFwuIjdlyS2QXlhfqHyM5vuAgifk8Gw/gaZS4AhNAJ+HTtE5mWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTbg79v7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99EB71F000E9;
	Tue, 30 Jun 2026 11:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782818242;
	bh=s9N54Uo+6f5J1Zku+s0K2g8NKpNqzGz70Q4dEIQnIo0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=gTbg79v7L36dOzuM+U/Q7Z6940qK1tdXGz+2H/8P1NvuUDV/jYJ6DQkITZteGIFfo
	 cAarfQxNTchQjbYA3opn7rt6PuK9a6pv4t9+J+gL0PmYzqigTEBIo4+ArloqKlTFJ0
	 vRpiSyjV7XJAu6m6qexbUNX3w2rO/8HTNMRLpuVF6H/byJGpJyTqAqJjrdV8xQWVwQ
	 9+B21NUniZaTikz4V0D0dDZuJT8hsgPl2+5IOqOzKbYmVJVZvFthgi7ZxgtdaWzNM3
	 EN2pAZwFwh+VfLunVBFbY1MEnc+fq+fnwdi/ktroQ2DB+3X0R+/BWBqMxoIqGZLFG0
	 rzttYjZIfIW2w==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Christophe Kerello <christophe.kerello@foss.st.com>, 
 Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260618-add_power_domain_for_qpsi-v1-1-4d7e57bcfb9a@foss.st.com>
References: <20260618-add_power_domain_for_qpsi-v1-1-4d7e57bcfb9a@foss.st.com>
Subject: Re: [PATCH] dt-bindings: spi: st,stm32-qspi: Add power-domains
 property
Message-Id: <178275509841.47562.5600063205070514868.b4-ty@b4>
Date: Mon, 29 Jun 2026 18:44:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1135; i=broonie@kernel.org;
 h=from:subject:message-id; bh=aKfGsNB/rYGTPsm7SpBmxT4bJNWAAK7ysLKQHTgW/Mw=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqQ6W/8GPDC1xFkVsF6UiqKD20ycumS+LocYOKD
 65/p8iixkGJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCakOlvwAKCRAk1otyXVSH
 0E2oB/9bs442EaGu5J0NsN5932LvwU/hGEMRFI69vgX2nSqzxKDXiomxhhgttWGBwer1qQqgEqk
 GdZXoxBHk6EqAnnLNT61lA82YrskrQnJiYlbTIG0yP2CTx5zVGpjE+ksViW8BwAHOCVIsioyxRQ
 wRmIO1Zlt0uJfcvQ3qmpDq+rfiOZpWh9ykGqhfXOYvy03h99+Qy7j850TQAYzIfeYlqoSF7NfQN
 9kBoqJ4dPpKCHjPilVOMYN1Aart81IphDfx3UFRajWFZYPy29+JbERJF7NcyZCSEDQLRpXNC73V
 XqgvXKAjNTIzVQmOrrJ4QK8y68T0LUqvfJ5l9fnDzL2YJLsR
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:christophe.kerello@foss.st.com,m:patrice.chotard@foss.st.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317686-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4F106E395F

On Thu, 18 Jun 2026 08:46:35 +0200, Patrice Chotard wrote:
> dt-bindings: spi: st,stm32-qspi: Add power-domains property

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-7.3

Thanks!

[1/1] dt-bindings: spi: st,stm32-qspi: Add power-domains property
      https://git.kernel.org/broonie/spi/c/7a0d22e632a6

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


