Return-Path: <devicetree+bounces-226476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8E8BD9000
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 13:26:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E7F93ADAA9
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 11:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E129030C36D;
	Tue, 14 Oct 2025 11:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bta5ycB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD4B3093CE
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 11:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760441174; cv=none; b=GxYXjJHm42jM008aJR/Q7oKDQbZjerH7onW+zMLZKbSwZcNYV21z2APiig8jGerKwmJLxFzFtHUmtc737q6YPl+BKii9/HFsyYXvsJFdh+w+ayDZ0yElAkMRH07/H/9Ir+SlQee20eP9HNk3dAnE6GEIAx5fqaw4xM513n09ATg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760441174; c=relaxed/simple;
	bh=AxhzSl8w445Qz2/9QmnikOtBEtA4YSeYe89CVab5wLQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=fXOj9UWJE0OxO46Uuo/FlHSCIH8OqvpQZZiOn3VQATZtcHoHbIGAI8w58GZtAn2JN5rQ35MOuNr4zH2Nda6gwZwevHEEU+pxLJr7WHLt0McMNyWuoQi+wynNma4zHDo0WKl5/q1abStf3NllixRW5umoqf921OfkfjGEQk7C15A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bta5ycB1; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-46e34bd8eb2so53076335e9.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760441170; x=1761045970; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NkgjM/J9Iy/ZQpNJ94vlbj27WexN53OWj0CXa0A7G+Q=;
        b=bta5ycB1i5svdSaKk/wvRw/YwXazpJL8e7sRG02w5K0mVO+o+DIgR/a2JIoFbhtKuj
         SPS61tSYPLJGhvN1gBoCGyoiGuyiV5MkY/z13UUbYxEusP+Tp35f7OHa3u/uxqTj5TOs
         F2JS9+GcxUvPdtBJ/vN1uW+BoljztnVKxz36w2x9U/ngZ9BW+ipMdp6lsSK7KrnBkqk+
         IwYubRRB64hq+s2yQmDjdJQVz7aMHJKAKOCrQ/oWLqN7ZyZA9jWUBv1pOZ1K659ffKxc
         AzrikcPwd4pLWOM1WkAQjI8pXA0OTuE9T22B5/P53i8e3TRe21KOYJVLTNd+PYekmGUK
         POAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760441170; x=1761045970;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NkgjM/J9Iy/ZQpNJ94vlbj27WexN53OWj0CXa0A7G+Q=;
        b=Mt2k28wtO+yTwMu22Vg/4/nMczfzGkNViE/KFmYNJh6/w3wvfrHo88QT1vxKqEO/U7
         CSe1cDiV4RZc15a0/H42zgyo8oY5mQkuE2YHESpav/9bgkcDnU1/X6/JPhEWK7I0jBJb
         j5YajQCz4XXC0/6b4CY0ox+GwoG/u44VddtfYyaCsd3SGbsfX1SG6EVFOPRh8Vb5uf7o
         lugHg/LEGGzWAixrVtJtNCBkHMPl1ISsJgXG+IM40HcuxzOjPRSLLQlhWatkSUNzTGKI
         XCRv79FOKXDj6W5bF/ar998AY7zsbyDH/eKx7GJyhuWn/lAonS2usf/u34+bC7aU29lU
         Mw/w==
X-Forwarded-Encrypted: i=1; AJvYcCXXxinuW7KKCq3zMfGEy1Hv48xfEMu8qJd5nAA7cs/GIKth86oh/eH+lo6YYBPnFAlw2OYctjwhYMqr@vger.kernel.org
X-Gm-Message-State: AOJu0YyXiavCJU9JXiwv0P8aWllai/IeqHYRexS1h3ycWNaPnR4O4jP6
	l1C2i7480wH2nl2NnZ5bUX1PS0YvD5/vNxl02IRTvrhZwsso34527QqC
X-Gm-Gg: ASbGncsShL6p557CNZYxfM0T0I8uywTxLn5xIb1qf1l7Qy24Xdi4+uq76TFF4jBPVJ7
	pbZMnyxmvJ7bLr/nAwA9QkHrNynGzwF4+Ckqp1v2fc0U0FuIicyNDS/tMo9FsdA7GZdSr/oxtJz
	RDaXa3dzJyYRdc97dB/m4easFqOxItjwJOq5BdUi7p7kZgIIJb3IVpC/t2VKIjaBZRlwOZyuU33
	IUaDaq2ZWCDDtJ4nLv3JUOsDPrRUQDbhEU4a9DItKMaH0LdX8oS+IWbigPlJzDd0q/1pSgI13H4
	S0k6pdC1LiKkjGlo5mY5qWzzl6SXYirFwIDSCVmsndyGE1g5wVwSfu7AdiUekbdEEwKJ1r4x9rX
	49wcRaM0BWH78batUTRkbMzIx2r66+XsHR8+T7QX7R2S5abYduOd00cXP42Ur7MN6LssS
X-Google-Smtp-Source: AGHT+IFMf6DIq4h/prpv03d57pehdiVcP3X28cHjsLA6mXHmxzjuKa4nBjbv0JtAImSeizIQEmRacg==
X-Received: by 2002:a05:600c:628e:b0:46e:4cd3:7d6e with SMTP id 5b1f17b1804b1-46fa9aa0b49mr152941585e9.9.1760441170197;
        Tue, 14 Oct 2025 04:26:10 -0700 (PDT)
Received: from vitor-nb (bl19-170-125.dsl.telepac.pt. [2.80.170.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb492e6ddsm265829845e9.0.2025.10.14.04.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 04:26:09 -0700 (PDT)
From: Vitor Soares <ivitro@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Vitor Soares <vitor.soares@toradex.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	ivitro@gmail.com
Subject: [PATCH v1 0/2] PCI: j721e: Add voltage regulator support
Date: Tue, 14 Oct 2025 12:25:47 +0100
Message-ID: <20251014112553.398845-1-ivitro@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Vitor Soares <vitor.soares@toradex.com>

Some PCIe endpoints or slots connected to the TI J721E PCIe root complex
may require external voltage regulators to provide 1.5V, 3.3V, or 12V
supplies. These regulators depend on the specific board design — for
example, M.2 or miniPCIe connectors often need 3.3V or 1.5V, while
full-size PCIe slots may also require 12V.

This series adds bindings and driver support for these optional regulators.
When present, the driver enables them automatically using
devm_regulator_get_enable_optional(), ensuring proper cleanup on removal.

Tested on a Toradex Aquila AM69 platform with a Wi-Fi PCIe endpoint
requiring 3.3V.

These changes are based on upstream discussion:
https://lore.kernel.org/linux-pci/20231105092908.3792-1-wsa+renesas@sang-engineering.com/

Vitor Soares (2):
  dt-bindings: PCI: ti,j721e-pci-host: Add optional regulator supplies
  PCI: j721e: Add support for optional regulator supplies

 .../devicetree/bindings/pci/ti,j721e-pci-host.yaml | 14 ++++++++++++++
 drivers/pci/controller/cadence/pci-j721e.c         | 13 +++++++++++++
 2 files changed, 27 insertions(+)

-- 
2.51.0


