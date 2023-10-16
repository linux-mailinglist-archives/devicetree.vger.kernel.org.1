Return-Path: <devicetree+bounces-9026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 136427CB447
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 22:13:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 450271C20C99
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 404D7374E7;
	Mon, 16 Oct 2023 20:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4605F374D8
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 20:12:45 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EF55F7;
	Mon, 16 Oct 2023 13:12:43 -0700 (PDT)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsTwv-0000QB-N5; Mon, 16 Oct 2023 22:12:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [RESEND] arm64: dts: rockchip: Enable UART6 on rock-5b
Date: Mon, 16 Oct 2023 22:12:21 +0200
Message-Id: <169748713685.982818.10370710928002239372.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013215208.81345-1-szucst@iit.uni-miskolc.hu>
References: <20231013215208.81345-1-szucst@iit.uni-miskolc.hu>
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

On Fri, 13 Oct 2023 23:51:53 +0200, Tamás Szűcs wrote:
> Enable UART lines on Radxa ROCK 5 Model B M.2 Key E.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable UART6 on rock-5b
      commit: a6169ab369236f15c79b45037074a2567d30b037

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

