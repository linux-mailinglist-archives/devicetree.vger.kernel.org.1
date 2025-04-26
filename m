Return-Path: <devicetree+bounces-171214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2ACA9DD49
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 23:46:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 192CA4647A6
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 21:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9D61FF1A1;
	Sat, 26 Apr 2025 21:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="NbepKxPA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1811F5827
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 21:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745703989; cv=none; b=GSVOVvfLYox5O+r18pJgIrzceulAlT9rFlPZ5TUKU03SoYZnTQ2s4tRxg/VjJnG9QzaNDwCeGKTCAghosIf/iXs46ylbVgD1WFL2nRi3UMR9qWmTRbEbzoJwA+Dibp6mP/fyPJXJ5qEFvWO0BLr+K/j38OzoK0PUw+UhXChgBBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745703989; c=relaxed/simple;
	bh=7MFb33KaEhHbMmAAyLRhQ0nev1tD+v+0SJMDU5n0dow=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SGK4nwMC+8/xV9d4pzheAMObOUhUBcwtEFpabiOooOW5YS/+hHKxBJAt9WAZTDfN7+BkyIQjv1Zi3+FbMzNL6SX1vAkh4kukXKUtaWLmv/8WN93Re111oiWyFZzQk8VIgkYoisV+jHf3Lk0LjGf4ZdS5B4puw/mVU93jTMTeZ3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=NbepKxPA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=/DTFEM+pkJ+Mkw7kghTicDYEft9ISUGNnXmoLxJua+U=; b=NbepKxPACI5oL+DhYhHW7wJTmx
	uYf7JgEI7jyTA8PY6+xATVWtG12CnZU1zI8k7Q89BYhAegMZJnLM8u+sz1WQYIVr+T8jL0FhZG8ck
	MeWSE7tQ0Z1LgvZuB/HG8L5da/9avohbETcVsBkOJkXBhiIcwotf2J7JL5S1Bqa2YIdU4R2sCLbDa
	Ru6UVQBg0iNunr5Qz/z/5fIh0sHtc4i0n6CRRlZl8gKdCLrodX8DgoHnbC8jd5LERUFx0EWQmYk8N
	isg1nb5KqkEK5WDcOy+uQW6nhUyijWpTS3pc304c8imEpmUNO+kXDmonm4XXJ6AvY1qz4nxIK/PWY
	sB+tLwdQ==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLt-0001OR-6L; Sat, 26 Apr 2025 23:46:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI0 audio output for Indiedroid Nova
Date: Sat, 26 Apr 2025 23:46:14 +0200
Message-ID: <174570370123.31943.14093231055934423991.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250415174711.72891-1-macroalpha82@gmail.com>
References: <20250415174711.72891-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 15 Apr 2025 12:47:11 -0500, Chris Morgan wrote:
> Make available HDMI audio for the HDMI0 port.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI0 audio output for Indiedroid Nova
      commit: c79b4eb98915de877a3e344c9444635b5599f750

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

