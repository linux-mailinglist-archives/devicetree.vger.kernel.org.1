Return-Path: <devicetree+bounces-2902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 500A87ACDAF
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:45:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id AD3E81F2405D
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6260A5F;
	Mon, 25 Sep 2023 01:45:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7279A2A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:45:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72BECC433C7;
	Mon, 25 Sep 2023 01:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695606322;
	bh=/TLcVQD+hWfB0J/4FXsUgvK+lXpA/Xzq7CCOPd3LLb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q/X23NxoLFluso2JWeS+St02ydpqvx+2Mr7U3eOlANwD/SRO7vfxb6KruZvMwo+nO
	 dHn/PRuUzogyr/yMC6CD3IDWNPJ2QXFPhtM1gWNt6Fcr6ySaXADrWNG2BSIhls6J0p
	 JlpBUgnOTN38a988TSpXAAEIoUSBC+9An23hhbsjdIJ+jobBSbIS0zJEqoMfEo7SoM
	 8tqqTCa3jSmBS3cp1Jcko/bmMsjpSykQfx8GcY478xFccHbFLcyQ+1DPuNYLRY3eeF
	 OGvQtatgs3gJNP9UGUTNsiLyPkj2Q93reqyi7oADX+MXninXTiBgJgJW35I1kUXFp7
	 McNIHmyVrpSUA==
Date: Mon, 25 Sep 2023 09:45:13 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, alexander.stein@ew.tq-group.com,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/7] arm64: dts: imx8-ss-lsio: Remove unused clock
Message-ID: <20230925014513.GJ7231@dragon>
References: <20230907152008.491775-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230907152008.491775-1-festevam@gmail.com>

On Thu, Sep 07, 2023 at 12:20:02PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The lsio_mem_clk is not used anywhere, so simply remove it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied all, thanks!

