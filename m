Return-Path: <devicetree+bounces-257469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aP+cAFLAb2kOMQAAu9opvQ
	(envelope-from <devicetree+bounces-257469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:50:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A74F48DA6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0BBC798D47A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033BC441028;
	Tue, 20 Jan 2026 15:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsKIMcRL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF7D2EBDD9;
	Tue, 20 Jan 2026 15:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768921245; cv=none; b=S4EmJTARfMOsS7t3R6lpwXpSPKl8s6KmcXJeD60xEUstfZs/ZxKzESaVMuk6vmh3vFoZNyVL/+Yklq/bT8h22CPTjACiwFiYET+3rEzDmKX8qHc8nkMj1+M4fvwLCcEE2GgbYhwpzOCV5Ol8vNhvA2BZtlU1AdUIXdi7dK8/JSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768921245; c=relaxed/simple;
	bh=+emPDXpQmKKz6bMWTLUYNLMNyJcpfWYBtJXaLaKBvpU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=amJfEVLrCoJf2EQkI+9bPIW2NzMDlJJ6V9g8ZdSwH4XLlJ1k1zNlYkL71qR0Lw2p4MR4PcSRU8nj2qOwooOpyIsjvKphoP56OkSwaFlfvmCfvWVQNqWCKFdYHf/t9s1tEWWB5J3aPybxpbv+HQoxPw0c8zMD1Y1RsAVft5wzz7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsKIMcRL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9864C16AAE;
	Tue, 20 Jan 2026 15:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768921245;
	bh=+emPDXpQmKKz6bMWTLUYNLMNyJcpfWYBtJXaLaKBvpU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JsKIMcRLL9OzB8pMebonIu8h9YMLxwWFNlLDnnSHkwdUPZqU50DI9cBUjP7oETmC3
	 SxmvEynZ4oxVYz1H/5bbGOWWrNTXU1P7XsjS3QNaZg83C0WerWi5+zWPJ1F25j81dE
	 7tH5j2vNughw/NJtCEF4KIrVM+zDPcGsQxvj032ZBNeSKoF7vi88Wx2PwZ9fDu+6Ab
	 DgJQRkEl0g+74XT18Gu06lUnJnDPwem78VX4LJkexBa4/xnqsoMw9wz5AcjfNUUWoF
	 LRI5ceMfPuQsOMJSabjfKVRsBxwANZ3tRrd8KGliEFwF9mStHMlMj4yQGma4Fx/eli
	 CuDAhLaxnXtdQ==
From: Lee Jones <lee@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Joseph Chen <chenjh@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20260112124351.17707-1-chenjh@rock-chips.com>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
Subject: Re: [PATCH v3 0/3] Add RK801 PMIC support
Message-Id: <176892124246.2259507.3674990175192687595.b4-ty@kernel.org>
Date: Tue, 20 Jan 2026 15:00:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257469-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,rock-chips.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 8A74F48DA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 12 Jan 2026 20:43:48 +0800, Joseph Chen wrote:
> This patch series adds support for the Rockchip RK801 Power Management
> Integrated Circuit (PMIC) to the Linux kernel.
> 
> The RK801 is a PMIC designed for multimedia and handheld devices. It
> includes:
> - 4 BUCK regulators (DCDC)
> - 2 LDO regulators
> - 1 SWITCH regulator
> - Interrupt support for power key events
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: mfd: Add rk801 binding
      commit: a8a2add7b1889f00bc5d2b1f25fad34e89ef85fb
[2/3] mfd: rk8xx: Add RK801 support
      commit: 156442eb6e44d545f09559bd70c5b31fba39eb01
[3/3] regulator: rk808: Add RK801 support
      commit: 3e10bbd9c8a6d5d016b8e52c5d4ceba93a2304a0

--
Lee Jones [李琼斯]


