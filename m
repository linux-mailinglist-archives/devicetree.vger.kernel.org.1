Return-Path: <devicetree+bounces-16913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F31597F0664
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A31472808B3
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9586130;
	Sun, 19 Nov 2023 13:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOx03R5n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0E53D74
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 13:25:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A5B6C433C7;
	Sun, 19 Nov 2023 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700400355;
	bh=MuFb6Jk9Fj76Lk+Y+AfZIu/0pw2dOjOHcPcPCdb0bN0=;
	h=From:To:Cc:Subject:Date:From;
	b=GOx03R5nPTBsQnissHt8HthhnhQrIwZoWcMEeXlxxS2qVhJ0T92DKCneDDOWYF7SB
	 b0AbiMh+Wgvv0gQpynwxysouNqvSPBa9b6R7TZ/UTNnnxWC9Je7K7i9C9L29jQUsbC
	 5yYbGYggAmUXZtIf6SLdAL9J2hAgwJddAaMsSzccRfztFCIG1+dKoSB+vJPsYJwCZv
	 RgWZ9HmsvJv836LDg6p0o6oXZlA9vEDZOSyas29qY4PFjOeU7KAoj0vJOXMuRINu6E
	 dma626QmB3gHpnc3w5pgxF6bUKdRDTePXrXU9Hqfktdxat0cMJnvR96iJiDE5LNwAZ
	 /YfulcGiB8N+A==
From: Jisheng Zhang <jszhang@kernel.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>
Subject: [PATCH 0/2] nvmem: Add Sophgo eFuse driver
Date: Sun, 19 Nov 2023 21:13:30 +0800
Message-Id: <20231119131332.999-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sophgo SoCs such as CV1800B contain eFuses used to store
factory-programmed data such as calibration values for the built-in
ethernet PHY.

As for CV1800B, HW automatically loads the eFuse content into CONTENT
base registers which are organized as 32bit values exposed as MMIO.

Currently, add read support for the eFuse. This is a preparation step
for supporting the built-in ethernet phy.

Since the clk support isn't mainlined, so cv1800b DT patches are not
included.

Jisheng Zhang (2):
  dt-bindings: nvmem: Add sophgo,efuses
  nvmem: Add Sophgo eFuse driver

 .../bindings/nvmem/sophgo,efuse.yaml          | 54 +++++++++++
 drivers/nvmem/Kconfig                         | 13 +++
 drivers/nvmem/Makefile                        |  2 +
 drivers/nvmem/sophgo-efuse.c                  | 97 +++++++++++++++++++
 4 files changed, 166 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml
 create mode 100644 drivers/nvmem/sophgo-efuse.c

-- 
2.42.0


