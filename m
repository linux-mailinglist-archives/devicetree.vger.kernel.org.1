Return-Path: <devicetree+bounces-317683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id urvxDF2mQ2ojeQoAu9opvQ
	(envelope-from <devicetree+bounces-317683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:19:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B00816E3828
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:19:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lhOHaHXd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317683-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317683-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1E09304AC28
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:16:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95E59403AE6;
	Tue, 30 Jun 2026 11:16:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794923537DE;
	Tue, 30 Jun 2026 11:16:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782818195; cv=none; b=X0ZVhIxi5/C1Xf+LrpqDoZcTS1ES9Wvapj+rN9lULviAg1nCtkc28THwlziU9soEXI7tU05j3BdjfXuHHjysED4wHo8z9BOlBUKwp+jqNuClxhROOMhjkrmlne4ljKMCcd+F2LkVeL2/6miL6LZYLVKUEy+y6FOF9m6/jobrIWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782818195; c=relaxed/simple;
	bh=+/JESTVsFDcoGuMP/FgRRyUeBmA9JLzIgr4Vp6EzN6M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HWu9zpegYHCSTufqhhfXpdFcm5W3BeJsmFz4+vr9t25EXjFpLFflh81vTDtO9uIbKSmHB5CK1m5S+yQTWplWDMfvXrPHW7W/w43hAf1+VHmC/55Z52X3rJscnd+CBgap3v2mH/TL32C5ytlKsZGrrUicBAPkq1fbl5qGobQUJiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhOHaHXd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F9BE1F000E9;
	Tue, 30 Jun 2026 11:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782818194;
	bh=gW8Bndv8QKhGjBf6SmFc2HG7s+OzjKpn0rdNZPfQmiE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=lhOHaHXdwAOtzMatMbWXvAMmH/VRdCeXIYozgkjUCTcJ5LUVIiYp6TpeA7N6nZRZC
	 xN7bCU7e6yvghuleLbKTQcy1FCH9hKutrJou/ycDbCQFX5CeuNT7OWlkotCXl+wx/W
	 eR+GQJArUZ1S7+Rbv8Us8rCnDgG0r+0t0a9wOi1MY79NVAMwoX7RflFgEBLjO5HHmu
	 yR65q57af+0tItc+Cq4v1l5EsG0K7tMAK8GgHa3m5kN+uIW7mWEaPHUIFNbsXOCVLd
	 V+tkynqWTtd91xXsMAQDn4g15zmB/jfeS0WUx6xYIltpxhr5zuoPrmZgos2gGfJQ0Q
	 cCxDQpdK69sWQ==
From: Mark Brown <broonie@kernel.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 david.daney@cavium.com, Ninad Naik <ninadnaik07@gmail.com>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, me@brighamcampbell.com, 
 linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org
In-Reply-To: <20260618180149.475658-1-ninadnaik07@gmail.com>
References: <20260618180149.475658-1-ninadnaik07@gmail.com>
Subject: Re: [PATCH v3] spi: dt-bindings: octeon: Convert to DT schema
Message-Id: <178275394462.47562.15525184882513666560.b4-ty@b4>
Date: Mon, 29 Jun 2026 18:25:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1104; i=broonie@kernel.org;
 h=from:subject:message-id; bh=+/JESTVsFDcoGuMP/FgRRyUeBmA9JLzIgr4Vp6EzN6M=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqQ6WP7aX+WmRfwVyfJ8p/6OJonHaNEPMoxTTFN
 9er12Q4w5GJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCakOljwAKCRAk1otyXVSH
 0AgnB/9R1ftlqt+yfnfefzrGR9DVNQvDxSL4yL6muRaOrN4HzRHSkgHnNrPpnF7rtrpjzcAKwOr
 WWtFJ4WvJQH1z7ahK078iL38SowkEF9vvM1yhDAzanHaZRZRNb7jDXeSc6JWRAKXnpU7+ft48xJ
 rnP0qO/nSC9u9eU+RS1k90GgmAwjl0hrdsY2T7zQv5u2W7cWQXQkwZUx7TrCcpBa1QN3yDp4IU8
 ZLTOvSq+9lag5stqH/RBUBm7sALYiA1HsesqM5H/Z8KIm3llxDhScDEAdbPmt6s7a65fir5REcd
 nt/WSY18EaHL3AJqT2gFNbaAx7yLqXW49Ckd0qm7d1jIamSr
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,cavium.com,gmail.com];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:david.daney@cavium.com,m:ninadnaik07@gmail.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:me@brighamcampbell.com,m:linux-kernel-mentees@lists.linux.dev,m:skhan@linuxfoundation.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317683-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B00816E3828

On Thu, 18 Jun 2026 23:31:49 +0530, Ninad Naik wrote:
> spi: dt-bindings: octeon: Convert to DT schema

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-7.3

Thanks!

[1/1] spi: dt-bindings: octeon: Convert to DT schema
      https://git.kernel.org/broonie/spi/c/cb8c374a632b

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


