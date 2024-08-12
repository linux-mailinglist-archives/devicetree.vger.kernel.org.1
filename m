Return-Path: <devicetree+bounces-92794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD9394E596
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 05:42:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 970851C21475
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 03:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE0713BC02;
	Mon, 12 Aug 2024 03:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="K4ff77va"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC4613A3E8
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 03:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723434156; cv=none; b=Fc1kIpa3IkX72TClTEW8Kezod7xlkjtu4s8ZI5ui0rmmnXNOD5D0Jbx/NfBFK2d/3zE/XAFleAwzpZMydtfbCfO9lSVs+FlM0Qym9WOvyTz2lbIvWldbL6m4EWh+H941o0+QkrAFHnZZXtbLOeiGUn6MgkG6egcvqItcMoSL060=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723434156; c=relaxed/simple;
	bh=i+TgQmxGXtVH1FiZ1c2NwCGmsBqq2zwZ2PtqE7XxSVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rnIO18IxRni4DiI7WoVQ7Nc6cjaJtOoNYsbxJ6WFka/biEl5c+ykxWyZcQwoZ5ASpsom5V67psPTWkdPRGxo6ruTVTe78yAMr5yFOM0nmCo9g6BpBvi2eRPeX4bSo7rY7r8ZVp0U83jxGMWDe/n69bNk7xuq/9AISE4ofyydB4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=K4ff77va; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=LVjh+jnTWelYLC8I8rARnZucRHr83XhHl26jyAfxVzg=;
	b=K4ff77va0PMfyyFMaM3rE+h0XyPtrl8yKq4z44XdbR8BeffMfcS/LZrkkueGPG
	TZqns2qFHymKdwpxbSTX+h1apGWe1JsolTD+niCPu2nXUrKq7zMJJ+qvNRNZIgJg
	AnixC+NaxAJn0lrhX/EuS1ze7Q2+6ZLhswvmq0EVFKxeo=
Received: from dragon (unknown [117.62.10.86])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgDnLy19hLlmtzRGAg--.42936S3;
	Mon, 12 Aug 2024 11:41:50 +0800 (CST)
Date: Mon, 12 Aug 2024 11:41:49 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com
Subject: Re: [PATCH v3] arm64: dts: imx93: update default value for
 snps,clk-csr
Message-ID: <ZrmEfXKXLoLjYjXN@dragon>
References: <20240715131722.161135-1-shenwei.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240715131722.161135-1-shenwei.wang@nxp.com>
X-CM-TRANSID:Mc8vCgDnLy19hLlmtzRGAg--.42936S3
X-Coremail-Antispam: 1Uf129KBjvdXoWruF1xuF48XFW3ZF4fKFW8Xrb_yoWfGrg_JF
	1UJwn7CasrGF13KFnrWFyDJw1jvry8Cr15GrnrKF4Iy3sIy34Y9Fn7Zr95Wry7ZF42qw12
	g3Wvqr4xJw43CjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8pHq7UUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBAo5ZWa5f7US5AAAsx

On Mon, Jul 15, 2024 at 08:17:22AM -0500, Shenwei Wang wrote:
> For the i.MX93 SoC, the default clock rate for the IP of STMMAC EQOS is
> 312.5 MHz. According to the following mapping table from the i.MX93
> reference manual, this clock rate corresponds to a CSR value of 6.
> 
>  0000: CSR clock = 60-100 MHz; MDC clock = CSR clock/42
>  0001: CSR clock = 100-150 MHz; MDC clock = CSR clock/62
>  0010: CSR clock = 20-35 MHz; MDC clock = CSR clock/16
>  0011: CSR clock = 35-60 MHz; MDC clock = CSR clock/26
>  0100: CSR clock = 150-250 MHz; MDC clock = CSR clock/102
>  0101: CSR clock = 250-300 MHz; MDC clock = CSR clock/124
>  0110: CSR clock = 300-500 MHz; MDC clock = CSR clock/204
>  0111: CSR clock = 500-800 MHz; MDC clock = CSR clock/324
> 
> Fixes: f2d03ba997cb ("arm64: dts: imx93: reorder device nodes")
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

Applied, thanks!


