Return-Path: <devicetree+bounces-27767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2377481BA2F
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 16:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B523D1F27785
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 15:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202693609D;
	Thu, 21 Dec 2023 15:07:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D115360B6
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 15:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41A312F4;
	Thu, 21 Dec 2023 07:08:03 -0800 (PST)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E213D3F64C;
	Thu, 21 Dec 2023 07:07:16 -0800 (PST)
Date: Thu, 21 Dec 2023 15:07:14 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] dt-bindings: arm: sunxi: sort alphabetically
Message-ID: <20231221150714.53d40ea3@donnerap.manchester.arm.com>
In-Reply-To: <ab8e7d68-c09c-47ff-9f31-08b073387403@linaro.org>
References: <20231221140614.639697-1-andre.przywara@arm.com>
	<ab8e7d68-c09c-47ff-9f31-08b073387403@linaro.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 21 Dec 2023 15:45:17 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

Hi,

> On 21/12/2023 15:06, Andre Przywara wrote:
> > The sunxi.yaml file, holding all known board compatible names for
> > devices with Allwinner SoCs, is apparently sorted alphabetically, by the
> > "description" entry. However there are a few outliers.
> > 
> > Re-order the entries to get a strict alphabetical ordering, so that:
> > $ grep description: sunxi.yaml | sort -fc
> > returns empty-handed. There is no change otherwise.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>  
> 
> What was the existing order? Aren't this just shuffling again things?

It assume the intention was to order "alphabetically by description", but
there were some out-of-place entries which apparently slipped through
review.

Shall I add a comment at the top to note the order?

Cheers,
Andre

