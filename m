Return-Path: <devicetree+bounces-238427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB12AC5B101
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37CC63AE6D8
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C0623D7DD;
	Fri, 14 Nov 2025 03:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="bxCFrfRG"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82B223E350;
	Fri, 14 Nov 2025 03:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763089742; cv=none; b=KZ0rrOyFZMM086MNSX/lafANkLwwEvuVkhKjRKUlho30LpEKV5R/pFlmCF36zed2enBypDAkONGkzoDq8M+ZwiTuhEeU+XJm7R6ickzT7rZmRHUeKIG6ftmkcNx/8B9IZF0iPA54mF1PHdxQLqyF6jBJEx72tSFgOV0WGdlf/v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763089742; c=relaxed/simple;
	bh=jwRF4UVEctT2Nson2ydA0vdQ3AX979dwvgpuROMUngU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GzyuhpMcdJUJMswE+tWT0NUPkmTCVSCWtODjbhKCSTwf5fTI04gR0ReITeP90MMLWh9Sb6adrNxgDDcu8H/cZi5PuvCXa17pT7tJ/XNI93CrEpmbR6k/i+ax7CRG4nA36QGBP0CMYodwgibR0BIKfoR9a3q4x0AqYKyuoW49FX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=bxCFrfRG; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763089738;
	bh=LkBcRmHvmZztAg15UTFgf2ghFALYicoycTuXTQeNpLI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=bxCFrfRGtOhiqaH6YjjW34vey7hfyohGVUDXs4rXRDpIaalml+Kg1H6rhgvU+j8LK
	 AUTtHG/70S0byNZ6N8/heuWQcliGX0ED1yD3+ASVQSWv3hpscxLjFRcLziSX0PAd1a
	 R7ZkEfQCa0XFpuDu/jxjprfJxSnYzpwPUK0xQcKxXP/u270pO4PI03vf/R9HJ+8lxF
	 2q8KHnVMvTBD0WKZ1H5YB2C9bcCTSSY89iUlIcXBy7v5eknwtoroVUxhyrWXLaQDgN
	 zGpY50iQz51euGEntKrXPAQTFDJtyZHiQoYOYReJ3u1pkY/wGG0WkYMoMdUI8s+ire
	 WRvch65URQtZA==
Received: from [127.0.1.1] (unknown [180.150.112.244])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 080CD641F5;
	Fri, 14 Nov 2025 11:08:57 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: joel@jms.id.au, Daniel Hsu <d486250@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>
In-Reply-To: <20251017134402.2073042-1-Daniel-Hsu@quantatw.com>
References: <20251017134402.2073042-1-Daniel-Hsu@quantatw.com>
Subject: Re: [PATCH] ARM: dts: aspeed: harma: add fanboard presence sgpio
Message-Id: <176308973697.854884.17577431047566755576.b4-ty@codeconstruct.com.au>
Date: Fri, 14 Nov 2025 13:38:56 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Fri, 17 Oct 2025 21:44:02 +0800, Daniel Hsu wrote:
> Add the SGPIO definition for detecting fanboard presence on the Harma
> platform. This allows the BMC to determine whether the fanboard is
> attached.
> 
> 

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


