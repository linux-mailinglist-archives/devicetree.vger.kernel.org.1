Return-Path: <devicetree+bounces-9021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 454A47CB43F
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 22:13:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 767C71C20BEF
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A425D36AF6;
	Mon, 16 Oct 2023 20:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793873C6AB
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 20:12:36 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6236A11C;
	Mon, 16 Oct 2023 13:12:32 -0700 (PDT)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsTwv-0000QB-BX; Mon, 16 Oct 2023 22:12:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v1 1/1] arm64: dts: rockchip: rk3588-evb1: add ADC buttons
Date: Mon, 16 Oct 2023 22:12:20 +0200
Message-Id: <169748713691.982818.966730954243117585.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231005134357.37171-1-sebastian.reichel@collabora.com>
References: <20231005134357.37171-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
	T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 5 Oct 2023 15:43:57 +0200, Sebastian Reichel wrote:
> The Rockchip EVB1 has a couple of buttons connected via an ADC
> line. Let's add them to its devicetree.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588-evb1: add ADC buttons
      commit: afa933c208e5ea9ddf8adb460e273b2b1aba85e5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

