Return-Path: <devicetree+bounces-11990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D247D7517
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 22:03:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00B5B1C20E08
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233F8328BA;
	Wed, 25 Oct 2023 20:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4BD2D631
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 20:03:11 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5414F129;
	Wed, 25 Oct 2023 13:03:10 -0700 (PDT)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1e0ee4e777bso63284fac.3;
        Wed, 25 Oct 2023 13:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698264189; x=1698868989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5r+62BGyhlZ2nS1rxbtagnoldZmEnkd8Tctfhnbykf0=;
        b=J49iXWc8HUI6J0OsmVqV1dI/hjOvn7c0hFTkegTO/cWe5HEr6QwWdvd1PkUHBZD4wO
         vT7r8gJXxccgAVeNeiDI/efYtieaImJ5qZTrNa0xbxMe0vK2XOhgcQ/2wgNpejC907Eb
         oGhZoDL6blymEfijZ6aTnjkvlaPDtnuDfbbDK0VlyLsNf4h7lnA5jHgAs59kxSbQ0rFP
         hSHPoxfbbK5KMLMJmXyWKHPEzi/7LWrd6YchWX3E7c8dZdeRndRU3kNFNuYIccgt2kes
         xmEvvFUNBZmqzP2Yy3ugJTexHlJF/QsCmBIAKwVF7QAD42CscPyyQZAC6AtFXUhGWTJx
         VBog==
X-Gm-Message-State: AOJu0YzJbO8WavpGNKhSM3dDmzjV4rBKj5oZw94LqyF+IrGUbSkmb5Cm
	TGY7X/dT0t6vwwvCVaP54G71MkrcUg==
X-Google-Smtp-Source: AGHT+IEh96+Eom5+++QZIF6DKoxC+gFh+J0Jjb7AI/CVWjOw1Yv61sZNaPJPNdmEwA+s6Pu73BExDw==
X-Received: by 2002:a05:6870:2893:b0:1e9:da6f:a161 with SMTP id gy19-20020a056870289300b001e9da6fa161mr20155913oab.3.1698264189543;
        Wed, 25 Oct 2023 13:03:09 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i1-20020a056870344100b001ea7e2adbc2sm2775807oah.1.2023.10.25.13.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 13:03:08 -0700 (PDT)
Received: (nullmailer pid 1069035 invoked by uid 1000);
	Wed, 25 Oct 2023 20:03:07 -0000
Date: Wed, 25 Oct 2023 15:03:07 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: Re: [PATCH v2] dt-bindings: irqchip: renesas,irqc: Add r8a779f0
 support
Message-ID: <20231025200307.GA1068690-robh@kernel.org>
References: <9467a1c67d5d240211f88336973fa968d39cc860.1690446928.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9467a1c67d5d240211f88336973fa968d39cc860.1690446928.git.geert+renesas@glider.be>

On Thu, Jul 27, 2023 at 10:36:23AM +0200, Geert Uytterhoeven wrote:
> Document support for the Interrupt Controller for External Devices
> (INT-EX) in the Renesas R-Car S4-8 (R8A779F0) SoC.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by,
>   - Widen audience after testing.
> ---
>  .../devicetree/bindings/interrupt-controller/renesas,irqc.yaml   | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

