Return-Path: <devicetree+bounces-295432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ImSEM2lAWpKhAEAu9opvQ
	(envelope-from <devicetree+bounces-295432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:47:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0360650B42E
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:47:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4FDBF300C305
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9543BFE50;
	Mon, 11 May 2026 09:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kFumTGzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728DC339B3D;
	Mon, 11 May 2026 09:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778492870; cv=none; b=ZlQ9qYjQ6LxfK7yvsjP7TwQreBLYcN0g0jz2KeSYTZEe/hCVFtw7EhUwlpXgXyCvlO2760qucg9LY0El0R8bQkmijV8A1INM1DfK1zdsF0dSSiQxqonFg/WptkFyhIzfDZgrOb0ebiOpLcylAvuqUJ46N9lYPtQm5RoSJI+rph4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778492870; c=relaxed/simple;
	bh=KAacyabt/cyiwQDZ9EaRG+E1w1FvHnkbqvn0xq5Avbo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=at2SwXl0dSz8yorGoUh6v4Pu4yy+VCNoX4Q41x0n0X04ACOG1HoKxlymR4LFnRrmQp+0iPVGfxZIReAxG+Z0nN1OVekjqRfn/iEO4lYx1XnIlTkJPr70XPvz8rwoZVQzYOVxQHF1z7p+QF1g95Ty+O1nvv1C2J8MeWYHSP+InY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=kFumTGzQ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778492867;
	bh=KAacyabt/cyiwQDZ9EaRG+E1w1FvHnkbqvn0xq5Avbo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kFumTGzQRWkaBQrsyuRDrLwqTfv0wZzZ1C8sGz/xu1JGz/O1Hf1teietlC8U2ZdBM
	 JntsDi1edyLi1IpK4q+cl8ojALmPvrReheW6N5BOIXMdrazt3AEdV3qnh25UqzkZJw
	 37I1+gnIfb4DbrlwbsLi7JPkFlw7dSko501OF0PutsuCmhkzBVlHglkxqel/GltCvd
	 UtjPcZNN2LB0iBpWY/VicNhFUTndpvcIphNc1Lv8u8rySGVpPa/bRlAbN2FNTQKfZP
	 iw+Py3usi+igfOX98gmaMWJUhD4S2HGmqVZGuFuhff/mA4lwSP97pcw34K/YVSJAdx
	 xuQQ12eNhdjiw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4EF7D17E12E5;
	Mon, 11 May 2026 11:47:47 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, Akari Tsuyukusa <akkun11.open@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20260325144500.667385-1-akkun11.open@gmail.com>
References: <20260325144500.667385-1-akkun11.open@gmail.com>
Subject: Re: [PATCH] arm: dts: mediatek: mt6589: Add Arm Generic Timer node
Message-Id: <177849286725.117937.1598232312363149560.b4-ty@collabora.com>
Date: Mon, 11 May 2026 11:47:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 0360650B42E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295432-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Action: no action

On Wed, 25 Mar 2026 23:45:00 +0900, Akari Tsuyukusa wrote:
> Add the Arm Generic Timer node to the MT6589 SoC.
> "arm,cpu-registers-not-fw-configured;" is required
> because the bootloader does not initialize the Arm Generic Timer.
> 
> 

Applied to v7.1-next/dts32, thanks!

[1/1] arm: dts: mediatek: mt6589: Add Arm Generic Timer node
      commit: 2a5d54507c68c2a8de9d6f6746f23771d38f4dbc

Cheers,
Angelo



