Return-Path: <devicetree+bounces-292925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GLaGxOx+Wld/AIAu9opvQ
	(envelope-from <devicetree+bounces-292925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 10:57:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BAC4C8FF9
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 10:57:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD4413096141
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 08:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8865D3A6F05;
	Tue,  5 May 2026 08:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7v3zufe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6426739934C;
	Tue,  5 May 2026 08:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777971194; cv=none; b=uYGgEkj8PGPCAvbVsdLS03ZQW0eloYRw0XG/cOOJiWQCJd5vQ3Cw4E9H470NNmCh8cJC+eAdv+OLVeAIEvAKZxp1ggVoObsev9/xA8xTH2UzsSsOQ1BRan0f/xWrBtRsS0al8USP75OIR2YTLA0Zy59Pa3CbpummO9jL/a9EE0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777971194; c=relaxed/simple;
	bh=+fxw3GWOaW5i1Rt7AYvW9ueNOp4s3QpM81hQC4XSmKg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gUOkno8VX/EUn6I/USX+OY9Ofvdr+IEauuCbwY9RBOFnS4TNFTy5G8SZ6AMHZkJuDhwgrKnMX7eHFZVx7lnjQSPo3PmqAdVhnNl1wuEMV9rGBoK7niwF4RC+zK3H8XZ3T4JSh8/b/jPqw6rN01bR10ffa91eYBYoH7X622y5ZgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7v3zufe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F4D2C2BCB9;
	Tue,  5 May 2026 08:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777971194;
	bh=+fxw3GWOaW5i1Rt7AYvW9ueNOp4s3QpM81hQC4XSmKg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C7v3zufeAcj0HCHyboRNBPRPoEypDLgZ2/fsqe4kAY29sPi9yK78XL9yn1B8PnWn9
	 XXmwuDJrzUFP2sYuicTnATn8FnlXBUc03JW06Gdg1PTzjqf8Jza1c696aXvq2ckCfJ
	 0TSTgA0TY3wilxC51M7CnsoeTMMKtaRZ7vFdo+PnJCT0ETVPKAhZOnVT9GcQ8oPfiv
	 Ps/qO69DBOwnyZB0OAzORt/hKBoPQJaJZIS1dYtGc2tMO+WRfToapd60Ndm0qlUmc5
	 NIEai3nXm8hs0WI5oiLUi13dazLB7qFj1HkC+5kD7+C5KeTnyejHlP2H+y+yOwwIxy
	 acp8eDQLHFnfg==
From: Yixun Lan <dlan@kernel.org>
To: spacemit@lists.linux.dev,
	Conor Dooley <conor@kernel.org>
Cc: Yixun Lan <dlan@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dts: spacemit: set console baud rate on bpif3
Date: Tue,  5 May 2026 08:53:06 +0000
Message-ID: <177797117437.466549.17292861658160797583.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260430-reword-overstep-3be08b7eab25@spud>
References: <20260430-reword-overstep-3be08b7eab25@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C0BAC4C8FF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292925-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


On Thu, 30 Apr 2026 19:52:12 +0100, Conor Dooley wrote:
> Because the default console's baud rate is not set, defconfig kernels do
> not have any serial output on this platform. Set the baud rate to
> 115200, matching what is used by U-Boot etc on this platform.
> 
> 

Applied, thanks!

[1/1] dts: spacemit: set console baud rate on bpif3
      https://github.com/spacemit-com/linux/commit/24c12ca43b12c104389d9a159207d0b25779d0af

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

