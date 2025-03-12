Return-Path: <devicetree+bounces-156756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB54A5D78B
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 08:47:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BEC53B95E4
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 07:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBB822AE7A;
	Wed, 12 Mar 2025 07:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="cMBXd1jm"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33BA22A81E
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 07:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741765600; cv=none; b=qm/2xCpcICvUBZ3vfB8zcXGKEG4aiG3wu8F2JJfRw1zDl8/tyfV8JZWFrW4tD+v3LeQ+4K591NcjrkJiWV5IrWg0mcDKEZD7E38XUQjbSHg4cMUS/lgmpo94qJ1R1oBrexB6p9jDxwzZYyhpUmlzUuQoMCgf0CGAAwr4QO7gPxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741765600; c=relaxed/simple;
	bh=uQovPiZDtkPc2kTtKU2vAyXsphU0cChFvigHpQeIXKc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GP8GmBtVpOnrkO+qVdkN3LDoElnFkYxEBvUN3OCU2GbZ4zN6S4dLeya0dmMaIiPWAdPpSRuygGUQFBUneEZbrgNX2IokU9LJxmecQyEv/aRehdfW9BzXvrpMnmbuls4c80MhewjCzhFcBvAFezIlI/TEMfzcGjnNxyapGqOF+WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=cMBXd1jm; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=DV26id+i/ewtmpSTouvrpN5ux/gSJA+7Ro6w0hdJWB4=; b=cMBXd1jmwnOLFaPtfCRXeS00IA
	07TuLv6/2ZO/POdWCwMUx1Y2OPxQtRM0BqmXD7orD1AZbf73ZQQwIxNVgRIvxQb48hbET+YWO9tBx
	tAI547cso8Ca9NA2TfE7u7KM6rW4BklkCtFrqgWyPNNQ4JVkb8wcQfUeVd2M7Ur/xrcPJFC8iet6O
	IC3NumxJpx8vCHmpQQUpqRkrz5AXEmaA4239olno501iVCKu1eTXMLg1dg46c00VB8BEYa9ZdomDi
	nDkxov7T2Fsve++uGCA4e5YotZsJTM7GCNuzD7TLh975pF4fHZNfMP96dUjvdVMIxFFUncB/r0czR
	nrxztl5A==;
Received: from ip-185-104-138-79.ptr.icomera.net ([185.104.138.79] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tsGnF-0005zY-0p; Wed, 12 Mar 2025 08:46:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Florian Klink <flokli@flokli.de>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/4] Orange Pi 5 series HDMI extras
Date: Wed, 12 Mar 2025 08:45:58 +0100
Message-ID: <174176555629.249409.12164910795169233638.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250227235623.1624-1-honyuenkwun@gmail.com>
References: <20250227235623.1624-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 27 Feb 2025 17:56:19 -0600, Jimmy Hon wrote:
> HDMI Audio and HDMI1
> 
> Need testers for Orange Pi 5 Plus
> 
> Jimmy Hon (4):
>   arm64: dts: rockchip: Enable HDMI0 audio output for Orange Pi 5/5B
>   arm64: dts: rockchip: Enable HDMI audio outputs for Orange Pi 5 Max
>   arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Plus
>   arm64: dts: rockchip: Enable HDMI audio outputs for Orange Pi 5 Plus
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Enable HDMI0 audio output for Orange Pi 5/5B
      commit: 21f1208a3af4c30497f60ce220490edd761c5ed9
[2/4] arm64: dts: rockchip: Enable HDMI audio outputs for Orange Pi 5 Max
      commit: 01284d7e38fca8a4d6a9982cc69e618aadd30de1
[3/4] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Plus
      commit: ffafe9c2dc31d1a346aff482157dd37eaadbe054
[4/4] arm64: dts: rockchip: Enable HDMI audio outputs for Orange Pi 5 Plus
      commit: 1bfb987d1a54bc139b62261e3698006418835229

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

