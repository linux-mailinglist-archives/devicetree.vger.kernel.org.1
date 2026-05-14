Return-Path: <devicetree+bounces-297528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJclLFfABWrXawIAu9opvQ
	(envelope-from <devicetree+bounces-297528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:30:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B768A541A31
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:30:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 20FDA3014D98
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B67C93C0A0E;
	Thu, 14 May 2026 12:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDpTez0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912D83DD85B
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 12:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778761806; cv=none; b=IBExuTeomLAV8pWCjAkFWgnpLmw9D22cT59F5fQeu1Qcjion7GN5i4sOy9J7/eBPsfyFOP6if6qyjQqbbDhmoQCkW+6R3abxapEHv/Unou8/o8W+mQlcrw+bG8mNhBf1GJ1hHRcAe7laqw5hA9zIPCniMJl9h7TIoab/A+lX22M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778761806; c=relaxed/simple;
	bh=i9+uTqXoacl7v5Lz6pWBWTjoV9At10lDDPe86RfZ5yM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oiaGDzNyNjuPFScL1JR3ZSMMFD2kVngIbidvURgwYm6PnWMUCam3angmFJrypVFWI4/sITDlVvGYVtVS6GxTEUY9X66ryCJMhsJQW64eyN33vFaKAZ1ko+YcXV1XDLYXt1LeDQya4CZIvKoxRoPfzjN/cvsSiGSMDixzXuCZZ/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDpTez0Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E96CC2BCB3;
	Thu, 14 May 2026 12:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778761806;
	bh=i9+uTqXoacl7v5Lz6pWBWTjoV9At10lDDPe86RfZ5yM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=iDpTez0YfJ4ZIFQfh2TOCvUJaDbW3fb5moHgfkArcjUvHBQ7UE5N52cRH1CXui7ku
	 atXKeOFXsaKYQM9o8Ny3TpOQOwYB4g0k3GLoKRbfC8VQWxg/nriYOKyc509jlQmM+B
	 CEVux/liH9G0OQrz2Cn+Oe2E5mQMxqZDcS3PgsKc86OyAISzFzBebN0s6FPzeEejwl
	 ETctIdF3qqrn3aXYOJ0J27h62tAe9sz8ahR0Z3tokvi+OaygMhuyKtdoMpwP5KPeY4
	 O6R37yfM+4haroWZva8+xtk/XZg3Re2JdJOcU9gXzLdchkuMyQAZFDH9JlO6wmAU2e
	 um+dj96cADSdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/8] clk: qcom: gcc-msm8939: mark Venus core GDSCs as
 hardware controlled
Reply-To: sashiko-reviews@lists.linux.dev
To: "Erikas Bitovtas" <xerikasxx@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260514-msm8939-venus-rfc-v7-5-33c6c6fb9285@gmail.com>
References: <20260514-msm8939-venus-rfc-v7-5-33c6c6fb9285@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 12:30:05 +0000
Message-Id: <20260514123006.0E96CC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: B768A541A31
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297528-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message fails to mention and explain the addition of =
`.halt_check =3D BRANCH_HALT_SKIP` to `gcc_venus0_core0_vcodec0_clk` and `g=
cc_venus0_core1_vcodec0_clk`.
--

commit 4d497cce125abb4eb5e06f88b3056c8f33e326e0
Author: Erikas Bitovtas <xerikasxx@gmail.com>

clk: qcom: gcc-msm8939: mark Venus core GDSCs as hardware controlled

This commit adds the HW_CTRL_TRIGGER flag to VENUS_CORE0_GDSC and
VENUS_CORE1_GDSC to indicate their control can be passed to hardware,
based on downstream device tree properties.

> diff --git a/drivers/clk/qcom/gcc-msm8939.c b/drivers/clk/qcom/gcc-msm893=
9.c
> index 45193b3d714ba..243d31a32e924 100644
> --- a/drivers/clk/qcom/gcc-msm8939.c
> +++ b/drivers/clk/qcom/gcc-msm8939.c
> @@ -3664,6 +3664,7 @@ static struct clk_branch gcc_venus0_vcodec0_clk =3D=
 {
> =20
>  static struct clk_branch gcc_venus0_core0_vcodec0_clk =3D {
>  	.halt_reg =3D 0x4c02c,
> +	.halt_check =3D BRANCH_HALT_SKIP,

This isn't a bug, but the commit message explains the addition of the
HW_CTRL_TRIGGER flag to the GDSCs without mentioning the modifications to t=
he
associated clock branches.

While skipping the halt check is the correct approach for branch clocks tied
to hardware-triggered GDSCs (as software polling would time out while the
hardware keeps the clock gated), could the commit message be updated to also
document this change to .halt_check?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-msm8939-ve=
nus-rfc-v7-0-33c6c6fb9285@gmail.com?part=3D5

