Return-Path: <devicetree+bounces-297379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHymEzqSBWrfYgIAu9opvQ
	(envelope-from <devicetree+bounces-297379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 11:13:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFE053FA41
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 11:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25812301DCE7
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 09:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1773B3BE5;
	Thu, 14 May 2026 09:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uN6uzTMi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3E4330662
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 09:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778749933; cv=none; b=BsLMY6ert6qcqELGPZpW/tUEp+Sb1+QRZLzaXtFvHk0DR9WMIlh/nEqU/ubVkiTLqU+VtVaYTtvO3N8Oh4Y23Mvvs+TirOFDtp/9alcfLcQocmYgHXM24pyMwuuj1Wm02KR0qc99Es0/rHGLyMtaGXNu5EaBZnGd+cT9n34FvpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778749933; c=relaxed/simple;
	bh=N59S8Z7Nk8RYnpIxIuxLjgOW6CFqKx/TLOqcwnnmKB4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nPid3Vjv9MC5JzoakEHBgN4iMZOrkYeQygNw6oXn8cSRNW9gbvtic7KMzcqST+SWPiF1O4cDMYfVBx9NTCfyvQQ6PikbQ4S90dPT599pNJtBPbm64AmPHgzRfM61/x9MiXEoF1UNBfAIPCosfbIA/ELa5lOuXBwizedfNs2lnlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uN6uzTMi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E77E7C2BCB7;
	Thu, 14 May 2026 09:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778749933;
	bh=N59S8Z7Nk8RYnpIxIuxLjgOW6CFqKx/TLOqcwnnmKB4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=uN6uzTMi8yUeq+qTwG7CNJ0NM+BEptLUCiH/cKnfSK61w2HQTvo98ckKcT27CfYNP
	 HXEGyGyCQcZx74IxRa3dNov2L65QRHYRBzvzj5CeR1NSQk0bs2uBeTyC2CiBWty687
	 nL0HRejgDuyeiKlCWHE8udD810yNx1atHxHasTvQnkDLARYqYqfISQ4st2LN59ROYz
	 nVs9rIXctNdpIxuPbTO2cE3KcGBJxxAP4OL2iXq4/0vhxAWhvJMsK/HbGpED0YC5oO
	 HNC33WQOeHWIlpZtJ9sw1qGNhCwkNOLftJ+VskzabO82Gshxcx58McFr41A8ZRn+N8
	 P5gdvtGkmiYWw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/7] clk: qcom: videocc: Add video clock controller
 driver for Eliza
Reply-To: sashiko-reviews@lists.linux.dev
To: "Taniya Das" <taniya.das@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260513-eliza_mm_cc_v2-v4-4-e61b5434e8d9@oss.qualcomm.com>
References: <20260513-eliza_mm_cc_v2-v4-4-e61b5434e8d9@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 09:12:12 +0000
Message-Id: <20260514091212.E77E7C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: ADFE053FA41
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297379-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] CLK_ELIZA_VIDEOCC specifies `default m if ARCH_QCOM` while related =
clock controller configs for the Eliza SoC family do not, creating an unint=
entional config imbalance.
--

commit 1383015319c741eb9fd0f648734c02b213d23ae0
Author: Taniya Das <taniya.das@oss.qualcomm.com>

clk: qcom: videocc: Add video clock controller driver for Eliza

This commit adds support for the video clock controller for video clients
to be able to request for videocc clocks on the Eliza platform.

> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index df21ef5ffd686..f44ec81560203 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -45,6 +45,16 @@ config CLK_ELIZA_TCSRCC
>  	  Support for the TCSR clock controller on Eliza devices.
>  	  Say Y if you want to use peripheral devices such as USB/PCIe/UFS.
> =20
> +config CLK_ELIZA_VIDEOCC
> +	tristate "Eliza Video Clock Controller"
> +	depends on ARM64 || COMPILE_TEST
> +	select CLK_ELIZA_GCC
> +	default m if ARCH_QCOM

Is it intentional for CLK_ELIZA_VIDEOCC to specify default m if ARCH_QCOM
while other related configs for the Eliza SoC family (like CLK_ELIZA_TCSRCC
shown above) do not?

Since CLK_ELIZA_VIDEOCC selects CLK_ELIZA_GCC, the default configuration wi=
ll
build both the video and global clock controllers, while potentially leaving
other peripheral controllers disabled by default.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-eliza_mm_c=
c_v2-v4-0-e61b5434e8d9@oss.qualcomm.com?part=3D4

