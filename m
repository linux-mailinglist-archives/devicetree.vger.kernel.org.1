Return-Path: <devicetree+bounces-8674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 172C37C98EC
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 14:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A593B20BC8
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 12:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D2463B6;
	Sun, 15 Oct 2023 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUUIcofa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4923C569F;
	Sun, 15 Oct 2023 12:22:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35753C433C8;
	Sun, 15 Oct 2023 12:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697372571;
	bh=Vq1x8fNAr/F5R14kzqqNRk9z6bIRBIK9ilwYC/Yu/n8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KUUIcofa5nhhHisGxJQ1HY7JhZZ8wEN/koWoaRST6AsmY13ju+N3Uih7pphdxf8Ck
	 TfP3h7NaqakIsIVlHTC3Aw34UuX0iPjcL0Jw7c3sceNbf7qfUEOAH+3NHz5bAS2T8n
	 1HYGpgModnd2INeLjnamqfCSqa+jhfmJ4khpqgWEQepmUjiOHlsUjGSl0p/+GvbIqk
	 fLjfVlEKB+zrMui7gpV13nIlDPisHHFYZ2lTkkrCFLmLuZOvIn3ibiR52HXfATT3V1
	 IyDF3p/GtG1qSC3/GEfiE/qoD0mzPDEGbedNFcgfyq3Jyxgj9AUl9OD+Hidw7pG07J
	 Q2QkkavLa0bZA==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.indradead.org,
	Conor Dooley <conor.dooley@microchip.com>
Cc: conor@kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-renesas-soc@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/6] riscv,isa-extensions additions
Date: Sun, 15 Oct 2023 13:22:02 +0100
Message-Id: <20231015-qualifier-campus-97bf09059d51@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009-approve-verbalize-ce9324858e76@wendy>
References: <20231009-approve-verbalize-ce9324858e76@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=870; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=JxLsg/nX2rHAa/nDvg2BonZ/j7ra8ax29aRGRmkFUGU=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKnaN9MXZh9OfZttW3bgD9O9h39Tj8kd+3X1nVVa3eZTJ Yyh/zXzOkpZGMQ4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCRacwM/93VTu1Mu3pe8cfd nZ0eCnMezgzT645bJ35u6ZRQL6/Pi0IYGVbu/cq9Z+JE6QsdR6fxuVx5UaU/rTfZWmCVugDX7tA 3fOwA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Mon, 09 Oct 2023 10:37:44 +0100, Conor Dooley wrote:
> Now with the RFC tag dropped. There are no changes here from "RFC v2",
> other than the addition of tags that were provided along the way. I have
> not added "Zfh" to the T-Head based stuff, as I can't actually read the
> documentation that would show that they're encoding-for-encoding
> compatible with the standard extension, since it is apparently only in
> Chinese.
> 
> [...]

The first 3 applied to riscv-dt-for-next, I expect the rest to go via
their respective platform maintainers.

[1/6] riscv: dts: microchip: convert isa detection to new properties
      https://git.kernel.org/conor/c/561add0da6d3
[2/6] riscv: dts: sifive: convert isa detection to new properties
      https://git.kernel.org/conor/c/a54f42722e49
[3/6] riscv: dts: starfive: convert isa detection to new properties
      https://git.kernel.org/conor/c/81b5948cf1a7

Thanks,
Conor.

