Return-Path: <devicetree+bounces-6514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 733637BBA23
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:23:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18F16282294
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E598266A6;
	Fri,  6 Oct 2023 14:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKkOpWXz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3132D262AD
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 14:23:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F4CDC433C7;
	Fri,  6 Oct 2023 14:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696602203;
	bh=XBqQ4iHvesdBU73kOzoPty/h5/FDyNYsclRZqIaRyyE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AKkOpWXzz6eDbdbOCxP0fPboHebR5GKzL84RUoH28JCCfL9ANd85mDFRXZIKqrvi1
	 gGbyRnzd8t42VE1W/iTQw0c1u7fH/cq/hOvAZGACduPfPfD7g3e+pb/zVPTIZih9Kf
	 PqDzgjUvnDR0p3fvyCY5yfLDei7G3EqDpbYwx2bA3Z7KhtPVoRJ92ruLhy6ruStkKo
	 O8NkM9S+3cDnilgrqo0PnQOHFu/svL2zOreAQG5Z7nbOuLZMO7FSwOBqB/RkrE6bqC
	 N4pZFHXAwNl4s4+BUsuYvv5t2xnurWBJtsQxrhcbZrLLXLOQ3Tb5hCf96Ea/+hvrU4
	 t7ftKtUkOvnVQ==
From: Conor Dooley <conor@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Jisheng Zhang <jszhang@kernel.org>
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>
Subject: Re: [PATCH v2 0/5] Add Milk-V Duo board support
Date: Fri,  6 Oct 2023 15:21:44 +0100
Message-Id: <20231006-petal-conjoined-4c3afb0c5a0f@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006121449.721-1-jszhang@kernel.org>
References: <20231006121449.721-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=1002; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=6ahMtWbaNULcWlwY37kB+Ja+SZGh9Mj1DK1OOUAhQp0=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKkK4t9+zVTpO9B56JryVolrMkb2kbsXruS2/5t/60VMv PPPsJsLOkpZGMQ4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCRQ/KMDNelk6f+uMzfmOZ7 quzQZb9nxf817l4y37yXt8Fwf3xAyRxGhg/qhdeZDSz3au97537jDXOEMM9y8Rs5cVd0qrQ85N/ c5QUA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Fri, 06 Oct 2023 20:14:44 +0800, Jisheng Zhang wrote:
> Milk-V Duo[1] board is an embedded development platform based on the
> CV1800B[2] chip. Add minimal device tree files for the development board.
> Currently, now it's supported to boot to a basic shell.
> 
> NOTE: this series is based on the SG2042 upstream series[3] for the vendor
> prefix and ARCH_SOPHGO option.
> 
> [...]

These look grand to me, so I have applied them on a temp. basis to a
"sophgo" branch. I'll merge it in for real to the riscv-dt-for-next if
my changes to the prereq series for the sg2042 are acceptable to their
authors.

[1/5] dt-bindings: interrupt-controller: Add SOPHGO CV1800B plic
      https://git.kernel.org/conor/c/101276d77e84
[2/5] dt-bindings: timer: Add SOPHGO CV1800B clint
      https://git.kernel.org/conor/c/a3a24243b83b
[3/5] dt-bindings: riscv: Add Milk-V Duo board compatibles
      https://git.kernel.org/conor/c/533874200f8c
[4/5] riscv: dts: sophgo: add initial CV1800B SoC device tree
      https://git.kernel.org/conor/c/4e31e0e61845
[5/5] riscv: dts: sophgo: add Milk-V Duo board device tree
      https://git.kernel.org/conor/c/0edd1de88d35

Thanks,
Conor.

