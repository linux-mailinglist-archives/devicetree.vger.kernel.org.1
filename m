Return-Path: <devicetree+bounces-7252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFDA7BFD89
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:32:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D76E1C20B6D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 728B79CA5D;
	Tue, 10 Oct 2023 13:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3Lm/QTG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543D52135A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:32:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8EADC433C8;
	Tue, 10 Oct 2023 13:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696944756;
	bh=zVH3A6WcM3955zdVuGgM4HRfyxgmqH0PBlcS4l5Yk9M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b3Lm/QTGQ3U4uenUfrPSTfsOqqp4oTMonywmAF4dPQAo19IlZTBlmuJ9j0FEHovrm
	 MwKo1dueJmDIOvUpX6bMid6+rJ6YjbKIG2MjmFAa+mfEveimH1bIdGaZdvM/3Th6QS
	 DsEmm8eRa9VjQfb+mJFquQlN6zKheDUXtjkv3gnakFTUO2lPMNaMYqo3N8WobDaoiX
	 dpprdgXYghckSv3VrSGXPs7scHXOepeDEt9XIRaHNNL2gg1ckyWFTiAbiF93iUlxIZ
	 4oq06LGWcA1/v1bPArF96ANZHrVTfiGeFq01KPbrsSGExeTPaJGH7q66S+KciomTNN
	 TOzm2TJHDWSGw==
Received: (nullmailer pid 635404 invoked by uid 1000);
	Tue, 10 Oct 2023 13:32:34 -0000
Date: Tue, 10 Oct 2023 08:32:34 -0500
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Peter Denison <openwrt@marshadder.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 0/3] Device tree updates for IXP4xx
Message-ID: <20231010133234.GA633939-robh@kernel.org>
References: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>

On Sat, Oct 07, 2023 at 02:15:10PM +0200, Linus Walleij wrote:
> This adds missing vendors and compatibles.
> 
> I can merge this through the ARM SoC tree unless
> Rob wants to take it.

Okay. For the series:

Acked-by: Rob Herring <robh@kernel.org>

