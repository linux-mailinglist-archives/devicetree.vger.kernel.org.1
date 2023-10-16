Return-Path: <devicetree+bounces-9024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C661E7CB444
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 22:13:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A8B32819FF
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5363F37178;
	Mon, 16 Oct 2023 20:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793E83C6B5
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 20:12:36 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2710EED;
	Mon, 16 Oct 2023 13:12:33 -0700 (PDT)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsTwu-0000QB-9U; Mon, 16 Oct 2023 22:12:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v3] arm64: dts: rockchip: rk3588s: Add AV1 decoder node
Date: Mon, 16 Oct 2023 22:12:17 +0200
Message-Id: <169748713691.982818.8183459865936380442.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006065334.8117-1-benjamin.gaignard@collabora.com>
References: <20231006065334.8117-1-benjamin.gaignard@collabora.com>
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

On Fri, 6 Oct 2023 08:53:34 +0200, Benjamin Gaignard wrote:
> Add node for AV1 video decoder.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588s: Add AV1 decoder node
      commit: dd6dc0c4c1265129c229e26917bf4de1d97ff91f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

