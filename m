Return-Path: <devicetree+bounces-253410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF91D0C1CA
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 20:52:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F26D30351EB
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 19:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5561B364035;
	Fri,  9 Jan 2026 19:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Az7xRXFY"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A2435C1AC;
	Fri,  9 Jan 2026 19:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988331; cv=none; b=ggnwppc73b+JRpqWW65RD4m1KPybYwM4ddcR1DF10Hd7sVU7oUal2f65eUCEYHGNQj8jOAZ4+ha8Dtn2eb4brZh+2VKNN963p/Rw5eHbGuat15AF9Bvt4MqNXHbucK7Wjpisva/4F06cUVMz7kFhOEUUN+phGW9j7Dcd7CiOZzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988331; c=relaxed/simple;
	bh=2qaHaMYLv5Wg+Tg8xrlhL9/SMRIYer5o41czdYguzgg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PgygoqZwe5cDaRLnXGQIHDjM/C7A2UJoWnY8S+mWLe+6afqrX6X9eJzp4rdvIK76qxVjY9D1I1YewIXP4BxBMKQxSCyePALw5/i54hAPK5Gh6xWpD46mUdqAvoRZVDHIajNDDExlovZROPreFRDtuNODd6/jGxCflFmJuxQluVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Az7xRXFY; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=PDoxBGvur96sn5UQABuJBDOzxmuF+TGUGL1bD2paGak=; b=Az7xRXFY+vWHCJXqMUIfTMQ7nJ
	yQM+qcsK/mjBui8Bx9ZV8bmNSTgV/ZtuLXBfVbSToUy0IjWu4/7ePv1rTrFWWgWcoXSL2V8wkQvn8
	47cCxQkCSKC5peuXoWa3QwPBP78nq5kA/vZpm+Z2T/GcoKsVf1PLD6OfDxRtks5wq87IhIJBzeEpQ
	LWYXT73dORYYdDXteTxd5qfDGm+skyEtuvDJxW9XtyQs2Zv4Wyk2IQ6nmBh148zIvpUBTipAuT4Wm
	1WM9YJb5vQR/ueNjFH7siKEZfxrZm8uQHZH62lFRvWI5wbxoSK98fVkpipol0cCSyGlGTqv+bGU/+
	QE4FNyUw==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIWi-001fth-WF; Fri, 09 Jan 2026 20:52:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Drop unsupported properties
Date: Fri,  9 Jan 2026 20:51:55 +0100
Message-ID: <176798831390.3446147.10789004722764768066.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260108230607.1348879-1-robh@kernel.org>
References: <20260108230607.1348879-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 08 Jan 2026 17:06:07 -0600, Rob Herring (Arm) wrote:
> "pinctrl-names" is not valid without a pinctrl-N property.
> 
> "max-freq" is not a defined property name. Maybe it was supposed to be
> "spi-max-frequency", but changing to that would be a change in behavior.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Drop unsupported properties
      commit: 56e7cc8dadf91cd2164e5d6dac9258f448d50182

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

