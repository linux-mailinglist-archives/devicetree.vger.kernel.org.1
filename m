Return-Path: <devicetree+bounces-268970-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBaBId6MoGkNkwQAu9opvQ
	(envelope-from <devicetree+bounces-268970-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:11:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAE51AD55D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:11:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D9B99312606E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE3535A3A4;
	Thu, 26 Feb 2026 17:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBA/plYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D5035A399;
	Thu, 26 Feb 2026 17:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772128781; cv=none; b=h/mOFWGajz4zoL35PDLKAtFSQJt0LxXipZWFIZLlTnoS6wQ9vabNlha8Ex4bj0dFR/jKA+4WltMy05TjWtvZlWGbvQfACF5KirDs2WJRZYfyZ80g5FgXJ4gfOBw2P16gZU/6tn/rL5reyKkEpGEK5rhUrdTHaps0Ww/xb9E8d9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772128781; c=relaxed/simple;
	bh=MguRNIbhWjylL2SWFqbE8eKjOmldrw1McpuJdNzjLFo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fRDY6RXBk7UKXeHEwDk6kzWDI5wF7cizs/PgkMtv9yrf0XdCVZz3iBBs2EJWWpGw9cM9yQYwTeBvwubfcmVJstqSyBsBj6b/7Q03bd9Z7vxnALk1BrtiTOqR56gdRV+Tkwo/Nh8t4cysolvZyXRlhPy7bAAwQXUN1MIuD+38fYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBA/plYJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C25F9C19423;
	Thu, 26 Feb 2026 17:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772128781;
	bh=MguRNIbhWjylL2SWFqbE8eKjOmldrw1McpuJdNzjLFo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lBA/plYJDAFSdNwwVIXtZswUeU35DMBZZ8TJu/WVjevrHxn23zh2lMnnE1jtAL1Ob
	 FVffAg8Nw7YGdRMjDSDyJut5OSB6SqFvn2Bne0m8B10y+Wxn/1Msb9f0v1F0rJKQz5
	 ppUOyIFx01v519AcXGN8hD3pzbC8o7tEyg2LC0Frv9VxKylF5fbMJK1Vwsk2nS4VF1
	 znbpVxhWeEnpDb78xoYM6foW0tg5UEjLLV2SHD/D4SV7qtRP/pUgqwTEfVwQiZaiJ4
	 xyN+9huOecMHT11tCa6WgLc8qFRjUFWOikygmiP7cZnSnnF4uv0Zt3JhtNyMLB1GAo
	 nZu71U+jIQvpQ==
From: Conor Dooley <conor@kernel.org>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	E Shattow <e@freeshell.de>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] riscv: dts: starfive: Milk-V Mars CM Lite broken-cd
Date: Thu, 26 Feb 2026 17:58:44 +0000
Message-ID: <20260226-hummus-quarry-41b06f24b38c@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260204101602.30184-1-heinrich.schuchardt@canonical.com>
References: <20260204101602.30184-1-heinrich.schuchardt@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=681; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=Of9jy6dFEc4+vh/AWYv8ShbYQCg6TOxPo2P11DOihTk=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJkLOq+k104oWarIernY4XBV5l95sUPvfKqN5OcLXtrqv 79VZKNTRykLgxgXg6yYIkvi7b4WqfV/XHY497yFmcPKBDKEgYtTACYiMpnhf5r0NeXaK6fn/7/k qLnzpJVQ6dQvgrq/r5V+XfCdSSAnj4fhn/KjFSIhh/9q9i1+usH8lDprY/ZtvXdBjivmtLvZb62 6yQQA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268970-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 3CAE51AD55D
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

On Wed, 04 Feb 2026 11:16:02 +0100, Heinrich Schuchardt wrote:
> The card detect GPIO depends on support by the base board.
> 
> Detecting an SD-card did not work for me with a Milk-V Mars CM Lite
> mounted on an Waveshare CM4-IO-BASE-A board.
> 
> According to [1] SD_SDIO0_CD_GPIO41 is connected to pin 76 reserved.
> The Raspberry Pi Compute Module 4 IO Board documentation marks that pin as
> reserved. The Raspberry Pi Compute Module 5 IO Board documentation
> marks the pin as VBAT.
> 
> [...]

I agree with the stance that the "default value without any overlay
should be one that allows to use  the SD-card on all IO-boards,
i.e. 'broken-cd'.", applied to riscv-dt-fixes, thanks!

[1/1] riscv: dts: starfive: Milk-V Mars CM Lite broken-cd
      https://git.kernel.org/conor/c/4ade402d5d89

Thanks,
Conor.

