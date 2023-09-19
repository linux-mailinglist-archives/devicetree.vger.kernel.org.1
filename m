Return-Path: <devicetree+bounces-1467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F2F7A679B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 17:09:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B23ED1C2096B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7023B79B;
	Tue, 19 Sep 2023 15:09:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB263B782
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 15:09:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2014C433C8;
	Tue, 19 Sep 2023 15:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695136196;
	bh=lzPcxfCap55Dxo+6HC5drOWps2iDeLT2c0Yt2wUaUyE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XyIoIYQw5QkJmMJ3CfKfg5P2JB3FtwWC7umWODkwtVO11Ya2bqYxzOt3vfcRJtZdd
	 ONOEqK2jpzooHLUO7wRK+HGL0isQuQ6tF08A9u3pdweXiEUCGUdUAFoiINlxDCstlY
	 BHScbVF2ij1bMlL0mFC+Vp7H5WX6Q++SoGeQiXSiYBRvSfTWAGRMQZ81Su9EAxTHFC
	 Zq/Xjv6xxaIgx4OS4B1WD4a9S/nlJnb3oSkuWYX2x/xn6XfFyI39tS5PXr3xKTpX6P
	 8IEJFvm4dXs0hM/k05SiGWjEHyAvNThQPM5acLaQFcfeasPlpQhp2IncxkRo9ChQet
	 9Pk9xW1ZYiLSw==
Date: Tue, 19 Sep 2023 11:09:54 -0400
From: Sasha Levin <sashal@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>, agross@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 6.5 30/36] arm64: dts: qcom: sc8280xp-x13s: Add
 camera activity LED
Message-ID: <ZQm5woD5zwRIG9cf@sashalap>
References: <20230908192848.3462476-1-sashal@kernel.org>
 <20230908192848.3462476-30-sashal@kernel.org>
 <ZP60ngCV3hhNZiX5@hovoldconsulting.com>
 <ZQjEEt7sB2M5EO53@sashalap>
 <ZQk8aJx268Soy4yH@hovoldconsulting.com>
 <ZQmc7hznPpIh6iwP@sashalap>
 <ZQmh-DaBTwMuOLHe@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <ZQmh-DaBTwMuOLHe@hovoldconsulting.com>

On Tue, Sep 19, 2023 at 03:28:24PM +0200, Johan Hovold wrote:
>On Tue, Sep 19, 2023 at 09:06:54AM -0400, Sasha Levin wrote:
>> On Tue, Sep 19, 2023 at 08:15:04AM +0200, Johan Hovold wrote:
>> >On Mon, Sep 18, 2023 at 05:41:38PM -0400, Sasha Levin wrote:
>> >> On Mon, Sep 11, 2023 at 08:33:02AM +0200, Johan Hovold wrote:
>> >> >On Fri, Sep 08, 2023 at 03:28:41PM -0400, Sasha Levin wrote:
>> >> >> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>> >> >>
>> >> >> [ Upstream commit 1c63dd1c5fdafa8854526d7d60d2b741c813678d ]
>> >> >>
>> >> >> Disappointigly, the camera activity LED is implemented in software.
>> >> >> Hook it up as a gpio-led and (until we have camera *and* a "camera on"
>> >> >> LED trigger) configure it as a panic indicator.
>> >> >>
>> >> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> >> >> Link: https://lore.kernel.org/r/20230805-topic-x13s_cam_led-v1-1-443d752158c4@linaro.org
>> >> >> Signed-off-by: Bjorn Andersson <andersson@kernel.org>
>> >> >> Signed-off-by: Sasha Levin <sashal@kernel.org>
>> >> >
>> >> >This is a new feature if anything, not a fix. Please drop from all
>> >> >autosel queues.
>> >>
>> >> Not a feature, but hardware enablement.
>> >
>> >Call it what you will, but please drop it. Otherwise by that logic you'd
>> >need to backport all devicetree patches (as well as most driver changes)
>> >since they ultimately aim at enabling hardware.
>>
>> Not all, only ones that re-use existing kernel driver but enable it for
>> new hardware (i.e. adding a new pci-id/usb-id/dts entries).
>
>Again, that's basically all our device-tree patches. And that can break
>in all sorts of ways. So again, please drop. This does not belong in
>stable.

This is part of the criteria we use to select patches, yes? If you have
an objection around this particular patch then please let me know, or if
you have an objection around hardware enablement patches in stable then
we can have a bigger discussion around that one.

However, just dropping this one for no particular reasonisn't the right
approach: we've been using this selection criteria for quite a few years
now.

-- 
Thanks,
Sasha

