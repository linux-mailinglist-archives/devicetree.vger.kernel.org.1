Return-Path: <devicetree+bounces-7294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7CC7BFEDB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94177281790
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 252C624C87;
	Tue, 10 Oct 2023 14:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2fb2COr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E8724C7A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:15:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 660F7C433C8;
	Tue, 10 Oct 2023 14:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696947312;
	bh=H2yPB100sW/jX4e+ju+J0zwg4FdmUd9E3jx3UW+wroE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u2fb2COr02JrH4UgNP7DRPsoSDT1ntX9Bk6DH2OswZDmAWe/VOb24qW0Ec/3M2YzX
	 rVUX9+BR9F87JOvI3Eaku+jskgcv5Ci3RI2+uQ1VXtewrIlGh+mbBAPiFmYF5K384w
	 yOBS3PczC+j7AJOSkzLYRKOYGn2HrVIhjImL8kOjjRT/TiD4vqq5Dwt/327hCtqSgu
	 V+zfOG2qZuxEweJk+qb2DRA0JWdm0mJfLA9xgg7U0cAbddjPG6ULMP4IuvRenp2ssr
	 wXdBcRJAOQHoXR2s675qGF80fAVCSL8F/uLn23qgvIhBgLdGvFxk8fuv0O1U0mRpT6
	 ww41aGLhnMbDQ==
Received: (nullmailer pid 779608 invoked by uid 1000);
	Tue, 10 Oct 2023 14:15:10 -0000
Date: Tue, 10 Oct 2023 09:15:10 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: andy.shevchenko@gmail.com, linux-leds@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, lee@kernel.org, George Stark <gnstark@salutedevices.com>, rockosov@gmail.com, pavel@ucw.cz, conor+dt@kernel.org, kernel@sberdevices.ru, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH v1 06/11] dt-bindings: leds: aw200xx: remove property
 "awinic,display-rows"
Message-ID: <169694730940.779396.17395041529564271514.robh@kernel.org>
References: <20231006160437.15627-1-ddrokosov@salutedevices.com>
 <20231006160437.15627-7-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006160437.15627-7-ddrokosov@salutedevices.com>


On Fri, 06 Oct 2023 19:04:32 +0300, Dmitry Rokosov wrote:
> From: George Stark <gnstark@salutedevices.com>
> 
> Get rid of the property "awinic,display-rows" and calculate it
> in the driver using led definition nodes.
> 
> Signed-off-by: George Stark <gnstark@salutedevices.com>
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  .../bindings/leds/awinic,aw200xx.yaml         | 28 +++----------------
>  1 file changed, 4 insertions(+), 24 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


