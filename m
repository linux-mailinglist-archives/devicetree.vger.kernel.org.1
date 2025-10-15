Return-Path: <devicetree+bounces-227337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D379BE099A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 22:15:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BB2AD4E4106
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8158246BC7;
	Wed, 15 Oct 2025 20:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DTH4KOa/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E41773451
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760559340; cv=none; b=tb6y7E+byTN1I8lv8TELqD6fj77UYO8rzcWLYeenNFuV6EnD2wY/UCoW24uMmEEU2/jhpQ9uhF2VIWBEKT/nJyTuAx/DInWbTD1ubgMSSoWNgEZNmUcZcVuik8rVrNOwNk7jbhBxz3KFEIJ7A9juAtZFvv5+okUZ5m5t11LOSEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760559340; c=relaxed/simple;
	bh=f33sC8KOhgzfcrNG4Qj/bQ/QmwkdFKt6EmZ5R4Q0M7Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A+MI0wDwa//fFrkQPNijJvsGCsAAfSeWWf0GwZ7MM//Ghp/NqwUOxSzmKPr69gDD5K5p/rrVxjuM8Rt2+LjOfvAM2CvpG3qlN5aeKICyZLQqV/zPWJWl5qKchiYQWa7vzItLS6KHerLr3+UtiWfPb2RDdPePj4VLfA4sXqzgsbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DTH4KOa/; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-78af743c232so28967b3a.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760559338; x=1761164138; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ElqsTIdctQn66pT7wW61kkU/IWdghkzXe7gYLEQptw4=;
        b=DTH4KOa/DDFU/TgfmAH/4o59rAphEnx4hT5pApdwkRRY7B9o6o2249n/mIPaFYUXcU
         Dzi6AGfiOjpqTd4KrR58gIGnZ268Rjz0afQc8yiiEUsPlnTqfJYzDeI2Nim2Zgg1qaiD
         TYoQ/gwN4ytgryo8wm/RvKuiX89sNUx3OHjZmCmoGqXT41LQHjhXDRhX/5aGn4unmssa
         1YjiZ93kWF6H6EQwaBKXf4FYBKlfcI2PQKueTVBlyyDbWLO1Bo8lfL6mpB7jIYcq+Vc+
         s340WzUheOWfxVIQKsJirYDKHGer9HqxCrEjBIXzgBhEpZvB7ni3vGyghIlpNgz1gNKQ
         Zgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760559338; x=1761164138;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ElqsTIdctQn66pT7wW61kkU/IWdghkzXe7gYLEQptw4=;
        b=B2gd7UZ02n2ow69E0tuPEo728EM+ZLLOmxoPrweN4g2JzGc4/U60bAz33xvJwiHy7A
         UWiGbffR4IJZLYiNybHrpyWXXJWcy/qH5xzM8nlc3W/mz3cEQJ8w4ugfSSO8gbiy6gLF
         qDpYPnCD7kHaxCyN97++dzT4pzMrSqQMv9MHg7lU6FdMvmXAytzQqTczNyi0+wILXDiZ
         tGgNArABFdWK1AuyH0X9YVOeDtO3wYC+noWaQAnNv0zr6J5VR1G2RMAbkWjkNv0R1XVk
         HkTDaJWRAJ2Wtomgbb1ObukH5zP7IE/9ilQxP7znH6ZXPyXJrty+pi4XdIGi26Kws+60
         Dbxg==
X-Forwarded-Encrypted: i=1; AJvYcCUPivYTbHvQlR1YsTfZxuiHMwrmaEwxssLUzK+xl7rmFX9Zd888uXYG4SXBQOADy+xG6Cu92S77oqCa@vger.kernel.org
X-Gm-Message-State: AOJu0Yyim7LHEzIT4yIhWwdDWCZKFWu4CxgVfEwCKbgdP20mmvJr7WuL
	rn0vikVpj48kdh0BOfpRkeplGNiUfmqDFAd8QGkdqu4a1X+iTznqZ3+FASHKe0ZU
X-Gm-Gg: ASbGncu8Qc0rpMMiEgoPRb5lXFZvSoWrsLeIOdj876qtQrKXzKmAhwyRltD3fdrJpVf
	gzE6JaaBscQrbUpmQpp0LFy/ozHE85/PfZD3jM1cFV010gizY1/2Mf5rl8IOUBhj2erTEFKXy3C
	+HxFvwzcuLCEgXPFmvL4+HWuq9CmygZLtBcjFzb2SG/mrFSyhQ2Mctiq06H6Yzj5jsvdqxIXXMo
	5j15f9ZgdZRwj4W6+3rot3m1m+gHHs0Fvfn/J8dEKCiV4bYq5NG5U6RRGek2DRzP9sUfCZDbsJ6
	3RHAS2jW9PdvivjAp5nyMjbVY6zVi1ewWxD5hIXTGAEY1/tInpO9oJGC38NMHsDE63ySqYMD3h4
	oPMesLyg8uEHvuhf7OCujd86eKKybkoZI2gE55Lfpi285H67Me8yuoXLxQluKCvVcysqAovp03t
	Lgj3Y/oQ27xvw9ReTTVawm
X-Google-Smtp-Source: AGHT+IG4uNV20f7gDW9o0Gz7678vJFvvBZRhbd7tYd24sy95B2AzjYbBxmFfDzt3FdOHxVCYDasAlA==
X-Received: by 2002:a05:6a00:4b8b:b0:79a:fd01:dfa9 with SMTP id d2e1a72fcca58-79afd01f231mr16240519b3a.6.1760559338302;
        Wed, 15 Oct 2025 13:15:38 -0700 (PDT)
Received: from localhost ([2804:30c:402b:1a00:ec78:db53:a246:207a])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-7992b06075fsm20183211b3a.17.2025.10.15.13.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 13:15:36 -0700 (PDT)
Date: Wed, 15 Oct 2025 17:16:40 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 2/6] spi: Support multi-bus controllers
Message-ID: <aPABKMoIbpMhOzxt@debian-BULLSEYE-live-builder-AMD64>
References: <20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com>
 <20251014-spi-add-multi-bus-support-v1-2-2098c12d6f5f@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-spi-add-multi-bus-support-v1-2-2098c12d6f5f@baylibre.com>

On 10/14, David Lechner wrote:
> Add support for SPI controllers with multiple physical SPI data buses.
> (A data bus in this context means lines connected to a serializer, so a
> controller with two data buses would have two serializers in a single
> controller).
> 
> This is common in the type of controller that can be used with parallel
> flash memories, but can be used for general purpose SPI as well.
> 
> To indicate support, a controller just needs to set ctlr->num_data_bus
> to something greater than 1. Peripherals indicate which bus they are
> connected to via device tree (ACPI support can be added if needed).
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
LGTM

Acked-by: Marcelo Schmitt <marcelo.schmitt@analog.com>

