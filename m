Return-Path: <devicetree+bounces-248380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D75CD2069
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 22:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C006B300AFC8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 21:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F363E2FF653;
	Fri, 19 Dec 2025 21:42:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC88125A9;
	Fri, 19 Dec 2025 21:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766180563; cv=none; b=Mw2VJPoekuY/K2tHwc+brTIKqjSJD/f1jK3M0TwO1MuouhL479Gtqruws3kZts6677n5ucMKtnTGr9Ip1rOvx53F7Z8TWNeF0z5xGaRfnhGuhO/d5tfvUn8EI/xCgnlJbXq0fH2muHmAM0JZ3k+FtTXUBA9QWUX3o5GeSOco5EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766180563; c=relaxed/simple;
	bh=NO6cug/mT4Quay7r1JX0jvpgPANtems/0Zrt80SnQjY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jgHSBd/l0r84pqOkgzefyiSN+HLiObbsCckPtPslKlhYWlugXSnw+BMYiHst4/dS46L68jzxc6EoqyNhGHj8ji+m3U7qqpUdYXGeCIpmmbnVTJ0pUb/I3GsALGKo7BdJgxKOeMg9rhKkdSGZ9sT7cbKrVtgyv3KBF2Hby0gzBqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from ofsar (unknown [116.232.18.222])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 514BD341939;
	Fri, 19 Dec 2025 21:42:36 +0000 (UTC)
From: Yixun Lan <dlan@gentoo.org>
To: linux-kernel@vger.kernel.org,
	Javier Martinez Canillas <javierm@redhat.com>
Cc: Yixun Lan <dlan@gentoo.org>,
	Alex Elder <elder@riscstar.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 0/3] riscv: dts: spacemit: Add PMIC and regulators constraints for Milk-V Jupiter
Date: Sat, 20 Dec 2025 05:42:20 +0800
Message-ID: <176618016976.76638.11221127377007758575.b4-ty@gentoo.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251206134532.1741648-1-javierm@redhat.com>
References: <20251206134532.1741648-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 06 Dec 2025 14:44:52 +0100, Javier Martinez Canillas wrote:
> This patch series enables the i2c8 adapter, the PMIC, and voltage regulators
> for the Milk-V Jupiter board.
> 
> The power management hardware design on the Milk-V Jupiter is identical to the
> Banana Pi BPI-F3, so the DT Nodes were copied from the k1-bananapi-f3.dts file.
> 
> I have verified the I2C address and regulator constraints against the vendor's
> downstream DTS to ensure accuracy. I have also dumped the regulator_summary
> debugfs entry to check that the regulators and constraints are registered:
> 
> [...]

Applied, thanks!

[1/3] riscv: dts: spacemit: Enable i2c8 adapter for Milk-V Jupiter
      https://github.com/spacemit-com/linux/commit/f33ccc2316304f3a71e40e53f1568e75042b0a4b
[2/3] riscv: dts: spacemit: Define fixed regulators for Milk-V Jupiter
      https://github.com/spacemit-com/linux/commit/ae9d03f8aec76c1bff21083b67c211238d7c57b1
[3/3] riscv: dts: spacemit: Define the P1 PMIC regulators for Milk-V Jupiter
      https://github.com/spacemit-com/linux/commit/7d307daa12b15a97269f577d5dcf50518758b568

Best regards,
-- 
Yixun Lan


