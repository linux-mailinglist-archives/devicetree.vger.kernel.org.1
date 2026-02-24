Return-Path: <devicetree+bounces-267786-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGO4IJJwnWk9QAQAu9opvQ
	(envelope-from <devicetree+bounces-267786-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:34:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF74184AB3
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4CE0930B34CB
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D646E36C5A2;
	Tue, 24 Feb 2026 09:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KqNIZioU"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 905A636C0D7;
	Tue, 24 Feb 2026 09:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925642; cv=none; b=srZ/h4JT7Prm7gyLGsSg0rDnoDUGT4VY4WgdrM6fL4M1yU0TmgiC5CYuL+kiXiprVoeC3bj+cLt6oVfJbqgJaDtKqsjg2locVn7cUqG1QmntqEeubQ3XAidw+i7ofrXaSP/OZBSbdzPLuenkqaqsangKTLEipg+3FqzkPEWpJlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925642; c=relaxed/simple;
	bh=Rk0mKQOFUYNXGWNS8XtaMpYkrLQ5SVqdj/w+qNADrNE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Rfu2hWCAKjVh5uAw+3nirgrKlOuni6Nrln7TtbbHkiaWPmP/CirVMyg7DUO9iwISH4Ebaa/XdmhN8P4Hydo77RXHDTzU69vMxV1KZW5/Xhu/BfWDL9cQvldkvp76uhb+q1MqQRO41eC8CGpHpZknC815HS7PIBRo96eFcVCtYbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KqNIZioU; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771925640;
	bh=Rk0mKQOFUYNXGWNS8XtaMpYkrLQ5SVqdj/w+qNADrNE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KqNIZioUn3fn48jZd1UE17ATUd2Vb3t1CP9ZLFEPipm5lw8O14MJeFEY1AyJ2qzqD
	 b9azpjVjabLSU4dhZPzu7aP4KTZgWi+43VaixDerMtL+EdsPxxWra6zYm/gu7GciPf
	 DRkxENiGHrOWvW4uOOilTkRCCqbWte6Hwswg2RbzjeyrevoDCEq6VcchKl6GVP3/5T
	 Pf94maJQyzRnCoQfQr0qf418cyTiBjEBPC6zlen0TgGP3QxBPVJvruTo61SkTZ6a+u
	 tPBvFpXmp9zciM8BC6yAXQ5jkKlqQVCArg01AOPRqZx8iZL5AjpsnK2O7UulG4DNbz
	 7dRhbiKr1yJyQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C4B5717E0A2D;
	Tue, 24 Feb 2026 10:33:59 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20260218-mtk-genio-mmc-aliases-v1-0-e218e9f771c5@collabora.com>
References: <20260218-mtk-genio-mmc-aliases-v1-0-e218e9f771c5@collabora.com>
Subject: Re: [PATCH 0/3] Add mmc aliases for Mediatek Genio boards
Message-Id: <177192563976.11826.17980398083963853310.b4-ty@collabora.com>
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
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267786-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Queue-Id: 3AF74184AB3
X-Rspamd-Action: no action

On Wed, 18 Feb 2026 10:23:01 +0100, Louis-Alexis Eyraud wrote:
> This series adds mmc for the Mediatek Genio boards mmc aliases in the
> board devicetrees that do not have them, so that mmc host controllers
> get enumerated in a consistent order.
> 
> This series is based on linux-next next-20260217 tag.
> 
> 
> [...]

Applied to v7.0-next/dts64, thanks!

[1/3] arm64: dts: mediatek: mt8395-genio-common: add mmc aliases
      commit: addd3eaf5330d4b5bde930b89f7c7f3310dd9bf5
[2/3] arm64: dts: mediatek: mt8395-radxa-nio-12l: add mmc aliases
      commit: 4d580d122bb52efd4a7e5e93d61c066bb850c06f
[3/3] arm64: dts: mediatek: mt8365-evk: add mmc aliases
      commit: eaa699ee20847335d57216b4e0b779c762f544d8

Cheers,
Angelo



