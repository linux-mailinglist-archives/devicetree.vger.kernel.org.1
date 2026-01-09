Return-Path: <devicetree+bounces-253414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEF4D0C1DF
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 20:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 33497301582D
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 19:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C848535FF70;
	Fri,  9 Jan 2026 19:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="N+RbX1Ac"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443DD3612E4;
	Fri,  9 Jan 2026 19:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988341; cv=none; b=FtmakyR5NJF7OA5rAqwVEzQN8nOPvI5sjDBlgAcPJk3/wzRjgROBUZC7X051IsR1o1hSLgEK40Rpt0xJ1t4/6PROY323ZGRsCfyYsBOkJ6vtH37Vv/lm/Zkr1UH9o8lXsFzM475FlWdrFAfawkuGc9c6b5/9AkFqehhttZiWbfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988341; c=relaxed/simple;
	bh=zBUmso4wW2PYVZ7VRNrxrqU9bBFJ09xUYdsk18dpwZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MpyRoGpk7NBNfwOPZmhFGhk1KDPnYULcq8/3pQGWN05UyoCSa9w0ZWK3LbS7LRE4kRZ2QPfRjgLkL6rmgXXhIo2LLFVBoOAQxAcYfyQ/pRYK4lmLwla22h/lvP/xwA1UNxvYBVepevYr1nPA69ZXYZB6RpZO82fM3OivtL5LcmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=N+RbX1Ac; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xjbjUpsAsCVJ0RrUntwNzm+wTNXU0lp1MnQ6qvk5YjI=; b=N+RbX1AcVuJ0MQfIEnfmvzjJjL
	6cK/v3XBYoW6UOL9O12FRfKl1MfNlt0OONGWPGXpsQkio/yN6FeRY9uQJ+pQipnXEVKt4TBsbXRJ+
	85ObIbVp3U+zig0MfKBWhcGmb28xY4lzN18/EsbnwwnjFIIB46/ltrw7vCpwodjxe135nLzi0Epbq
	ZOBQJAuwS0ZHHCjKT8G+T0W+r8+akZZIDtFknQJ3XagM6Ex0I5sQ6ODf/rdHmww19oZ71ICIF+TLS
	kzwyyiC6USvjcySc8VZKpYsMwnnhng8MtShA+Lb8P8/5RjTg/XbweYc83w+mANb7OlnukurJqvA2h
	jJmSCDeQ==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIWi-001fth-Od; Fri, 09 Jan 2026 20:52:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Petry <petry103@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Damon Ding <damon.ding@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	=?UTF-8?q?Valentin=20H=C4=83loiu?= <valentin.haloiu@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable second HDMI output on CM3588
Date: Fri,  9 Jan 2026 20:51:54 +0100
Message-ID: <176798831382.3446147.12018502751434054481.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021160603.96934-1-petry103@gmail.com>
References: <20251021160603.96934-1-petry103@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 21 Oct 2025 18:06:02 +0200, David Petry wrote:
> Enable the second HDMI output port found on FriendlyElec CM3588 and CM3588 Plus
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable second HDMI output on CM3588
      commit: a770eb1f3219dfc4c28dac66c96735fa8acba4e6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

