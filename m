Return-Path: <devicetree+bounces-302477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aChiIdULFGr6JAcAu9opvQ
	(envelope-from <devicetree+bounces-302477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 10:44:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B855C7F44
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 10:44:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A65133001856
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 08:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52AF63E3159;
	Mon, 25 May 2026 08:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="pteKG9RG"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D473D5C10;
	Mon, 25 May 2026 08:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779698638; cv=none; b=heKJBZQuCmz2VaB4tKGEPb/38VFPQrIoDoUjJ8MSvPlvuJspCHfgDwlO6hkMuJ+aynUFcdeX9ogQGhXqFqXc/pkQ+0NBZKo10WDLXbVvzmFNBeE0wjvaqvLejCGaNRmi/Zhch62QvqJopWzN0f4CtRuXw7FFl/mNjsvdXsXebAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779698638; c=relaxed/simple;
	bh=+vFgdumFv6/nxAboBbbU8jY8FPS562TdhfuUlJYfhWs=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=IJHhROeQr5TWgE04Xt2af2/lJVIQxa939/3B0T5iavQgOSBf7NbO11AGKYrSKnDLJTDBqE6+0FOyGOVTPpEjJRBVPD8ISFJxYWrnPr02Ai2ITJhZ/RTwpVO6W6vZy+7m8qMF/CQpuO7HGCthcGtmerUUy/54G+qUkQ0TlJ43yHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=pteKG9RG; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779698626;
	bh=+vFgdumFv6/nxAboBbbU8jY8FPS562TdhfuUlJYfhWs=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=pteKG9RGa6j7Jk0dGEg5MhAvkOhE2ubpLjxeaSvnBYZ9mj/ULKDjGWLxgGfV4sJ0j
	 NHbGPXwqWmCWEY/PeBMo3vJdQwS9lwYeMbBGZBhNMAgyG9FZqkNJWwxMAk8ivVZoTp
	 0wAqF3AIY3tNUIUlG6h38hiaihcR6BxD+4YHuJWDLinCZEZ+IcceJmPb/YnAOr6lrV
	 tBhEZrEg8ltEYnh0MyP/ya6w6QOEh3/Y783aq/VUF4PXt6NZp7lxdUIDosYufoSnue
	 zPX0drtYnOhwRoNXqp0E8U6K0oYlNsMvifREW1GOHWyD9gE5y58LD8QfNVMGVaHsNH
	 X2iXXK74OiwUg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4670B17E0979;
	Mon, 25 May 2026 10:43:46 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, Aleksander Jan Bajkowski <olek2@wp.pl>
In-Reply-To: <20260523101904.293215-1-olek2@wp.pl>
References: <20260523101904.293215-1-olek2@wp.pl>
Subject: Re: [PATCH RESEND] arm64: dts: mediatek: add LED and key support
 on Xiaomi AX3000T
Message-Id: <177969862621.3767670.3588325630835903644.b4-ty@b4>
Date: Mon, 25 May 2026 10:43:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302477-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,wp.pl];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 94B855C7F44
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 23 May 2026 12:18:55 +0200, Aleksander Jan Bajkowski wrote:
> This patch adds support for keys and LEDs on the Xiaomi AX3000T.

Applied to v7.1-next/dts64, thanks!

[1/1] arm64: dts: mediatek: add LED and key support on Xiaomi AX3000T
      commit: 9897c586b09f79ebcf2e67a888743c046b20d254

Cheers,
Angelo



