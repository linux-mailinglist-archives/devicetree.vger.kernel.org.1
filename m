Return-Path: <devicetree+bounces-72223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 545878FB27D
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E4C59B245FA
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E414F146004;
	Tue,  4 Jun 2024 12:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="srRr7m3S"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86131145FF6
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505077; cv=none; b=DbpoII26y3EfM9U1uRUxZaOUtOedByPefJvk4vM08gVodaj91ZJ6Wha89CdJJzgmAUHu5oTGE5XIVFtEHTXBDl4AM7XhvtctEZm4nC1oAjs5N8GP+Jdis3//KoL2yaD2Sz7F1yl1x95aiPDOlXV77v/2Kky53R4lmkVg3aL4eeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505077; c=relaxed/simple;
	bh=p46dFaOjZpK3OgYnoTc4t+Mc4ObxgROZFJtGZVC8V/Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HG0zsiaHgIaAuXZ33J2WpX36Y7sXtJJl0fV42c8SvbsInIiNUK885lxC2vx93MIVK30L0PEz1cLrDDaTXxhpwfv3bk0zYzyERqcAbWT4S3zqEnHnm9TZK1LoYmaQh6i/hT6zJc/Rzqrgr0qNRlcNZWb5DvrK2vVpEJXd3pBKg8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=srRr7m3S; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717505075;
	bh=p46dFaOjZpK3OgYnoTc4t+Mc4ObxgROZFJtGZVC8V/Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=srRr7m3SSs8pB8m60vBMDWU9bVriUN/9Xg3O6QglwTa23hjd//i2aySu8OVDzmb4D
	 Bl+O5z5xuvsYTEloLgKONHUwKfqd8NgxfAPEs0/6mQcKnA02bPKBuQeJ3N7KQ7SPoy
	 jgjZUOuhfelbhD3PZtoeK3ME9NHDVZICbGnUdg4TnLxZO1r9hLc5KkRcAAvtT6+NRO
	 1Ecccv+tmpyAdXTgMQhRgS89+BOgSgHcfEu9uUCC0eid8KJSBLVFp0gbcP5jv0fauW
	 hIdVNI9V09NpndefpYuGte1sLw3NA1p1FIXNEDSHWMKLeRwnAPo3HW7Qi5QuGr8NGO
	 HiRXl6JyLTDLA==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5F71E37821A8;
	Tue,  4 Jun 2024 12:44:34 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240604064302.487-1-zajec5@gmail.com>
References: <20240604064302.487-1-zajec5@gmail.com>
Subject: Re: [PATCH V2 1/2] arm64: dts: mediatek: mt7988: add PWM
 controller
Message-Id: <171750507431.334281.10525618295173973957.b4-ty@collabora.com>
Date: Tue, 04 Jun 2024 14:44:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Tue, 04 Jun 2024 08:43:01 +0200, Rafał Miłecki wrote:
> MT7988 has on-SoC controller that can control up to 8 PWM interfaces.
> 
> 

Applied to v6.10-next/dts64, thanks!

[1/2] arm64: dts: mediatek: mt7988: add PWM controller
      commit: 9e12e66ef9584900b0a08ff7ed1a70078386c0d7
[2/2] arm64: dts: mediatek: mt7988: add I2C controllers
      commit: 92b1be17128be7cc5ba7753ceda973899205ffcb

Cheers,
Angelo



