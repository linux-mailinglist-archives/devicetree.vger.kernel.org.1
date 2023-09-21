Return-Path: <devicetree+bounces-1983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F39D7A95B0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE02FB207B4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6989B199BD;
	Thu, 21 Sep 2023 16:24:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5790F23B8
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 16:24:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09295C611A1;
	Thu, 21 Sep 2023 16:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695313466;
	bh=hpue0sB74rS4F/criJlPgC2g4ffost9T7IkqkvG5o7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MW1t3p6kmhqAnz3ktOUjYfePzkbrS8bYgELu1FgpNLdcvPH0EXT7frDVB+0wLM8Ar
	 TgU4d09o+oc5yn9Hem87L8fDUGdeZ+ffDr8ou91ViZlt8MuU599+KordOEBkonrN00
	 agkAaYF1ivB68+Dw+3HoMcZAXNoFTKovfovaQupnjKesckbwHO2foL12N61Ar3SSC6
	 LfSaoJWRPYE0elOWIWzsn30yFPdI7l90uuls0e0zNi/p6nONq/Whs+u63LlPNaIB6m
	 aqiGcs1Rkg5UpuUWi9rPDGEbihWrdLQpmy6hIlPtsKfVPZOIa1rGCCcI6Sa5PrBDmY
	 Takmdaw9N1Zlg==
Received: (nullmailer pid 441560 invoked by uid 1000);
	Thu, 21 Sep 2023 16:24:24 -0000
Date: Thu, 21 Sep 2023 11:24:24 -0500
From: Rob Herring <robh@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: sc16is7xx: add vendor prefix to
 irda-mode-ports property
Message-ID: <20230921162424.GA435508-robh@kernel.org>
References: <20230920152015.1376838-1-hugo@hugovil.com>
 <20230920152015.1376838-4-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920152015.1376838-4-hugo@hugovil.com>

On Wed, Sep 20, 2023 at 11:20:14AM -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> The NXP-specific "irda-mode-ports" property lacks a proper vendor
> prefix. Add "nxp," prefix to comply with DT best practises.

The opposite direction would be worth carrying in the driver, but I 
don't think adding a vendor prefix is. I would just leave this as-is.

Rob

