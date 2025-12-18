Return-Path: <devicetree+bounces-247981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B64B8CCD536
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:06:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B5FC7300FA1E
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9F632ED51;
	Thu, 18 Dec 2025 19:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="aCYegLYt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D4A2EACEE
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084803; cv=none; b=WyFl3fFPShyLOs7P8/eSxO99mfVffXBs4FLG5VEpE2L3bUCGp/C/fbIje7ezrbUk2hecRBplmBcdrmKXAS65GmQb82NlStu4rUdrh4454cEq2plHJnVl6VCsy7qVWIyMkVuWqKPtltCRke92/BALoE2XGjhsgutNt2TMIo1DuZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084803; c=relaxed/simple;
	bh=WEloQA/XIFfWLUJFGSkNRutlWTf+KyY3iz9RK9E79CE=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=NaY3wvS+ttmUT6AYaTX/RColzDYFE9mivdcdgtWlMoIApapmQlzzSUd+bBbo/8peswzPbBvfEFQymX77/givgVs0mDaFrTea8zYI0FY0unkgyxC53qIkzsSX1PAIGVteUHdi0ISR4wuCKCaJ7sAwuUWb81bqHDaRVZxaVHBg6mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=aCYegLYt; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64b8123c333so782041a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1766084800; x=1766689600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KZxHqu3SzujmiotRlzxJm3UYnzflG11IekQhIfmml9I=;
        b=aCYegLYtCmwXL40Pw0dEPugE96PaXeazjb2KtaeX1BAhH8nOkAZTXzhMQl9JAx2aAw
         ivZTG8wqS7FPxoi0ncYqtEhkkAqU6HBJGCdhbNUPcsMNcSMNDed3/hPlfuSmeLyw6pSQ
         4i7D+FUjpcCBMEeDe7ymVHXy+3Fdoqo6zLlIKWd2Xr4Uemqy08/MQTYqGBUke1IjDiYR
         jeGIdVEIGdudU/fooatKCZGdzH7Zbyff8NSEjHCsTKiJI/KY3HAVAdz5TH6OveJVin9Q
         yeej9yfpuP9FvtBk0kpbBxYXRMdBe5C7RvU9vZzfwVzPacBspYfzWqTu6vS8sBtybWLA
         JqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766084800; x=1766689600;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KZxHqu3SzujmiotRlzxJm3UYnzflG11IekQhIfmml9I=;
        b=MVTu+wBscInjMg1EGKnQxt4deKK2WUpzpaO6Ed0G0oxgx7Rrn/cppgc20XmtSYoFCC
         j0hTVhG2pgQaAf8TNpjH4Aijd03rxuWYSH4VEpFjYEhGfazkvP1PAJYj76LNuiJhkaUG
         Pp0tRh5sxVXYrlt12ai3DwWx/No1KEvFZ6j8BoA61fTVXvRMJShJl/w7fPXckzwokz0Z
         4dn4zlrYgJ72glaQAJ4rDo/ib0BlX6H/KkWe09ysAyOh8LOOzN/5unVo2aJEea5ha/7G
         RAvxodnxQ1HWy3J6HJoGRQlyQI5xZ+zzweKu5E0Vu9VzVsb9gFP4haXfp1cmmZA0JjQ5
         LwDA==
X-Forwarded-Encrypted: i=1; AJvYcCUOrYOtTUNni6+6G417crMgXweWO3UMIZ+hhW8Unv63cEAu+VqlTHZdrSyolKIekqhO49mEee7oc7bw@vger.kernel.org
X-Gm-Message-State: AOJu0YyKg8pUtqovvjoAsosT1HBRXBip/InnSwzvHKZ+hGH5oyqVZRKP
	kG37u4QyX5MKV/pEGvzBfiu+DgaSYgnjQfVk9r8nekwS7N6UvRzlc5oY3fUpanBUUro=
X-Gm-Gg: AY/fxX7DEBYDKsVnOIV4xrwccqYs964s7eLYWfm5WpHooJODjHN9y61GDJo6Oq/MrGH
	qYke9bDiowYVpavmTD3UA4ReikBPJPM2tNmXuUmp6Xxr2ChlenpktjLeBjQnhO+H7vdsaO/xBwI
	urceUclZ/fIqgN4mGcCy8p5X+Uac96eUp2EmNVrFEujqPn3MUeuIOfVnPW0DPAVLd25raIAI3Sk
	FbNTwPJ0qh6PJt7hiCQ4lQf6zhUUk0UV44ijGPBYzCGzyoQGRcGMkrEZHLcdm7GNWslMCpEQos4
	YqgN0xsZ+jdt7BM1LGsNberI4LhEGCCOqaZqy95Tyu82Q3nlGi+resaoElXf4MA6EZzJV8yBQHp
	2SZ0xxXZwaZlLDKZ3QM82SG0q4545weKvBucLIAAcSpbRxbo9xLXeJE5QNpg7twnKmBQFQ4BeiE
	M0MALEavpMlztuiHtmHsdv7p7OKIUY/Ipgqg4UZV7fVcVrJVDG3lgJNg==
