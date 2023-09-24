Return-Path: <devicetree+bounces-2788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EE97AC905
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 15:23:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id DC4391F23989
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 13:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48AE86AB6;
	Sun, 24 Sep 2023 13:23:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3929E63B4
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 13:23:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B89C3C433C7;
	Sun, 24 Sep 2023 13:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695561800;
	bh=4bRBmBs0PzFSX7mvGEknkAQqGBJlOKums8V3NEbScoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iO9pVdMfZMH/xyRzdykwaK3aCh+Ixc6nRdYdbst8w5IxqeQi1w0E78vBRXDp39q5/
	 MQMUjLz25HEPfXW1woLvUznz25aPv/cxaYKMiT26L+BYK+l7I2pRuZ5TkbGkm4kDah
	 SJOamFGymAZc5/J357ErqDeqRCsK/maG1m1ELRr0njpturt6iWk4NbaE3hd6v8msBE
	 Dqcw/kDOu98DSIN6pPfmbWQqtKAdmyLdQY1krhD0w6Qg0IaallVhRIu9osjYIKSbfZ
	 lS7hQFYpGCPdkqblNC/epyw1psyYrWVu4vEzJqnMUquEillNXM/F69mDfyp+Wz+t17
	 aV96mWRMbukTA==
Date: Sun, 24 Sep 2023 21:23:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Various TQMa6UL/MBa6ULx fixes
Message-ID: <20230924132309.GH7231@dragon>
References: <20230816075452.606704-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230816075452.606704-1-alexander.stein@ew.tq-group.com>

On Wed, Aug 16, 2023 at 09:54:50AM +0200, Alexander Stein wrote:
> Hi,
> this is a follow up to v1 for fixing dtbs_check warnings for TQMa6UL/MBa6ULx.
> While Patch 1 & 3 from v1 have been applied, Patch 2 is inserted into this v2
> again. The patch itself is not changed, because a dependent patch was missing
> in v1. This one has been included in v2.
> 
> Changes in v2:
> * Add a missing dependent patch as new patch 1
> 
> Best regards,
> Alexander
> 
> Alexander Stein (2):
>   ARM: dts: imx6ul: mba6ulx: Mark gpio-buttons as wakeup-source
>   ARM: dts: imx6ul: mba6ulx: Fix gpio-keys button node names

Applied both, thanks!

