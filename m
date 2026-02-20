Return-Path: <devicetree+bounces-266848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RhrsNgkbmGnp/wIAu9opvQ
	(envelope-from <devicetree+bounces-266848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:27:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B54165A52
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 870EB3001033
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716C733556E;
	Fri, 20 Feb 2026 08:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="MFyqskF/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3FD21B9F6
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 08:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771576070; cv=none; b=QxgPDTTo+2JMAoq0AdHHvhiyDCtHupaAELFaX0i3FIqIBmrZwvHeJhGHrOTohevCaAfVNgYKehjqzT/7XVPsDaqgOGnVKbNMOFqOcjhm0N15QOhv6Ds/sk6h7yBz+Fk+Pp/JPqyKrkbpMxOJzZCLOKnlF7hRKIYCdT2+f9WvMo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771576070; c=relaxed/simple;
	bh=NgLK9DnHXHbh/0SyIUqpYV9kGEgoxTNyXaMzbPHKhzU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QLjx6qgbVwZFpeyRz2pkMV0/E2U0yuYy1+CCO7rc2PXWHO1CcMIMvls/RLw0g+ioXYJis9PAjhiicLi1GKp5miGDQcq3uCtuX5gTy3dq9946Mkztq6M5TdwnjQBfVcusurCxPkPjWRY0dekOiktvXc4GJ5VIGpA+czZ8Osudmno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=MFyqskF/; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-436e8758b91so1342811f8f.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 00:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771576067; x=1772180867; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f6MEUb/BPhbswvjItrmNDB/sN3JkbLXHr2GG5X1/PKQ=;
        b=MFyqskF/SzC8gjbr6VprSQ3Loy6ku4T+DHCUkSGyiuXgLMZwJbn+l6NyPtVERK512T
         IX+ysAo0eqmfYEdAUtpmPGtVcoNw44DF8euRJIL87qmJcFsL4Myy20RxCZiqAZb3VrvH
         s7Qt1VnDhXHNdZ4ESFh9qbo++2Y0so434CHf/grzCsJfeO1hp86yyXLUoIp9V/gg0LKn
         nh45wXn3zFabun3I038eXgHJBpxiWu66UW5yALpkMDw7MSWbe50VpRXUuxpMuW4pQizO
         lDNJwdW+2h8ggMJqi+yUM0y/oT2QT5YktJf/szUBrd8eQ9porMlSilhIcZD0fPXzzgjq
         5hUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771576067; x=1772180867;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f6MEUb/BPhbswvjItrmNDB/sN3JkbLXHr2GG5X1/PKQ=;
        b=F4jk/sjA2dYUgp4JYr7CkfyN2T1TvcWSO44e5EzSwLoVPWlAmHYM5mgLUeio48DNo5
         PJIheDY0nHku/xFfrOJODXnWednC239y9PS9Hfa0OBZ6CiynExDCvJ+O6oHNnAvPOuPH
         NfTUL8zVDOhz+GDVtV07K+VB7spaPNCSuYAOuU7EXEesielShbLv1czuCWx3b+kOZcDO
         wHpu89sDdd80MnSceOpOyFz527tBLFS5qql/WGYkF/1M8TTgzKrUum0bP5ar1+5sUJmq
         QqVGqSRlrDYkMHxBtI6uUCyGdUULFd14QETxJ3/O19SfmDcgJva3POaddgEYlebr5BqX
         CzaA==
X-Forwarded-Encrypted: i=1; AJvYcCU+Z7MZ+ZjbBnK2RJNFJKDHz1FOdyfQo8yOYb4USF/d5xCcAK+qJijo0eNRrzi/hqKu1N8hv/2Xe7m3@vger.kernel.org
X-Gm-Message-State: AOJu0YzV256uV0l2yZvGptXor+xz0FsqHQ24ZeCu5R6EuNSMKd5+SJsT
	7nD+zQjuzqL56z6LB41v4E0uftOvIKkRsXrdVYgOp2XRe1klc8lky3neIFWJdkqjw6c=
X-Gm-Gg: AZuq6aJv7jk1kgqeUyrasmo1ffS/0lsVb/Ff7ofyMjXEHlsSxDjStCuRxjr1LxjTcJZ
	Yl6tB0qIpRZkg232LbVdVGOONmjCRy8WZtWbSDGJdUUUDRkcOC+6OBThflfictPCrkQLXTeiA+n
	WK0QPTFBgryTFoAqx/eDqnLlMSaMUQT60dqqf7sB/SCyZp0NAhO1UVHFsHidBBpDpNqmCzQyDAs
	vsN6nZmk4eLDyesyB4uSf6qXwhgEhuseeVMEzi0pHGuBzLpvLjjLvw7HgVV+hWDGbFMDOocfqgS
	NPL4ZXSF2wUfgz2QbwVJs9Ne+lxkXrj2i1sxTWqHtNLYQfhit0YdQ63l9Dpkq14GKGpK25Cz5Fa
	qspL5vnw6/iLdnkk2bwRaw57HEj44sv9pP0GlfesFrPhqbiUIbdkx1LzzVezONnbLSgzxiPk3tJ
	0VgLn1gQVH85lXW3lE5CFW
X-Received: by 2002:a05:6000:2f82:b0:431:a0:7dea with SMTP id ffacd0b85a97d-4379db8cfe8mr36270633f8f.40.1771576067168;
        Fri, 20 Feb 2026 00:27:47 -0800 (PST)
Received: from [127.0.1.1] ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6c1bfsm54717688f8f.13.2026.02.20.00.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 00:27:46 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Subject: [PATCH 0/5] riscv: dts: sifive: fu740: Fix compatible strings per
 IP versioning
Date: Fri, 20 Feb 2026 16:27:04 +0800
Message-Id: <20260220-fu740-v1-0-c8af54130c58@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANkamGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0ND3bRScxMDXSNz89TUVOOU1MRUIyWg2oKi1LTMCrA50bG1tQDZz7v
 ZVwAAAA==
X-Change-ID: 20260111-fu740-277eee3deae2
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Thomas Gleixner <tglx@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Conor Dooley <conor@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Paul Walmsley <paul.walmsley@sifive.com>, Max Hsu <max.hsu@sifive.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2249; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=NgLK9DnHXHbh/0SyIUqpYV9kGEgoxTNyXaMzbPHKhzU=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBpmBr8G5xsYpp9bS179Zrgmq7WnSzmUVdzC2ysv
 pcbgcn4kNGJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCaZga/AAKCRDSA/2dB3lA
 vaydC/4poywKhTIZqAMbae4JLkqR9S4oc9GHiXiZaRJ4LgVvekuyuJEmS6yJ0m/9F45/zTZCMRL
 jNPykIc6Bfnjicq+MtCIPIe6KyYE8BmfZvUuwHN90Ly8hXBmI/38cfD5/nQuKSV0OK8e7pbPxLD
 DMeoDmNI4tPN7Ho4e2s3RDuPC3GayFrF1lsAeguT8ksplL+bZqffbVIRKuh0Ah3/OpObQyxeZyP
 e2jfTEe1keULm09THOGG373hT2aE3Uuacix908naKGoxe1dPFeml4L/Ih9qhV4OkT9it+aaE1AH
 JzA7nBVHR/9GePMch/mGDbpNcvaR2zZge/o/BXimRRRpgE8N4oLN8Pjasuunx9k3oQ0FPnUdMGQ
 kMhAZTvsbTSZhodIWrD45whFv9vVr5QX9KmL35z4z6nx/Ez8tO9PIK7ndI4qXZLKSU4vyaN73n2
 XzH0mt+Qp1cTHUAxg/Lz2vemcsd7iLGYqYuxTv+BRUAJFprp1xDVX3ClEHlfwUsG2U+Ik=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266848-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.hsu@sifive.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sifive.com:mid,sifive.com:dkim,sifive.com:email]
