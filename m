Return-Path: <devicetree+bounces-20492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8E47FF86C
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 18:37:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4064B1C21007
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B07DC58105;
	Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLpwMnO+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938415677D
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30CADC433C9;
	Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701365851;
	bh=I/RwekvEm5QIDGRUyxy7iKY4DFgOKjlEGNrv2EFM96M=;
	h=From:To:Cc:Subject:Date:From;
	b=lLpwMnO+XqPA54AmQ3tVbECUgmOZAfG8lfMvXi5Dn/U1HnTG2+Rjwf6gt1yeTbiIR
	 /OQsKbX7sfiFDCjnu9AgGbl+1kMMmE6kY3b639B2JV85o8AvIewaNmXnkOdADM8g8a
	 xsfnh2QYj+TlQJSwMO7rdzSroQuJuPsA71KuBWU5yv0Iyl6ufEPP5f6uWK1y6n5tbq
	 znDvNhWWCYR8UwrLha683/ewXkAGBLmnH5XEd8uQvuR0sIMEF1m2EDbj779oR3rJhC
	 oYwDQggOh+l2TuSNMCu1D8nrSgTS6quCtSzocycMQCd4Z11rJZF95DLaITq4YBatz2
	 l9dPg2DvUZJ1A==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1r8kzE-0003O6-0K;
	Thu, 30 Nov 2023 18:38:04 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/2] dt-bindings: spmi: clean up hisilicon binding
Date: Thu, 30 Nov 2023 18:37:55 +0100
Message-ID: <20231130173757.13011-1-johan+linaro@kernel.org>
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

This series addresses the related hisilicon SPMI controller binding.

Johan


Johan Hovold (2):
  dt-bindings: spmi: hisilicon,hisi-spmi-controller: fix binding
    references
  dt-bindings: spmi: hisilicon,hisi-spmi-controller: clean up example

 .../spmi/hisilicon,hisi-spmi-controller.yaml    | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

-- 
2.41.0


