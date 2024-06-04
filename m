Return-Path: <devicetree+bounces-72226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 706088FB282
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 101761F26276
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36EFC145FF1;
	Tue,  4 Jun 2024 12:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="wNYI8J1E"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5FA1459F5
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505144; cv=none; b=kvCV5MTXtCJ4WHA38tI2FwtGn28F5tbBr9YkHoU808FvW5yGuDjIiBuBIzcyyxv2p8DdoI9OvS4jgc9dwjinT0U8WeLqRIPyQCTGh1f4Cgs3YcSKn6PevhFOM37Ok75ki4K6z2RZrCoeaYiJ+T4Pz1UONnAnSytZeVjDRJjr8OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505144; c=relaxed/simple;
	bh=ojfNzIBBbgrqBeuKRr8YSDJc2OO06w8xhq1YsaHW3so=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mKoBHTAQ3P83VbWHlxWmmzk1zygFFczU+mHxz98lLXkPKCj4qPwy7sReRjotaGgQWLovyq/GRwD7ZImhGqpjN+dMozTWcXKVq37h/Cxq7JIksoPcFaZML7i4k3pO5S4aBxgTCGrpCaMTcInicVE+VgAtn7OSiGOeTZ5YouBL9AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=wNYI8J1E; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717505141;
	bh=ojfNzIBBbgrqBeuKRr8YSDJc2OO06w8xhq1YsaHW3so=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=wNYI8J1EYr7CjgxQW69jcDJVLr1ZvE3wixnGaGWykao2gshPD0ZFLywPgYx5NWSia
	 H/9YKnVDVoP/i3LdAOIzHOgKA/GsIG+iK9HNslhf7zv+3qD37BeinD1hOPlpiJP2r+
	 h1M3Or22pRu3EMF6bVO9nRJtj27RuAGSAgbUQvAKkDvH9e0zS5P5o767D/En0hb1x+
	 8gSLym7vtHaqDEOCyRA2awta8Uo5u0Dl0XnmIbQAtRtizErtsikHySM4yfMR3aH7J4
	 21qBomjmAzKZLwqW0X9v3QQexMJuMKntI/NspLlB2wB5qVLxfX7UPD8kdTvo8kZcPm
	 mPUSra+h7viUA==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A8FA637821A8;
	Tue,  4 Jun 2024 12:45:40 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240604063159.29216-1-zajec5@gmail.com>
References: <20240604063159.29216-1-zajec5@gmail.com>
Subject: Re: [PATCH V2] arm64: dts: mediatek: mt7981: add I2C controller
Message-Id: <171750514061.334947.2592643629827567886.b4-ty@collabora.com>
Date: Tue, 04 Jun 2024 14:45:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Tue, 04 Jun 2024 08:31:59 +0200, Rafał Miłecki wrote:
> MT7981 has one on-SoC I2C controller that differs from recent Mediatek
> blocks by having a different SLAVE_ADDR register offset (thus a custom
> binding compatible string).
> 
> 

Applied to v6.10-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt7981: add I2C controller
      commit: 85ccbe8afbb4d4744f4f3a1519c5a59a8b74c87d

Cheers,
Angelo