X-Rspamd-Queue-Id: 63B54165A52
X-Rspamd-Action: no action

This series corrects the device tree compatible strings for the SiFive
FU740-C000 SoC to comply with the SiFive IP versioning scheme documented
in Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt.

According to the versioning guidelines, each SoC should use SoC-specific
compatible strings even when IP blocks are functionally identical across
different SoCs. This ensures proper hardware identification and allows
for future flexibility.

The series updates both the ethernet (MACB) and PLIC compatible strings
for the FU740, adds the corresponding device tree binding documentation,
and adds driver support for the FU740 ethernet controller.

Changes in this series:
- Patch 1: Add FU740 ethernet compatible string to the Cadence MACB
  binding documentation
- Patch 2: Add FU740 PLIC compatible string to the PLIC binding
  documentation
- Patch 3: Add FU740-specific configuration to the Cadence MACB driver;
  the FU740 ethernet controller is functionally identical to FU540, so
  it reuses the existing implementation
- Patch 4: Update the FU740 DTS to use the correct ethernet compatible
  string "sifive,fu740-c000-gem"
- Patch 5: Update the FU740 DTS to use the correct PLIC compatible
  string "sifive,fu740-c000-plic"

Tested on HiFive Unmatched (FU740-C000) hardware with network
functionality verified.

Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
Max Hsu (5):
      dt-bindings: net: macb: Add SiFive FU740-C000 support
      dt-bindings: interrupt-controller: Add SiFive FU740-C000 PLIC
      net: macb: Add support for SiFive FU740-C000
      riscv: dts: sifive: fu740: Use correct ethernet compatible string
      riscv: dts: sifive: fu740: Use correct PLIC compatible string

 .../interrupt-controller/sifive,plic-1.0.0.yaml         |  1 +
 Documentation/devicetree/bindings/net/cdns,macb.yaml    |  7 +++++--
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi              |  4 ++--
 drivers/net/ethernet/cadence/macb_main.c                | 17 ++++++++++++++---
 4 files changed, 22 insertions(+), 7 deletions(-)
---
base-commit: 9702969978695d9a699a1f34771580cdbb153b33
change-id: 20260111-fu740-277eee3deae2

Best regards,
-- 
Max Hsu <max.hsu@sifive.com>


