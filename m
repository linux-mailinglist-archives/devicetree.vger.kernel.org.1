Return-Path: <devicetree+bounces-273045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NRhLMv/rmkLLgIAu9opvQ
	(envelope-from <devicetree+bounces-273045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 18:13:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B0223D784
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 18:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1224430013BE
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 17:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBC93B8BA8;
	Mon,  9 Mar 2026 17:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2xTumDk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EF51DC9B3
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 17:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773076413; cv=none; b=UgE558n21ibeijB6nUE+FSj6DXF06WSnXz9ws69rAphrkL6Z5F5OY2N4eWZ4OIaESwqBJeafMa2VVR3FbkzFfKTwVKrThfSkvTbSZe40i3+Gx2pX8WDzPRdW3vTEyaY7cWDcdKSJq9KDUfEZEGCq9Gtn1/GrDKj1Pw89y0B6MyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773076413; c=relaxed/simple;
	bh=m1cVy7eQ8GDya9lLy7x+5ZtvqLPE1O4wHaYP8ujdihw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fqrs6zN7frGZrHDydft3jOgIQ+cMMQ6mIj+RiFa4f3Y75j8/KB5ONc5pU+Va5zwTi4kfzzgulodfXM04NWQsIvpYebWmBlQ+bNnqdWYC98W1hmte3m8ON7tiKVpxs4W10UCBte2Mxe7X1XYzvFZZgXypJ4atA4+KxW6cajvZCiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2xTumDk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0726FC4CEF7;
	Mon,  9 Mar 2026 17:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773076413;
	bh=m1cVy7eQ8GDya9lLy7x+5ZtvqLPE1O4wHaYP8ujdihw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J2xTumDkj/AabHg09QNfbQipuGs+ytESytb8yZzcD86Lb+P2ltzE59rZsXdRYrT+J
	 gXlh+vl0eOWroDrTEHpVBMfhp05niy4OMQTXhSJCfA3A/K573MBDjkH5V/IJ93i8BB
	 A3GXXavWtJmFctXqjaHq8oegepZ7WOtyGaA9ezQn0/EmdgTsCY+U1/DblT/TnA+/+R
	 vvqaBoZuEZ1nQqtVftRyNZBaQkdViS4duGRYusBDh1ZqPC1XLMXNFYr1BD70SFCjz4
	 YImiWvADQq3fPSql12yp99WJCmTcgZaI5l6w1kPdfD0L0TjNoPvcairzScBEvro8yT
	 SaJnfmvZkItlQ==
From: Conor Dooley <conor@kernel.org>
To: devicetree@vger.kernel.org,
	Ilya Sorochan <k0tran@altlinux.org>
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Emil Renner Berthing <kernel@esmil.dk>
Subject: Re: [PATCH] riscv: dts: starfive: jh7110-common: fix jh7110 SoC boot from SD-card.
Date: Mon,  9 Mar 2026 17:12:41 +0000
Message-ID: <20260309-handyman-unproven-5a82536183fc@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306171939.84568-1-k0tran@altlinux.org>
References: <20260306171939.84568-1-k0tran@altlinux.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=638; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=1HUXXnqlcZdaVDp4jW4uTnyVBlNt5Vh1+ZFUmvH+Tl8=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnr/ne4aa/Z+6NlcfpE/3XxOw7GstsGh9WnPO3NqVXX5 5netdezo5SFQYyLQVZMkSXxdl+L1Po/Ljuce97CzGFlAhnCwMUpABPZXMHwv3grRz1X78ziz7o6 XOuDY9f833MhsjiVQeqG84Nnt2u2cDL8M9l2W+qNFGuCinz116X/3PtNT0Su+svzT1n+IdsT7g3 TmQE=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C0B0223D784
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273045-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

On Fri, 06 Mar 2026 20:19:39 +0300, Ilya Sorochan wrote:
> Add bootph-pre-ram to mmc1_pins clk-pins.
> 
> U-Boot pruned their overrides recently in favor of Linux which broke booting
> from sd-card for me and Heinrich Schuchardt [1]. Pruning commit:
> 27f617019dd070cb61f2 ("riscv: dts: starfive: prune redundant jh7110-common overrides")
> 
> [1]  https://lore.kernel.org/all/ffdfc550-559b-4c59-9873-3f040fc3bb0e@canonical.com/
> 
> [...]

Applied to riscv-dt-fixes, thanks! I modified the commit message slightly.
I opted to put it on fixes, in the hopes that it gets to U-Boot more
quickly that way.

[1/1] riscv: dts: starfive: jh7110-common: fix jh7110 SoC boot from SD-card.
      https://git.kernel.org/conor/c/cb3a0cd307b8

Thanks,
Conor.

