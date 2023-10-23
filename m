Return-Path: <devicetree+bounces-10845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7A07D2E19
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:22:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BEE21C208CB
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5592612B9C;
	Mon, 23 Oct 2023 09:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igPp2sPf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397D71FDB
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:22:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD316C433C7;
	Mon, 23 Oct 2023 09:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698052955;
	bh=xxhC5tOtxby4AByoAAFFDBGX/Us33zQDixBhJoDvltw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=igPp2sPf71coRtoTSYGvAhHlyCODDTYxnsD9qka8dU8z56NxtsqLpddIKRAGFPNPh
	 TitVR6LyvEnKUBnFBRJcoYA7CK/hNZHVPXwiljdT94LCgFad0oOUzDUC/YWJ6zQp5J
	 /gjXvKxc077C9Oqf33Wqt9BxZzQ5sYxUHBcbRuFxo7ZpYWZUHuyqjPCyp3wvWsrJhd
	 esgYrDnhOIm8YuNGMrtxLxI/sAQoW1kRfth6AG4CuJCSjpjOXMiN0RcUSQq2TRUKyI
	 p6r2DFWAjgoke9CSko6H3T/0G/oKszeEZ3dlZsDhY6+p//89eXR26DGtOtrI1lRthx
	 z6uxbD4DxwaYg==
Date: Mon, 23 Oct 2023 10:22:31 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: mfd: max8925: Convert to DT schema format
Message-ID: <20231023092231.GB8909@google.com>
References: <20230930202743.214631-1-sebastian.reichel@collabora.com>
 <169627477713.2386676.2358148175794895273.robh@kernel.org>
 <20231020232121.ude4ciuweyoqh2ws@mercury.elektranox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231020232121.ude4ciuweyoqh2ws@mercury.elektranox.org>

On Sat, 21 Oct 2023, Sebastian Reichel wrote:

> Hi Lee,
> 
> On Mon, Oct 02, 2023 at 02:26:17PM -0500, Rob Herring wrote:
> > On Sat, 30 Sep 2023 22:27:43 +0200, Sebastian Reichel wrote:
> > > Convert the binding to DT schema format.
> > > 
> > > The sub-functions of this MFD device do not have their own compatible
> > > string and are thus described directly in the MFD binding document
> > > after being converted to YAML.
> > > 
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > ---
> > > Changes since PATCHv2:
> > >  * https://lore.kernel.org/all/20230922233142.1479677-1-sebastian.reichel@collabora.com/
> > >  * Add unevaluatedProperties: false to regulators subnode (Krzysztof Kozlowski)
> > >  * Use "pmic" for nodename (Krzysztof Kozlowski)
> > > 
> > > Changes since PATCHv1:
> > >  * https://lore.kernel.org/all/20210413153407.GA1707829@robh.at.kernel.org/
> > >  * Update License to GPL OR BSD
> > >  * Add missing type references pointed out by Rob
> > > ---
> > >  .../leds/backlight/max8925-backlight.txt      |  10 --
> > >  .../devicetree/bindings/mfd/max8925.txt       |  64 --------
> > >  .../bindings/mfd/maxim,max8925.yaml           | 145 ++++++++++++++++++
> > >  .../bindings/power/supply/max8925_battery.txt |  18 ---
> > >  4 files changed, 145 insertions(+), 92 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/leds/backlight/max8925-backlight.txt
> > >  delete mode 100644 Documentation/devicetree/bindings/mfd/max8925.txt
> > >  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max8925.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/power/supply/max8925_battery.txt
> > 
> > Reviewed-by: Rob Herring <robh@kernel.org>
> 
> I expect this will go through your tree and I don't need an
> immutable branch, since all further fixes on the binding would
> go into your tree anyways.
> 
> Also please note, that I put you in as maintainer, since the
> original people working on max8925 long vanished and you are the
> maintainer of MFD (and backlight). Please tell me if you have a
> better suggestion.

That's not my email address. :)

-- 
Lee Jones [李琼斯]

