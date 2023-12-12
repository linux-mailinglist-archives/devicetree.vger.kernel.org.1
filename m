Return-Path: <devicetree+bounces-24535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 320CB80F7A7
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:16:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1CB51F2176D
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17BE763BFD;
	Tue, 12 Dec 2023 20:16:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FAABA5;
	Tue, 12 Dec 2023 12:16:30 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9Az-0006LK-2E; Tue, 12 Dec 2023 21:16:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	David Heidelberg <david@ixit.cz>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v4 1/3] dt-bindings: arm: hwmon: gpio-fan: Convert txt bindings to yaml
Date: Tue, 12 Dec 2023 21:16:15 +0100
Message-Id: <170241214697.534713.18054136147893515343.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231209171653.85468-1-david@ixit.cz>
References: <20231209171653.85468-1-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 9 Dec 2023 18:15:39 +0100, David Heidelberg wrote:
> Convert fan devices connected to GPIOs to the YAML syntax.
> 
> 

Applied, thanks!

[2/3] arm64: dts: rockchip: make dts use gpio-fan matrix instead of array
      commit: 75e8d5bad12282a35ad87db4409490b1fcd2518f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

