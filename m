Return-Path: <devicetree+bounces-58422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BC88A1EBE
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 20:43:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CD0728B555
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 18:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1F0E3D9E;
	Thu, 11 Apr 2024 18:30:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F97B14AB4
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 18:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712860228; cv=none; b=aFln+sd17J+F+M1r3x0/n579jsfEnzzq8Y/41Lmo4VjYiky4nUPXmTiBSgXWmkEYb0y1D3DFZ0ly+ZUZk5h7aD8D5qwPpOBzBI72rRddAgR6qLny+5XDxXbhYYozJX8Nj2i3xoUfVMiSyX2a6FKteCCNQO525dAFDdUZfumiRw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712860228; c=relaxed/simple;
	bh=c3HRn34MVf0d26oGm0UFgI9ZmWBcXLxr5FoSV2EPq1c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ow59IoXOEmfaBXvYHlud2ANb7KLbiNouHZCcIX38eRkAojaCvn0DopFk+Ftfkf3lGRwAPQnaYeKxohzWdzcQducP4bubdJuzMTSHWnNLH6Pq6R5NRr5aluuqCoG0H+C9RiGiEUtl3oVTHEKnQ1biCiUd+U2U9k852cF/d1y8Y14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzBk-0001so-RH; Thu, 11 Apr 2024 20:30:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/4] User Requested Fixes for Anbernic RGxx3
Date: Thu, 11 Apr 2024 20:29:52 +0200
Message-Id: <171286007456.1886699.5340406203472105907.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 25 Mar 2024 09:37:25 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Users have requested fixes for Anbernic devices to help with some
> intermittent WiFi issues by adding additional properties to the
> SDMMC2 node and by making the sdmmc aliases consistent across the
> device lineup. They have also requested that the model name be
> represented consistently with both the manufacturer name and model
> name.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: rgxx3: Add additional properties for WiFi
      commit: 6bc8e01c7284ea1f56c6506f38c2ba9474db497a
[2/4] arm64: dts: rockchip: rgxx3: Add optional node for chasis-type
      commit: 8db673210ae24ed44acf15642f4abd6d4b4cae52
[4/4] arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices
      commit: b41b83b701056421bdc494c8e1488d38f2990c3d

Dropped the sdmmc alias patch.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

