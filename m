Return-Path: <devicetree+bounces-21824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC5F8053EC
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F16E1C2096C
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2ECE5ABBF;
	Tue,  5 Dec 2023 12:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJo7sqDp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D0F523A
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 12:14:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 415B0C433C7;
	Tue,  5 Dec 2023 12:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701778497;
	bh=HjMd4iX91mq4MvNdXHxBkGTsDeJEpwGGckmiE80C1qY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MJo7sqDpCBu9Pl6UktPypByioNz8CU4rHhyEGqRhc7gZyD6jy4d4dGXSOrQUdabwk
	 U/Y9sGivAKffNaj8T2n0IKb8vFh8ceg2iKUV7jdp5K+Hn18L+WeTLM2gci5MB1gSJZ
	 oameCqLh/rxXe/YOEpyt6WGgrt8tRqeNB7fl475IKJBZLcEcOLwyqpf0EZNp7ecjwo
	 VxOaGLiohvOyHwlEWAeOR0akgUXFn1MFBAH3hWlWqXsbW+Nfhg3mJpDpMCRf0CEzDu
	 YvBKHdAz7P8M58SoedxziqE3Ev0ub0aVrJfRZ5GnP8e0KfnUkQDOzYlrrtmOfndQ8A
	 TlgbegY2KWfNA==
Date: Tue, 5 Dec 2023 20:14:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?Jo=E3o?= Rodrigues <jrodrigues@ubimet.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] ARM: dts: imx: tqma7: add lm75a sensor (rev. 01xxx)
Message-ID: <20231205121451.GD236001@dragon>
References: <20231102231130.13ca0513@pcn112>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231102231130.13ca0513@pcn112>

On Thu, Nov 02, 2023 at 11:11:30PM +0100, João Rodrigues wrote:
> From: João Rodrigues <jrodrigues@ubimet.com>
> 
> TQMa7x (revision 01xxx) uses a LM75A temperature sensor.
> The two sensors use different I2C addresses, so we can set both sensors
> simultaneously.
> 
> Signed-off-by: João Rodrigues <jrodrigues@ubimet.com>

Applied, thanks!

