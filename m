Return-Path: <devicetree+bounces-295283-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HMlBwhgAWr/WwEAu9opvQ
	(envelope-from <devicetree+bounces-295283-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 06:50:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D06507E6B
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 06:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CE7533002327
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 04:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE2C355F3A;
	Mon, 11 May 2026 04:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9pbg98y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0F981ACA;
	Mon, 11 May 2026 04:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778475013; cv=none; b=Gzc1XQ6PoRqn5ZPeT1wkm9N4Qugs6Ztd/rLgYHqibX+1QOoQq75vHcbkXB6brvUy0g3Y4yiu1qlrMAiuR3VCimcW5tBQTw3q5LN+Sekf9AqC/I8ZQ8FXKYBoFhzYj3Zanewoc/FgUJWVgbfNAsjEMIuJfrh8qmq+a2SbVyEgrnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778475013; c=relaxed/simple;
	bh=GnoZ5DrKFM2dwnC3dtM4eqBnszt3yJf8/fmsVTycPc4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LH9m0Ac4TKqyfGPNkAYOtLcdBlNeSVFW7QzAZB4/kfEHXFG0cqYPJYtkWqdLIEdDNXB8wrsiRwxwcgJs8KNPfNjB0/wGzp849ITXCVjCPEHR1cAQRyS6qVg87vRejSWsPYsE6MiUsP4uZG7WdBi8ZfJaJHOGOLDN+/7KTX/N/aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9pbg98y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65EA0C2BCB0;
	Mon, 11 May 2026 04:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778475013;
	bh=GnoZ5DrKFM2dwnC3dtM4eqBnszt3yJf8/fmsVTycPc4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r9pbg98yWfAANY7vagM2dyoIedkjt3ZJqdb7g+oG4E6IvDYFsOZR2lxIZpz7ELFpU
	 hGur6lEl01QV8lKAusduQumqUY5iM/uhxZrF+dLMxt2N0yVtVhhzbVvBuxz3RnHYDe
	 y+EwknnyrrN6ZeI2AAXfRN9WsWkMqFhKXzZ55+QH9OFhsJMvLnZfkoAeie9Cxl6cSj
	 XL1M/Lmuu2AGw1BB52wOSDDuJDceO0iI7QX+9gF2JovvVD/gZRKt6kYd/fEQSV+I+j
	 7d+jgfVqWiNr94mbE/fIQNdjU3ro/1yZW3YyZtHZeNKH8wZWj1fX/GhtMN/VFP1Oib
	 9QXwpaw+iHnHg==
From: Yixun Lan <dlan@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alex Elder <elder@riscstar.com>,
	Haylen Chu <heylenay@4d2.org>,
	Yixun Lan <dlan@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dts: riscv: spacemit: correct 32k clock frequency
Date: Mon, 11 May 2026 04:50:04 +0000
Message-ID: <177847498895.951618.10632308286447634075.b4-ty@b4>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260428-06-k3-clk-osc32k-v1-1-e2378da7cb9b@kernel.org>
References: <20260428-06-k3-clk-osc32k-v1-1-e2378da7cb9b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B6D06507E6B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295283-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Tue, 28 Apr 2026 10:57:29 +0000, Yixun Lan wrote:
> The 32k oscillator's clock frequency is actually 32768Hz, so correct it.

Applied, thanks!

[1/1] dts: riscv: spacemit: correct 32k clock frequency
      https://github.com/spacemit-com/linux/commit/3c350f6284d8ea5e7a9648241b2e9604f2262d42

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

