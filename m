Return-Path: <devicetree+bounces-252080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F09CFA7AE
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:06:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F74A30141C5
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 19:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D699A358D28;
	Tue,  6 Jan 2026 18:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="siNHS6uO"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF8358D25
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724947; cv=none; b=OrOWYgIUdx0OUaS20HxUMxYFlCiewZ2BhXotREcb3vP3w7jVvlv9Tyun7iwxoO0sm48SyLiKE8yN2l5kjyTigDlEcJLdCYfl4KDpxMtbG7WpUc1W4HdyX/ygxIXBlKL4mXUw3wCuE/6sYPWQHlizmMeqi7yrwoBbNvTX1PXh8FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724947; c=relaxed/simple;
	bh=763b+kbb2WO1/fp3Ikd3TF1pP5MDdg1EE23x7NmyJGY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b2IPv/gwsQQNVfgUv6U6cxTOSNSvUx4O6w3a29oIpPB/QhJ3Wdjn5JG+dmsohGFFWk67KnkWk4n7HOQGEZ5vUM+PmndcsOX6ENpRdVwESFinPqJ2Ih/lE1vBMPkOHtnvfuO/Pq5epdrNrGsf6MW6xRZuVqRSSCDu7Nl+ytLquKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=siNHS6uO; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dy6XG18uHyaj1R13hOuexatpPOJvnVgc2qbu+yr+w9o=; b=siNHS6uOGCbAG1wXogNhMJuT+2
	ZoaFsT1thIWu3gPZxhQ0JjSMXjssn6nGp+tSYlajffwNg89r55xQK1FctJGfW+aGUgNCku+EY7EPn
	kczZc7wWpD3wSL3K2nOQP7cLZYv290OiIksmeNHEdKxomIDIkiies1LMeafjMrCabJ/8L9FnMbcJN
	d7TJb/a47lVwOILEnolQXcCNHtIfCdrOqStbh02BAalhzQT3gv9fj/3WyIX/xc6VgE8xP70fdBLk+
	cqXUCAf7mBGRVvO0fai6zSocXm6mMxY+iipWcmhW1Llv0em7YxJUZCRzB7+6Q5r5VRYd+PC4nbe9j
	IlFr8s2Q==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0O-001Hfs-Da; Tue, 06 Jan 2026 19:42:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jonas@kwiboo.se,
	i@next.chainsx.cn,
	kever.yang@rock-chips.com,
	michael.opdenacker@rootcommit.com,
	honyuenkwun@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: fix description for Radxa CM3I
Date: Tue,  6 Jan 2026 19:42:01 +0100
Message-ID: <176772487186.3029798.11493005388525764062.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251229045838.2917-1-naoki@radxa.com>
References: <20251229045838.2917-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 29 Dec 2025 04:58:37 +0000, FUKAUMI Naoki wrote:
> "Radxa CM3I" is the correct name[1], so fix the description.
> 
> [1] https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: fix description for Radxa CM3I
      commit: a1823b88d35f1bf04ec4e4f86b9206f699b362d0
[2/2] dt-bindings: arm: rockchip: fix description for Radxa CM5
      commit: fc808f80cf298caaa403755ca808cf650844f2f5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

