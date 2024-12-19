Return-Path: <devicetree+bounces-132640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F329F7AAE
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDA62188377A
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FAD222256E;
	Thu, 19 Dec 2024 11:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="bA1sxbFD"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DACC1FCFCB;
	Thu, 19 Dec 2024 11:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734608967; cv=none; b=P95/F79Q7dwu2FBITfWaZbO9oy+ScSXIYX1n995WU5I7Z3hGBgZTGVmnaL4d8guLUM4aYSBL155ymaHDV0asCIFeICgF1bmBJhHqo5cdbyKN1LdXOiDGbz8qO7MZlL6VhFVLcHUphQEuUZdWR8siu2nuxJ++jSxB0V3kc4JBtQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734608967; c=relaxed/simple;
	bh=zrTiXUwCLjiTAbMoDeiCmLIyME5GPRSo8NxwUPaBOLU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nJmmMjwEjWmPuzjPtmxbnSjMdHkVz+oLfhylYw0hx7QcGle7qVV/1Zb/DJp5V0s3Sx9D2q6KKGXAmVeGZUWoIJvU9LaqtpmZkKhUYZwUD4nwpSg885twZu8k3kIimZiCfwHSfT81BeNoHeAheN4Zqm+Rfo4MZhrM+XDWe0wrnYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=bA1sxbFD; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734608963;
	bh=zrTiXUwCLjiTAbMoDeiCmLIyME5GPRSo8NxwUPaBOLU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bA1sxbFDC4cWYvcp6F27Qs6Zgx6bxSsQbnLpUKw8apPWElBlgO6BEAPXaz3oQB67E
	 +qEIEN47j+kFhGmOe4TYf9bc7PN5Lbn7R1EVQHn+aIIJtSoxFjooPomspoPKwD7PX1
	 pcQyvGgxDxhN1DmXm4aiwmyLRh6j+uJjxv8ZQuGRjl+PbhjEM1e+4wowPJDlEONQCj
	 UpkuavukSqE9ehzQRNLfaggBy3FNjOC6rj2RfmpYF343n2GFj3H8wXjnC/48daugYH
	 o0jmYySwlXekNvLRS5ODwsS919HeXiKLgbnst+xHTpeM80MuJaslMAFsglV+WYzWP2
	 M9u321Dnju7Lg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D7CDC17E3630;
	Thu, 19 Dec 2024 12:49:22 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Hsin-Te Yuan <yuanhsinte@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20241213-touchscreen-v3-0-7c1f670913f9@chromium.org>
References: <20241213-touchscreen-v3-0-7c1f670913f9@chromium.org>
Subject: Re: [PATCH v3 0/2] Adding second source touchscreen used by some
 mt8183 devices
Message-Id: <173460896280.52937.15376299467879995072.b4-ty@collabora.com>
Date: Thu, 19 Dec 2024 12:49:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Fri, 13 Dec 2024 05:27:46 +0000, Hsin-Te Yuan wrote:
> 
> 

Applied to v6.13-next/dts64, thanks!

[1/2] arm64: dts: mediatek: mt8183: kenzo: Support second source touchscreen
      commit: 5ec5dc73c5ac0c6e06803dc3b5aea4493e856568
[2/2] arm64: dts: mediatek: mt8183: willow: Support second source touchscreen
      commit: 9594935260d76bffe200bea6cfab6ba0752e70d9

Cheers,
Angelo



