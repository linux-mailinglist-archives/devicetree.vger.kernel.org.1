Return-Path: <devicetree+bounces-7070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B7A7BF01D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:13:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D34281C20B18
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BECE538E;
	Tue, 10 Oct 2023 01:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Feb2zuK8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DDD377
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:13:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05391C433C8;
	Tue, 10 Oct 2023 01:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696900423;
	bh=HQI/CkOWxUANysU93x/AavyAUbaYUiGO9BKt1/wbskE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Feb2zuK8uSwqC19B4iQPybpVDIDebG7RdqkZ0gN814L2rXlrGMmMjPwzkevbsqsjp
	 H0W+UmsXNrqp9Ie6iGWRqGTw77OrMtytAKGhtuKgp76FZZU4VsK7vWKKO+2hSB1LcI
	 f/2WO6Xuw+HiI0A9TcDY3bd20I1qXshu5HR0EEdYWjl+lpVwGeEfQivLeEumTs6o62
	 hgDIEXM6EY+Rutvqupvb6+BmkORLyVFDdTU33Q6YZ291Nq/uLFmFab/spd9nQCRv91
	 EheaMQae6iirSijKjYNryL5x8SB7sOTtVMnpgKHHUWXP7OxmjFyBwnL8Ys7LK0kf65
	 3CMlgLdLEK32Q==
Date: Tue, 10 Oct 2023 09:13:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v2] ARM: dts: imx6qdl-gw5904: add dt props for populating
 eth MAC addrs
Message-ID: <20231010011331.GM733979@dragon>
References: <20230926194110.1451416-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926194110.1451416-1-tharvey@gateworks.com>

On Tue, Sep 26, 2023 at 12:41:10PM -0700, Tim Harvey wrote:
> Add device-tree props to allow boot firmware to populate MAC addresses.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!

