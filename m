Return-Path: <devicetree+bounces-6515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D977BBA4A
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:31:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 173A51C209BC
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9900119472;
	Fri,  6 Oct 2023 14:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds4Y+CGM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9A326E0C
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 14:31:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A64AAC433C7;
	Fri,  6 Oct 2023 14:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696602680;
	bh=nCFnzaxTyQnf0s8PRBk5ThFbbfcNzhWzaiOiujcLzAI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ds4Y+CGMr4nxb9xtPlBxsVbuq7NNSKY+oBuk/emMQytDMzfUnkEvZKVAdkHThcOpk
	 RDuBnsx7kq4MjpQrTRNtY1F54lG6MJ6BIzEDWVryB5aed4qPCW+EL6MikeXIhyvZ2U
	 X/jM7hd4++XacEf9F4RRVCKeseYEqDkaXp9wI9T1TYsaW/wc4oya3H7TgbLMxakrQq
	 o9e5ud0T5kQTKf0A8/VebSuyX6B70CRZSVaFUZVxZXPTwtj0BN59QbInAYpfosejme
	 ECbpuj4rdnKEpxMgT08/UeV/2MfNN74W6CAyZELu3E4D26o+g41ePFauOCZMEQuTjF
	 qLNa6Fdg2JwRQ==
From: Conor Dooley <conor@kernel.org>
To: aou@eecs.berkeley.edu,
	chao.wei@sophgo.com,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	guoren@kernel.org,
	jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com,
	apatel@ventanamicro.com,
	Chen Wang <unicornxw@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Chen Wang <unicorn_wang@outlook.com>
Subject: Re: (subset) [PATCH v4 00/10] Add Milk-V Pioneer RISC-V board support
Date: Fri,  6 Oct 2023 15:31:10 +0100
Message-Id: <20231006-empathy-unrefined-ff1168095093@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696433229.git.unicorn_wang@outlook.com>
References: <cover.1696433229.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=1163; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=QKsUC5/THVZjdfivIf8dEs0fchdgMXpltrn24bZhqm4=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKkKUjpHtr5We+mjv2lqPPuDbhmRSrmtTRIcL9fKsE/yn pj8cPLdjlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEzkwGWGfybLtDI1V6vPnyOz xqp3ZcQmwaNr6/q/SD/73c35tGlW2UeG/5WxHUpRLiqtue+mbeczX/9xput67a0zd7D82SX0lYV jAhcA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Wed, 04 Oct 2023 23:37:20 +0800, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> Milk-V Pioneer [1] is a developer motherboard based on SOPHON SG2042 [2]
> in a standard mATX form factor. Add minimal device
> tree files for the SG2042 SOC and the Milk-V Pioneer board.
> 
> Now only support basic uart drivers to boot up into a basic console.
> 
> [...]

[10/10] riscv: defconfig: enable SOPHGO SoC
        https://git.kernel.org/conor/c/a4bbe6e3d9f6

b4 is confused, but I applied the whole series, temporarily, to a
"sophgo" branch. IIRC I asked for the defconfig patch to have
savedefconfig run it it, so I did that and amended the patch.
More notably, I changed the commit message for the aclint patch, to
drop the discussion about incorrect use of the sifive,clint compatible.
That meant that 90% of the commit message vanished, so I'd like you guys
to take a look and see if the new text works for you.
If it is acceptable, I'll merge in both this series and the milkv duo
stuff. Acks on that series from one of the folks added as a maintainer
here are still appreciated and will be applied.

Thanks,
Conor.

