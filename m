Return-Path: <devicetree+bounces-4774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E1D7B3F8D
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 10:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7E1AF1C20832
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 08:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3097317E9;
	Sat, 30 Sep 2023 08:59:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8AD138C
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 08:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CE8BC433C8;
	Sat, 30 Sep 2023 08:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696064394;
	bh=1NZBpNaePwgZyqTYVZzHQMy6LAwMcDHJLc2HBjoXiRE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aYJJKganbX3CrwsaFP6Ya8fNmRlm6VYhCesgYNknoAOLq8CD4oGZUiwDQ6ZjAwIN6
	 hvdS6pG4aY0zkjIvgcHpAbH/sQ+HGzTatB8CWL7TyJpQOj05lqp5ZJsAA99t9njbed
	 WLwdRMkHIanVfLmwzkGpWvoM6wZqeMY+vBmrNSe2JhD1Prcwsc5VHC0U/8O7yJ3JHU
	 +HSqmMJXWATQdAguQ/8pl9BQuTUsy6+1EbowQYbsr0AFjl3ZgnBuQ+CJDd+79mGRgw
	 rDxrTbnMqQMx2FHPrapN7Euy0nHFRHRxj3sVVcJ6IMgSWuu0jmK+bD7KGPXxxI1FEu
	 BplZmUREXbPag==
From: Conor Dooley <conor@kernel.org>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	William Qiu <william.qiu@starfivetech.com>
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: (subset) [PATCH v3 0/3] Change tuning implementation
Date: Sat, 30 Sep 2023 09:59:36 +0100
Message-Id: <20230930-unmoral-mutiny-e3f91c0dfee9@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922062834.39212-1-william.qiu@starfivetech.com>
References: <20230922062834.39212-1-william.qiu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=614; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=oc9r++Iw46ON8c3zQoZkFVZiJ95/zJVfIOBlU0YyBzE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKnij8s6zJ/s40s25vz64se9FoHD5w+FbtqR3RRnwFZmU Rplp8/UUcrCIMbBICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgIlcfMnwzzp9Qkx6jBCfwY71 YdME/p75tHjKXvv0H88OhCrP0GIWPcjwV5Tb9V6c3p77qyteaCa0qE+7HtmbanpwB1+q2Ot/0o8 aWQA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Fri, 22 Sep 2023 14:28:31 +0800, William Qiu wrote:
> This series of patches changes the tuning implementation, from the
> previous way of reading and writing system controller registers to
> reading and writing UHS_REG_EXT register, thus optimizing the tuning
> of obtaining delay-chain.
> 
> Changes v2->v3:
> - Rebased to v6.6rc2.
> - Dropped redundant criteria.
> - Keeped "starfive,sysreg" in dts file.
> 
> [...]

Applied to riscv-dt-for-next, thanks!

[3/3] riscv: dts: starfive: add assigned-clock* to limit frquency
      https://git.kernel.org/conor/c/af571133f7ae

Thanks,
Conor.

