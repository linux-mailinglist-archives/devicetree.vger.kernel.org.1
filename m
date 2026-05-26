Return-Path: <devicetree+bounces-302939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMCaJv9mFWqVUwcAu9opvQ
	(envelope-from <devicetree+bounces-302939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:25:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E91105D33F9
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:25:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C16C83016ED6
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38DD33F5AB;
	Tue, 26 May 2026 09:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNCZwn6v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B86C3D3492
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 09:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779787088; cv=none; b=GLGiiHUjFPYtFySXzIsgMXOya3VX3w1RnxQ65qzm+qtjcIkdZGuKLAhD/JpkTtVOJZWL3jFGPYPhug72l2dr3+eg3tMXiQOLmY6PPd8V+fcbiMD6gtJnIQ91mzqo2oNCeByw0+XtrjY+jN+ZNttClJoFCMTsatq1wztJpb8HOt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779787088; c=relaxed/simple;
	bh=HaCHpZ8Jvr+yhV/3zlly2KZcPGlzsNeDwNvZeKaEb9A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bsXOSvigc72rJORD+pBnA2QJYx0MW1/tmO8rlKjQ+9BO4K0+dWj+72nGQs7rnj6+J4Jw/yXBbkFHaLREWZT/nHHTeNAIzOT/P3BY1zqjkh6LCk/WPuw0LIDrpH003yI6gsRPWtm/n79EYbs3DSfrHk9NoeCwP+jx6LKuOBUW/9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNCZwn6v; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 974891F000E9;
	Tue, 26 May 2026 09:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779787084;
	bh=Idn2QWCE2Hph4NT9PLQI+/aoKLgElIcn1Ab2J3XR5Kg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BNCZwn6vYArXG7TxPEc1kSoVK1EHVQxcK2NDpfVMRDzoosdHX/RJ9BC2Aq5N5VS9T
	 lheP3Qc2NcyLWfudNRUjdZZRRI4MqnHEMHw1EMZ5s+q9hD4OllTKC/Nw2ZrIdA9iV2
	 slWmbHSWOxU9H3tJfSqFjiEGEE5S9Kyu6s4UEs38Aa7PMqvmOCfVebAalQXxxKF8Iw
	 fkfsuuyZlcFRY31SbdzByvGaFURRXASH+LC3O90CWqqbRZVE6bbe575IFJFDnwLcZN
	 x7u1M4PGcRqIxTuzuB4J34/euopvvFJFfBYTDnoIm+w1vUGiz1cLam6/UiwANEWauo
	 BHFB9oDgCac7g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC RESEND v5 2/6] firmware: meson: sm: video firmware
 loading via secure monitor
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhentao Guo via B4 Relay" <devnull+zhentao.guo.amlogic.com@kernel.org>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, linux-amlogic@lists.infradead.org
In-Reply-To: <20260526-b4-s4-vdec-upstream-v5-2-33bc817f93f4@amlogic.com>
References: <20260526-b4-s4-vdec-upstream-v5-2-33bc817f93f4@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 09:18:04 +0000
Message-Id: <20260526091804.974891F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302939-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,zhentao.guo.amlogic.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: E91105D33F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch series is incorrectly ordered, separating the enum declar=
ation of `SM_LOAD_VIDEO_FW` from its usage, which breaks `git bisect` due t=
o a build failure.
--

commit 7da77dd38d2ea56fe7b57e246847b5cd118fd85e
Author: Zhentao Guo <zhentao.guo@amlogic.com>

firmware: meson: sm: video firmware loading via secure monitor

This commit adds the SM_LOAD_VIDEO_FW command to the secure monitor
command enum. This enables decoder drivers to load firmware through
the meson_sm interface.

> diff --git a/include/linux/firmware/meson/meson_sm.h b/include/linux/firm=
ware/meson/meson_sm.h
> index 8eaf8922ab020..f40867a000f10 100644
> --- a/include/linux/firmware/meson/meson_sm.h
> +++ b/include/linux/firmware/meson/meson_sm.h
> @@ -14,6 +14,7 @@ enum {
>  	SM_GET_CHIP_ID,
>  	SM_A1_PWRC_SET,
>  	SM_A1_PWRC_GET,
> +	SM_LOAD_VIDEO_FW,

[Severity: Low]
Could this patch series ordering break git bisect?

The previous commit 087141e411e53 ("firmware: meson: sm: Add video firmware
loading SMC call") uses the SM_LOAD_VIDEO_FW command, but the enum value is
not declared until this subsequent commit. Checking out the previous commit
would result in an undeclared identifier compilation error. Should this
declaration be moved before its usage to maintain bisectability?

>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526-b4-s4-vdec=
-upstream-v5-0-33bc817f93f4@amlogic.com?part=3D2

