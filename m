Return-Path: <devicetree+bounces-1447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6280F7A645C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:07:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61C3C1C2097D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 13:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA0738473;
	Tue, 19 Sep 2023 13:06:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B30468A
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 13:06:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48A92C433C7;
	Tue, 19 Sep 2023 13:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695128816;
	bh=6Qa47r/Zbx9YEPRJ4mkWJb11B2aEBnhEFWx6OEp2SzA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fuLbiLAFSAbqq51ee4Y5Rx3a2PhLZWWVl+QMae4Twlf3+LKoTP834b0n8OFlOW1cV
	 irWRA4Q907wSKtCFzkxz1aoD8jkVDdbhZVtogJRwYoEKB10yZU3Srw4Kn6/SJzo3pM
	 8yZkk//5/h4567BSFLXg3kLUJAkvSBM+MNgN4IX+b8KJuXE8M2XWLQlzwbYFTxRA2Z
	 Y/bWIHNHtgnDxxE/D0qIQ5d8801YcYQS9oWO86QhXeB+W3yfyw3sAaafeX3ICKVFpb
	 ZE2UjONgibkb2/MoXSA0euby2DD00i55Ec6uF7xyxqm9LkwdG3EOJYeodQxAJgbe1b
	 eQa9NpQUq5wgA==
Date: Tue, 19 Sep 2023 09:06:54 -0400
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
Message-ID: <ZQmc7hznPpIh6iwP@sashalap>
References: <20230908192848.3462476-1-sashal@kernel.org>
 <20230908192848.3462476-30-sashal@kernel.org>
 <ZP60ngCV3hhNZiX5@hovoldconsulting.com>
 <ZQjEEt7sB2M5EO53@sashalap>
 <ZQk8aJx268Soy4yH@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <ZQk8aJx268Soy4yH@hovoldconsulting.com>

On Tue, Sep 19, 2023 at 08:15:04AM +0200, Johan Hovold wrote:
>On Mon, Sep 18, 2023 at 05:41:38PM -0400, Sasha Levin wrote:
>> On Mon, Sep 11, 2023 at 08:33:02AM +0200, Johan Hovold wrote:
>> >On Fri, Sep 08, 2023 at 03:28:41PM -0400, Sasha Levin wrote:
>> >> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>> >>
>> >> [ Upstream commit 1c63dd1c5fdafa8854526d7d60d2b741c813678d ]
>> >>
>> >> Disappointigly, the camera activity LED is implemented in software.
>> >> Hook it up as a gpio-led and (until we have camera *and* a "camera on"
>> >> LED trigger) configure it as a panic indicator.
>> >>
>> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> >> Link: https://lore.kernel.org/r/20230805-topic-x13s_cam_led-v1-1-443d752158c4@linaro.org
>> >> Signed-off-by: Bjorn Andersson <andersson@kernel.org>
>> >> Signed-off-by: Sasha Levin <sashal@kernel.org>
>> >
>> >This is a new feature if anything, not a fix. Please drop from all
>> >autosel queues.
>>
>> Not a feature, but hardware enablement.
>
>Call it what you will, but please drop it. Otherwise by that logic you'd
>need to backport all devicetree patches (as well as most driver changes)
>since they ultimately aim at enabling hardware.

Not all, only ones that re-use existing kernel driver but enable it for
new hardware (i.e. adding a new pci-id/usb-id/dts entries).

-- 
Thanks,
Sasha

