Return-Path: <devicetree+bounces-267841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOVWDymOnWkXQgQAu9opvQ
	(envelope-from <devicetree+bounces-267841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:40:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7228B1866CA
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:40:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9591F303A91E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABEE837F724;
	Tue, 24 Feb 2026 11:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uzzkmfv9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D8E37D116;
	Tue, 24 Feb 2026 11:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771933109; cv=none; b=uHa65n6F7BcU/rgflQQtv2vyY3SC3AXJMPLcCHOPVXWtNigjq8GeXq3THAdrLrCL+fiI2RyEzT4SdpzQvowqV8YxxhMdOuFXWLsN26dak2mUysv3UOJvzdbAyltIC5VvawU3zCkyluKayrOI72W+F80dAys4u5mDo60Fwnd9Q/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771933109; c=relaxed/simple;
	bh=QS7CNJiQG7B9ALbJjQUVylSiRh7zGL57LuSxHqmBi4g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=O3iwE05sP0S7Bth7c4PfW7ElP6T+Fgj6m1TDtKrI9z69M+a7oWDBR1hMQfUVvtyOoqSYdXTjjqx/P0Xjg4kDvCP6UAM4y9GGkZTH1HNuIBHyEEP9UxR6Ie9sp+HWVPCmGok4JA2BgAsaNlJWTAjZEEyNTeH7DoUtdkX/phihCKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uzzkmfv9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86878C116D0;
	Tue, 24 Feb 2026 11:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771933109;
	bh=QS7CNJiQG7B9ALbJjQUVylSiRh7zGL57LuSxHqmBi4g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Uzzkmfv9bpJw09ktqybI8ICbNfnuTktHHxwRhi04Y1J6PsGW8WbVaybZVCjX8ew6V
	 DY4cNvK6ZLnzyFuYtMktlLe+GuDpUgHOqc3M4EFt1ibnbV7CgW2b9p26co/D5ACXJf
	 xw8TQqmSY0T1n14XTCKiK25sBkG2P2j38JJMX13rUJJrbOoll5GgtH7CToUNQ4/qFj
	 k/ZF9UggSm2nZjFEtAU6GR3x0yobir3FAJvXwcEyZtD/Gb8KivZHv6b9AWT0gL7FR9
	 fQ/TBtTXhaUDBtry4Y3U07gDQLxpOaEWdYFPkZJBH726qnOqZ0aDGWhkc/w0gBXWpv
	 jEr75bdsf+SPg==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 jesper.nilsson@axis.com, lars.persson@axis.com, mturquette@baylibre.com, 
 sboyd@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com, 
 cw00.choi@samsung.com, Ravi Patel <ravi.patel@samsung.com>
Cc: ksk4725@coasia.com, smn1196@coasia.com, linux-arm-kernel@axis.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, pjsin865@coasia.com, gwk1013@coasia.com, 
 bread@coasia.com, jspark@coasia.com, limjh0823@coasia.com, 
 lightwise@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com, 
 shradha.t@samsung.com, swathi.ks@samsung.com, kenkim@coasia.com
In-Reply-To: <20251029130731.51305-2-ravi.patel@samsung.com>
References: <20251029130731.51305-1-ravi.patel@samsung.com>
 <CGME20251029130826epcas5p180506ff38fb57ecca0e33b2f5c57ed6c@epcas5p1.samsung.com>
 <20251029130731.51305-2-ravi.patel@samsung.com>
Subject: Re: (subset) [PATCH v3 1/4] dt-bindings: clock: Add ARTPEC-9 clock
 controller
Message-Id: <177193310325.54679.15908657347853584387.b4-ty@kernel.org>
Date: Tue, 24 Feb 2026 12:38:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267841-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7228B1866CA
X-Rspamd-Action: no action


On Wed, 29 Oct 2025 18:37:28 +0530, Ravi Patel wrote:
> Add dt-schema for Axis ARTPEC-9 SoC clock controller.
> 
> The Clock Management Unit (CMU) has a top-level block CMU_CMU
> which generates clocks for other blocks.
> 
> Add device-tree binding definitions for following CMU blocks:
> - CMU_CMU
> - CMU_BUS
> - CMU_CORE
> - CMU_CPUCL
> - CMU_FSYS0
> - CMU_FSYS1
> - CMU_IMEM
> - CMU_PERI
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: clock: Add ARTPEC-9 clock controller
      https://git.kernel.org/krzk/linux/c/6974ae5aa23b7f37182da6b66d7f58313a55a88e

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


