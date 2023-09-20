Return-Path: <devicetree+bounces-1875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD347A8A7E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81345281B32
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4720A1A5A6;
	Wed, 20 Sep 2023 17:23:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378FF1A594
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:23:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0534C433C7;
	Wed, 20 Sep 2023 17:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695230635;
	bh=c7NnRdLLqP4JhMp2aU5nyGYzM2NmsnHZzQn3yIr5ApQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xi5G09YjlDpDDyhPsC/OefA+5QEgulsTleUWQOCB9fVc6o5bAdxmXiBsWmMb+SzP1
	 xehlQYH09CYhFcUKUukPfaWL/Av67OfyWzZj+j2RFfNxUf6iMULmzAmFkHCZMhBfyY
	 LHvh7fOppTSruqE4oWIx9mFlNyeSknE9rY2/t2Nxjv12DS9Axdt6aHgGpJNbfI8nKV
	 c6qWc0HOurPK3c4ySRJ+snRwsmzZpldGaWcur0hn3psKO7FuJPXbBD2YtI1fxbQVgg
	 ZmeW4hCvVDMlQRkn2Os1a3ZJ5LavUkob9wWPmPcl1IWXN+nmwgRfyaOXZxDr2QA2cG
	 exUps3Rajub8g==
Date: Wed, 20 Sep 2023 10:28:02 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Rayyan Ansari <rayyan@ansari.sh>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	Dominik Kobinski <dominikkobinski314@gmail.com>, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
	Jack Matthews <jm5112356@gmail.com>, Andy Gross <agross@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 2/6] ARM: dts: qcom: add common dt for MSM8x26 Lumias
 along with Nokia Lumia 630
Message-ID: <uiwrduxzbkenkm6iuhdk433h47srzuf7z4kngmfjrlbaeeehea@64casco3bwpr>
References: <20230813152623.64989-1-rayyan@ansari.sh>
 <20230813152623.64989-3-rayyan@ansari.sh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230813152623.64989-3-rayyan@ansari.sh>

On Sun, Aug 13, 2023 at 04:23:11PM +0100, Rayyan Ansari wrote:
> Add a common device tree for Lumia phones based on the Qualcomm MSM8x26
> family of chipsets.
> 
> Currently supports:
> - Framebuffer
> - Touchscreen
> - Keys
> - Regulators
> - MMC
> - USB
> - UART
> 
> Also add an initial device tree for the Nokia Lumia 630, codenamed
> "moneypenny".
> 
> Co-authored-by: Dominik Kobinski <dominikkobinski314@gmail.com>

I believe you meant "Co-developed-by" here, and it needs to be directly
adjacent to the s-o-b. Can you please update these, and make checkpatch
--strict happy?

Regards,
Bjorn

> Co-authored-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Co-authored-by: Jack Matthews <jm5112356@gmail.com>
> Signed-off-by: Dominik Kobinski <dominikkobinski314@gmail.com>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Signed-off-by: Jack Matthews <jm5112356@gmail.com>
> Signed-off-by: Rayyan Ansari <rayyan@ansari.sh>

