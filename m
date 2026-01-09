Return-Path: <devicetree+bounces-253411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B69D0C1D0
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 20:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B99133016DDE
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 19:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5591736403C;
	Fri,  9 Jan 2026 19:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="IyUtYcgV"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A9635C1BB;
	Fri,  9 Jan 2026 19:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988331; cv=none; b=j9zhCUZJt+nG/0loST/1W+dCd23Ca8oKFNCUvH4K8IwzmNXuukgheHM7mr/KzkA+yhhxxksuNqRsOlG7tnnt2S4Mo9aVI2xG5NQbvp8F+Ic5+40PvUhK0wQG6OkYe0WB3g9e7eWyG6G8Ricbc40KTMFhrgfDSJGS5dshKEl68Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988331; c=relaxed/simple;
	bh=Xxbz+2Jpq/5HzXIeYrJ4d0kQWPh8l7HdUqWCXG8p0eo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gavJg3yEmAO4sOJOje9AFHWMxxyVroEs/12gT4dxpm5WvXngTz7vpY/sxgUn65EVwyV43SJnGLDBiDN9892wgO31MGZB3PdDjee4GTSVylu+0fT4Xn4g/E976NoyvhiymILZhB26rdVA8TN3MP4292ufnh7mMjhaIwFY47Agfa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=IyUtYcgV; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=VzAAm/QzdcX+CaBz0hkCJXnCthpHe5k6XsYpJKm2doE=; b=IyUtYcgV1l5rNqcUrdl254yINO
	OxrKhI2z8EGNiqg2vZEfG383PtUU2BfFzr6Z6qg1iYYMV8v//JHxpOuf5gCXWVOIwnRiBHy4795UW
	d02Lq9TDD1sJaZ6ekFyQ/g9aqyfwVC1u4WlyT8MtznGAiEH0GGs8UgJ95TMCXxCozpcT1t+dsJve/
	2jj7Fz+qg4Qn4zgyvngbNMzGLxGDMFm7OTnB24s/se/b0uX+WTKrrAT3icEa4cMFJWl11Z1YfsSuR
	xYbmvXKOPxCobNOamp/qVZpb5ukj2UdKTK+ioQ+0atvvoqbE2bkM766YtB1lubdj7gY6Y7DM6RquM
	F4xUtNtQ==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIWj-001fth-7y; Fri, 09 Jan 2026 20:52:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix gpio pinctrl node names
Date: Fri,  9 Jan 2026 20:51:56 +0100
Message-ID: <176798831389.3446147.13403203237802030067.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260108230623.1349310-1-robh@kernel.org>
References: <20260108230623.1349310-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 08 Jan 2026 17:06:23 -0600, Rob Herring (Arm) wrote:
> The pinctrl node names "gpios" or with "-gpio" suffix collide with GPIO
> property names creating false warnings. Add a "-pins?" suffix to avoid
> the issue.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix gpio pinctrl node names
      commit: 5fc045974cdeafd16b25f2c360b0cf48502dd1c5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

