Return-Path: <devicetree+bounces-17175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5210C7F175B
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DAF3282732
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A3C21DA22;
	Mon, 20 Nov 2023 15:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D01E0B4
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:32:05 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r56Fo-0008VB-6m; Mon, 20 Nov 2023 16:32:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: shironeko <shironeko@tesaguri.club>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add missing tx/rx-fifo-depth for rk3328 gmac
Date: Mon, 20 Nov 2023 16:31:54 +0100
Message-Id: <170049419906.1671702.15840758974556641867.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116214042.11134-2-shironeko@tesaguri.club>
References: <20231116214042.11134-2-shironeko@tesaguri.club>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 16 Nov 2023 16:40:43 -0500, shironeko wrote:
> Without fifo depths attempting to change the MTU will fail. These values
> are from the RK3328 Technical Reference Manual, gmac2io interface tested
> with Rock64.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add missing tx/rx-fifo-depth for rk3328 gmac
      commit: 0cd3a3f2e893f404f9566a3cb90b360f0d3e1b35

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

