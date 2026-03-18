Return-Path: <devicetree+bounces-277203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ML5mKAWfumkkZwIAu9opvQ
	(envelope-from <devicetree+bounces-277203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:48:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C96E2BBCBE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55C7E302205F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:45:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EADB3D75A5;
	Wed, 18 Mar 2026 12:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C+q2969g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23C43D6CD5
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837915; cv=none; b=kaNdZZhSaTOsYP59S27Bth3wzE2VJLNRD7McwVzRXkofKx2tqb5R/sPpByIE9kDZgTAkkNmpdjkpZToWWWhqhu7v1ErNW8qcFtInsRQV7iMJ4/sdlG81hKmKc1jULj5EXGUoP6GXm/veD7M3tAS7sDRqOfVRmPiA1A1tMEmN7X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837915; c=relaxed/simple;
	bh=7h/HGlld4QUZ8/6amWHzk8Y1v7CTpf+63EYDdvnKPsc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CHs4JfRTVZ8sqRdb0XEtMd/1YjLj0UmsKCxUQpd+aLpgOkdtgnSBEXPyWw9GAaXY1e/LjL+OJ8f5Pby12ICwEq/hG2gS6DudSFpmZSTxgvOwZLydThEVNVfV/Y/lnrXqaF8NzeEdk85DHZPOvzTyO4A5N/IskvwEcqt57zC5YGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C+q2969g; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4856cd3f1ffso7585365e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773837907; x=1774442707; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8uibrI3W9d4RMuqjhPjL4rWVHNQ9ZJs9HJd7qxmHcrQ=;
        b=C+q2969grF5WkLXMY13vy1mjIpwQybgMCbfp87o88Ot1SK+kaIe9V3vPYrDdinRg8a
         gwpvZoFUeIBI2vrFi2BHtQnmQRuMT//5D+evRX/CP1qclJqfipf6zN59C1TLLaGo48Hp
         HCHwkuZK5pHL86gdTf1cZGExJXz5Rc6xz073GUNfpTpDt3CPSTQ3AFXD1CF/KbwUgsiH
         EhdCg/Xg2pky15tDkJEFqOXAgKgL8QzjiSQ71Kr5/hghHxAVwtWXDnA7DnqaMXC8gVy+
         topYdfrpNIvsHKLYiYtle+LNXy0cx13OX+w0aqb6NnV8Bc6E7jyrNEB2UQSl7g5UOsxZ
         K1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773837907; x=1774442707;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8uibrI3W9d4RMuqjhPjL4rWVHNQ9ZJs9HJd7qxmHcrQ=;
        b=mh3epo2sqg9IZHi7vqu7PE6RcHI6IxKk+HwYfWeTmxPIsWmV3BV4iQ25FZ4pB6qHCF
         +QEE3CfsKNOVKLQA0wTpM6Mg7yZPrz8VvBEPNdIS/gS1wmstyHLKslu6ikJwV51w+aK9
         affHrC565yt9Y+b91YL53G3WdkNDwLhn0Zkpb4p39Ka7WC/sq9Gymc0K5fdJBqZj6V4K
         NKh9NeRNmepO7TNbD53NLKzZgfVfsflPk2ry8mtIGTj86lrdmppjk/jfh3hbjiJYrG2v
         kv7dArTIn0Ndb15tWA1GGvvWDgSA4ys9pKO0r34dGluaTGLl5RSsUl18yocnvFQOpPAM
         xnOg==
X-Forwarded-Encrypted: i=1; AJvYcCXx8Kc807fY9ULaWQOUIRepzqxS1i/AtwMmtH06ocpWGl6iH0LibnR/b9DEtuaYDEIbtt0gTfelOi+h@vger.kernel.org
X-Gm-Message-State: AOJu0YzidLAVvXhR5KT8hJ5BYPaKsIbLJLsNhcUsvkQNaOXFQBW3MWEp
	ggBGxhnSTfKijiXLYYTnGPsAniVRqffhNqpm53Z5TxLdrhpT3kCTtaZ6
X-Gm-Gg: ATEYQzyatDUjPYwG5c5CGdaXi/uKnKF+q8aYo7xBCS5H4X0earRaZqNo/pT2FeeXbow
	MXtouV0ZMIn3emQ/ge0V+l5PBRgFD2gdhq4pIXofDU1VNkuUm/AXJymhP1yFLG0+Cfy3gzIQToP
	XACKXCjSldi9fJxrszdXw7za7tZZETLR3ExOjG0gD6j3WewELS1FayJUtd+PtLy6jVMqyAlRUwn
	9/gWB5Xd/Q7qJTeM19gPZ19cXj8jI4uaVu4AiWmAXvaReQeedv5/W5WGV8Ci6/QSBq69qUv7CJl
	fx61vg89v4ComkIpHlfK8YAX/046+5M5HfbSpFzfvOmDgQJdg7vuNEf2sxWQTotqIQ7847BoF8s
	Dotm6/ttE/P8Xmo4HALRCQfDtvu/QRzV4fiSXV9Y90DDXPyH3qtksW3YReHbW92zcdgV7BJu++Q
	DgB/A6d7Dr9Dh7I4FgdrPSr1BUJnSLj2lgzRPv1daCL+qH4iPLaE7iEMPrs1Yq/EmX36hgm0QRv
	GTuRbUnBOtMJxXUOPBAIQbNZ9/p4T1wgBU2QfQjsOdW0gg=
X-Received: by 2002:a05:600c:c8d:b0:485:2fe9:336f with SMTP id 5b1f17b1804b1-486f446d88bmr53075075e9.30.1773837906381;
        Wed, 18 Mar 2026 05:45:06 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:5f14:a98b:b4be:efbd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518985f6sm7888162f8f.25.2026.03.18.05.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:45:05 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/5] Add PCIe support for RZ/V2N and RZ/V2H(P) SoCs
Date: Wed, 18 Mar 2026 12:44:45 +0000
Message-ID: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277203-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[bp.renesas.com,google.com,kernel.org,pengutronix.de,glider.be,gmail.com,sang-engineering.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,renesas.com];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 3C96E2BBCBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi all,

This series adds support for the PCIe host controllers found on the
Renesas RZ/V2N and RZ/V2H(P) SoCs. The RZ/V2N controller is similar
to the existing RZ/G3E variant but uses a different device ID, while
the RZ/V2H(P) controller includes additional features for PCIe lane
control and supports multilink operation with two independent channels.

The series includes the following changes:
- Add device tree bindings for the RZ/V2N and RZ/V2H(P) PCIe
  controllers, documenting their capabilities and requirements.
- Update the rzg3s-host driver to support the new SoCs, including
  handling for multiple PCIe channels and shared reset controls.

Note, Ive created two seprate commits for bindings file for easier
review if these needs to be merged into one please let me know.

Cheers,
Prabhakar

Lad Prabhakar (5):
  dt-bindings: pci: renesas,r9a08g045-pcie: Add RZ/V2N support
  dt-bindings: pci: renesas,r9a08g045-pcie: Add RZ/V2H(P) support
  PCI: rzg3s-host: Use shared reset controls for power domain resets
  PCI: rzg3s-host: Prepare System Controller handling for multiple PCIe
    channels
  PCI: rzg3s-host: Add support for RZ/V2H(P) SoC

 .../bindings/pci/renesas,r9a08g045-pcie.yaml  |  43 +++-
 drivers/pci/controller/pcie-rzg3s-host.c      | 194 ++++++++++++++++--
 2 files changed, 211 insertions(+), 26 deletions(-)

-- 
2.53.0


