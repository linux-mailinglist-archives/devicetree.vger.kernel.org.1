Return-Path: <devicetree+bounces-235873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB64C3DB4F
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 23:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4D3C188D027
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 22:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3313B34B404;
	Thu,  6 Nov 2025 22:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="hMV/MBeq"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605AE303C8A
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 22:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469923; cv=none; b=cFL+JnlOGReh7hJD2DUOZnNf5tLQOloRJM0+2IZMvA+SwCVV8brI/q9f2CDLfH16B0c4zkW3URKv1NO80ezWFpJLKA82dALVgygypmAgVBBmaCoFyF0gfwjwshy5lDsARY7HvJWEbMzx9FhGYFoJWLAl3oCQXda/Efu+fwqh+mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469923; c=relaxed/simple;
	bh=IwcBzVQYP9EDcb4AxXZvmorlk5Xa+JDRcdtih+K9bV4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ks3o6cDkddjQ7mJmsQ/f5qUoEblHn55rJDVu5pEB2NK6ZuhLdQuCdIs107Rn9sBbb4SEVQp4Rk7Soc4hmDZK9N6+xAoGo6BIdiJhJuQ6AJ7/woC+Ea18OZFn+sNY6A9E92+JT3eSE/So4JT47IJoG+t7JEn7MwERPjXMOIuBJiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=hMV/MBeq; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jrjjUU405OtS9jaA/9txxzDZ3RrrpZf1xnaEuiiPuV8=; b=hMV/MBeqgJKvm2NRnoZZLMwnkV
	7gEIubkO50uQxglke2ZmVlRYLosSO25SCLL4e0/C7Jo8XjCYXPPg53C3PPYdg+P86qU7URgrjJjUF
	hp8dM9d4lkIDW1TfMtA6mv4cxd4cbBpVN/bVZxh/0oUDT7u/Y+/Oys78L8MEtpI4oRZwD/N5bM7es
	zd670wgw1yTuTmjYaBg6VunnImwniAngim/ROXOcB6Y91DMmD+uMRZsHzeaa1ptxZCZJv/+hO3yZi
	u9D9hPhRyMhRXcGXxrTRLn4qK/PIbA7RAqlXNOz6O3Jf5ZQ/fZVON2wj0XaxoiTb1itnnHvukO6GP
	e3RKPLwA==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8wB-0001pr-3E; Thu, 06 Nov 2025 23:58:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	jbx6244@gmail.com,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable NPU on Gameforce Ace
Date: Thu,  6 Nov 2025 23:58:34 +0100
Message-ID: <176246989726.210200.8690075173314380266.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251106182436.771805-1-macroalpha82@gmail.com>
References: <20251106182436.771805-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 06 Nov 2025 12:24:36 -0600, Chris Morgan wrote:
> Enable the NPU on the Gameforce Ace.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable NPU on Gameforce Ace
      commit: 8a429c58354a59fa3cbd1fd964fa2e310c47af4a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

