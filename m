Return-Path: <devicetree+bounces-20508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA627FF8DE
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 18:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 427D71C20CED
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7828584EC;
	Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXkfIq+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB391584DF
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44A64C433C7;
	Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701366969;
	bh=/Osa1t+yhRR5faIxNKg3+KynX/kd+CAp3SC0ryOoBeI=;
	h=From:To:Cc:Subject:Date:From;
	b=pXkfIq+Yah19RVDik4OkwBI9j2fogy9aIFbj/1BcLEptPLL//HJ09Dw48VHR4jiwb
	 OY2shn8wnfQNTdgz4l1oNygNiL/AOyKNhCf6+hTYmr0VZRr+brc+0dGQB4jCpCebKA
	 L7jpTvKKOX/Ld3WuG9S4jQ86v7ISnkct0aH3PzjbWX/C+RjfIW0Yv51ObGWJqocN59
	 kaRSdgjrPJml+wLIQtFho51K4fgjROVazvq/VZ+m5oG/oGJyzUoAyIA5TrKKxaLQSa
	 H2g49mVdIw1Ob5iCXxr2W2CH1UcF0CuIq13Fquz9Bg00EqvZ16yS8luf42uLqVKEYp
	 HAafQBKNrRZpg==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1r8lHG-0003i8-0E;
	Thu, 30 Nov 2023 18:56:42 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Wei Xu <xuwei5@hisilicon.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/2] arm64: dts: hisilicon: hikey970-pmic: clean up PMIC nodes
Date: Thu, 30 Nov 2023 18:56:33 +0100
Message-ID: <20231130175635.14251-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When reviewing the various SPMI PMIC bindings, I noticed that several
examples were incorrect and misleading and could also use some cleanup.

This series cleans up the hisilicon hikey970 PMIC dtsi which appears to
have been used as the basis for some of the examples.

Note that the binding documents "hisilicon,hi6421v600-spmi" while the
devicetree and driver only uses and recognises "hisilicon,hi6421-spmi".
I'll leave that as is for now...

Johan


Johan Hovold (2):
  arm64: dts: hisilicon: hikey970-pmic: fix regulator cells properties
  arm64: dts: hisilicon: hikey970-pmic: clean up SPMI node

 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

-- 
2.41.0


