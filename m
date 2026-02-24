Return-Path: <devicetree+bounces-267785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKFyKI9wnWk9QAQAu9opvQ
	(envelope-from <devicetree+bounces-267785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:34:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19599184AA4
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9CF2D30A5DD2
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C1B736B07D;
	Tue, 24 Feb 2026 09:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="YwrzvLGb"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4112936C0BA
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925642; cv=none; b=F5Uni7h3nWvaDeb3aBSq0MSvZWhpGrplveCcO3fj74LN4MNcA5dWTLenlAH3LN8GmpN78sxsF2UmxCRgO76XhXjaBWIK1fONdO7ZSaoFM+Q2Ej4hFsURwRMYNRf/hJnNg+9ksyYTr68kq0gnfBYufd95/cAK2B0rGqhFQUTKIHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925642; c=relaxed/simple;
	bh=9ncs5mU4u1jLk/AIcyIcwPPF/FNGG6wfYNkqVGV9K5A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dBtOx7NS/5f7/acYAad4MYsW7ixl2hiqGXIBUoT/2plUSv+SoEPZ+6Iyebw3ZisVrMPnXthkrKciC8nPqdpe4ySx+iDHC5Jx0JqVC1BBkK2kTrbN6a3GrLUrgJaLbxMTB/DiWMXVWvnBH8cAA2XJY9MGUSr9P1hv9Wgr6+YkgPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=YwrzvLGb; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771925639;
	bh=9ncs5mU4u1jLk/AIcyIcwPPF/FNGG6wfYNkqVGV9K5A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=YwrzvLGbc1gINNsXAPKfq5NHLPZS86gB0JaNk+kF02wQgIKLRGX98nDVeIo1xu3t5
	 CnakraZyBGv0GTUN14d5YdRDwbeRtrbjT/mHaCTtDtX74mVXhX9APCWJq87A6/cQsF
	 v9GgCuW7J1dZVxYut8d8LWU1BxoILorR9uFYiom1jNNXGS7Bx3j5MZXuMcfBNCrs/p
	 bRpPd8CaStfCiX9FPeOK+GvHKYAR4OHaf8fZrCcOFuX/fvZUIVg4IKGdDFEpSrPpy1
	 duWI1Tp7jfsRygdyykm6QmCkpknPm0/BxE2yvqbxUP3rmClJBkDAHOLnrRjpCPL4ES
	 7xt4SC/e48r/g==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6164917E0948;
	Tue, 24 Feb 2026 10:33:59 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260224070306.2650182-1-wenst@chromium.org>
References: <20260224070306.2650182-1-wenst@chromium.org>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195-cherry: Disable xhci1
 completely
Message-Id: <177192563934.11826.13721655635235729947.b4-ty@collabora.com>
Date: Tue, 24 Feb 2026 10:33:59 +0100
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
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267785-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,chromium.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Queue-Id: 19599184AA4
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 15:03:05 +0800, Chen-Yu Tsai wrote:
> There is nothing connected to xhci1 in this design, nor in the actual
> end devices.
> 
> Disable xhci1. Keep the USB PHY enabled, as it is a shared PHY and used
> for pcie1.
> 
> 
> [...]

Applied to v7.0-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8195-cherry: Disable xhci1 completely
      commit: beb60276eb3a488d8154fc498ed11270bcfe979f

Cheers,
Angelo



