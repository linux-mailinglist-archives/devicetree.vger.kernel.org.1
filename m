Return-Path: <devicetree+bounces-11342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0D37D54E5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:11:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 053AE1C20C26
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6ACF2E641;
	Tue, 24 Oct 2023 15:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="gKkhx899";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="m+KJq3vm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01AF1170F
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:11:36 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5590310D4;
	Tue, 24 Oct 2023 08:11:18 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c595f5dc84so7679201fa.0;
        Tue, 24 Oct 2023 08:11:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160276; x=1698765076;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HN40qd7O/jdFboPxF/3Wu042tEUfJOHvDh2qvkyEZ6Q=;
        b=XmEMdQxyPGgmTBLvonYQuVortNbnHvRVdxMgy2XoJXK9hzuD5pFJFkyaDFA3Ui2wXo
         gpub0YcM6ELqC2zlkUxYYrIKEgK0dvWg4pb6HxttavzkOvFu2SXQp/k0yfVM4p7Ineqy
         N3F0XcxGK1PYud6+ben0J4daou/cURY3XTbmHLtzasDDdOdQrEayc1CtA/7XSzojH8iO
         qyoOM0j1QX8m/+GEEAG6ke9JPA3+a3Bn7NjwSflH+40xO33IzBlrk7Q54/0rtIW7yo1T
         etgJ2bKUE/LPitahBJv9a1i6n4IHPayyCgI0HFmIQF+zCqUBBbWDMKIiltTi/JTTzSIZ
         btdA==
X-Gm-Message-State: AOJu0YwoskcNqL9eomA/l/26G/+nb4dx5mxBfj7VcddahuFqIoarj9yZ
	KRkteBJbfGrDoaiMlb33gXmk1gohAQ9B6A==
X-Google-Smtp-Source: AGHT+IG2SIZYV6jqI6qPZdNJLcnH3EJZ89FDr8bv/TaHtmQbKzBGiEASfTbFQt9P/ue9PtehuVqehQ==
X-Received: by 2002:a05:6512:15a8:b0:502:9672:48b8 with SMTP id bp40-20020a05651215a800b00502967248b8mr5692980lfb.5.1698160276427;
        Tue, 24 Oct 2023 08:11:16 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id z7-20020a056512370700b005059c4517casm2186978lfr.99.2023.10.24.08.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:11:16 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 50D341662; Tue, 24 Oct 2023 17:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160275; bh=KjZFK4FBxCwZqAP7degQMwm8C1kXz7xI0BC0NtnKbsw=;
	h=From:To:Cc:Subject:Date:From;
	b=gKkhx899vs75D5FFFwTl+y2eSFpq7mbdGTmszwb8hv3fdAAxeInI5/zUsx1/8sFQA
	 02+lUMVjXu6hdPex0BoWQhCoD3eHhz9jqQUm1KtCGT5A/IHWOR5a2uHGksrVaNJEYL
	 zSviEg0mYoZROGaaSn9wXbWpiIpWxsuhpuLORu5c=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 2048E14D4;
	Tue, 24 Oct 2023 17:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160243; bh=KjZFK4FBxCwZqAP7degQMwm8C1kXz7xI0BC0NtnKbsw=;
	h=From:To:Cc:Subject:Date:From;
	b=m+KJq3vm5MdLA60yUUxuaS3M61NAldbX4n0mIijzuSRljlCqJJ7mt/iAsj5Lf1K5W
	 JlM0XXAe3bJMXGbONz9KJCV87pjzNyDN6anpS87ubPVZPIwUT1vlN0/V6Iru49PtaY
	 Vof1f2esyitN5AfKZfqKn4tKtxlMMoIQ4mAhtWdY=
From: Niklas Cassel <nks@flawful.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/4] rk3588 PCIe improvements
Date: Tue, 24 Oct 2023 17:10:07 +0200
Message-ID: <20231024151014.240695-1-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niklas Cassel <niklas.cassel@wdc.com>

Hello,

This series fixes two issues related to the pcie3x4 slot on the rk3588:
1) Adds the atu region, so that the driver can properly detect all 16
inbound iATUs and all 16 outbound iATUs.
2) Adds the dma region, and the related IRQs used by the eDMA, so that it
is possible to offload data transfers using the embedded DMA controller.


Changes since v1:
-Added patches to rockchip-dw-pcie.yaml to make 'make CHECK_DTBS=y' pass.


Kind regards,
Niklas

Niklas Cassel (4):
  dt-bindings: PCI: dwc: rockchip: Add atu property
  arm64: dts: rockchip: add missing mandatory rk3588 PCIe atu property
  dt-bindings: PCI: dwc: rockchip: Add dma properties
  arm64: dts: rockchip: add missing rk3588 PCIe dma properties

 .../bindings/pci/rockchip-dw-pcie.yaml        | 24 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 31 ++++++++++++-------
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 14 +++++----
 3 files changed, 52 insertions(+), 17 deletions(-)

-- 
2.41.0


