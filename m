Return-Path: <devicetree+bounces-16549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 605A97EEF3D
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:50:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BF951C20828
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C94B171B9;
	Fri, 17 Nov 2023 09:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B5FED8;
	Fri, 17 Nov 2023 01:50:50 -0800 (PST)
Received: from i5e861935.versanet.de ([94.134.25.53] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r3vUq-0003ER-7U; Fri, 17 Nov 2023 10:50:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	kernel@collabora.com,
	Rob Herring <robh+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v1 1/2] dt-bindings: es8328: convert to DT schema format
Date: Fri, 17 Nov 2023 10:50:35 +0100
Message-Id: <170021461021.1221251.790740434324924821.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109184453.108676-1-sebastian.reichel@collabora.com>
References: <20231109184453.108676-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 9 Nov 2023 19:44:43 +0100, Sebastian Reichel wrote:
> Convert the binding to DT schema format. Note, that "IPVDD-supply"
> got fixed to be "HPVDD-supply" during the conversion. This was
> obviously a typo in the old binding. The old binding example, DT
> files, chip datasheet and Linux driver use HPVDD.
> 
> 

Applied, thanks!

[2/2] arm64: dts: rockchip: add analog audio to RK3588 EVB1
      commit: 97c39c7a0965b3eba87baa2b7d51443a46e21b8f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

