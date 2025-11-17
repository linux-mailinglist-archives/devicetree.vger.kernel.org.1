Return-Path: <devicetree+bounces-239414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC43C649E6
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A4493A7709
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08466324B2E;
	Mon, 17 Nov 2025 14:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKB/K+QG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67CE2367DC;
	Mon, 17 Nov 2025 14:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763389293; cv=none; b=DOK9UKys3kdNlmJAis/73DnTSMiqXpl7UWSJojHadjJvbZnhU8/3s4/THdVm8u1alWqqAvAh0OJPw8O/3X2XlApMBpky/mSMLv/PV+fmEt8jZqlDlIGCWEgJijHHW0ELxEnr9ZLw9WfZjB8H02+DiW1D5uGhsG6KcIqKuzfvnTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763389293; c=relaxed/simple;
	bh=AmI6IljA9+P3I17TSYilirLOxEtpVOIbeLKzrLuc13g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VVSj93PPL0FYGosyxbt959PX1rM2gD2wYuiz/vAXkRDfuoJEs/ogZlbMfYV2ZoXzvEs3E7+je7OB2nspyMYpH/zyn9lKxEYRB4EuBgmTY1fhNev3qxLmEkRyFd5bmbmH+eVlo4WhZiaguGtXozHvH2WcWRO0VVeanvSCXuf7v9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKB/K+QG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91C9CC113D0;
	Mon, 17 Nov 2025 14:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763389293;
	bh=AmI6IljA9+P3I17TSYilirLOxEtpVOIbeLKzrLuc13g=;
	h=From:To:Cc:Subject:Date:From;
	b=CKB/K+QG84jt1fsMM1a7f7FTIaZga0+0X5YUN7TOMmWCUeCgugd5k8oJFZkGS/Jh2
	 KPiKRuvVwwd/yRF7RTnZQElmkkt9wJQL5sPtz7Z6GTJ+nLcBpdlqaPX5MsOvO3lJyR
	 AH/RWvbuMZ8labZ5EjKRtDK3AznI0ourJM+C2Dw1x5C6yzmQNvf2oNM0NEPsdFrkH/
	 kDTyxO2tf3dgC0AuDsD21EdVJNmPQ8jXClgqyLj2Ddc/TDVQ8G2IdQkCD6lCdJaRoo
	 vJVF11yrTNaNq0RWIHQYqEmcOo3rEZl2ONDpOA6Inl0vNGh+gHHYrw0/39ZXO6OrM4
	 U1oUGwz7rAQ0Q==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1 0/3] pic64gx soc driver/binding changes
Date: Mon, 17 Nov 2025 14:21:19 +0000
Message-ID: <20251117-mashing-cursor-6e965a77ce6a@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=897; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=/pke3GKZ8uFIcCycTH1DCjROHWMVePhJQeiAe5cDM9E=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnS+rEG66alnzt7mUvdpWqrktWeS+yPCvSfCmSUOO1ze tnuMM+/o5SFQYyLQVZMkSXxdl+L1Po/Ljuce97CzGFlAhnCwMUpABP5/IKRYZL4lNM/ikU8fv/Y /bt7cnS6cbibb4e8kepN/0/qBxakP2BkWGb0YJlXzIUZe+rDk+X4neo/pPx4tTvj7aIF/+/+cl4 gwQYA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

Mostly this is stuff that PH did last year, but rebased on top of
current work.

CC: Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
CC: linux-riscv@lists.infradead.org

Conor Dooley (1):
  dt-bindings: soc: microchip: add compatible for the mss-top-sysreg on
    pic64gx

Pierre-Henry Moussay (2):
  dt-bindings: soc: microchip: mpfs-sys-controller: Add pic64gx
    compatibility
  soc: microchip: mpfs-sys-controller: add support for pic64gx

 .../microchip,mpfs-mss-top-sysreg.yaml        | 14 +++-
 .../microchip,mpfs-sys-controller.yaml        |  4 +-
 drivers/soc/microchip/mpfs-sys-controller.c   | 74 ++++++++++++++-----
 3 files changed, 67 insertions(+), 25 deletions(-)

-- 
2.51.0


