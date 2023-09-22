Return-Path: <devicetree+bounces-2605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF677ABAAC
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 22:51:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 00C8B281DE9
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 20:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3224647357;
	Fri, 22 Sep 2023 20:51:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BA043AAB
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 20:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8C33C433C8;
	Fri, 22 Sep 2023 20:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695415898;
	bh=GYskKyjo0FmpusJcMMZmSC6zPPr6TtDi/xqUdv7Hd9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P/RjwNzWltM4aAsJn610JUMps6FyrMDPCJyZ72S/JOAKqgXdB9fgpRSarV3VFJFhQ
	 S3qqIpr5wfIRAvx5Bu1cPr5faImWsAHeznwtfUP8UgTDuvsVeulHTQxcp+nKTwrhSY
	 q5oXhZ1Th3+SOV5pWpYbTfjpGkQn9ibo7slndunaHwHH/twXYGXyZsu+odl9B1ti5+
	 8NWa1OCoZwcS+5zdTf7r+aMqF5M8uyxG+MLyymx1/qOg2l7IdWevK+CiPra6fw0d1c
	 R6HCqiy4qZA8RrmRWdO9QbqvEZVyHRqpd4EcYIdPgEbjQKSVSKSGU79iSS8MgytYP1
	 snB1Ls5C3HFlw==
Received: (nullmailer pid 3557889 invoked by uid 1000);
	Fri, 22 Sep 2023 20:51:34 -0000
Date: Fri, 22 Sep 2023 15:51:34 -0500
From: Rob Herring <robh@kernel.org>
To: wangweidong.a@awinic.com
Cc: 13916275206@139.com, rf@opensource.cirrus.com, liweilei@awinic.com, lgirdwood@gmail.com, povik+lin@cutebit.org, ryans.lee@analog.com, perex@perex.cz, tiwai@suse.com, linus.walleij@linaro.org, yijiangtao@awinic.com, colin.i.king@gmail.com, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, arnd@arndb.de, harshit.m.mogalapalli@oracle.com, yang.lee@linux.alibaba.com, ckeepax@opensource.cirrus.com, broonie@kernel.org, herve.codina@bootlin.com, linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, trix@redhat.com, shumingf@realtek.com
Subject: Re: [PATCH V4 1/7] ASoC: dt-bindings: awinic,aw88395: Add properties
 for multiple PA support
Message-ID: <169541589406.3557849.14317344918884630444.robh@kernel.org>
References: <20230919105724.105624-1-wangweidong.a@awinic.com>
 <20230919105724.105624-2-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919105724.105624-2-wangweidong.a@awinic.com>


On Tue, 19 Sep 2023 18:57:18 +0800, wangweidong.a@awinic.com wrote:
> From: Weidong Wang <wangweidong.a@awinic.com>
> 
> Add two properties, the "awinic,audio-channel" property and the
> "awinic,sync-flag". The "awinic,audio-channel" is used to make
> different PA load different configurations, the "awinic,sync-flag"
> is used to synchronize the phases of multiple PA. These two properties
> will be read by the corresponding driver, allowing multi-PA to
> achieve better playback effect.
> 
> Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
> ---
>  .../bindings/sound/awinic,aw88395.yaml           | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


