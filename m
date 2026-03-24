Return-Path: <devicetree+bounces-279977-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BRYLOPBwmmjlQQAu9opvQ
	(envelope-from <devicetree+bounces-279977-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:54:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3619B319767
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5FA4830AFEB7
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 16:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996BB3FE375;
	Tue, 24 Mar 2026 16:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="LgiHxD/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBCC3F23A1;
	Tue, 24 Mar 2026 16:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774370741; cv=none; b=AYmOEZGVLGbubzhjxJf8EEAE8eV1o81nTvIqyPV5midNhFiymi00LvwO7gs5Ro7W7cO+k/T+26tW1Becx3FGGxV0/QGgW2aN0wgUcW53D/OIL75+O10t/LZFasBiqaVfUsZ81aCQL2TSzcXb6+6FAtaIfgAmw7+kUC9MmMcz4Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774370741; c=relaxed/simple;
	bh=73ShCvQFl4Zyjds1iSggG0FQnzBvwP/qZSbakS0UDMc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bPvy5ZbTgxKUqjuu3x18UsWPhMH6NVzHjqtGwPLkAqNWKbWi+0Su8pJ7WZR8MJfnd7coXjTz/7PIZ5Mf5Wk8CE3QzuR45XDrQwWi/CV3qItd7yTOxd005C48XelyodN8i9LYJczuaBCgsOfqFbvtRVvqxgnAS0Ew3DndCXt3+qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=LgiHxD/Z; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MWUHvi50PILEaFiGX4TV4ej6NOVm50IR1cRnvT6w2vc=; b=LgiHxD/ZQb/Bxaz0kS2H1DCN50
	V63I5RKtZW+tgxjK6TDQ1fNN5UoscMwujjRuyJgPKohCvbKdZUWfZodpRatpeZMKRXnuupFNfF/H8
	hzge3Plzcpo7yAyjIUYetars9zkfEWnaWpeZsB07zj8qvyTG6rb+Bu7/KL781kzEMDoj41G94Bccg
	racXiHAOh6Y5rYBGAzEZ52UzofoiaEdarbHjJ99rIkWdwLYJNYx7Qu/jlCGI8kvbQQVGe5VLev838
	fm6Vkd2f11pbMaWJIJHCe6MtM7kL3dODpfgS8gcTX2RIo1JW+JzO4lBryk0sfaZU4+7nzypz329eQ
	VPAY1SpA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Pass linux,code to the power key on rk3288-veyron-pinky
Date: Tue, 24 Mar 2026 17:45:29 +0100
Message-ID: <177437057316.780275.3596701070961076478.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260323125721.692139-1-festevam@gmail.com>
References: <20260323125721.692139-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-279977-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sntech.de:dkim,sntech.de:email,sntech.de:mid]
X-Rspamd-Queue-Id: 3619B319767
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 23 Mar 2026 09:57:21 -0300, Fabio Estevam wrote:
> According to gpio-keys.yaml, linux,code is a required property.
> 
> Pass it to fix the following dt-schema warning:
> 
> lid-switch (gpio-keys): key-power: 'linux,code' is a required property
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Pass linux,code to the power key on rk3288-veyron-pinky
      commit: 94c8dc1fa8e1ad4037084204152bca1e799d7d1c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

