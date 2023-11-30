Return-Path: <devicetree+bounces-20371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2827FEF86
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DD0C281F09
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE9B3219D;
	Thu, 30 Nov 2023 12:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLxnPcLO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CA92B9A3
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 12:51:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7984FC433C8;
	Thu, 30 Nov 2023 12:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701348699;
	bh=whpAvqeWMJ4SUO2YBq9Sm8+Qb2Or4IsFgJpf3mW6gzo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hLxnPcLOjf4scmTFShSA6euIg7GuHrDzeWs9XSAV/gQRuHQMYHCAk3eGIVoTFDBKk
	 vC7kPrj4g9Xf2wKqn5XcOq0C2VsbOSih3feRRJRpJBUzcUP5rE3bLrz7UJZbZh1zbr
	 wxZPFFQyBUJUNNGRPJ4JZb7h/jYW0BbQMtwgE9mN8ltkQiyIcVHJ9W/PAD9VvVHzCg
	 cUKKn9drBbL7f9qsSVGczJdJlcQ2qNLNv2hoJ4AxGgFM7A3W2Ngysqh9aFVopOw1IC
	 uCU/J6vhPLX3vz11SSbZpC0jBy6BNU+PHvrvDMQ3Sm9ut6Ogebw/AjTy4M34PrsGeZ
	 jieJSsDJe1i5g==
From: Conor Dooley <conor@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Inochi Amaoto <inochiama@outlook.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 0/7] Add Huashan Pi board support
Date: Thu, 30 Nov 2023 12:51:02 +0000
Message-Id: <20231130-radiator-cut-167bcaaa2cd6@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To:  <IA1PR20MB495399CAF2EEECC206ADA7ABBBD5A@IA1PR20MB4953.namprd20.prod.outlook.com>
References:  <IA1PR20MB495399CAF2EEECC206ADA7ABBBD5A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=1381; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=vYNZ6BjbkHyaeAO19u7sN0ydYCv26psNewnOx/yeJ/c=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKkZrSZ6DU2KyXmHeM9dlr9kGLV2o86lTQty9GxqM+WfT 9Tia/LvKGVhEONgkBVTZEm83dcitf6Pyw7nnrcwc1iZQIYwcHEKwER+rGT4w8X+tHn1SZVfVv0O 4Ysqb9a0u6qsnzdp+7SYDu6bsxe/P8Pwz4r51D8tN8ZQk919OjnHjwh2LVZZIHpvh0Z/YEjorX8 vWAE=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Thu, 19 Oct 2023 07:18:00 +0800, Inochi Amaoto wrote:
> Huashan Pi board is an embedded development platform based on the
> CV1812H chip. Add minimal device tree files for this board.
> Currently, it can boot to a basic shell.
> 
> NOTE: this series is based on the Jisheng's Milk-V Duo patch.
> 
> Link: https://en.sophgo.com/product/introduce/huashan.html
> Link: https://en.sophgo.com/product/introduce/cv181xH.html
> Link: https://lore.kernel.org/linux-riscv/20231006121449.721-1-jszhang@kernel.org/
> 
> [...]

Applied to riscv-dt-for-next, thanks! LMK if something looks not as
expected.

[1/7] dt-bindings: interrupt-controller: Add SOPHGO CV1812H plic
      https://git.kernel.org/conor/c/21a34e63afcc
[2/7] dt-bindings: timer: Add SOPHGO CV1812H clint
      https://git.kernel.org/conor/c/06ea2a1968a9
[3/7] dt-bindings: riscv: Add SOPHGO Huashan Pi board compatibles
      https://git.kernel.org/conor/c/d7b92027834e
[4/7] riscv: dts: sophgo: Separate compatible specific for CV1800B soc
      https://git.kernel.org/conor/c/5b5dce3951b2
[5/7] riscv: dts: sophgo: cv18xx: Add gpio devices
      https://git.kernel.org/conor/c/dd791b45c866
[6/7] riscv: dts: sophgo: add initial CV1812H SoC device tree
      https://git.kernel.org/conor/c/681ec684a741
[7/7] riscv: dts: sophgo: add Huashan Pi board device tree
      https://git.kernel.org/conor/c/2c36b0cfb408

Thanks,
Conor.

