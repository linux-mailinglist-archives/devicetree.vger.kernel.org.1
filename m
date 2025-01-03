Return-Path: <devicetree+bounces-135416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FCFA00E42
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 20:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEC783A13B4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 19:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169491B87FA;
	Fri,  3 Jan 2025 19:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSnaBOVL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23C38F66;
	Fri,  3 Jan 2025 19:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735931159; cv=none; b=cOD+vP+tdCUN/anF7+oasWr6mkkj7D2iAEsgpXBKpaGxrDQ4Wqw4QhrkyOFdqILtFjsTt55LsYZJ6tce2QXy4/kHK7wLmyvmDkVEyf21Lao6dN0Scu7bJvMgFkL4tUlzKmm8iY97KxgjzvbhACCdSt5iIDaLBC0htNthSgbN64w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735931159; c=relaxed/simple;
	bh=wEfIxLmMivcYpaOCV9CS4L1pAWpwkcsxKCp/ORxJUpo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bB4PbYAzJhGLn88g1w5NhMDIDYtDiRBMqoDJEQdg1r4lToqxnHFxq4FIg+Rt76zXCDjo1rIiO2WEwpdNCzuJ91jHIkTDovgZq8S3krpPE9bMJhEy4Wtyu5vpmOLXjxYfpfNdMIJw0FznqTJfQoDzY8Nem3nRe4t7alpz6Gyr3Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSnaBOVL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50F0DC4CECE;
	Fri,  3 Jan 2025 19:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735931158;
	bh=wEfIxLmMivcYpaOCV9CS4L1pAWpwkcsxKCp/ORxJUpo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dSnaBOVLKv1sXfkbNkU702SW2cppnacEk1kLbvxHoRbk+m7v2N29TqmwyugVXEjTa
	 aRhMbOl4tah0iLu1HKXuXNVXtIoVQ6ZlTRa8ZTpKrsj9poA+h3sqU0/zI/3IYtoygJ
	 Hf5PM3JUY3azLrosAoBWyjnwOWUOk5iB3/hRyFu7r9o3PtodZV6vZkj2p//X0P7wmU
	 KkNHDI4nIkmlPAIb61mEubM3zViMFMjsqU6F6FTg7L1CNo2vsmb3b38SQlwLT0wQdG
	 Cvloga74Bm2AAG/0eHyF4xTHfccwBNHveLK8VFRqg+VHpsT8Oj8mLgRIi93F7PPjv0
	 8MXlzB9wYQpmQ==
Date: Fri, 3 Jan 2025 13:05:56 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: kishon@kernel.org, vkoul@kernel.org, heiko@sntech.de,
	linux-rockchip@lists.infradead.org, krzk+dt@kernel.org,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, cristian.ciocaltea@collabora.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: phy: Add rk3576 hdptx phy
Message-ID: <173593115586.2590023.9486538940303908638.robh@kernel.org>
References: <20241231092721.252405-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241231092721.252405-1-andyshrk@163.com>


On Tue, 31 Dec 2024 17:27:11 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add compatible for the HDPTX PHY on rk3576, which is compatible with
> rk3588, but without rst_phy/rst_ropll/rst_lcpll.
> 
> In fact, these three reset lines are also optional on the rk3588,
> they just used for debug, then they were removed on the rk3576 IC
> design.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v3:
> - Split from:
>   https://lore.kernel.org/linux-rockchip/3330586.aeNJFYEL58@diego/T/#m02151cd8591d7fe92cf30ab69701ed57c1944c06
> 
> Changes in v2:
> - Wrap commit message according to Linux coding style
> - Make "rockchip,rk3588-hdptx-phy" const for "rockchip,rk3576-hdptx-phy"
> - Make declare phy/ropll/lcpll reset line are not exit on rk3576
> 
>  .../phy/rockchip,rk3588-hdptx-phy.yaml        | 62 +++++++++++++------
>  1 file changed, 44 insertions(+), 18 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


