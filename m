Return-Path: <devicetree+bounces-7903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2077C6094
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 00:50:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45D112824CC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 22:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DA821BDE9;
	Wed, 11 Oct 2023 22:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="UQMYthG9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFA5D2E5
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:50:14 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84748A4;
	Wed, 11 Oct 2023 15:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697064611; bh=UHNOUbuXRbAH9+kfxiOMGB5Uptg1Jgwxx6XcH6TaeMg=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=UQMYthG9BIpBKGCwFuhN6+zAcNK9HM9KmyAIZJO5RkZLeNHEtPOBA0dq3zXgqe6II
	 1oHX2kiM+7PVeND6L9K4fltm8PojnKvOGmvWrPxvceUAo/nJ8Ehbog+ab1zlK9c8WM
	 3+oGrNQt8F2McHCgVfhI29WV1YHImaVE5NWucoIM=
Date: Thu, 12 Oct 2023 00:50:11 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
	linux-arm-kernel@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Add support for Pine64 QuartzPro64
Message-ID: <ayv6csu32xw2jdfkf5jjhunybbo5ytuhsrkiljxetco27g4z7w@mt67edb4bwql>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
	linux-arm-kernel@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20231011215856.2082241-1-megi@xff.cz>
 <169706370544.498990.15767954270891425478.b4-ty@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169706370544.498990.15767954270891425478.b4-ty@sntech.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 12, 2023 at 12:36:45AM +0200, Heiko Stuebner wrote:
> 
> On Wed, 11 Oct 2023 23:58:43 +0200, Ondřej Jirman wrote:
> > From: Ondrej Jirman <megi@xff.cz>
> > 
> > This series adds an initial support for Pine64 QuartzPro64 SBC.
> > 
> > The series was tested against Linux 6.6-rc4.
> > 
> > Please take a look.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/2] dt-bindings: arm: rockchip: Add Pine64 QuarzPro64
>       commit: a6fa0d4a704d7af51a5d02f76c73046cf957c1b5
> [2/2] arm64: dts: rk3588-quartzpro64: Add QuartzPro64 SBC device tree
>       commit: 8152d3d070a9ca4f48020d11925718f1707db4f1
> 
> Thanks a lot for following along my changes.
> 
> While I did plan on doing the same for the original QuartzPro64
> series, I hadn't found the time yet and this makes everything
> so much easier :-) .

I thought as much. :-) Thanks for merging the patches.

Kind regards,
	o.

> 
> Best regards,
> -- 
> Heiko Stuebner <heiko@sntech.de>

