Return-Path: <devicetree+bounces-19960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 556F67FD63D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:04:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85D421C20C2D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 227D81C2A3;
	Wed, 29 Nov 2023 12:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB349D7E
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 04:04:24 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <pza@pengutronix.de>)
	id 1r8JIe-0000FU-CF; Wed, 29 Nov 2023 13:04:16 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <pza@pengutronix.de>)
	id 1r8JId-00COSL-5t; Wed, 29 Nov 2023 13:04:15 +0100
Received: from pza by pty.whiteo.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <pza@pengutronix.de>)
	id 1r8JIc-00ACOT-SR; Wed, 29 Nov 2023 13:04:14 +0100
Date: Wed, 29 Nov 2023 13:04:14 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Rob Herring <robh+dt@kernel.org>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	zelong dong <zelong.dong@amlogic.com>
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	yonghui.yu@amlogic.com, kelvin.zhang@amlogic.com
Subject: Re: [PATCH v4 0/3] reset: amlogic-c3: add reset driver
Message-ID: <170125879173.1541321.8685946591376454572.b4-ty@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914064018.18790-1-zelong.dong@amlogic.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, 14 Sep 2023 14:40:15 +0800, zelong dong wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> This patchset adds Reset controller driver support for Amlogic C3 SoC.
> The RESET registers count and offset for C3 Soc are same as S4 Soc.
> 
> Changes since v1:
> - remove Change-ID
> - run scripts/checkpatch.pl and fix reported warnings
> - sort dts node by base reg offset
> 
> [...]

Applied patches 1 and 2 to reset/next, thanks!

[1/3] dt-bindings: reset: Add compatible and DT bindings for Amlogic C3 Reset Controller
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=0c0ea61c9b3a
[2/3] reset: reset-meson: add support for Amlogic C3 SoC Reset Controller
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=41df5d7d5e99

regards
Philipp

