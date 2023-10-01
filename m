Return-Path: <devicetree+bounces-4993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 274047B4A44
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 01:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DB13C28178B
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 23:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2819733ED;
	Sun,  1 Oct 2023 23:02:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460D433D4
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 23:02:33 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97131A7
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 16:02:30 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qn5SF-0002tX-Vy; Mon, 02 Oct 2023 01:02:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 00/13] arm64: rockchip: Add more RV1126 DT nodes
Date: Mon,  2 Oct 2023 01:02:33 +0200
Message-Id: <169620134724.283788.8556096916301682585.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_PASS,T_SPF_HELO_TEMPERROR autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 31 Jul 2023 16:05:05 +0530, Jagan Teki wrote:
> Patchset adds more DT nodes for Rockchip RV1126.
> 
> Jagan Teki (12):
>   dt-bindings: pwm: rockchip: Document rv1126-pwm
>   ARM: dts: rockchip: rv1126: Add pwm2m0 pins
>   ARM: dts: rockchip: rv1126: Add pwm2 node
>   ARM: dts: rockchip: rv1126: Add pwm11m0 pins
>   ARM: dts: rockchip: rv1126: Add pwm11 node
>   ARM: dts: rockchip: rv1126: Add SFC node
>   ARM: dts: rockchip: rv1126: Add FSPI pins
>   ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
>   ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
>   ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
>   ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
>   ARM: dts: rv1126: Add 12V main supply for edgeble-neu2
> 
> [...]

Applied, thanks!

[01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
        commit: b0d587be2407ae7319098339034296370a851939
[02/13] ARM: dts: rockchip: rv1126: Add pwm2m0 pins
        commit: 32cd0ebf1f7961ef049cf9e286568f8e2dfbb88b
[03/13] ARM: dts: rockchip: rv1126: Add pwm2 node
        commit: 8625206d7c3811dfdaef1df9a0bd134f17098b5f
[04/13] ARM: dts: rockchip: rv1126: Add pwm11m0 pins
        commit: 19d79ef9faad6cc15315c3bb0d5fc3594c869d71
[05/13] ARM: dts: rockchip: rv1126: Add pwm11 node
        commit: 8cc85fa1b7640a5de02a3697aaaef4491cf8dba3
[09/13] ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
        commit: 9b201229814fd8d77cc069962b43c4f451592217

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

