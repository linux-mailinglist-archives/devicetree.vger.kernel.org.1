Return-Path: <devicetree+bounces-267207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNixLaqGm2kD1QMAu9opvQ
	(envelope-from <devicetree+bounces-267207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:43:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 31454170A2C
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FBBD300B860
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB9E35CB72;
	Sun, 22 Feb 2026 22:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="zyW2IIik"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB68C35C1BD
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771800222; cv=none; b=dPPCO6XU5mpgmRMRlIbIGIwx1fT1pDj4g9E54ItQviYm5e/RcFvsaw1M9PPd7T6/h2e/OYp5Bt8hj/cJrfO6LrbinAZvN9WlnqMd1ywDTCCzwTQLOH8cce1VXbIta69dKcaC8j2qyChyJDVPzP+4X7Hg0FKEZEJNMc1rWEvt7Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771800222; c=relaxed/simple;
	bh=K6TlH1l+Jvq8dXppqbsgHjCJcOJvwYwLTgfxBVNEfKY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=p5uCV7QZBSnlmUC4+/iLlGgU0eqgxW/kqEYaTAxTonD0h+vNjDNJXzpwZ8Cx0OwKTeoEdjatXXyKZLdC9PsqlWANED2bj77Ovi+QI1kOoLm1yy5u+g46gY2S6GIYWcXK1FjCykU5scDVzzOHlOl4/7Ib0Dni0XIsdCKvvveCoy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=zyW2IIik; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=XuKRmFdpVorOkBPRtg9u8MYAq3fDYmh5MMIl7tdXRZI=; b=zyW2IIik9kebKJCHB3euvjuKAQ
	Ko3k5FHN7PArfdmvDj1c/dCKjpzPwxLHfwfDs0soqYdesv/H81a8nQwCxrgMKFjcl7KaIE7Wv72VI
	f8Ggh0zek1YZ6XjQVJjM7yPmc+TakWrcGBln/GSNqWnYiOjkRHFpELNkht6d5zRcWjj2dW/8pjF/x
	/VX+Kwhrkk1qr590qQ6J0vCBOEmWRMIwBLDUh+aBkKrtPGsZoHHOS3N9eNpzx26B1vRUwgSbtnxdo
	wQ8guc7+reOnavIDszlMzR7Gjwfvntxjlnd2dfJ4ozvizu4gkyI4XsXRVqWjp3ZDoOtX+JXEyeeSp
	23Rx/1Bg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
Date: Sun, 22 Feb 2026 23:39:12 +0100
Message-ID: <177179992293.1861430.14271222400212376260.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267207-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: 31454170A2C
X-Rspamd-Action: no action


On Fri, 13 Feb 2026 10:35:12 +0800, Shawn Lin wrote:
> Thus the board dts files could add property for these nodes.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: add node name for RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
      commit: 9e79dcc4d8681df3ea1a0665dce5e35a37ece4b6
[2/2] arm64: dts: rockchip: Add domain-supply for pd_rkvdec0/1 and pd_venc0/1
      commit: 52ad35272559db09ad571d698665fe33d93534a8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

