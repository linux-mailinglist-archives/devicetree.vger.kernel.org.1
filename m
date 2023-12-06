Return-Path: <devicetree+bounces-22158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 169D2806AEC
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 10:42:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAD371C20866
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D87F1A734;
	Wed,  6 Dec 2023 09:42:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0558BA;
	Wed,  6 Dec 2023 01:42:13 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAoPv-000077-Ju; Wed, 06 Dec 2023 10:42:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sam Edwards <cfsworks@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Joshua Riek <jjriek@verizon.net>,
	linux-rockchip@lists.infradead.org,
	Sam Edwards <CFSworks@gmail.com>,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH] arm64: dts: rockchip: Fix eMMC Data Strobe PD
Date: Wed,  6 Dec 2023 10:42:04 +0100
Message-Id: <170185570321.596796.2043963859516585499.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205202900.4617-2-CFSworks@gmail.com>
References: <20231205202900.4617-2-CFSworks@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 5 Dec 2023 12:29:00 -0800, Sam Edwards wrote:
> JEDEC standard JESD84-B51 defines the eMMC Data Strobe line, which is
> currently used only in HS400 mode, as a device->host clock signal that
> "is used only in read operation. The Data Strobe is always High-Z (not
> driven by the device and pulled down by RDS) or Driven Low in write
> operation, except during CRC status response." RDS is a pull-down
> resistor specified in the 10K-100K ohm range. Thus per the standard, the
> Data Strobe is always pulled to ground (by the eMMC and/or RDS) during
> write operations.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix eMMC Data Strobe PD
      commit: 37f3d6108730713c411827ab4af764909f4dfc78

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

