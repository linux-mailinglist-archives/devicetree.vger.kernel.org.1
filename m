Return-Path: <devicetree+bounces-4390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C51B97B2553
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 723972827DD
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4114D15BF;
	Thu, 28 Sep 2023 18:34:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D80B137C
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 18:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C17FC433C8;
	Thu, 28 Sep 2023 18:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695926052;
	bh=2NJ2R290lFgn343l702zf8oxmfde2JDPKjH1749HjD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WEf0EaEk9iRWOkL9jIAgNO3NJ385d8K64JccvOdU0+D/dVouoyDp99Up7/jY2XQlA
	 CAczvIRwHJC8ewLX5eQQUI6bw1muPRk74UoBCfBwui6ZTm0P8xmYB+PMbZh+f36yof
	 0BzWlgi6XtIgkiAPPjR3I9IoaFGJinCkkLFwVNdoG/xQosbNJxJJDC/qU2om/14RvB
	 LJCxoD5g1Iy8HM1gVXTc553suizGbnMGNCu0Ll839tRyQI91qEEJgof5KboWC6CCaT
	 4OUcT44DGLikc+cDahzgjElVYUinDMW+Ndg9buqkFQ8w8A9m3LrUQoxA9JhzxumnIf
	 8JWwGdbQX9KvQ==
Received: (nullmailer pid 1033329 invoked by uid 1000);
	Thu, 28 Sep 2023 18:34:10 -0000
Date: Thu, 28 Sep 2023 13:34:10 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: lars@metafoo.de, robh+dt@kernel.org, bcousson@baylibre.com, devicetree@vger.kernel.org, linux-omap@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, jic23@kernel.org, tony@atomide.com, linux-iio@vger.kernel.org, jean-baptiste.maneyrol@tdk.com, linux-kernel@vger.kernel.org, chenhuiz@axis.com, andy.shevchenko@gmail.com, conor+dt@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: iio: imu: mpu6050: Add level shifter
Message-ID: <169592604948.1033273.7825083218859073623.robh@kernel.org>
References: <20230927173245.2151083-1-andreas@kemnade.info>
 <20230927173245.2151083-2-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927173245.2151083-2-andreas@kemnade.info>


On Wed, 27 Sep 2023 19:32:43 +0200, Andreas Kemnade wrote:
> Add a level shifter flag as found in ancient platform data struct:
> level_shifter: 0: VLogic, 1: VDD
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml      | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


