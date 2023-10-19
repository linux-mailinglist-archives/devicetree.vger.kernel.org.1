Return-Path: <devicetree+bounces-10158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DC87CFD78
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC2751C20AF6
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99FB029CF3;
	Thu, 19 Oct 2023 15:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACKGx8va"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3BD27471
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 15:01:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD17AC433C8;
	Thu, 19 Oct 2023 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697727662;
	bh=ckX2UtcWji/fAfsudtfTrp/XAtITIofDRoqCMRked4M=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ACKGx8vaGZp5Ze01+74sE+22Pobh6aMylWsImV6vsPhnG+uiB3C2zgq2/Ih0/Rfha
	 RDwK3DKgL+5Y9EGXX8RaPfM7vEvGy5jJ2yAQx+8wfVK7LX66jTHXQEiPBaMrC+IU5h
	 E2HPLISHQ1JkYka1jNL/+c64xC6DeKUFzNwIi0LR4zxe0Koe19RKitmqqG4VHSdNev
	 2iWNHizAKPvpVUE4Mrha85kJ2r1YANHdnbcvM819qyS7RXJtYcM5g2rvS14VeE/blo
	 8E+wBsOCXZCrUJ5ccx40EPH+frImPq0LcTiyq/uY3//AnhorfG9y0LBIMnvwNMshtl
	 GLuI25YBSwPqw==
Date: Thu, 19 Oct 2023 16:00:56 +0100
From: Lee Jones <lee@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <20231019150056.GE2424087@google.com>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz>
 <20231019102945.GA2424087@google.com>
 <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>
 <20231019135032.GD2424087@google.com>
 <ejqkt2t647sok6q2z2civde54xztopwqc5srksjcmosikstiuv@ci4f643m7hxy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ejqkt2t647sok6q2z2civde54xztopwqc5srksjcmosikstiuv@ci4f643m7hxy>

On Thu, 19 Oct 2023, Ondřej Jirman wrote:

> On Thu, Oct 19, 2023 at 02:50:32PM +0100, Lee Jones wrote:
> > 
> > On Thu, 19 Oct 2023, Krzysztof Kozlowski wrote:
> > 
> > > On 19/10/2023 12:29, Lee Jones wrote:
> > > > On Tue, 10 Oct 2023, Ondřej Jirman wrote:
> > > > 
> > > >> From: Ondrej Jirman <megi@xff.cz>
> > > >>
> > > >> Deprecate support for this property in favor of standard
> > > >> system-power-controller one.
> > > >>
> > > >> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> > > >> ---
> > > >>  Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 3 +++
> > > >>  Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 3 +++
> > > >>  Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 3 +++
> > > >>  Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 3 +++
> > > >>  Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 3 +++
> > > >>  5 files changed, 15 insertions(+)
> > > > 
> > > > I don't see anything wrong with it.
> > > > 
> > > > It would be nice to have a DT Ack though.
> > > 
> > > Rob gave review on 12th Oct.
> > 
> > This new version was submitted on the 10th Oct.
> 
> https://lore.kernel.org/lkml/169714081353.1587536.2767150298208259976.robh@kernel.org/

Please collect it up along with any other tags you've received and
submit a [RESEND] set.  Thanks.

-- 
Lee Jones [李琼斯]

