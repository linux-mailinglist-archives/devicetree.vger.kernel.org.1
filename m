Return-Path: <devicetree+bounces-241268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 147A7C7BC76
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:45:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C597F3A446C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE0C262FDD;
	Fri, 21 Nov 2025 21:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="0WbA8+bn"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD31A22579E;
	Fri, 21 Nov 2025 21:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763761551; cv=none; b=dn2Kl4FWuvQfVGrOV63hwKAv6l0xEAlqWYZ4GiN3b0Ais0NfVYop+4W/ezp3/C1cFi+ejYX+zWFaShXOSNSMHeZMGUS7HIdrXL2Si5kINLAKp5TCIDkF83lCsDeaO/Nmllc36f+JQ6Q8VfMc4SXpCld1iZgSZav8e1fz9TA9C90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763761551; c=relaxed/simple;
	bh=2qQDASqiquaETKnyNPOLNV3YBjUgf6nQAZ/Eh1tYMg4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=a2+06gRS0JnTERnRBVtW/i4HdmqlYj5J5TIOaSD3w/Ww0RdgRypu+XnE5O7jp9HhnocEL+X0FX39F1bXVaLHL1D04BnX3k3RO1AwvwprYLJwqDTCnk6CkRXXmr6cKuemcxHZ7Asl4o8pbXGWrgrLM+4rgkoWSLLafAi5y/1ycII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=0WbA8+bn; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=c4dtC/m0OXwu0tkxgmw/ktEFXPVEOhpmsbD/MPB1w54=; b=0WbA8+bnPdkOjJxWsQUTK1OmJg
	YjOKJV0ZI4ka7N2AEjoWq2qymAvVghMATvWtIGgIdmqhAOWxtnAyBig13z5yfQccfqWAZX0g2eZA7
	aGVgtxnr+fL22wMb+ZdGX2CmZSwTD/j/sh22b62diYWxovrWKyDWhqDp6zjtiXaB2/Cgrkx0qv4NF
	WGanm+px7agt5QlIJ9oV1oM0X+499ySK60AzSZwOA3s9L2S8E3HqurTKM4JzsBPrEUOCZke4LIq05
	xWRw3iwPpT4wKfdSV+is+V4orl8w2wqg93PTP81GUoWRaYcZrgVebAuPUzYUroIAQ4d0LIE7+Ltou
	TiGHud0Q==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMYwc-0001Qh-Vf; Fri, 21 Nov 2025 22:45:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/5] arm64: dts: rockchip: update 100ASK DshanPi A1 support
Date: Fri, 21 Nov 2025 22:45:27 +0100
Message-ID: <176376151911.52478.4773292492841717025.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251120120011.279104-1-amadeus@jmu.edu.cn>
References: <20251120120011.279104-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 20 Nov 2025 20:00:06 +0800, Chukun Pan wrote:
> Changed from v2:
>   Remove merged patches
>   Split patch for more details
> 
> Chukun Pan (5):
>   arm64: dts: rockchip: remove mmc max-frequency for 100ASK DshanPi A1
>   arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
>   arm64: dts: rockchip: enable button for 100ASK DshanPi A1
>   arm64: dts: rockchip: enable USB for 100ASK DshanPi A1
>   arm64: dts: rockchip: enable RTC for 100ASK DshanPi A1
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: remove mmc max-frequency for 100ASK DshanPi A1
      commit: b120a9df264eab51952d0cf44c16f13f2606281d
[2/5] arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
      commit: 98461b5e3cdffd126aec610691078408c296d79f
[3/5] arm64: dts: rockchip: enable button for 100ASK DshanPi A1
      commit: 80ec14d1d2173cc3f225102a7db09a457541fe04
[4/5] arm64: dts: rockchip: enable USB for 100ASK DshanPi A1
      commit: d43935da2bfada9e83f5f7e46f7d72e5d4665bd6
[5/5] arm64: dts: rockchip: enable RTC for 100ASK DshanPi A1
      commit: e34003dd2fb05da8f420bbd7b8ec62ab88242c45

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

