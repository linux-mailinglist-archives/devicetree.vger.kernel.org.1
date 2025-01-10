Return-Path: <devicetree+bounces-137536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E64B6A09640
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:46:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CDE2188E063
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09962116F0;
	Fri, 10 Jan 2025 15:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRrVUInx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C11211293;
	Fri, 10 Jan 2025 15:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736523983; cv=none; b=c0qiw1DddJkAruvRcnSlrBZPdvwxEUTyNYhjDuBPi+JUEpQknSIX6+8c8qeRU18KsaOW8jlKnqe8LsSmuIPZeGrH3Y9HpzMbE9AzJb5KXhm4ufH3blPl5N7z5tVCXFNgZll3iTm/yOvzXS468hFM4xXZwb8cLQAXCHqw3qXVwcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736523983; c=relaxed/simple;
	bh=rwU0jjya1/OvFtnXDREAH1u5ZNoyqxGTiBrwxqPv2d8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GwFJXN4+PZLT8DZZjfohu7T3U2F6teyiSlQHcGw6UpnSohpAkbWPqqoTiuyu1+9RDRHhPWf8LgXHYhLF4sBVpnoVrw5poTm9gtbc0YY+yi76nsoqTz8BotOZPOWfcRKtL+WXfqrYBUrTjoQzbQ3DdMgMgCCwGYB8dzv3CNyF9B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRrVUInx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D90CAC4CED6;
	Fri, 10 Jan 2025 15:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736523983;
	bh=rwU0jjya1/OvFtnXDREAH1u5ZNoyqxGTiBrwxqPv2d8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jRrVUInx3yN9QGFsQoIbhrJHtCjx6qWtSk4zv9pNSL/zjEm1Pe6LihNeMNSurS+g+
	 /bo/IWs58q/ClmxWywYqmRhLAtH1j5SjcZfsoG0XDUy0aTDGbP2tIPAWPQebevVEeK
	 ikBXRVfWy+LIlgNWsCnjrJ4dTfyAk3z0HTCIaw5wGYI8Pv0JS/cJZrinRikhxeTr6i
	 GfZ1rKA4CwZnD3CkRRT69ERvUKSZiyEXXQRWMYcuSb+1QBKWcrYtoTrxITup1/TRGx
	 k4adLn7jeQNYxoCeh8EkdM84j9X4eVX+wDAfVN+1R5eZy4to223uPj3WfAI+GSZcMK
	 bh1SHJ5Ui+wbw==
Date: Fri, 10 Jan 2025 09:46:21 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: interrupt-controller: ti,omap4-wugen-mpu:
 Add file extension
Message-ID: <173652398035.2926814.17122700343019442179.robh@kernel.org>
References: <20250107131111.246969-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107131111.246969-1-krzysztof.kozlowski@linaro.org>


On Tue, 07 Jan 2025 14:11:11 +0100, Krzysztof Kozlowski wrote:
> Add TXT file extension so the format of binding will be explicit (we
> have also bindins in YAML).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../{ti,omap4-wugen-mpu => ti,omap4-wugen-mpu.txt}                | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename Documentation/devicetree/bindings/interrupt-controller/{ti,omap4-wugen-mpu => ti,omap4-wugen-mpu.txt} (100%)
> 

Applied, thanks!


