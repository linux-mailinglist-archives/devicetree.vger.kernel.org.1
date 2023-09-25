Return-Path: <devicetree+bounces-2924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 638B47ACE83
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:54:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1C5B22813EC
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7833D53A0;
	Mon, 25 Sep 2023 02:54:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675667F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:54:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF08BC433C8;
	Mon, 25 Sep 2023 02:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695610462;
	bh=xC4JL77W0TpWqq22E9SVfQVXzH21/1Fg9WCnhkWSBSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=axh2Y8Rb+aEgqytCepi9yXW/ojuXgUmZsYc2s2TiYQf7VNULETJzwkxt0ib0MMCzC
	 Ljf5FilSlK9AyelnhiJLVWCmNhCam8SI8Xur+EQmw4jiuXPp3FYbpuut+FTopOlvrU
	 zUBl8xSsaM15CIqImNSg4Ino8ewc0cgIh+94d3GACx3HaxFtCKotwZRy+sGWzB+UW0
	 4r/mQXQRm94vU3mtWCS2Hobc80ahyuWgVIwEydJ3LXqMURhtvz8O/pKWrQssmJDILV
	 I3JrNNcYPqYuU+lY9tqX1Q5/65/pHs+xFrNG+Bp9ASfFcYHNpwmUqpbgln6IVA3yQg
	 2/L64qV8QOiFg==
Date: Mon, 25 Sep 2023 10:54:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, marcel.ziswiler@toradex.com,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2] ARM: dts: imx6ull/7d-colibri: Fix compatible
Message-ID: <20230925025412.GF7231@dragon>
References: <20230915123350.2618476-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915123350.2618476-1-festevam@gmail.com>

On Fri, Sep 15, 2023 at 09:33:50AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Fix the imx6ull/7d-colibri devicetrees as per the rules defined
> at fsl.yaml.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Applied, thanks!

