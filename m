Return-Path: <devicetree+bounces-134125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DCD9FCC6E
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 18:30:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A5D51883091
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 17:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36BEE1474A0;
	Thu, 26 Dec 2024 17:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VrLJp2AG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9801459E0
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 17:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735234204; cv=none; b=lwl89QeH7W+ByMGwwYJKzRUD6fMs1YDrH+31olc6s7i/heVqjbKz+Ocbpno7UrzwwxWxtHabcjme2gMANoPaf8n+hbjC5I2o1TGBv6t/JsS9BGHC2B7U3GkNhKLGvb7Z88HJRca1M4ZgS/x+MS8nDKvApUxxsypNDEhU5heX84A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735234204; c=relaxed/simple;
	bh=TvLqtG1WDIQ9YSnqHOzsPIYzQWTcYYy//PzbG6PEb+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JcOipHOqRk4dIpU/E2J4/m1bwEj2nUWW8CAiITgVKhuuFhJoU4ZX5iPO1fsxZFCBIfKj9FNGDgtg63le03wzplQxh8pn30r3FhWrdShSVENEn5g3nOkn3MTE/IHdu598vFQDlW+xbFKgA2gDwgf+9olmxApO8GTxS0Zrty95Vws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=VrLJp2AG; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2165448243fso91326735ad.1
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 09:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234202; x=1735839002; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iOKmxq7sfOT/dN+VcRhgWDRuv9FZCWqojz7j41kMClM=;
        b=VrLJp2AGR5bdOUSJ65vhahrMbeg6QyHlWMhHM84F0k0TvLi7fjexqvVLtxQZY0y9JC
         G5/zKkucsYLdeoEC0cFyIWGgC4j4/KBtWPHiBTsnXP2F0413O4/B6KiEUvdnhIZhvs47
         nyPg35ARMQ1Pl2czHaCnZ9lnmIVpqZegSm4Utl4WrC+tsUyVuFtnE+CeXaY55xwsopjl
         i4O7p5hWP3SB4STZFH4icov6ix1h0ABQy8hXv9yjHY2A3m5+uw6OwU2yvLJBVYoffzWc
         xqtq9gmB6lz5N2uKTne0DLQZS6YOFFHMLfHWn3PqrvIkSlc3ePha0HBZTNc3sXs6ykBg
         yijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234202; x=1735839002;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iOKmxq7sfOT/dN+VcRhgWDRuv9FZCWqojz7j41kMClM=;
        b=u7sFu5FJJMjlXF8BgNyDwJycNFeiiMX4HtdioG8R2KF/D1fjjTjwynOm0Lb4LKXOrB
         UY/nU/2F3W2ZR/jtkkDK4eC3fbrXLtkzAaqtEFaIHGsIddHABSdabgU44hkj+XhwBtMO
         jpzi9yWL0T8eL1aZqn5wxAGtgSD9u54B+CwMVUmR70jK1yGPIqdCkXd8s8MA17tU+VTi
         pYl9QXlTyDV8Vc+/1h+tNrr7oPP8imkF51fcAmPLwZJ4M77oX1hNaRNUMOdXKvkCIr5i
         Amfg/UCuoyLj3bzcXm+6FyLSUEK/o9PL/XAUA/TI6tlfVK8pkyvx//yAwtdMcIHE3noK
         l4Xw==
X-Forwarded-Encrypted: i=1; AJvYcCW151U60WKrwnJWVUSqbgG9/MTvHRwqEN93rnKBxcHqffqrOwry6YKJ+TEwc+Dnnvxiswc7hOzCA+pj@vger.kernel.org
X-Gm-Message-State: AOJu0YxcSav/T0T3DpDM8M0sE+FrYIPzkudWNOpw4lP2/ApN7oAG3EPI
	IOiW4XFuq1XCOYxbg/8C9dCETSppuB046ZMBr4HTqeYkqXcaIveAOZFwfCsOBA==
X-Gm-Gg: ASbGnct8WgxHJ4UWNECoDpGJMSvhlEGS70Pndm8pG8WRBBGeCQ6SDzNjXpzDRqtkpso
	D6zWVdxoeIve+WoZtZTMYczubYGSUEhqiAB+rvBLDxqGBqPaeln1sBulZmXKvpIVSEQQ84WV/fl
	8S/Rz3jPnLHzbWdaPdJSBqfjgVRq9l3VWZcKafW7UPeOFXC7bQpgtO6ow1m1DELRLT5al1hQUAW
	AIMSQXPniwUgLejpoiIsBjYjFzkEanXJoJSnmRYQyn4yGVmXnhCqyj5tYVIZI+DzBsj3eHn3PxG
	gEpPQ2T6FYBa79dgakuxOOX7
X-Google-Smtp-Source: AGHT+IG3DI35X7q9+bCJb3UUFJu2GLGQZKsBEiV2vr18nzsLloa/+8mEp5KjjNsc3tnSau1Pvhjxmw==
X-Received: by 2002:a17:902:f652:b0:216:4676:dfaf with SMTP id d9443c01a7336-219e6ebcb75mr320751155ad.34.1735234201256;
        Thu, 26 Dec 2024 09:30:01 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc962961sm122281025ad.13.2024.12.26.09.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:30:00 -0800 (PST)
Date: Thu, 26 Dec 2024 09:29:58 -0800
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 3/7] phy: exynos5-usbdrd: convert to dev_err_probe
Message-ID: <Z22SlgYsmFbezV-0@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-3-f5961268b149@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-3-f5961268b149@linaro.org>

On 12/06/2024, André Draszik wrote:
> dev_err_probe() exists to simplify code.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: André Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

<snip>

