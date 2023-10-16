Return-Path: <devicetree+bounces-8811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0647CA326
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:01:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FEF328157E
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281A018634;
	Mon, 16 Oct 2023 09:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfgiJ3nD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1271A5A7
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:01:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9659DC433C9;
	Mon, 16 Oct 2023 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697446913;
	bh=JZNNaADJ7qXp5c7KPri0lQGSkXdeIiUrGbMneibduME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hfgiJ3nDm7L3V3BpuWNtUIG5krVrjH+PPTEDJhjnJDheRY9aSMQxJUlPb/qUZfL/F
	 lKsICe/w+/QkVGM5ELqY4M0cNzR/92JmL2TA/elK47c+dttq1gHoTQoT084jI5mSK9
	 WVNTvq+funx+ttOFZpOrrwm3RlJzfNuky+7OzejlscYqL2rEO4cOofqzyLZ/joPZZE
	 zyrJm5G55hmcL0BRkYgoFrzvipGwrNAvVnVYLXdah8UwTeg8hLTWA8nQ4/LbPHRskP
	 QA6is7dNt4nxt5d04bwCIybhl16tg2u2T0Z4cpXC95aqFtKgOInF+uMVxCxXuCkAZV
	 RTFa0y6PZtwsA==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qsJTv-0003TF-31;
	Mon, 16 Oct 2023 11:01:47 +0200
Date: Mon, 16 Oct 2023 11:01:47 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: Use the correct DP PHY
 compatible
Message-ID: <ZSz7---IW_7Oj2Zr@hovoldconsulting.com>
References: <20230929-topic-x13s_edpphy-v1-1-ce59f9eb4226@linaro.org>
 <CAA8EJprXCzVyaU49qgVcVfF0-FJ3QqAfTMZj5CEZm187hoi4=g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJprXCzVyaU49qgVcVfF0-FJ3QqAfTMZj5CEZm187hoi4=g@mail.gmail.com>

On Mon, Oct 16, 2023 at 11:51:33AM +0300, Dmitry Baryshkov wrote:
> On Fri, 29 Sept 2023 at 19:03, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >
> > The DP PHY needs different settings when an eDP display is used.
> > Make sure these apply on the X13s.
> 
> Could you please clarify, is it the same PHY type, just being
> repurposed for eDP or is it a different PHY type?

Same PHY, just different settings AFAIK.

> If the former is the case (and the same PHY can be used for both DP
> and eDP), it should carry the same compatible string and use software
> mechanisms (e.g. phy_set_mode_ext()) to be programmed for the correct
> operation mode.

Possibly, but that's not how the current binding and implementation
works:

	6993c079cd58 ("dt-bindings: phy: qcom-edp: Add SC8280XP PHY compatibles")
	2300d1cb24b3 ("phy: qcom: edp: Introduce support for DisplayPort")
	3b7267dec445 ("phy: qcom: edp: Add SC8280XP eDP and DP PHYs")

	https://lore.kernel.org/lkml/20220810040745.3582985-1-bjorn.andersson@linaro.org/

And you'd still need to infer the mode from DT somehow.

Johan

