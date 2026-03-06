Return-Path: <devicetree+bounces-272309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cM2GMYoXq2nMZwEAu9opvQ
	(envelope-from <devicetree+bounces-272309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 19:06:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4298B2268C1
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 19:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 330E5301A2AB
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 18:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7151E3ACF0C;
	Fri,  6 Mar 2026 18:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFd1W30D"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D55D346E55;
	Fri,  6 Mar 2026 18:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772820358; cv=none; b=QP6vezXzO3SR492913lKPnrYfUCPAtv6EsBoB+Bwrxvi04hymhlVsUHtybToJ/CO8p3ycOGT7PLDLeTImfz+I2Q3+KG7dGAJ2X7T27jEp673Wp/ZhBvBkVeXa/LM6XombVukEeoRKV/xAXqAHMLSOfjmr7SepTZj+Ys+8hkfcPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772820358; c=relaxed/simple;
	bh=IygDcXKohU1K+tHMhM4KsbtkEUocwFSeiRZwcISIc38=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cHGW91VLaKetXnjLhNZRK3ccp7ACA/R/cpSvuDwPgVypxVq5j3I+NSrQyXtresrgcyfXjo2tvQ0gT54wWUN5EdQHG/zI9egyUgmctc0QHa/JTqsU4wZRiLFaROJWiClrBdM05oX6ONMJG6vh8j8ECf1UfoEUHDou4Pp4DD3jz0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFd1W30D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA847C4CEF7;
	Fri,  6 Mar 2026 18:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772820358;
	bh=IygDcXKohU1K+tHMhM4KsbtkEUocwFSeiRZwcISIc38=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BFd1W30DQloIPhj2BsMXh4t6JPkRYpJGLbKt0KNmLQJdKzl8E5UdujOxOT1zzRJyg
	 peTl0Yzaob1wjDi7gGg+IBlSMe7JtfEL9rlpjpEVJrlcm9vy4me3EvH+ltd5ZO0y26
	 lZHiGIPsPLfSg5h4gaqL6OklQnG+//IMHssSZ9INP3vzP4zWdaK6Q8Yj0xQMbydEbu
	 HUA4gUFlj43LJVTdg6CQe1xY47f/wU70JaMBUxeR65vLVf7/0w89JbL0FKaf+9d9HD
	 PkMNKubuMC5JL99gG9oNCJDBUoH95TQ2XwC38P4pQtqQSYFRfJ8TP4NqwwjoN9Lu//
	 ZMU+hSQ8uamYg==
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Guodong Xu <guodong@riscstar.com>
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/3] riscv: cpufeature: Add Supm extension id and validation
Date: Fri,  6 Mar 2026 18:05:44 +0000
Message-ID: <20260306-contort-pendant-8ae839e37152@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
References: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=697; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=LaY49zJBvbvl6tvTaufJTQzDycrEND5DwMf0LJ8MZEQ=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJmrxSsu3GuW+3KmyGvPS15bO8Fne2wm7mdhcysz3CC85 mm50Nm6jlIWBjEuBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAExkgxcjw7Y1vs1XZnmwR8b3 HGWPczNbsCDsf1Tzf8ZVwc46TBu0+IEqCqes5c1fdqCC773tKxG37CsTvUNviD7YvNmkoDN1kgo bAA==
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4298B2268C1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272309-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.971];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

On Sun, 25 Jan 2026 09:36:05 +0800, Guodong Xu wrote:
> Supm as an extension indicates pointer-masking support for user mode
> (U-mode). It relies on Ssnpm or Smnpm for the underlying hardware
> implementation.
> 
> Major change in v2 is added dependency check for Supm in bindings.
> 
> As a ratified feature, define a dedicated RISCV_ISA_EXT_ id for Supm.
> However, since Supm is targeting U-mode, it should not be added into
> devicetrees that describe hardware running privileged system softwares.
> 
> [...]

Applied to riscv-dt-for-next, thanks!

[1/3] dt-bindings: riscv: Add Supm extension description
      https://git.kernel.org/conor/c/5932c871e067

Thanks,
Conor.

