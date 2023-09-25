Return-Path: <devicetree+bounces-2936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5768B7ACEF9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 06:00:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 10ACD281356
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60770613A;
	Mon, 25 Sep 2023 04:00:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D137F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 04:00:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7320CC433C7;
	Mon, 25 Sep 2023 04:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695614450;
	bh=qvU0cI0/uiUYfqS89QhNX8dcd/oZSdFgZMdhgnAwOLU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JO8M/Y3XP1MuYLc4BLWHWXaCTAWj+nFcUDvoTtOr8m6GFG/dr8uzT1XsmH0cthEEf
	 zY2dWps98ux3LfSmnwkWN05SjKzNpeVNYB4udkf0HoTLamvxg9SBFM6UKxdJ2i8Ax/
	 LIKe0c4pb9ISVf+y3EG+nTf8YYP0lq6FKvDzFikELGtRJPC4aNG9dO43AVsa789svw
	 J5JmuCWD7e0T7TlgeKF76t2f1aSwTkkKxS/ofA5bB7AUpXjvHG43wZECs15m1akW2P
	 lwSTtIZKhHk7VzLCvMd4fQTePRBRFqSp9o1bUkitTucaneSzry3EHly4ReUy++WXn5
	 5CF1Wf7zn42Fg==
Date: Mon, 25 Sep 2023 12:00:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Document the missing imx23 boards
Message-ID: <20230925040042.GR7231@dragon>
References: <20230923204258.635888-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230923204258.635888-1-festevam@gmail.com>

On Sat, Sep 23, 2023 at 05:42:58PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> There are some imx23 based boards that are not documented.
> 
> Add them to the list of supportted i.MX23 boards.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

