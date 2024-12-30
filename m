Return-Path: <devicetree+bounces-134667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5C09FE32F
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 08:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FCAC1881C1C
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 07:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FEBD1974FE;
	Mon, 30 Dec 2024 07:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="NETHTdzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852738F4A
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735543346; cv=none; b=dyJklfubRwdFY03XDt2DhbUhsCkRBoOOVyQmVdUH9V1xMGpXGKX3TXcGk6J2ZpzlvmAWawVoIdBLivbd+agUafUqc43Hz5NRpcrTObtRcgWp2L8LXExlXZRn7Uw6Z1tlTBxvZs4oP+Z999MNGGhDQ2XnlLm34GusVbvPG6/fRHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735543346; c=relaxed/simple;
	bh=ejiIhZBkr+pxFjMxIZuU5K9e7hu7uM+u54Tdq8/zmV8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V1/9TOWJ+dOYBE62psrxpcaVxuozuOkG+hBvT7vqkCMNefx2lKDkT5Z85ay9jF+vpbw3v7Ud1ElKk+nHheE5uU7hxo/5Yzn8zR7y7BLyQP88RYWqYsMFiEIFxa+NskKkfV0MGaB0z4BP2wA8perdBqCbUe7pgeWRQWpvoY0niIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=NETHTdzZ; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Ni0/JXBdNOrRusohFjRxi3utlOmJOryGodrzHL5Q1yM=;
	b=NETHTdzZPxV/6p/IBSYZ+MiJK/VNwXVHn+DM2oh2TVefCARJrwhk7stAltdKs5
	BK/4w7piqUwQxv8LUHufQYBjLoWI+vng4TvFJTPLLBsYEH4P+EHHN7hCdK/0HDJ1
	kBLOqP/vjyzTWSv1D7pxGNC5Zmd8A32NL0ce5hSSGy66g=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgAHbinJSXJnSekeBg--.61568S3;
	Mon, 30 Dec 2024 15:20:42 +0800 (CST)
Date: Mon, 30 Dec 2024 15:20:40 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 2/2] arm64: dts: imx8mm-phg: Add LVDS compatible string
Message-ID: <Z3JJyDsHSpH7jJuu@dragon>
References: <20241210105705.116116-1-festevam@gmail.com>
 <20241210105705.116116-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241210105705.116116-2-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgAHbinJSXJnSekeBg--.61568S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrKry8tw43Jr48KrW5uFWkCrg_yoWxCrgEkF
	1FvF4xCw47ZF48JF15Can5JFWUua1DCay3Awn8J3yqgw1v9FyrWF15tryUJrW8ArZxCr97
	tF45X3s5t39rGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU08MaUUUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEgXFZWdyDiXY5AAAs1

On Tue, Dec 10, 2024 at 07:57:05AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The imx8mm-phg board has an AUO G084SN05 V9 8.4" 800x600 LVDS panel.
> 
> Improve the devicetree description by passing the LVDS compatible
> string to fix the following dt-schema warning:
> 
> imx8mm-phg.dtb: panel: compatible:0: 'panel-lvds' is not one of
> ['admatec,9904379', 'auo,b101ew05', 'auo,g084sn05',
> 'chunghwa,claa070wp03xg','edt,etml0700z9ndha', 'hannstar,hsd101pww2',
> 'hydis,hv070wx2-1e0', 'jenson,bl-jt60050-01a', 'tbs,a711-panel']
> ...
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


