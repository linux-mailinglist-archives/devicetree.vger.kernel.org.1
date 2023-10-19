Return-Path: <devicetree+bounces-10126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9B57CFBE9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:03:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C0AC1C20AAB
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E29529CF9;
	Thu, 19 Oct 2023 14:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="R5RN4guT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FD227477
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:03:08 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 630E1132;
	Thu, 19 Oct 2023 07:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697724182; bh=mzygX/Iz4+PfF7qIVuMysQzJMSljB7WHNgZp+lLP3UU=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=R5RN4guTvUB1bj2Wij331KTDYhEJhyRHQ+PQFq+1uYCtbORISApH/hU+LUymEO998
	 TmTeJYwUmainRCNSkiAX3pfWtJ/Wux0X60gnd9ywZDc1dZ+iCOEggv9aeu9tw+l0AI
	 HHMULpYM1vwqehs7IWfu08oRLmNYgm3KriDLWiPs=
Date: Thu, 19 Oct 2023 16:03:02 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <ejqkt2t647sok6q2z2civde54xztopwqc5srksjcmosikstiuv@ci4f643m7hxy>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz>
 <20231019102945.GA2424087@google.com>
 <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>
 <20231019135032.GD2424087@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231019135032.GD2424087@google.com>

On Thu, Oct 19, 2023 at 02:50:32PM +0100, Lee Jones wrote:
> 
> On Thu, 19 Oct 2023, Krzysztof Kozlowski wrote:
> 
> > On 19/10/2023 12:29, Lee Jones wrote:
> > > On Tue, 10 Oct 2023, Ondřej Jirman wrote:
> > > 
> > >> From: Ondrej Jirman <megi@xff.cz>
> > >>
> > >> Deprecate support for this property in favor of standard
> > >> system-power-controller one.
> > >>
> > >> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> > >> ---
> > >>  Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 3 +++
> > >>  Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 3 +++
> > >>  Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 3 +++
> > >>  Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 3 +++
> > >>  Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 3 +++
> > >>  5 files changed, 15 insertions(+)
> > > 
> > > I don't see anything wrong with it.
> > > 
> > > It would be nice to have a DT Ack though.
> > 
> > Rob gave review on 12th Oct.
> 
> This new version was submitted on the 10th Oct.

https://lore.kernel.org/lkml/169714081353.1587536.2767150298208259976.robh@kernel.org/

> -- 
> Lee Jones [李琼斯]

