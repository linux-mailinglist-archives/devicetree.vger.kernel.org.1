Return-Path: <devicetree+bounces-107144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC8F98D041
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:34:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C83891F221CA
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 09:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8D31E1337;
	Wed,  2 Oct 2024 09:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="CkewjaoI"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6298D19412F;
	Wed,  2 Oct 2024 09:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727861615; cv=none; b=Y2+WePFM3dVsMjZEeUUI3YVQFXCQlN2cONCXckwvyCeb9RB6AiSgmo4WADCThHyKkYjbVk9LFOzft0fGwn3qJyZEWRR8x2SMuBkGZ4FqTP1Y6c1RBwM+DYsu6ymJTkO0rYY5YSPm+c8cH6r1/Rsz6f+X1baCyiu9hEwmzi/XvO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727861615; c=relaxed/simple;
	bh=V5MWrcloCnllnIn8JJoZtfb9JnL24Lh+8b4pyRiq7os=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=u2ZNmW4oUFqWZ348Bx807xNRtXmGXThduUYVz9mfncs5bhtYmleZT33fz/cX57d03mpGeevHg57YVWiHWZYwfK/4DqhLEm1cU5iZReMO1UTYYzizXN4yQWCJry//ZsTcicj7aMwc1Eg77XBrqXzi7lTS0YXtD89RcCYJmnZdC/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=CkewjaoI; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1727861610;
	bh=V5MWrcloCnllnIn8JJoZtfb9JnL24Lh+8b4pyRiq7os=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=CkewjaoIMfqoJC6DPeY0KR4HW1CGM/bxC/kTbpeBChEpT1ON6gNgJrVhLjCHdSPCL
	 2rVOFZgnSlnC3nopddFdAVR5wgFNRpwXdG/ZCl0FonmbuT8aEaqfQ/aQgAISR6IdfQ
	 0qu41Pz5L06lqMldUP4YbR38yL9SLbqz8kKYgEWaXpLaG8eag+hpXekqKPEimnf4s3
	 XRKGZfSnrF7MmFimIOK3jhQAgwEcFbkOEIrqeeX76pMhAWlybIP6qVzsNaQwVbCH4l
	 rLyMD4WjtsSzqM2tcc5vsbYjTFQYoBT9ASm9H4CwjlKIIEQkMXbtX+2jTqqJ1HdkKr
	 yXWKl9pcJO9mA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 05CE917E121F;
	Wed,  2 Oct 2024 11:33:29 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Pin-yen Lin <treapking@chromium.org>
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Fabien Parent <fparent@baylibre.com>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
In-Reply-To: <20240919094212.1902073-1-treapking@chromium.org>
References: <20240919094212.1902073-1-treapking@chromium.org>
Subject: Re: [PATCH v3] arm64: dts: mediatek: mt8183-pumpkin: add HDMI
 support
Message-Id: <172786160996.39477.14645002362222354228.b4-ty@collabora.com>
Date: Wed, 02 Oct 2024 11:33:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Thu, 19 Sep 2024 17:41:49 +0800, Pin-yen Lin wrote:
> The MT8183 Pumpkin board has a micro-HDMI connector. HDMI support is
> provided by an IT66121 DPI <-> HDMI bridge.
> 
> Enable the DPI and add the node for the IT66121 bridge.
> 
> 

Applied to v6.12-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8183-pumpkin: add HDMI support
      https://git.kernel.org/mediatek/c/72f3e3d6

Cheers,
Angelo



