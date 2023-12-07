Return-Path: <devicetree+bounces-22768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1B1808AF4
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 228A01C20AA6
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61BEF3D0D4;
	Thu,  7 Dec 2023 14:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="dS8xskov"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BB75A3;
	Thu,  7 Dec 2023 06:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=iUUDZHVt3az3SXfC7sYwpPvzPdIHPFC7thViDztCq4Q=; b=dS8xskovguqOJ5eUSKQ+62Po/P
	kV9OVE13U7QhQeBWaEK68kRxetwAlRFvhyFqRzvR1ZQ6NMBtpuXbIa05JaPMnZrB/iCQnSQ+HIgwT
	pY14sCKkUJxU5fihmDEbheVTVoJ2/F8ja91gTre/shIXyGn2Ca8dqQuXaJf7BcJkB9WQ=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:35438 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1rBFdx-0006Pv-TO; Thu, 07 Dec 2023 09:46:26 -0500
Date: Thu, 7 Dec 2023 09:46:25 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 leoyang.li@nxp.com, robh@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Hugo
 Villeneuve <hvilleneuve@dimonoff.com>
Message-Id: <20231207094625.01d081092dd60ddc504d7f7b@hugovil.com>
In-Reply-To: <6035c4cc-afe1-456d-a4d0-16992da09a2e@linaro.org>
References: <20231206160303.33185-1-hugo@hugovil.com>
	<20231206160303.33185-3-hugo@hugovil.com>
	<6035c4cc-afe1-456d-a4d0-16992da09a2e@linaro.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: Re: [PATCH 2/3] dt-bindings: arm: fsl: add Dimonoff gateway EVK
 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Thu, 7 Dec 2023 09:32:38 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 06/12/2023 17:03, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > Add DT compatible string for Dimonoff gateway EVK board based on a
> > Variscite VAR-SOM-NANO with a NXP MX8MN nano CPU.
> > 
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index cd87d1afe7b7..e445d65d6f17 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -1025,6 +1025,7 @@ properties:
> >        - description: Variscite VAR-SOM-MX8MN based boards
> >          items:
> >            - enum:
> > +              - dimonoff,dimonoff-gateway-evk # i.MX8MN Dimonoff Gateway EVK Board
> 
> Company name appears twice, which is not really helpful. What's the true
> name? Gateway EVK? Then keep only this.
> 
> Best regards,
> Krzysztof

Ok, will do for V2.

Thank you,
Hugo Villeneuve