X-Google-Smtp-Source: AGHT+IHWG4LHoKaiiruOEBctdxAHnsbItZY+jg4X40WE9oC/dX/aDtGLSsf4UY9Cm0B4WQZVSPvMPw==
X-Received: by 2002:a05:6402:40c9:b0:649:8be7:eda with SMTP id 4fb4d7f45d1cf-64b8e94d0demr435503a12.8.1766084799432;
        Thu, 18 Dec 2025 11:06:39 -0800 (PST)
Received: from localhost (host-79-37-15-246.retail.telecomitalia.it. [79.37.15.246])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91056731sm173599a12.8.2025.12.18.11.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 11:06:38 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 0/4] Fix RP1 DeviceTree hierarchy and drop overlay support
Date: Thu, 18 Dec 2025 20:09:05 +0100
Message-ID: <cover.1766077285.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current RP1 implementation is plagued by several issues, as follows:

- the node name for RP1 is too specific and should be generic instead
  (see [1]).

- the fully defined DTS has its PCI hierarchy wrongly described. There
  should be a PCI root port between the root complex and the endpoint
  (see [1]).

- since CONFIG_PCI_DYNAMIC_OF_NODES can be dropped in the future
  becoming an automatically enabled feature, it would be wise to not
  depend on it (see [2]).

- overlay support has led to a lot of confusion. It's not really usable 
  right now and users are not even used to it (see [3]).

This patch aims at solving the aforementioned problems by amending the
PCI topology as follows:

  ...
  pcie@1000120000 {
    ...

    pci@0,0 {
      device_type = "pci";
      reg = <0x00 0x00 0x00 0x00 0x00>;
      ...

      dev@0,0 {
        compatible = "pci1de4,1";
        reg = <0x10000 0x00 0x00 0x00 0x00>;
        ...

        pci-ep-bus@1 {
          compatible = "simple-bus";
          ...

          /* peripherals child nodes */
        }; 
      }; 
    }; 
  }; 

The reg property is important since it permits the binding the OF
device_node structure to the pci_dev, encoding the BDF in the upper
portion of the address.

This patch also drops the overlay support in favor of the fully
described DT while streamlining it as a result.

Links:
[1] - https://lore.kernel.org/all/aTvz_OeVnciiqATz@apocalypse/
[2] - https://lore.kernel.org/all/CAL_JsqJUzB71QdMcxJtNZ7raoPcK+SfTh7EVzGmk=syo8xLKQw@mail.gmail.com/
[3] - https://lore.kernel.org/all/CAL_JsqJUzB71QdMcxJtNZ7raoPcK+SfTh7EVzGmk=syo8xLKQw@mail.gmail.com/

Andrea della Porta (4):
  dt-bindings: misc: pci1de4,1: add required reg property for endpoint
  misc: rp1: drop overlay support
  arm64: dts: broadcom: bcm2712: fix RP1 endpoint PCI topology
  arm64: dts: broadcom: rp1: drop RP1 overlay

 .../devicetree/bindings/misc/pci1de4,1.yaml   |  8 +++-
 arch/arm64/boot/dts/broadcom/Makefile         |  4 +-
 ...-ovl-rp1.dts => bcm2712-rpi-5-b-base.dtsi} |  0
 .../boot/dts/broadcom/bcm2712-rpi-5-b.dts     | 39 ++++++++++++-------
 arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi   | 14 -------
 arch/arm64/boot/dts/broadcom/rp1.dtso         | 11 ------
 drivers/misc/rp1/Kconfig                      |  6 +--
 drivers/misc/rp1/Makefile                     |  3 +-
 drivers/misc/rp1/rp1-pci.dtso                 | 25 ------------
 drivers/misc/rp1/rp1_pci.c                    | 37 ++----------------
 drivers/pci/quirks.c                          |  1 -
 11 files changed, 40 insertions(+), 108 deletions(-)
 rename arch/arm64/boot/dts/broadcom/{bcm2712-rpi-5-b-ovl-rp1.dts => bcm2712-rpi-5-b-base.dtsi} (100%)
 delete mode 100644 arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi
 delete mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso
 delete mode 100644 drivers/misc/rp1/rp1-pci.dtso

-- 
2.35.3


