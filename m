Return-Path: <devicetree+bounces-13745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 279447E03C2
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 14:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A12B21F21AAF
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 13:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A60182D8;
	Fri,  3 Nov 2023 13:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="1QTz2NOu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9350182BD
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 13:29:26 +0000 (UTC)
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1E6519D
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 06:29:24 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-41cc0e9d92aso11002781cf.3
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 06:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1699018164; x=1699622964; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f5hQXxQSZxO3OZcCJDZkPQHyyuV8tvUWsRYcmXkePgE=;
        b=1QTz2NOuMb1GC999v0VIP/ms1+ewVvw8xJSWBTX+BNW5YCmjVPrnEJbcfFOHuoc/i9
         7zt4rHuTxk+A4q2Tnjh0i54oVTg+qjhfKRSPLjktiKP1N48/gL3uOVtQNOOU0HzCo+op
         N2673Gdfri+agbHMg1afdfAnJoCzWqJw91ISlbbTKb/BVCO5x7yxVRCvV87mh4gfxzkK
         LjryHTCPHbMXuVykUqxd24u5Vjq9XcjKiRj+d1CzdABAr9cUYPQQewJKtRxLdG3PS8Kg
         IDXRorZJ/iXuyrRNXaykP45r7El/3TlsBAlOo6yhOjkGrTOaHiHUw5UobXGOqSTTei0u
         Mnyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699018164; x=1699622964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f5hQXxQSZxO3OZcCJDZkPQHyyuV8tvUWsRYcmXkePgE=;
        b=dUL0r++Hw1N+3xysznbwhDz/FI2I6jaql70Hyn+g1a7tR8OBT6xF6GcMdS7SXqkXJk
         5h0859rr3w7Mhxdr5rcfRE68uHOW+geCGd+5HnZVHLx3kiYp2LO932uStP5H6E4aYfCt
         9kBcx6a+wZbIAOyTeAQn34qRGAJoAujeBKnhg3OQgUSX90e8Jvuhzr8q9wtIsIg5vSuv
         DyXvJ4wTRJxiAbQG0cXYVMw7d6haR+yOGUW5jht6jytcVDDoVcWXh0F1vGYKkCg8Pqcc
         pBrENFF5wKn+TjwiINBBAslqyOFG+TiBwyqUaE1Ntq8SYorK0aMCdTJeM/nJGcZbA1JZ
         B0og==
X-Gm-Message-State: AOJu0YzK55d3KB3ASfK2znYeQN7udY6bElufeUWZoSvIBn3lIQ71MqEC
	iiF36P4SeVqEIi5FyJxBl1UsKQ==
X-Google-Smtp-Source: AGHT+IEn5wRuUs2lNs9myO4AF2zBH6YUvvrm/OBfPI7RX6oZHVthZK736BXDD9Z+YCw0VljCX13Q1Q==
X-Received: by 2002:ac8:5b89:0:b0:417:b901:91a7 with SMTP id a9-20020ac85b89000000b00417b90191a7mr27765637qta.24.1699018164054;
        Fri, 03 Nov 2023 06:29:24 -0700 (PDT)
Received: from dell-precision-5540 ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id gb7-20020a05622a598700b00418189b689csm723217qtb.10.2023.11.03.06.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 06:29:23 -0700 (PDT)
Date: Fri, 3 Nov 2023 09:29:12 -0400
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Erwan Leray <erwan.leray@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: spi: add stm32f7-spi compatible
Message-ID: <ZUT1qFieeCby9ALg@dell-precision-5540>
References: <20231102193722.3042245-1-ben.wolsieffer@hefring.com>
 <20231102193722.3042245-4-ben.wolsieffer@hefring.com>
 <20231103-recognize-unwashed-b8f1a83fe851@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103-recognize-unwashed-b8f1a83fe851@spud>

Hi Conor,

On Fri, Nov 03, 2023 at 12:50:53PM +0000, Conor Dooley wrote:
> On Thu, Nov 02, 2023 at 03:37:20PM -0400, Ben Wolsieffer wrote:
> A wider range of supported word sizes and some additional buffers,
> implies that the F4 could be used as a fallback compatible. Does the
> register map change incompatibly in the process of widening the FIFOs or
> something like that?

Yes, the F4 has a single bit to select 8 or 16 bit word size, while the
F7 uses four bits to select an arbitrary word size from 4 to 16 bits.
This series supports the packing mode, to allow sending two <=8 bit
words with a single write to the FIFO, but even if we didn't want to
support this feature, the F7 would require setting the FRXTH bit (not
present in the F4) when using <=8 bit word sizes.

> 
> Cheers,
> Conor.



