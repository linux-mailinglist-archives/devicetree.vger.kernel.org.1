Return-Path: <devicetree+bounces-240851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ED0C76792
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 6C4942B49C
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919972E11C5;
	Thu, 20 Nov 2025 22:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="uqK8DfX8"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E374126158C;
	Thu, 20 Nov 2025 22:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763677396; cv=none; b=Wd96JGjrirS4m2+Mz/uaS61cvnzH9K+ePUe1mn//BGFZJBf/3Dwp/A+ylaR5xP5xnCc2E8vOXdqBHpaN3bXSCMIM0mqIYKymDNEHeerhckZfnQAXrNwK8tW1+zwi+ZMxMVv0R3IUPnvhg1jFjBOrRoY7RHsFNCc+dDkHoQGnWYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763677396; c=relaxed/simple;
	bh=rSx65csJhfz6oeut+W9doKfE/m1hd6G2OLf04akX47k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IUI/+YWabCtZAaea1LmAJBbZU5cS63x3RjOSVqR86vBJq+5Bo2XfAyChTu8ef+0BtJSbxWZz+mk2OCSF2OtV/Rzhzrb7uJPBRaB4vubD06VITi4gb8KULtf4q9HNkCsMTsDw+BHjnaCKcrfoHpCtqtQDqvSbzFbQfirjt9nSias=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=uqK8DfX8; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gM84J8dLm2E5WJWGPKQkrFKN/hoKwgW1+D2ZGMc92hE=; b=uqK8DfX8KFOZgzW0W6dlbMKxzH
	O01MKfKYx/Yub0Qn2Eb5Z2ZnpO3wM5PLr9tPMACD3aayCkOUytAuC6CY84lq4hLGZ3sgkIMcK3Lhz
	3ChMb5ACrDx9CBUSLkXD0LOEIhyiCz5373wuTJjDO/bXoyq1RJh4G1kub1v1ZxH0ArnUvfYcvkGSE
	oduQaGW8XEf/rNfZP39jOAuqfZdt2s2F87ZKQjmSCLGVtYh7L7rrDViCvTrJYdrRVYCP8fzRIdzgx
	nL4yxpTJg7Niiv/kQGQhICec1UpI4M0o7UUtwF3FKLh0xX/SzX5ML8HV3/ab6xjFgMIev0+4ga+iz
	wKmRG1kw==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3X-0007Je-B1; Thu, 20 Nov 2025 23:23:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/5] Some cleanups and addition of another Qnap TSx33 device
Date: Thu, 20 Nov 2025 23:22:59 +0100
Message-ID: <176367711145.9778.8075871539964271822.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251112214206.423244-1-heiko@sntech.de>
References: <20251112214206.423244-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 12 Nov 2025 22:42:01 +0100, Heiko Stuebner wrote:
> This fixes the 2nd network adapter on the TS433 and adds the TS233
> a 2-bay device being otherwise similar to the TS433.
> 
> changes in v2:
> - add Conor's Ack on the TS233 binding
> - drop TS433 ethernet-delay patch, as that was unneeded and resulted
>   from me doing wonky stuff during testing and are completely useless
> - drop tx/rx-delays from new TS233 dts as well
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: move cpu_thermal node to the correct position
      commit: 15efa2414602ad4c411ea8d4113b87656ebe0737
[2/5] arm64: dts: rockchip: describe mcu eeprom cells on rk3568-ts433
      commit: 81f116991433d2547d7f350873cb4511ebcd4fec
[3/5] arm64: dts: rockchip: move common qnap tsx33 parts to dtsi
      commit: 35202606ea08b9ec2b1386ac937a729e25d5beb0
[4/5] dt-bindings: arm: rockchip: add TS233 to RK3568-based QNAP NAS devices
      commit: a576b51e13870ba957e13e6cc265431260a32a77
[5/5] arm64: dts: rockchip: add QNAP TS233 devicetree
      commit: ce0b84e766ad7b2ec5d2ac7840675f223640f3e3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

