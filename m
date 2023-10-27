Return-Path: <devicetree+bounces-12547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4478D7D9FE3
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:23:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA4EBB214A4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 18:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D7F358AE;
	Fri, 27 Oct 2023 18:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD283DFE2
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 18:22:44 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33387D55;
	Fri, 27 Oct 2023 11:22:39 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1e9baf16a86so1399128fac.1;
        Fri, 27 Oct 2023 11:22:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698430958; x=1699035758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ypKQm2bhVvSr+7NfKx/QUexVGXQg+6IAYmLj2B0aXXI=;
        b=e+Zl0Wx7pQvwEVgvIAP6yBTwK3vw3U8triIdJk46tR8Eqd7WZxZ85SbWh9B2FdZznE
         bsztDX22WJSlcXG3qddaXj7htIWko4XwxXbau9oLHjpUmDiOLWydgv4BtyJBu3rIhSaH
         1GeKUeg1dJaB7Ts+vPzstJN0j5cGJDGyqgiqDrHuFD7/6a/sDtzT1ySfgFiyZ0D+63iy
         W/JRcqABlc/Gc/ehavBAI2E/2wsjxTDenyiaYp7DF1NxUoSR5zvyk5rhG+McC72xQt0S
         CHxy+zBQZimqzYuCP6scQ2TWuNaOLzRqT6cZiDdAvs6bUrI0FBBAXgw2ndqRVedWlvzp
         ObvA==
X-Gm-Message-State: AOJu0YxXlMMlXDCIlivrx8PZ9rZTiMAnzH+83zceOyapOFyMNvvi+J1k
	1UFqnJUJ8XuMeKxL+X8+sw==
X-Google-Smtp-Source: AGHT+IHM79c2WAenWp7g5t5ecG/cJMTCO8zV05gtINDCRsMtJcZoq+Tghoupfg9/MI/thEcepTEyKQ==
X-Received: by 2002:a05:6870:2116:b0:1e9:a917:cf46 with SMTP id f22-20020a056870211600b001e9a917cf46mr4206650oae.19.1698430958268;
        Fri, 27 Oct 2023 11:22:38 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g21-20020a056870a71500b001e5c7cc54d3sm400406oam.55.2023.10.27.11.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 11:22:37 -0700 (PDT)
Received: (nullmailer pid 2922326 invoked by uid 1000);
	Fri, 27 Oct 2023 18:22:36 -0000
Date: Fri, 27 Oct 2023 13:22:36 -0500
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 1/4] dt-bindings: cache: sifive,ccache0: Add StarFive
 JH7100 compatible
Message-ID: <20231027182236.GA2853373-robh@kernel.org>
References: <CAJM55Z-vw1sbks0KcHOXMzP-6c9NMg+GOndi2pQ7iyWh0=oQiQ@mail.gmail.com>
 <20231026-paycheck-equation-b0f1a1191bf2@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026-paycheck-equation-b0f1a1191bf2@spud>

On Thu, Oct 26, 2023 at 02:10:37PM +0100, Conor Dooley wrote:
> On Wed, Oct 25, 2023 at 11:56:37AM -0700, Emil Renner Berthing wrote:
> > This cache controller is also used on the StarFive JH7100 SoC.
> > Unfortunately it needs a quirk to work properly, so add dedicated
> > compatible string to be able to match it.
> > 
> > Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Did you want me to pick this up? Or you or Palmer will?

Rob

