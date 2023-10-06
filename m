Return-Path: <devicetree+bounces-6530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9E67BBBCA
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:33:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A00501C209B3
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 808A627ECC;
	Fri,  6 Oct 2023 15:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4CS/8Xg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE8F23778
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 15:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB7E2C433C7;
	Fri,  6 Oct 2023 15:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696606435;
	bh=O9xzoqlYj7n5mkDnLVN55AsCgf8Lfjr5TpSdNR+UrsQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F4CS/8XgIXNCqzyPWyNqYco6Y/sr0yLyLfj7GwO53cmD08cWDP7FDAZTHkPleW3lj
	 2y0L5dSJGv8DOmwchm/PivslJUuyAGs77Szez2UOHPcvCoIEjVHiOpndCZ++06Bjwg
	 2ubnxK8YbVu6bdhXcgMbPBI5/1HqnGp8DWamt1i9gAMDYlhlSQNQQQIwf2njoDULx6
	 BENUNWlTntRtu8OaUIwuX8Sj3qLdx7EG6oUYe9lCP6ljk57QqawAJVGQKDUiULOk+b
	 6S9VSDU/M8i+16G2RNDCgeGscfVDI780CircAKf5mE39LICbw8pPnZBXjZtSHN+Nm+
	 2g0GxGlv2pszw==
Received: (nullmailer pid 3975164 invoked by uid 1000);
	Fri, 06 Oct 2023 15:33:53 -0000
Date: Fri, 6 Oct 2023 10:33:53 -0500
From: Rob Herring <robh@kernel.org>
To: Naresh Solanki <naresh.solanki@9elements.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Patrick Rudolph <patrick.rudolph@9elements.com>, linux-i2c@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Peter Rosin <peda@axentia.se>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: i2c: pca954x: Add custom properties
 for MAX7357
Message-ID: <169660641279.3974559.16160487175292188205.robh@kernel.org>
References: <20231005134541.947727-1-naresh.solanki@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005134541.947727-1-naresh.solanki@9elements.com>


On Thu, 05 Oct 2023 15:45:39 +0200, Naresh Solanki wrote:
> From: Patrick Rudolph <patrick.rudolph@9elements.com>
> 
> Maxim Max7357 has a configuration register to enable additional
> features. These features aren't enabled by default & its up to
> board designer to enable the same as it may have unexpected side effects.
> 
> These should be validated for proper functioning & detection of devices
> in secondary bus as sometimes it can cause secondary bus being disabled.
> 
> Add booleans for:
>  - maxim,isolate-stuck-channel
>  - maxim,send-flush-out-sequence
>  - maxim,preconnection-wiggle-test-enable
> 
> Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
> Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> ---
> Changes in V4:
> - Drop max7358.
> Changes in V3:
> - Update commit message
> Changes in V2:
> - Update properties.
> ---
>  .../bindings/i2c/i2c-mux-pca954x.yaml         | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


