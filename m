Return-Path: <devicetree+bounces-1703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9677A781D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07BA52814B5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26925156D3;
	Wed, 20 Sep 2023 09:55:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176BC11709
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F105C433C7;
	Wed, 20 Sep 2023 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695203754;
	bh=ymi9AhxzEGfr3xbpAVk8Lsx1Ioa9TTKYbM7aBR7wfxo=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=NZWdErQoXneCkYIehhA1X+hogrP2+g2oIViQnRRtEPRMgqRnVWkKXqithvecSM0yR
	 wk7zP2cUa8ZHH0qNcWdZGvvoNVFD/ilQn18YFePP6kHy1mfGaCUegA3oQ0Bd5m2AcI
	 LQBqlxyopnMbfp/KoAhtHzWsl1GSWA0Vu2DMB9amPZO6dDuUoWhZZH711hBokJg/12
	 iQ8pkR1xCeJMY3gJhdlSNZvbQnRXY8g/r3N+VKfvzPV6H96iSEKeR8lj6T2IGkx9sq
	 2GneXG8YO4+lzz9kimJyGYRWd/JA2TnpFXAzaLsoWW0NjG8ChLamJjcTDfaqUclY12
	 4TLTHJkbhYKOg==
From: Lee Jones <lee@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230905075558.21219-1-krzysztof.kozlowski@linaro.org>
References: <20230905075558.21219-1-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: Revert "dt-bindings: mfd:
 maxim,max77693: Add USB connector"
Message-Id: <169520375325.3364278.14078224668543411816.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 10:55:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Tue, 05 Sep 2023 09:55:58 +0200, Krzysztof Kozlowski wrote:
> This reverts commit da7ee30ae6662f016f28a9ef090b2132b3c0fb48.
> 
> Commit da7ee30ae666 ("dt-bindings: mfd: maxim,max77693: Add USB
> connector") was an earlier version of my patch adding the connector,
> later superseded by commit 789c9ce9b46f ("dt-bindings: mfd:
> maxim,max77693: Add USB connector").
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: mfd: Revert "dt-bindings: mfd: maxim,max77693: Add USB connector"
      commit: c7f5bd9f3aa04a5d0ced8c8f7835bead62380fa6

--
Lee Jones [李琼斯]


