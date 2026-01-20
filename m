Return-Path: <devicetree+bounces-257485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNt9G6XDb2lsMQAAu9opvQ
	(envelope-from <devicetree+bounces-257485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:04:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CC80E490AD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 728535E8B55
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CAFC43E9F0;
	Tue, 20 Jan 2026 15:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1kvFrLd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57F643D50B;
	Tue, 20 Jan 2026 15:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768922428; cv=none; b=OOVUDe4txUmJ7bPrNs6TgA0BMVdeBXIt5CtTBE14tt1jevty5RxAUTvnwfabfjUHq5QPop6ErFMcxjRtbXTYYHePqyb/nUdBz11T8lHyTtDDJirfYoYsk3atjKK7VZJ5L5QFc0QRRAaJwcNjHhEuvxpA+kihbJjoIHFBL38qgqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768922428; c=relaxed/simple;
	bh=MOUdXJmW2SXkxw6IWSzxqxK/Zzs5N8aofETvKn7hjh8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DqQOimhgWBmYSSG0mUEuL4hVGXAyazYp/l1buQA/c7b+RUvMvpKDgJxfoCv7djfFNJmp5R3/SJw5p7dMiRC2mhJ/SQHgd4VgoUgXZYztIiK3EtHSMI3eTvR/qfNTdRB6mKtc8tmKwEg+H6OnOC0Ely44f3JaJJIhZ9ca9mDuwhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1kvFrLd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4BCBC16AAE;
	Tue, 20 Jan 2026 15:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768922428;
	bh=MOUdXJmW2SXkxw6IWSzxqxK/Zzs5N8aofETvKn7hjh8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=b1kvFrLdXJs9Cq1mLa7bTBBBZr0MXcG9lg2QwpfYIQVn/P+7iXAFXtLZdPEuiSUzG
	 32hJ+RX87C8vbxtV4XiPquF6BEp7pe7UIlgGA1KcVGRi4U0Vh68cs+bucv61pww9Hw
	 D0tD5qq+Pgk1zGcMJVQkm7Wy8Aoxv9NGI3QZT2IrjKBEyE7Q6bZfGF0/PZ6xUOCI6S
	 a6F5MahbukdbccGIXtpN3giFaQOatnciyJlCfL4j1/T9YlOumDy5ZOPwOu19RPguv+
	 gcFl60GanLNz12uxA6kgSA+WmfS/ndjwgQ7bhbu83igpuAP2fg7G58v7FMeNPJ7OGm
	 txfrbCJeLg9Lg==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
In-Reply-To: <20260119-regulator-binding-v1-1-e55d33b4c3e3@nxp.com>
References: <20260119-regulator-binding-v1-1-e55d33b4c3e3@nxp.com>
Subject: Re: [PATCH] dt-bindings: regulator: mark
 regulator-suspend-microvolt as deprecated
Message-Id: <176892242654.320690.6267653634725620905.b4-ty@kernel.org>
Date: Tue, 20 Jan 2026 15:20:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257485-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,oss.nxp.com];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: CC80E490AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 19 Jan 2026 11:48:49 +0800, Peng Fan (OSS) wrote:
> The Documentation/devicetree/bindings/regulator/regulator.yaml
> already states in its description that regulator-suspend-microvolt
> is deprecated, but the schema did not formally mark it as such.
> 
> Add the `deprecated: true` annotation to regulator-suspend-microvolt
> so that this is enforced at the schema level.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] dt-bindings: regulator: mark regulator-suspend-microvolt as deprecated
      commit: 20c4701b75a3d6ce09d61e17125aefe77e7eb333

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


