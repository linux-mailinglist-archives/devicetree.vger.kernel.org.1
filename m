Return-Path: <devicetree+bounces-1965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 255377A94FF
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2EE9281BAE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 070A1B673;
	Thu, 21 Sep 2023 14:01:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAEFB641
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:01:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 338FDC4E74A;
	Thu, 21 Sep 2023 14:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695304861;
	bh=fBOyl4wnZj0qgJkc8bc1nWtNS7FruFf11iwwBxp/N8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XWV8ExU3oehstOxt6ss9ARdQ3g9ez+u6+VQS3HyjR5ECimrVni6bFZFstl0+/V0kw
	 JpxRzExfIzPRzxjCdzv/dwZYuunuD7rRqne/9aQzuFb8xTgHxkdcU/Mpk++SgAM+WA
	 ZDwqmGnB18k7KpGmtHgxu3t6Tx+DKqea37FrFud5B801Zq3BwF2aKzk8gcGfa5teC+
	 hTwNlEJ+7HGWYQW4gdIsLidhqUypVI02ioF/spHiNPhbReMhpxAsOaOHYUTtgTDztn
	 U6H9xDeXUUcCOYMwfzxb7Gb6HQRSiajHQ5awBJZH+bjOiP4068zL0P30B9/Pn2e/+H
	 JEj6Y1JM6q45A==
Date: Thu, 21 Sep 2023 16:00:58 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
	daniel@ffwll.ch, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, festevam@gmail.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, kernel@pengutronix.de,
	linux-imx@nxp.com, oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v8 2/7] phy: Add HDMI configuration options
Message-ID: <ZQxMmtbqDTqgECnE@matsya>
References: <20230808083243.3113192-1-Sandor.yu@nxp.com>
 <20230808083243.3113192-3-Sandor.yu@nxp.com>
 <c485b64e-3c83-4616-b8d8-76c2c7d56b0e@linaro.org>
 <ZOS+IQgFZYxN503B@matsya>
 <CAA8EJpokkjw_Q36YMh4p6NR+r4JGgM7_b+_QXtbmcPr6GzA=ug@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpokkjw_Q36YMh4p6NR+r4JGgM7_b+_QXtbmcPr6GzA=ug@mail.gmail.com>

On 22-08-23, 20:22, Dmitry Baryshkov wrote:
> On 22/08/2023 16:54, Vinod Koul wrote:
> > On 17-08-23, 13:05, Dmitry Baryshkov wrote:
> >> On 08/08/2023 11:32, Sandor Yu wrote:
> >>> Allow HDMI PHYs to be configured through the generic
> >>> functions through a custom structure added to the generic union.
> >>>
> >>> The parameters added here are based on HDMI PHY
> >>> implementation practices.  The current set of parameters
> >>> should cover the potential users.
> >>>
> >>> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> >>> ---
> >>>    include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
> >>>    include/linux/phy/phy.h      |  7 ++++++-
> >>>    2 files changed, 30 insertions(+), 1 deletion(-)
> >>>    create mode 100644 include/linux/phy/phy-hdmi.h
> >>
> >> I think this looks good now, thank you!
> >>
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Should this go thru drm or phy...?
> 
> I'd say, PHY, together with the other PHY patches. If you can merge
> them into an immutable branch, then it can also be merged into
> drm-misc (?) to provide the dependency between drm and phy parts.

phy/topic/hdmi should be pushed out in a bit for that

-- 
~Vinod

