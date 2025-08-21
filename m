Return-Path: <devicetree+bounces-207706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BCAB30843
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 23:22:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1311AC69B9
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 21:19:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D3B12BEFFD;
	Thu, 21 Aug 2025 21:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="yQul93J/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B001E28727C
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 21:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755811143; cv=none; b=qe/Sm1uxhwIMQaRI/XtYk/Q0cfemvMP1RsJHZUh6+J13+FsAsq2dH0pKA/Vb8Y6EMF0xmJLeWkQw7nl8rfo0ZDlE+oyxqwEKN2LprcJ7sroF18UfBoMoGU5inKf45y5ynRjuy+blwjlf1smzYKdebkj9nJoNKjrNWwB+saF5YlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755811143; c=relaxed/simple;
	bh=cZl1CtOSg4HdkWGNA/IsR4Tp2lBmb0c/NFvSvWYciQs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CJa34W3DYrC3iH5PemqgEpWKE3MBr+UCRoJJJWYyfBrgYBig+bG3o3pecmOYMHs43cdknnXNc/2b00YHJWEdvDrxJK6R+NPEcFllRUqJElYuRynM7MK6dTuUxv+JBNso7qaIwEvgdwuCynKm+fmEMJe4XSAn62Se0wDmTsszaYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=yQul93J/; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1755811133;
 bh=TVk2QpygVx3otc29dhmdop36ZFneZ3AcyH3fxAZ6hzw=;
 b=yQul93J/kIWY5QJVG6Iq6RrGRmFijZdrG4gv7mcnjvXRtD2Xtd7Yals7UKiIEA8sH0jl9jBIO
 K2o6AwaF9xvzH1MnAa7sA3ws+kXkeREk25bsmHB92T791oVW2NzQc9BWCv2ksyUzPNrWxoJ+gQ1
 FmVpS0BrqA2qVv9oa+bsdQPGAljkwi5KHLARxR0m9EHwZcf0DOPm9LuHLFRmai6DSRfdAYOoMj0
 8m/kLyynvdE8OeHFoOLnj0cz1T55cGZVgMVv9Qr2a5J+J05Noez4fuio7fdkyOVlHnhFDymeOAI
 rcrxe2tZEM4VopWxr/QSWt2rfWcq/lah8CJxZy4mtBQw==
X-Forward-Email-ID: 68a78d3a1990298b555d68eb
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.2.9
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 0/1] rockchip: Add power controller support for RK3528
Date: Thu, 21 Aug 2025 21:18:40 +0000
Message-ID: <20250821211843.3051349-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Rockchip RK3528 support multiple power domains, one PD_GPU that can
fully be powered down, and other that can be idle requested.

Vendor kernel flag all power domains on RK3528 as always-on, this takes
a different route and instead tries to describe all devices power-domain
in the device tree, even for controllers with unsupported runtime status.

The PD_RKVDEC is used by RKVDEC and DDRPHY CRU, and is kept disabled to
prevent a full system reset when trying to read current rate of the
SCMI_CLK_DDR clock.

pm_genpd_summary on a Radxa E20C after this:

  domain                          status          children        performance
      /device                         runtime status                  managed by
  ------------------------------------------------------------------------------
  vpu                             on                              0
      ffaf0000.gpio                   unsupported                 0           SW
      ffb10000.gpio                   unsupported                 0           SW
      ffbe0000.ethernet               active                      0           SW
      ffae0000.adc                    unsupported                 0           SW
      ffbf0000.mmc                    suspended                   0           SW
  vo                              on                              0
      ffb00000.gpio                   unsupported                 0           SW
      ffc30000.mmc                    suspended                   0           SW
  venc                            on                              0
      ffb20000.gpio                   unsupported                 0           SW
      ffa58000.i2c                    unsupported                 0           SW
  gpu                             off-0                           0
      ff700000.gpu                    suspended                   0           SW

Changes in v3:
- Drop already applied patches and depends

Changes in v2:
- Drop already applied patches
- Add snps-dw-apb-uart dt-bindings patch
- Update commit messages

Jonas Karlman (1):
  arm64: dts: rockchip: Enable more power domains for RK3528

 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 30 +++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

-- 
2.51.0


