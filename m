Return-Path: <devicetree+bounces-255606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60030D24B3B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A02930249FA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44C3A39E6DD;
	Thu, 15 Jan 2026 13:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/hNTj1P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229DC39E195;
	Thu, 15 Jan 2026 13:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482880; cv=none; b=aa4selTIfso6rOpo28KUiJy8wSVoePzKvx4sxv3nNoMCZAfLCh+mypmnwsvWulaMA0v+8pwT/79+SOQQmtY65ur6By09FHPFK54gk3m/6sSIcBjMBvrAfYoCWCE23Ha4/Q/T3GyOYuvX8tby0Qk8f7bmocz3dFvSuEA4PSV91zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482880; c=relaxed/simple;
	bh=V3PyVuhXJCYy1r/dprjMiYGS0EpLNXI2zVZPFrpF0uA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hDyGKXFiRrCuzIkRYlTOklnVvghK1cXHSnz/A3hN4GT8jvKNNL7/Jfgxc9wkd2syQmQc6Z8V2jt6xz51g6zyY6cteny8Cm7s6jwqaj/TLCiFZvE9W8SvVJYlZwwVJXpsRX4HQNbsfhi8DDLOsQ3EUkGoOppOEt4UeL0iOfyA8j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/hNTj1P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A5E4C116D0;
	Thu, 15 Jan 2026 13:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768482879;
	bh=V3PyVuhXJCYy1r/dprjMiYGS0EpLNXI2zVZPFrpF0uA=;
	h=From:To:Cc:Subject:Date:From;
	b=l/hNTj1Pp4RmPs2K60Vk+nP2smXSDZq7cFeMNF5nHnfbTWC/uSr97J3lpi4s75b2U
	 dcznB22kZGQEJ625MD+kLHHQN6PFvACWFp/9F5jg5+ymdH80rZwArc3wgJ6G1bd4tk
	 PtY4/WgRN5zYlVXqb2Vsc8JT+e2dm7yzFNNFBctNUhZhx7IKtln5uAxK37ZdsUzPFj
	 1BzDvVnZjTn5Y55ssotDB4J6iw4WX4R7dLgNCWIqkIYAsZznx9QxPqGXOzCVgLr1qS
	 1xxM27dM54CpTDI5YFnC3nbPxuv988lKSBECRz/xtHwSUdhFHLZbs9jhJiiVFCLw8A
	 CfK7zAdvelk+A==
From: Michael Walle <mwalle@kernel.org>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Udit Kumar <u-kumar1@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 0/2] Some minor fixes for the SMARC-sAM67 board
Date: Thu, 15 Jan 2026 14:14:17 +0100
Message-ID: <20260115131431.1521102-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series contains two small fixes for the sa67 board. The
CMA patch will fix larger screen resolutions for accelerated
graphics for example.

Michael Walle (2):
  arm64: dts: ti: sa67: fix CMA node
  arm64: dts: ti: sa67: fix SD card regulator

 arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.47.3


