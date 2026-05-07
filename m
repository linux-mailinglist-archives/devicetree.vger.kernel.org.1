Return-Path: <devicetree+bounces-294089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YN3ZM/mi/Gn2SAAAu9opvQ
	(envelope-from <devicetree+bounces-294089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 16:34:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5CE4EA459
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 16:34:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9950830779F9
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 14:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E4DE3ACA6F;
	Thu,  7 May 2026 14:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="H9g0LH3R"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2267A315D3B;
	Thu,  7 May 2026 14:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778164133; cv=none; b=gEklWjI8+EW81jyk7yZGN2o1Xyq/eMn34Gp22fMCa6y+5MesLuz3IWzICJ2wEAJ4xCv0nmb3CdubrmpsNWdgYYnjTUsmVXLSJ1+o7r6K9i7y/vqAkubSoOYIc7IPu2qAsXTJBaZ9nw/aOx7ombi/O/JAUG6fdoI9sI5KN8dJWsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778164133; c=relaxed/simple;
	bh=CEBLsdC5BhK44Ow0f/DvFi3ITfR7Y2d7VKh8V95wdMY=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=hWyEmXp3B4EQbdJUdFPEhL3GZyo/Cr5ViXpV3C9CqPLOWflbD3tJEx1ARifPVhcqzmbCsWgBr9Q9noQ/ZHaP67L8l3zO2YhkwGG102k5kVYGxOj+nywO2yXv4y4vGzc62RFHOLzH46kbtRgqpZa2C9v7sb0WQUmf1bo58xT/gyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=H9g0LH3R; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 61B2D2763F;
	Thu,  7 May 2026 16:28:49 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0bPPlxm6rDu1; Thu,  7 May 2026 16:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1778164128; bh=CEBLsdC5BhK44Ow0f/DvFi3ITfR7Y2d7VKh8V95wdMY=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To;
	b=H9g0LH3RjjyzOIC1+Hk+5regrB3BjwoyxdcW1xunzecRiKfuYk1yWQWLiQ2PQYKly
	 oezPg000Kdfk1X7f3a/XorXtnsJ8OG/IDaP/mwds/DSfjNCwKK3p6kbbesEeariTVr
	 IdOvjfyTyTuHziMn1ex6m2E4ksdyWDzNqALxQO2TBrh+GbbYKDHEDAtfep8u39NZ7+
	 0eOJKDiiM3WVcyepFVFi45W1DNtuaY1vfY0D9S4L2ZRbtXeMs5StXkICxJbQW/fodK
	 vRzUOhv0LGI2zzIG7Y/rjhmV1Chq6JKTa83qJiK/KbvUg/oiGO7Gj68ZKRnxNLdf9w
	 QCtclKZc+PvnA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 07 May 2026 19:58:32 +0530
Message-Id: <DICIKJZ1JOZQ.36S4SZ5G8RM5Q@disroot.org>
Cc: <linux-mmc@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>
Subject: Re: [PATCH v3 0/2] Configuring DMA threshold value for DW-MMC
 controllers
From: "Kaustabh Chakraborty" <kauschluss@disroot.org>
To: "Kaustabh Chakraborty" <kauschluss@disroot.org>, "Ulf Hansson"
 <ulfh@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Jaehoon Chung"
 <jh80.chung@samsung.com>, "Shawn Lin" <shawn.lin@rock-chips.com>,
 "Krzysztof Kozlowski" <krzk@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>
References: <20260415-dwmmc-dma-thr-v3-0-31014d36b6ee@disroot.org>
In-Reply-To: <20260415-dwmmc-dma-thr-v3-0-31014d36b6ee@disroot.org>
X-Rspamd-Queue-Id: 3A5CE4EA459
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294089-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[disroot.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kauschluss@disroot.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:email,disroot.org:mid,disroot.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On 2026-04-15 20:32 +05:30, Kaustabh Chakraborty wrote:
> In Samsung Exynos 7870 devices with Broadcom Wi-Fi, it has been observed
> that small sized DMA transfers are unreliable and are not written
> properly, which renders the cache incoherent.
>
> Experimental observations say that DMA transfer sizes of somewhere
> around 64 to 512 are intolerable. We must thus implement a mechanism to
> fall back to PIO transfer in this case. One such approach, which this
> series implements is allowing the DMA transfer threshold, which is
> already defined in the driver, to be configurable.
>
> Note that this patch is likely to be labelled as a workaround. These
> smaller transfers seem to be successful from downstream kernels,
> however efforts to figure out how so went in vain. It is also very
> possible that the downstream Broadcom Wi-Fi SDIO driver uses PIO
> transfers as well.
>
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>

Hi, bump! What's the status of this patch series? Both patches have been
reviewed.

