Return-Path: <devicetree+bounces-4251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B74787B1BBA
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id DA6AD1C209D2
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AA838BAA;
	Thu, 28 Sep 2023 12:08:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FDB328AD
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 12:08:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 445D6C433C9;
	Thu, 28 Sep 2023 12:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695902883;
	bh=lTq1dMVcm8SenHuuZd0wNqXfh3nL/EqbBBqIPVam8dY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WTAllCDmydbwqDjqOlE+YP04DsAP11/lg7bqYHgG+pqjkZLPvrAZj334yu/SIyjL9
	 BJH3Y6HHOlrQ/bAWLhAPc1pBRPHzJSkVOORX6vLS75Dek+N0Rlruvf8wpHnanIkyxl
	 UwekNyShwqpv0PG0ZCL2b73N4ZSXBqSVNMyN9XWVVhwfokZGSg++Fafxjr5znwNdR+
	 I0ZFfwjGqHicHUUYwXNSZWGc4zwe3KTpBgLp1LyP0EKeSNv4y80MRwP8PPpqOj+OpJ
	 lPdjBjt5ciSnkgqqfFVjMHSzZdx1wAOdPee8GA+xszBJycWgjR5WMAZT4Kljwum4cz
	 yTdLzxvZxPwRQ==
From: Vinod Koul <vkoul@kernel.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, michal.simek@amd.com, m.tretter@pengutronix.de, 
 peter@korsgaard.com, peter.ujfalusi@gmail.com, harini.katakam@amd.com, 
 Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 git@amd.com
In-Reply-To: <1695216326-3841352-1-git-send-email-radhey.shyam.pandey@amd.com>
References: <1695216326-3841352-1-git-send-email-radhey.shyam.pandey@amd.com>
Subject: Re: [PATCH v2] dt-bindings: dmaengine: zynqmp_dma: add
 xlnx,bus-width required property
Message-Id: <169590287991.161554.2765505402103252498.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 17:37:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Wed, 20 Sep 2023 18:55:26 +0530, Radhey Shyam Pandey wrote:
> xlnx,bus-width is a required property. In yaml conversion somehow
> it got missed out. Bring it back and mention it in required list.
> Also add Harini and myself to the maintainer list.
> 
> 

Applied, thanks!

[1/1] dt-bindings: dmaengine: zynqmp_dma: add xlnx,bus-width required property
      commit: 54a5aff6f98b69e73cba40470f103a72bd436b20

Best regards,
-- 
~Vinod



