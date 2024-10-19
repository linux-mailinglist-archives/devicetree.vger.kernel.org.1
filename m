Return-Path: <devicetree+bounces-113261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC57F9A4FC8
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 18:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87B6228771C
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 16:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3816419149E;
	Sat, 19 Oct 2024 16:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="AXQG6Edw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C780190477
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 16:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729355216; cv=none; b=Xmj8eij6VLE3PZgYDWLs/uMevlWY+dBx78wWVdylm57PxQip2TFqrOs0BlUBz7sBN+erQ3/sfz+55z8MFgzdhCD9I+J+grMO1brjsh0XU3xXWsJpY8YR0ousacpavGMKb+6AZG9rERw7tt3CgqUx5Qs48C8gZMuE7ToydZH6hRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729355216; c=relaxed/simple;
	bh=JmdQ29xC4nvOhCvphE8SZXVractjSqXVQkKK3f7PHcM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=AeQ+bKhnnxIRXxwUKQfLGNpvn1yJr4gb7fk19C/y1UxH8SxM/g38n2BIEK4IF15NKfNTx/EHsNbsXGhX2J38FiI+YXIUuYVWkd5wQ/5G6Kle5ArbuYxXOARg5ldNFDC9lYO9btllO7E0o1ukcHI1RVHlaKXMCaSSqalJHm6f+ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=AXQG6Edw; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20e6981ca77so14839195ad.2
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 09:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1729355213; x=1729960013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zuy1YUr5PAEB/olP9kqL0ifQLvau2By5ndoP3zxsRa4=;
        b=AXQG6Edw96Avu0VHXjj6ZBvZMNYxoTS24vCI4z3VcNPS5brB4Ct+zYoak1PTfSESjX
         QRDQsiRTtIxE2ii/YgrTWVwCE8TybhXMZXDcNrNmTSQ5uogkw2wmiDNm8vVuYREP+OC5
         sgT3wTJAtCkX+PkF8RLwCtCzCmzS/LnO1Pn8PIhwnUQdKzeWObEKNK+khWsdo5H6nNds
         Ue3cNPxqYuVu4DVCt6vEhlx4DMNzqq0oj3rBfFKuNFUQM29pIfnxJiUFm+A5JMi/u3Ow
         V/mcNRpU2HTv3nuTDXGyroTMm3vmElNSFPQgtP/V/pDR550LKXUBXE7je4INQq5ww8i7
         Xb+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729355213; x=1729960013;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zuy1YUr5PAEB/olP9kqL0ifQLvau2By5ndoP3zxsRa4=;
        b=J78BmK6GqNTh8gBUCKy23zEqV+6cr/RB6ZL29Z1b/8HuKwOA2macYCCsPiimX8TgE7
         Z+L5dS8+ANQDaMKf71q65T17ZbGQidX1mtagMbj8Xb6uJREbU/O4tYuRX/31LCWh4sV9
         sKBhw6cxGc/UvLUqypYHmnTxN/8itOBGrYRj7JuprH8AyFZv8uyMlb2za9cwWMYeuqml
         0hjfrV+yL+DPO28fRBSYHImr10RhrxHNCUyDz9fiOLcggiLuzX1VcgdMVgJLHzaN62OM
         jneP46ZDojxrI5kQ/Upmmq5U5Nrnj4G+QNLo3q2Q0+WpBAszn0/+8AYyrn/N1qjHKSwE
         chRA==
X-Forwarded-Encrypted: i=1; AJvYcCUlCCvMqWgn/APiBP6FZ54UpraKwY68YTS189KfXZRcr5pO6IkQX8sBHkYXYi/uUF/GLF+Me8S3ymrl@vger.kernel.org
X-Gm-Message-State: AOJu0YywtgkScVGPzdLJ7otkz0VqmJojd6ocO0qixyAF6sqhL9wuEW3K
	QsB1m7pPWfkZgvWa1FjP4ONIKMk1oUAcCxcv0wo2Yf/oxV5jnlnOK6D4sNt16J0=
