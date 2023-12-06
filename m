Return-Path: <devicetree+bounces-22029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8142C8063FC
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CE2E28222A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44059805;
	Wed,  6 Dec 2023 01:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX8aJ98v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EAF7FC
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4CA1C433C7;
	Wed,  6 Dec 2023 01:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701825249;
	bh=3nVYZvN9qhVn1X/uVwrjcoRSY2NSlngaJr+fsoT/T94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hX8aJ98v1yplT8diC+Ovx3MbOyApOsLwIW/nTPayd9i6z8VbtuUWukNjTZbqpuqN+
	 V5blM8TlV3zZEjWdgCfiTNikr9H/yuT658XyvtXespDDAPlfJEE14xHpXKFHI5xWM9
	 5yelmx2DTCvEcAVgcW5Bn4nKrUX8I4RLdmzAgyloXgQmE2m0B+K5UBlDzguYoHesMd
	 4vnROoV+Ia4WYHdFIT7/S2e8gkMzAD4abUZltRWhbQUkxIg//CMHbYPgLoG+fFt0FT
	 CnhkcC7aG/EzjPxHk5C5FDjMwv8sZheA9yyyG5VxBs7fBW+2O0k+mqay1Won7q8CK1
	 iCmucpkwHQabw==
Date: Wed, 6 Dec 2023 09:14:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: haibo.chen@nxp.com
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, linux-imx@nxp.com, peng.fan@nxp.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: imx93: update gpio node name to align
 with register address
Message-ID: <20231206011404.GV236001@dragon>
References: <20231115035621.3834539-1-haibo.chen@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231115035621.3834539-1-haibo.chen@nxp.com>

On Wed, Nov 15, 2023 at 11:56:20AM +0800, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> Change the gpio node name to align with register address
> 
> Fixes: c1d0782b5fc3 ("arm64: dts: imx93: update gpio node")
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Applied both, thanks!

