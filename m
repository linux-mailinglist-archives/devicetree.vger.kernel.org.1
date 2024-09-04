Return-Path: <devicetree+bounces-100148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E5D96C721
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 21:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D92B283900
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 19:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7398B1E2015;
	Wed,  4 Sep 2024 19:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="U5W0l994"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42CF1E00B8
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 19:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725476843; cv=none; b=QcQUjQ5koDqIy/LA+9OTqE8EEVSgIa1XCiaFdPZe4w/weHANWhW4hRuFgKfRq4INvIzfF7Zo9pFNID4hJObGcYAKizGotx4QFWBR6PuEnyCG2T5/CWMAAuU+L7cww38OT3EON+kOtFdizVBwhuIQX9AE2cE1SeJtIRUup6ZGA9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725476843; c=relaxed/simple;
	bh=0cqMWQLpJyqPw5707unsS7mIHvWf3eFLZ2YM10xBDUg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R3wnU459DVW/HValUrq1cAI2VqmgLq0/kD0uotDxVPWPc0BCSvMqnMDR0zSDxpoH1d9HqZc7pJ7P5zL5+yi0vW81MpjWtFwY53itJYDH8lxhCFVzjnDAoIPd2dssJUtOQQAkj8EYIuTyKk/pKpeGHxLbFeBtPBRpboB6l6kCEd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=U5W0l994; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=9BuYuSidvIjR+3Mos7ls/Py6h53izj9brBb5zQfGsjY=; b=U5W0l994Jnb1sfFoekNSFwfqye
	pD7wUXGSV9T8Po14YmvUBCvzIpTYLTUAhDAYB1t1W2oZ/8Z5nFbDvPLmNL4L+qWlVCProXRtSrRxf
	XQYLUA21QJqnwTbaXmpXvD/CRzE8C2lNR7s6G800zYFYprNKHI4tFbGPAijd5wpZraHkiXgyi/hWY
	k1QF2mwnuVEP6DI5VFeAbig7dBmsrn7oAIFiQ12bW7Al3cmTVucYbHTZ+2UJ0QEgG33eZ6UyancPe
	3Xh75MfQ+5NVMZCJi9ewqn7oGtH2+1UKpOB1zTUdp/ZPZdUlTFSUFExVFQ95VkIg/QfRyt/db734G
	NLrjks0A==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slvLY-0002Po-UQ; Wed, 04 Sep 2024 21:07:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	Chris Morgan <macromorgan@hotmail.com>,
	andyshrk@163.com,
	zzc@rock-chips.com,
	robh@kernel.org,
	jonas@kwiboo.se,
	conor+dt@kernel.org
Subject: Re: [PATCH V2 0/3] Add GameForce Ace
Date: Wed,  4 Sep 2024 21:07:02 +0200
Message-ID: <172547678277.2721598.16481405618414618878.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 29 Aug 2024 15:45:14 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Ace. The GameForce Ace is an RK3588s
> based gaming device with a 1080p display, touchscreen, hall effect
> joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
> and support for a 2242 NVME.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: rk3588s fix sdio pins to pull up
      commit: bd60cae2932cd123d867bf93bdadc4bf545fcdce
[2/3] dt-bindings: arm: rockchip: Add GameForce Ace
      commit: 3e5be1d7e7ef3dc5413e774e580f0c2d14aa6755
[3/3] arm64: dts: rockchip: Add GameForce Ace
      commit: 4e946c447a043c88b5db38501f3af174989dcc94

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

