Return-Path: <devicetree+bounces-25076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A77812533
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 03:23:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 720EC1F219DA
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 02:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A713781F;
	Thu, 14 Dec 2023 02:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiPKbKMR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87801817
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:23:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D50EFC433C8;
	Thu, 14 Dec 2023 02:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702520597;
	bh=1hsHfZMQC4eUNJ2+GpZd5FIgUk678/Zs/nnQW+BnRlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EiPKbKMRyTckAZrYG7JYPcXjOBFIUfMSNM7Iov4riQTnfI/WQHFs2n4G8LdvnFVaz
	 oj2A/LYv97m4q1yQntR//Fmj/o4mphZcsePrDxFlfw34FeoQoGKYIye/821c14XJWl
	 rUxfkLQe/Di0DEK7meNh/ht5ntos9qtqOtmZWdgE9GbI7t77CktcKP34M6C7IqRXVu
	 kbR56HNWiaQqbOdJUzciuLgFDdJ/XboaWfCGKCBt67emqcA+T4BcPzl/Efd8Eg2+On
	 ZYx67egRwc+k9JhncJNScq7UaYQLNiPXVkI9RbpFlYUuolOUz7fX01mWXciuS1UKhl
	 do5ZsBOBhTe2g==
Date: Thu, 14 Dec 2023 10:23:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mn: Enable Overdrive mode
Message-ID: <20231214022312.GZ270430@dragon>
References: <20231128211832.313544-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128211832.313544-1-aford173@gmail.com>

On Tue, Nov 28, 2023 at 03:18:31PM -0600, Adam Ford wrote:
> The i.MX8M Nano supports and overdrive mode if the SoC is given
> the proper voltage.  Add imx8mn-overdrive.dtsi file which can
> be included by boards who support the voltage necessary to handle
> the faster clocks.  This increases the GPU clocks from 400MHz to
> 600MHz.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied both, thanks!

