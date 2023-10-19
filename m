Return-Path: <devicetree+bounces-10122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB487CFBA8
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 700371C20A5B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FFE129CE1;
	Thu, 19 Oct 2023 13:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFF8kYkz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213F727479
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 13:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD39AC433C7;
	Thu, 19 Oct 2023 13:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697723437;
	bh=oy5VzoMhN6wZ1Vzq3Eg71Tf23vyezgeMhkqlIYLuizA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KFF8kYkzoGiHfBO8gNfdHBGk9gOgif60Km8M2iB03XtUdc6uHtDmf5vch03FprWdc
	 yhVh/N+yb+Pm0KNYibkrM6iaSM2u+TrYGIz6KNUJxjhFptHdUebiyy/0Xhjos7K3D1
	 JMvrWlF+/h5bXX3zcZtPwYYqRJgUmCrMPlRkl6DWlRnFS30Dr6oFJbcLUTbPx7cwng
	 w4xcUZEnmyyJO9eZ2T/oJcLM2kRaFoK+q4hhiREhKHhMSmbVoMLYZHiR1TajPCh9Da
	 Z9FJmAwdAuQUbXoKMscFYa8eHOfishbBQxbev7NGteePpsFG7NgP+d3ioEEZ8Wi7wU
	 giqLMnCi0bZhw==
Date: Thu, 19 Oct 2023 14:50:32 +0100
From: Lee Jones <lee@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <20231019135032.GD2424087@google.com>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz>
 <20231019102945.GA2424087@google.com>
 <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>

On Thu, 19 Oct 2023, Krzysztof Kozlowski wrote:

> On 19/10/2023 12:29, Lee Jones wrote:
> > On Tue, 10 Oct 2023, Ondřej Jirman wrote:
> > 
> >> From: Ondrej Jirman <megi@xff.cz>
> >>
> >> Deprecate support for this property in favor of standard
> >> system-power-controller one.
> >>
> >> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> >> ---
> >>  Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 3 +++
> >>  Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 3 +++
> >>  Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 3 +++
> >>  Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 3 +++
> >>  Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 3 +++
> >>  5 files changed, 15 insertions(+)
> > 
> > I don't see anything wrong with it.
> > 
> > It would be nice to have a DT Ack though.
> 
> Rob gave review on 12th Oct.

This new version was submitted on the 10th Oct.

-- 
Lee Jones [李琼斯]

