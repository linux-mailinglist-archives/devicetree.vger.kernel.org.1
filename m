Return-Path: <devicetree+bounces-35289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C864E83CE32
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07A3F1C23354
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C99241386DA;
	Thu, 25 Jan 2024 21:12:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE29129A9E
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 21:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706217146; cv=none; b=ZUm7dhBz5UJRneWazostR5jZTXkGMI3IrDNDp606vM9R7uOAsIrWh7u1G6ynKYDhJJc5d1DR66RucEq8XUmDuSKuwvpQ71gSnAWH0M6c+mCrWyh4pqEdiWkImNtGUQ+o4Qg3AMv1a/7oO4M9xPWcdWQqXtJ3SQ3AzPI5RVfFhtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706217146; c=relaxed/simple;
	bh=WU7egi0suMexq6ZDpF3SeeilNcQzXrbNvYfBmdVcc9A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iYKLYqK+/0VNJiOmeyv+7txUL/ILMdAnxuatJFlMVMP79KpunzmNZb71bxFHyxZ9BFTRtYWy5lKql1dSHjVQy0v/FftrEFossGgfcNX+3lsIYbLjZ+o+6hC9f3BhgWuG1Ou1H2EPbA929v8vMhRBYLNK6ileY8nOE0t/erjWbKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71K-0002EX-FL; Thu, 25 Jan 2024 22:12:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
Date: Thu, 25 Jan 2024 22:12:11 +0100
Message-Id: <170621707723.1872080.226332467843721502.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 26 Nov 2023 00:35:12 +0530, Jagan Teki wrote:
> DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.
> 
> Changes for v2:
> - suffix -regulator in node names
> - fix node lables
> - update commit message
> 
> [...]

Applied, thanks!

[01/10] arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
        commit: 271e4e979a5a32617fe811df8410cfc477918c68
[02/10] arm64: dts: rockchip: Add edgeble-neu6a-common DT
        commit: 736e39a0af98d5dd165b8cc99837790c3e019d39
[03/10] arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
        commit: 40137b58e7dec7624de41b9c4c22219e230b5b99
[04/10] arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
        commit: 951d6aaa37fed409c30669ddfed5d1e040cdb281
[05/10] arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
        commit: 9f6d8911cc3b7fbe270ef991b0db0a8b623e01a9
[06/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
        commit: 8c711ff32748b46688ddc6663e377dba12ed22cd
[07/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
        commit: 5d85d4c7e03b44bc31814420bb73b2ba12e42c22
[08/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
        commit: 92eaee21abbdf07001a7ee3c0d03c48889619600
[09/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
        commit: 762751c183750243f68c1b48889d89d4653c9f19
[10/10] arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a
        commit: 9b606d2d11af4b131e7a3e5889f43a193e637c66

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

