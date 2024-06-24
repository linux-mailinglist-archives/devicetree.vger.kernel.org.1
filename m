Return-Path: <devicetree+bounces-79414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE3991535D
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:21:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 939382812CB
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0452019E813;
	Mon, 24 Jun 2024 16:20:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511A319D063
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246034; cv=none; b=GFT35wb4MqdzMdR+rWR8n4SUhLsBgT0fXHtAEIDiTmXUfoWfRTfDkqEUBl+aC/cH2zXlidpBaUFN2d1UoJ10/B74Z1OwjEfL4m/VD6syG2vu+bO/q8ttSdSWEsFBN7bHSRBq5G34kqFt333JPNOZSL749Ca49Wp/SXx9Q5Ns4I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246034; c=relaxed/simple;
	bh=2x8/zb/lrsFWVOGL8f3znJsHmqwwil+HbBhXtz3Z2mk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nPGvWyOrzD3bLZ6RgkaOXc2p2ffkoGNMctV7S8puYOqyFS8UzzyHxTDPnrKD+zXqL7pgNk1kKe6D0y67qmlNKIy+q4aJQI0YWec+/7/sa0OoVYWkbw6Qru7gJNs4SuabL5cH8NqiTNhWyuQP9F1vajxpbI+GrAM0OX5P0bJqzjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQa-0001wn-L8; Mon, 24 Jun 2024 18:20:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	inux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] Add LBA3368 board
Date: Mon, 24 Jun 2024 18:20:16 +0200
Message-Id: <171924573797.612064.16542436099150666874.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 23 Jun 2024 11:01:12 +0200, Alex Bee wrote:
> This series aims to add support for RK3368 based LBA3368 industrial board
> form Neardi. The device tree currently only contains entries for which both
> bindings and linux driver exists and is expected to be exended in future.
> 
> NB: checkpatch throws me a warning that no venddor-prefix for "usb5e3"
> exists - which is true - but "usb5e3,610" has a valid binding.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: vendor-prefixes: Add Neardi Technology
      commit: 79cba74263d96ab1848eb04862f72f8988eb0486
[2/4] dt-bindings: arm: rockchip: Add Neardi LBA3368
      commit: a30a6386ecc1f6ff71d4f7606bed25b7075476ab
[3/4] arm64: dts: rockchip: Add sound-dai-cells for RK3368
      commit: 8d7ec44aa5d1eb94a30319074762a1740440cdc8
[4/4] arm64: dts: rockchip: Add Neardi LBA3368 board
      commit: 7b4a8097e58b608638d416bd57469f8a9ab70e7b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

