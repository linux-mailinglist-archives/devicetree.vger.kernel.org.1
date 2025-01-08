Return-Path: <devicetree+bounces-136548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBA9A058DE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:58:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7CA297A15CE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E001F8AD0;
	Wed,  8 Jan 2025 10:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="fWdfcf4f"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F11B1F892F;
	Wed,  8 Jan 2025 10:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736333873; cv=none; b=e5B0CR/WbjZEZfD6wcN08ScT90QYK4chv9kFcxsBCcDarb4kafJicU3gcCiDT+CWFHMYty43OX3vwMSgvz3np5OV1zmFJ2jvcuZ3CtbK9b+3gKv6jqiCIJalBuHMJzm6JkYBomWr3FCJeOnQLeYSobU1/t7Mr5pRWPIWUdhAVKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736333873; c=relaxed/simple;
	bh=SPk7SWmBLXBA8EBNLA+hitjRyT3EOBsV7EIFKg6Gb64=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ckT8pr47JWX7tZNhrit3Z9sA968yBbTShLCUwV7LC4gbukXimuBuwLO94YXvSbxjf5mzB/LFJcTng161KNqAWrBXKMXK6FiEtuHYOfL81TwYOxURLVWtsgkYV8tULgn0S3C8DAY0erMpIwHSl0IerLEmiT4UTaXswX1b6isdfy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=fWdfcf4f; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vvaaJ0KDqB5iSmktZy7n5APrAirU6bxznimNQfokR0w=; b=fWdfcf4fWvjkel06p/VucI6Ibd
	Q9/PU4qrqPzOvdTLCUtVKU8itE3+KBzCCB/XRG+8X9nNKIxARVOjyfwGu/jA3x1iDMWIa2nqXArEN
	5pyig5Ta1yljmyJWSARSHu3WSB8oKEpjfSV+htn7WxWst0Sx527SUx6023YhMznIEiaWxuznnnKvD
	Mls2XgUaKd0qBrd92GnA7sDnAkQhZ6odrR5rGZOVn/HEb4aCv5lgnRJ5fAFg8uRyNoUNF3hG934BI
	xof6CYlwg2rXA4TIE146ToBxxNmuylaXJRLuven1ipLl9d7xFGkRG5IfON+F8JKcE4AyuygUI3t7h
	cMdlTHGA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVTku-0004wu-W0; Wed, 08 Jan 2025 11:57:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	detlev.casanova@collabora.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [RESEND PATCH v1] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
Date: Wed,  8 Jan 2025 11:57:34 +0100
Message-ID: <173633124853.2752317.13211299789409160578.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241231091841.252103-1-andyshrk@163.com>
References: <20241231091841.252103-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 31 Dec 2024 17:18:41 +0800, Andy Yan wrote:
> Add hdptxphy grf syscon compatibles for rk3576.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
      commit: 39b771a85f6bb8a3c7643765c676055b7bbb2604

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

