Return-Path: <devicetree+bounces-219867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE312B8EE47
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 05:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99C0317CF3B
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 03:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AA522ECD1D;
	Mon, 22 Sep 2025 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bryanhinton.com header.i=@bryanhinton.com header.b="okXmIHd7"
X-Original-To: devicetree@vger.kernel.org
Received: from outbound.pv.icloud.com (p-west1-cluster4-host11-snip4-5.eps.apple.com [57.103.65.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09BFC13B
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=57.103.65.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513514; cv=none; b=G/r0gw3epHLb1K/Tf4nhW7lte53+C1Kl+rOAxhm/MuOSFRUEKy3haZlEFRjFQKMEAPb11OiN828pPmRrkQd/I+Mvr3ThwpIR6HTpygRx77WKBuXytuNyd9lF1UF+dLvvK5cD1s9uxXhITSSmlSTasHAsvnyzWS816c1EE0KCVKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513514; c=relaxed/simple;
	bh=4cElCX0IOhZSG0cN5iRdi9zW0VGHq7XnBRx0GoiB+pw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WdtnrdqwWM+hnliMLGWOdUCDy/FWH39EK0iPgOtH8iZ4pNOg6SwGQsZizMu7+rggxmP4L1MYuFtgydRp9JVRIXbAqgkxp9ZC/SzwHD9qGBjVKCJNgYcXLmX5q9VYTXQGYS6aFF9Tl7z1KNgw8QFnYQL+0ZHEa2Cg5lRKldrreEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bryanhinton.com; spf=pass smtp.mailfrom=bryanhinton.com; dkim=pass (2048-bit key) header.d=bryanhinton.com header.i=@bryanhinton.com header.b=okXmIHd7; arc=none smtp.client-ip=57.103.65.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bryanhinton.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bryanhinton.com
Received: from outbound.pv.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-west-1a-100-percent-10 (Postfix) with UTF8SMTPS id 13B6F1800718;
	Mon, 22 Sep 2025 03:58:29 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bryanhinton.com; s=sig1; bh=s2pZSik72TY21Dy++4e2+FSjBI2j0gpKQPCcrZ1+wys=; h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme; b=okXmIHd7KwiREU5Ukxzd3CF1CYjnUjBfxsBa+oVepm7ebaupmABKEesJbffZWu4hnZsLfOD8IqRmUe6Bi2dVzbvcAAnMk7jYdylfpsihAhWLfwmRPEDnS+wqtsu3z2Ig1VynP1cbylV+l5gSa2QnCTqkTrmwTZ3RWJ6JdA/WZuDEXaMHuWuHg18b+TSj9mrldbIUHl+BTMePiR7ryIeNHk/fMufZfMx809WmEX2xyltKnl6icjA3ck9h4qMmt54yv8Ef6xRx8VNbHXvxHIm3nH7oetg7z/ezdfPI6qW5NEtw1eqpzeLpyus4J6cMPSMgYZ6adEphm0L4yzZvM71IzQ==
mail-alias-created-date: 1643268037438
Received: from localhost (pv-asmtp-me-k8s.p00.prod.me.com [17.56.9.36])
	by p00-icloudmta-asmtp-us-west-1a-100-percent-10 (Postfix) with UTF8SMTPSA id 2D5021800125;
	Mon, 22 Sep 2025 03:58:29 +0000 (UTC)
From: Bryan Hinton <bryan@bryanhinton.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	daniel@makrotopia.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	bryan@bryanhinton.com
Subject: [PATCH v3 0/2] arm64: dts: mt7981/openwrt-one: UART labels and console
Date: Sun, 21 Sep 2025 22:58:08 -0500
Message-ID: <20250922035828.2941327-1-bryan@bryanhinton.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 4RuZaZCIurzNU15Ktsexkjb433pEZ9CI
X-Proofpoint-GUID: 4RuZaZCIurzNU15Ktsexkjb433pEZ9CI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDAzNiBTYWx0ZWRfX5xzue/VdevBo
 QzS108sHnbWZ0qgiL3S0R24E7FOX6N8U+2bWyJXaYG5kBH43gX0TeV5iPHCA8DZojWC+2xVD1ma
 kcD6yRBkRArd85kfGfLilQdLUciVkIxA7a/gzfTcIzxI/orTl3sUbZfovvHGYYRl8h/W2I1r3Ma
 ELWAoglVrGQxtkdQFG4xpZssUy2fJrSa3viOIy0U8cWDKJHSx2kJpFj5UaieGqX58hbg89cItVA
 Raut4zBcHsEaG3cTGw9/D7sebPqbmz32XJFjjZ2RvN3Tg8Uya+l0VqMuncAKkfB0OED8blTSQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=788 clxscore=1030 spamscore=0 bulkscore=0 mlxscore=0
 suspectscore=0 adultscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.22.0-2506270000 definitions=main-2509220036
X-JNJ: AAAAAAABLAgEF4m/ScTvlirqyLyT96PSZK4hRhRnpe9ErY5FGoXkDTgetLg7US6PlacoOlQwO9xOw/GyxXFbSO7NWcylsa6gW7Aj4RzIw9IU23XxEolIBS/dECsEEV/Yxk3Up3wXjnUhEpfskON+d3siZ73Fs3IsZKoJBtw6/nPkskY5ApX+a4O/ppuXW6ztcQEnVDiGwXvyOnMfIbekBXOGRocO0vaEo61JDO5CqgDNRYRgynY9OCVIrn3ViaZxANGpVxFcfAmNozm4Gy3XhOUltMHVGIQRprRtnXldG+67N/w6361aW6eOcG2wy23LNnoKsPdKqbXQxI670uk8PzI4dq5mfNV11b46Aq/8qqiOD2Sw1+RcOdWU8rZfUumMuBK6rbQAEuz7R2aonFPCM9Ec12vQQI9QjEfq95H62rqwEwZpnBUw73kmdKSLhR92MPRp3RoEUaRiUZzaZf9HtMw3Csd7BT3mIYlEjBMloxSFnIdidnKxkDs9yvHA3BAN5kP4hXOV2Eb+2p3xB69LugDTL/oJ0wjDu37C4fCh+bUSqv9X+k21bfznIP0gRfrju/Ue/65QpevCrTsRSHGN3FAOHgsZu6UWXdGHgP+emWF2PokSh3CK3jkF40mKy1Vv0xTJgtFhzeEvpDQDyJp2xUB+uCMRt8/+Epr3O2MOytSn8wjDAA0ZhZpkIA/2/FjxBbCKAqz37fDu3/ozRlHDwWFEx49nw0k6aKnls3Nfw4oWUu01nA==

This series makes two small updates for MT7981:

- Patch 1/2: Add stable labels (uart0, uart1, uart2) in the SoC dtsi so
  that board dts files can reference them directly.
- Patch 2/2: Update the OpenWrt One board dts to define serial0 alias,
  set chosen stdout-path, and enable uart0.

Both patches were build-tested (dtbs) and boot-tested: mainline Image+DTB
built and loaded via U-Boot on MT7981 hardware, with serial console output
verified.

Changes in v3:
- Patch 1/2: Unchanged.
- Patch 2/2: Drop disallowed 'current-speed' from uart0 per dtbs_check.
  Console baud is already specified via stdout-path.

Thanks,
Bryan

---

Bryan Hinton (2):
  arm64: dts: mediatek: mt7981b: add labels for UART0/1/2 nodes
  arm64: dts: mediatek: mt7981b: OpenWrt One: set console UART to 115200

 arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts | 12 ++++++++++++
 arch/arm64/boot/dts/mediatek/mt7981b.dtsi            |  6 +++---
 2 files changed, 15 insertions(+), 3 deletions(-)

-- 
2.51.0


