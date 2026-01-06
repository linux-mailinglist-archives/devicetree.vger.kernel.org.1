Return-Path: <devicetree+bounces-252077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1471CFAB3F
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F8DF32D394E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12B123563D8;
	Tue,  6 Jan 2026 18:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="tNoDj4Iw"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7A63557E0;
	Tue,  6 Jan 2026 18:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724937; cv=none; b=IxQuJ/4fhkrghwVfFwhbWYJBpR/pKzkOM0IieWFCCbpaNBsi1JuiXSs4XfXA9vppTeQegtX5JvpV+B/IklnGQe14t2ZeVrszk+WwIhLYuZwSD6kk1/1ywOBrLQY2pN9AsElThmEKHxByHGLPaYYxeG30ai1MscmQeoS7aMxBy5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724937; c=relaxed/simple;
	bh=ZFYn2NVGW+NnM+HCNTEgwBU5OZbK2ycOIikaISDAjfM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KTXqxTx724+I3R/Nw69QW7iH8xmxZ+n6ArW9JogsvjIZK7NbxPZ4pCHtBq7RxWQ92tjsyXCKHyJMzwmUENnAEyPnWq8brhSTOVpzRGsaWf+iL6lUt0KO/xqjqPGsc2lpsUyhmax8ZDaX82RYtpX89q6G2e4I3VYaqEppMSyMrE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=tNoDj4Iw; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=t9ScP5d8wekTX42aNwJVZH0BUxqMs75Bpo0k3QnzEAM=; b=tNoDj4IwtaXOKP5/uLMDTqaM3w
	eapxoIpWRDskQPf0akaZY8cKXLFyfnGyAqPyUtlvm/WOqcgHB7f61UXqbOZJA+pjNK2LDKONJ8u46
	Juv/aqauyVQl/H+mGEzixvLJfNcCqS8z+AOEzM5pgOtLAFJgArebT+uGyd8WF4+kbOUSRlxwyYMrK
	XrEi9nO6MrW5MUgxmWZRXuZOKhUAFZwTOsAgOYKcgKfuvPsblLeWFHeEJks/SKqwThxtOx4/nbikW
	IjLkThjNWjTOy2n3Js4nPLb7a/NVyR8cy/++jDm9QKVV84Qq02wrofM4jI+8Y3Fg5DLcHPwi85zPv
	XENjpNjA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0P-001Hfs-13; Tue, 06 Jan 2026 19:42:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-roc-pc-plus: Add missing everest,es8388 supplies
Date: Tue,  6 Jan 2026 19:42:03 +0100
Message-ID: <176772487182.3029798.12947667629234941436.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260105193245.3167500-1-robh@kernel.org>
References: <20260105193245.3167500-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 05 Jan 2026 13:32:44 -0600, Rob Herring (Arm) wrote:
> The regulator supplies for everest,es8388 audio codec are missing and
> are required. Add them based on the schematics found here:
> 
> https://personalbsd.org/download/Documents/SCH/ROC-RK3399-PC-PLUS-V20-20210809.pdf
> 
> With this, "regulator-always-on" should no longer be necessary for LDO5.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3399-roc-pc-plus: Add missing everest,es8388 supplies
      commit: 77712fe6847b2471a558ec88868311a4784afdce

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

