Return-Path: <devicetree+bounces-7297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 376D67BFEF5
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:19:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65DF91C20BA4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:19:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6B924C91;
	Tue, 10 Oct 2023 14:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/eAGdnd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E04624C82
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:19:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FB7CC433C7;
	Tue, 10 Oct 2023 14:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696947548;
	bh=wV9qLR8tcGG1yVmtAdC5FwrCHYOQ/XD+/G/hGQ4wcB0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r/eAGdndDZcrQO2bHbVRnmn49fjTqupzR/dBHlPRGJTtwuibqoA9ZMW1jnUNhHl+c
	 j2aAFpyFlz+uopK5HSUJQ3K7/OK+TQlgg/nemrPBEG1AHYPO3sLYZdsFYRBvVwQzXm
	 o2/HWEr72o1QFwYhZbSTYxk6hp4s4XXHkz6cOLzYbspaCF0PzqhFwKxmaHFSjGdZgT
	 MTUVjiOUlGbsbCon4GqN7x8UPX6Zc2ZRcb7dBoPqiGqoNarPc6NDTy99tC2ItNXHMV
	 T3i8nlKUgt0UVP1KFtHV2S0lCJFGyCQVtoLktlmS36L9TYL8fAjii9z+objw5/shwi
	 7NK1jP5fbvwZQ==
Received: (nullmailer pid 819983 invoked by uid 1000);
	Tue, 10 Oct 2023 14:19:06 -0000
Date: Tue, 10 Oct 2023 09:19:06 -0500
From: Rob Herring <robh@kernel.org>
To: Sam Edwards <cfsworks@gmail.com>
Cc: Sam Edwards <CFSworks@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Sven Rademakers <sven.rademakers@gmail.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Daniel =?utf-8?Q?Kukie=C5=82a?= <daniel@kukiela.pl>, Rob Herring <robh+dt@kernel.org>, Lokesh Poovaragan <loki@gimmeapis.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add turing
Message-ID: <169694754552.818870.13308355883596740674.robh@kernel.org>
References: <20231007043600.151908-1-CFSworks@gmail.com>
 <20231007043600.151908-2-CFSworks@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231007043600.151908-2-CFSworks@gmail.com>


On Fri, 06 Oct 2023 22:35:58 -0600, Sam Edwards wrote:
> Add vendor prefix for Turing Machines, Inc.
> (https://turingpi.com)
> 
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