X-Google-Smtp-Source: AGHT+IHsn6bRkHaN0uRM4bi9maa9E6DhhXpOZ6dD4JBmzfF0Rj30oXT6ZBN39x0b+kkF6gl6I6WQgA==
X-Received: by 2002:a17:90b:4b0c:b0:2da:d766:1925 with SMTP id 98e67ed59e1d1-2e561732e2amr7176551a91.37.1729355213228;
        Sat, 19 Oct 2024 09:26:53 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::30df])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e5a8de4bdsm29567625ad.180.2024.10.19.09.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 09:26:52 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	rafal@milecki.pl
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Alexandru Stan <ams@frame.work>,
	Daniel Schaefer <dhs@frame.work>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sandie Cao <sandie.cao@deepcomputing.io>,
	Yuning Liang <yuning.liang@deepcomputing.io>,
	Huiming Qiu <huiming.qiu@deepcomputing.io>,
	Alex Elder <elder@riscstar.com>,
	linux@frame.work,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v4 0/3] Add DeepComputing FML13V01 board dts
Date: Sun, 20 Oct 2024 00:26:02 +0800
Message-Id: <20241019162605.308475-1-guodong@riscstar.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series updates Device Tree related files to introduce the
FML13V10 board from DeepComputing, which incorporates a StarFive
JH7110 SoC.  This board is designed for use on the Framework Laptop 13
Chassis, which has (Framework) SKU FRANHQ0001.

The original three versions of this series were posted by Sandie Cao
from DeepComputing.  Her mailer configuration caused mail threading
errors, which led to some confusion.  After some discussion, we have
agreed to take over moving this series toward acceptance.

Changes from v3:

In this version, the board name is changed from FM7110 to FML13V10.

The descriptions for all patches in this series now have been updated
(slightly).  The first patch received an ack from Krzysztof in v2, and
the second patch received an ack from Rob on v3, and both are included
here. Other than the board name, the content of the first and second
patches are the same as before.

The third patch has been modified.  pcie0 was marked as disabled in
patch 3, and Krzysztof asked why pcie0 was enabled in the first place.
In fact, it is *not* enabled, and the node disabling it in patch 3
was not required.  Similarly, gmac1 is already disabled.  So these nodes
have been removed in patch 3.

However, gmac0 and pwmdac *are* enabled (in "jh7110-common.dtsi"),
but they should not be (for now) on this board.  The same is true
for spi0, csi2rx, and camss.  There are a few other nodes added in
patch 3 to ensure things are disabled that should be. Finally, usb0
remains enabled, but with a different operational mode (dr_mode =
"host").

The proper fix is to disable things except where they're needed rather
than enabling them in jh7110-common.dtsi and disabling them for this
board.  We propose to fix this in a follow-on patch (or series), but
we can do this in a new version of this series if requested.

Below is a version history, including direct links to all of the patches
(because a single link to each series doesn't work).

Best regards,
Guodong, Alex

v3:
- Update board features into description
- Add Krzysztof's ack on patch 1

https://lore.kernel.org/all/20240925053123.1364574-1-sandie.cao@deepcomputing.io/
https://lore.kernel.org/all/20240925053123.1364574-2-sandie.cao@deepcomputing.io/
https://lore.kernel.org/all/20240925053123.1364574-3-sandie.cao@deepcomputing.io/
https://lore.kernel.org/all/20240925053123.1364574-4-sandie.cao@deepcomputing.io/

v2:
- Add deepcomputing into vendor list.
- Add deepcomputing,fm7110 into model compatible list.
- Framework Config will be included in later a patch.

https://lore.kernel.org/all/20240924080650.1345485-1-sandie.cao@deepcomputing.io/
https://lore.kernel.org/all/20240924080650.1345485-2-sandie.cao@deepcomputing.io/
https://lore.kernel.org/all/20240924080650.1345485-3-sandie.cao@deepcomputing.io/
https://lore.kernel.org/all/20240924080650.1345485-4-sandie.cao@deepcomputing.io/

v1:
- Add framework dts and config.

https://lore.kernel.org/all/20240923053621.1585972-1-sandie.cao@deepcomputing.io/
https://lore.kernel.org/all/20240923053621.1585972-2-sandie.cao@deepcomputing.io/
https://lore.kernel.org/all/20240923053806.1586080-1-sandie.cao@deepcomputing.io/

Guodong Xu (1):
  riscv: dts: starfive: add DeepComputing FML13V01 board device tree

Sandie Cao (2):
  dt-bindings: vendor: add deepcomputing
  dt-bindings: riscv: starfive: add deepcomputing,fml13v01

 .../devicetree/bindings/riscv/starfive.yaml   |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 arch/riscv/boot/dts/starfive/Makefile         |  1 +
 .../jh7110-deepcomputing-fml13v01.dts         | 44 +++++++++++++++++++
 4 files changed, 48 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts

-- 
2.34.1


