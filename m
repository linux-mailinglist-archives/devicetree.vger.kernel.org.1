Return-Path: <devicetree+bounces-203319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FC8B20B5C
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 16:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 551A82A6E60
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EACD2214A7B;
	Mon, 11 Aug 2025 14:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="RPomDGHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4832820CCE5
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754921452; cv=none; b=Dfe+0yPBR5zs+cjqi6Ndc5lerDEJPe/hwkwmDv+ErG3o66H+byq4qFSpdK8FmgYQU6+78kSmlljngNZzZmW8wqzygsSuCTqiulCrrtcbSYpBZKIFUzs3jSWD637hcTcLQaAPGkBnim6XFOumRvSsY8qTR+eiUa39pphBCRso5aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754921452; c=relaxed/simple;
	bh=H6l53B4wZkFz+nYR8PTiIJtmbUzH50h27nGG3cRI8Sc=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=WdE9W4UQSZHNiytZkUrd2+i9o4shDISXww/tuvz2N8jg/3mQ+aGJI3qqizRQR/KGGr73AmTzgitGE1Vu98BeVpR7wPMa2dG5tbeQGG1vEOCGpJqqpFq6Hd2u4WcuFSBP9172Zy+9CCrknIfKMYW/0ChMb83OPd9qTFb3F23OFKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=RPomDGHs; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-af96fba3b37so824963366b.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754921448; x=1755526248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ohexk0G5qQQ/U7tEXowxhsg85cDA9yyayQBpZFpm+6I=;
        b=RPomDGHspqrOA99cpDwb5F73hsjuzh3Ibdr+JNVUwjiWOgn+kJGmAMEzJQc41jXwyP
         rD68hgO+XCuL7INKK+L6bWexxcHiNE1zQwtKyJiLEprc4I9taRgh3HKlUpBnS8Bj5qmM
         kjiJ5B4gpBJ14eJPSuyYF6jIpnOaSL5w/0mW37PKRWdfBrNKu441QnK40cr5AMU0siXK
         xSq0X1FoWiX1lF8+xzi8vrGMuZFOuq54WNWifxwDpf0My0xIt7CzPkbmS8EBcRjrxSDz
         MGXfLVBBliWkYw8dQxVyZPV5rUBv1ZYkdWXj0mi7BVlSSBl3Pv893cMtn/VldPtWQliT
         DO/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754921449; x=1755526249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ohexk0G5qQQ/U7tEXowxhsg85cDA9yyayQBpZFpm+6I=;
        b=Ir06eR8DxG1RLaKObOyvNLMewWUuoS3TXlcUDVk+Z0Y3yAyOYs7ISK/TzDkg6CYCe1
         I4L7CQ2vnYwM018uAK2Xh3BUg1lxAfqKS34ALJUqEG2wASDW8Fz3fvoOKi/Tc3gLBuSd
         v7ZGByLnoSiqzyYFEMubuV5i+ocJ3Sad6t/GWGTR0o+YjPbkXAK8Ho1vVwa2aH8i/SnG
         gUIhgQymaV71JKuOk1yfckBs+yEOhEqgLJ67zOElXcEYhkf8w/thIWF5hwlLfccBFS34
         ftobAWnQDr2axfX/AEX7ZZkRdSng9lusRE68ykBMxrh9ReHfmaUGaTg5lrie97lRYre0
         w6mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhlrI9Xob6TaxbdIvdYVrQxcSXuqUmk/nmaVVwRmdPz/4MS0zR8TRoCc9g3n5WcexbRHi5heNbLbZR@vger.kernel.org
X-Gm-Message-State: AOJu0YxBy2cK8YZAGgobqosRndUqLAOoJe8EruEKwyr1jayxSUJlQoFq
	nW6Ya2i/gWs9+s26wZhSXOytSDUHtVj2AJYbw0AohhC0szrW9qdCEHH3VSsA7iQh9FM=
X-Gm-Gg: ASbGnctZpUyDonJQJB+8dPrCXX7t+2IO17IBzU8FcQrvsM9PnYUvoEx/Ye1Y3bOQXZG
	uHBERtR0IlKjBp3XV5l2DlMRz6hqWk5tHSEiUliR2QSYD4uxn6ldMzxPUokWJlT8FvWAirXIQ4n
	1ST/yWuxuuyREG6BhQCaZN5Eij7qxyCbRNWY1gvLnezSf7cXHUUFwD069oQnhYZdTK/QXNK57QZ
	VDSkHW1b7vBv13LqIGnVv/kUtTs9nW1FKVaDEVj40KEsv72A5Jpj+grp6i3JSTJByd3rzlotgb5
	gdA9HQEVYI7wejtMqMQlDQlEFX0aRSKR51ROAKH8897o50/sfjXH4gGV40Ifg+o1kmOrxD5F3F/
	hplIIPk7HEwh+JsSZJR5yzajdGUpd+9JZpbjr0ofJJYhk+A34a+InEMln3Gu2GpLxNw==
X-Google-Smtp-Source: AGHT+IHdBKFk8Hdz0O5Qrkqv+q1AVcT+ToZrNVbbDng2NMf7Xf+fMHPhcyvkBGiKagZpBw13o0Tyeg==
X-Received: by 2002:a17:907:c1c:b0:af9:71c2:9c3 with SMTP id a640c23a62f3a-af9c647bce8mr1317574966b.35.1754921448512;
        Mon, 11 Aug 2025 07:10:48 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a23bedcsm2030552266b.120.2025.08.11.07.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 07:10:48 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com,
	Matthias Brugger <mbrugger@suse.com>,
	iivanov@suse.de,
	svarbanov@suse.de
Subject: [PATCH 0/2] Establish the roles of board DTSes for Raspberry Pi5
Date: Mon, 11 Aug 2025 16:12:33 +0200
Message-ID: <cover.1754914766.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

this patchset is composed of the following:

- patch 1: just a cleanup to get rid of duplicated declarations in the
  board DTS for BCM2712.

- patch 2: explicitly states what BCM2712 board DTS will host the
  customized nodes that refer to RP1 internal peripherals. This is
  important so that followup patches add the nodes to the correct
  DTS file. For more information about why it has to be done, please
  take a look to the patch comment.

Andrea della Porta (2):
  arm64: dts: broadcom: delete redundant pcie enablement nodes
  arm64: dts: broadcom: amend the comment about the role of BCM2712
    board DTS

 .../boot/dts/broadcom/bcm2712-rpi-5-b.dts      | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

-- 
2.35.3


