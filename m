Return-Path: <devicetree+bounces-17317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0287F211F
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 00:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 053752823EE
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 23:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6782738F88;
	Mon, 20 Nov 2023 23:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g+34F2Jh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44A69A2
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 15:01:38 -0800 (PST)
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5842ea6f4d5so3199836eaf.2
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 15:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700521297; x=1701126097; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5M7lYo4Yr50jb2FRZKTz2v0y4dLmO/a9d97S8ykJeVQ=;
        b=g+34F2JhHzfojNf+y+KAzkcIGqE8jIUqkCpMpzgYcbCHQ4cVI/4sBCe3o+AQzcUoMk
         evlQM1HRbSxhL12144pblkhqOwCIvWfGs1fGXBVUX4W2Sjor7+BJ9QCVWooS3Xnbu5XK
         FB1qxT9rFpApyvVdxsekJvY4Ci6PnrcbR8z1Y2RuEjpkOoEqg6Y0iNDtk2yQo+WuP6Ys
         FDJFznjxJAHt6tZSm4SmjJeL56re/5e5FdEROqNdcP/kLQUQcPiL/wn1ntWwcEyxFusf
         rt1ciS/hV+kVvOHhJ5uiVMzskt58It3JnFu4UALMCuPjygbu/LnEDU9miu+/VoadQbIs
         TkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521297; x=1701126097;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5M7lYo4Yr50jb2FRZKTz2v0y4dLmO/a9d97S8ykJeVQ=;
        b=W5k2gzGnszadgFsXTAV0djytnoiUMjrKorjlHleaXo0pmZSjQvW49EFtaj/A8OGeXt
         bqXYHajA2zouXeJRceJSn1TBj1vy+ra8F3eav6fkJTYEFMEdPeLjblBFQXKnx4MJcFUh
         m661QAy0Dgdk30qZNFaEwrP1Ut5rG6vvRafuyt+MC3y0nZ1wPhCWcQq6A0BzDdg9+x6V
         aXaJ1yaSd5nReTQfiWmfCxU28bVGrb7I9MaBGNinCSVA0CnUD6XhyYc2okFvdGQ+t2w7
         Aau7ci8hLqSi80HpzahIa02IUXzYnvs+D57ZxnGf0NIXs93PXfM/2ZjNbQHi9Kl9ebAi
         nJkA==
X-Gm-Message-State: AOJu0YwOsL3a0w4TaNNFOY+CyujMCMp2cuPzSJsouHZpHCHwoUOekzcj
	y4k7o3E98yp8tFD96OuMZ7K4lewrNro=
X-Google-Smtp-Source: AGHT+IFAinXOF4aJTKmIDFsYA1QFr3uwwKqd2JUD66a3fihV7RqOl5glbl1pCVqe3tP02idp9PDdsw==
X-Received: by 2002:a05:6820:2217:b0:581:e750:9995 with SMTP id cj23-20020a056820221700b00581e7509995mr10173747oob.3.1700521297284;
        Mon, 20 Nov 2023 15:01:37 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a4ab04a000000b00587aaf6add7sm1545117oon.9.2023.11.20.15.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:01:36 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Support for Anbernic RG351V
Date: Mon, 20 Nov 2023 17:01:28 -0600
Message-Id: <20231120230131.57705-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG351V handheld gaming console.

Chris Morgan (3):
  dt-bindings: arm: rockchip: Add Anbernic RG351V
  arm64: dts: rockchip: Split RG351M from Odroid Go Advance
  arm64: dts: rockchip: Add Anbernic RG351V

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3326-anbernic-rg351m.dts   |  18 +-
 .../dts/rockchip/rk3326-anbernic-rg351m.dtsi  | 478 ++++++++++++++++++
 .../dts/rockchip/rk3326-anbernic-rg351v.dts   |  44 ++
 5 files changed, 529 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts

-- 
2.34.1


