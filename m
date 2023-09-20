Return-Path: <devicetree+bounces-1759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4997C7A82F0
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:08:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02E93282262
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988B836AF8;
	Wed, 20 Sep 2023 13:06:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E83347C1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:06:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3C61C433C7;
	Wed, 20 Sep 2023 13:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695215190;
	bh=G21DTWBZn+yTyu1rRKh0URQEK1vCIDAO0T03Nvv7ZtU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PS8YpdU7jShi0U537v+hU2/OhXwlVf3WiCM+5BFObDNygN2H5ZSw754ENjVT12zHT
	 5Q1B5wpNdq0HilyuldvlQ1ogeosEeubO0oPpDEyTvcBQwEOv04Z8ruPNdX1TiZFS0V
	 uTBm5MX5w4VxQYy3tYceHZCMy059kg0Puz6C1dQw5GGRtH3UUxt97RAWJuHwc4aSEl
	 Ednlt9bchhiAMmpd96U7pShPYQRvHHjSrYFQRncW4KnzIgvWOnP926HvjVKkn2gHq4
	 cu+s3bJunLbK+2Lj4eUymblPy/RYdFfEcH8lw+CYqvW2exoXBMLE6dejn/UiF/bDvN
	 K1t00T2BskQfw==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Aradhya Bhatia <a-bhatia1@ti.com>, Andrew Davis <afd@ti.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230911142556.64108-1-afd@ti.com>
References: <20230911142556.64108-1-afd@ti.com>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: mfd: syscon: Add
 ti,am654-dss-oldi-io-ctrl compatible
Message-Id: <169521518749.3428172.8999036795849348805.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 14:06:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 11 Sep 2023 09:25:55 -0500, Andrew Davis wrote:
> Add TI DSS OLDI-IO control registers compatible. This is a region of 5
> 32bit registers found in the TI AM65 CTRL_MMR0 register space[0]. They
> are used to control the characteristics of the OLDI DATA/CLK IO as needed
> by the DSS display controller node.
> 
> [0] https://www.ti.com/lit/pdf/spruid7
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: mfd: syscon: Add ti,am654-dss-oldi-io-ctrl compatible
      commit: 9cfffe6a730feea95e7bc827537f5b0a2931171c

--
Lee Jones [李琼斯]


