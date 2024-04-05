Return-Path: <devicetree+bounces-56699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AC889A2E0
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 18:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7029A28886C
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 16:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8912617166E;
	Fri,  5 Apr 2024 16:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="defkolX2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E8E17166A;
	Fri,  5 Apr 2024 16:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712335712; cv=none; b=TjGM85PEIBxdvNHy4neZ9rH/fiNEaCKXXAhGd70lzdigvOJdECrtbmPeaCFIggOt7WcLkvxIxta0tjGAhvWmZluvjH4i0eLI9zOF4i4zRgKUP4ZhgX6Cqz7vlDQFKgOYKED7mQzjXPB78M2EdhLrEUJBu53mLJI49akMaEsS0Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712335712; c=relaxed/simple;
	bh=Xv13cyEjvsg2QGk7Fwb3W82vEV7OTPf7ypIZZmWM9YA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BpJxw0p3WakIrr1LYcuSw7pASx3gBzN5szQmC8EOnfmnkhLObHBFAbEzgnZhbu62Y3fTDs/bsrtr3isxz4wySKywdUatnkIlie+ylzUjlgJ6WGiD6DkPJnhyzTY8tPG08H4jm0OQZTmHc8u+4atu/Ndph9bJcyY29YXRB+1lLkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=defkolX2; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id B1C881F8F7;
	Fri,  5 Apr 2024 18:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1712335709;
	bh=il2qU58UHLxy6P7NB6cyRdQntf0V6syrYQfTTjcncvM=; h=From:To:Subject;
	b=defkolX2cYoGUSNbL402FLL8MAq6f0gyqjQoL8xtSWq12xb+U33fq+ye+MqZBrc8w
	 jyVjxSGwtUA3oZAVhKe5k8iO+G6c+iQlAFC4iIcjV16PHiXNYJ0L6iZRzedewHMhZd
	 OKW8TnethTpEqNDOYqNgUCx34SA8xHkGZXOjerypmFoGCUYkX7xxyEQ0ITuxlMLnhQ
	 CHvim4ftTfE+3V1rKHXOkneQyRgyeywQqh3IlRrSTXkznKxEZPTLcXEUrDwndD9Rp0
	 VFEGuajX4H8xuUqPVisP+Msh2WfBcN5zYX9C/hf1DEShREbul4EnKi+Ai3FJXeuhyL
	 euaDJNzNKcxrw==
Date: Fri, 5 Apr 2024 18:48:27 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Stefan Eichenberger <eichest@gmail.com>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, francesco.dolcini@toradex.com,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH v1 4/4] arm64: dts: freescale: imx8mm-verdin-dahlia:
 support sleep-moci
Message-ID: <20240405164827.GD5994@francesco-nb>
References: <20240405160720.5977-1-eichest@gmail.com>
 <20240405160720.5977-5-eichest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405160720.5977-5-eichest@gmail.com>

On Fri, Apr 05, 2024 at 06:07:20PM +0200, Stefan Eichenberger wrote:
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> 
> Previously, we had the sleep-moci pin set to always on. However, the
> Dahlia carrier board supports disabling the sleep-moci when the system
> is suspended to power down peripherals that support it. This reduces
> overall power consumption. This commit adds support for this feature by
> disabling the reg_force_sleep_moci regulator and adding two new
> regulators for the USB hub and PCIe that can be turned off when the
> system is suspended.
> 
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>


