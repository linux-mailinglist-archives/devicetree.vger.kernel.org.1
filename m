Return-Path: <devicetree+bounces-233959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED68FC27587
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 02:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A70E43B8963
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 01:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 067AB24502C;
	Sat,  1 Nov 2025 01:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IkCZdVX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F962242D89
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 01:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761961469; cv=none; b=IHRYa12gWifAKBl8cuI6Hu13C6E3hvFUAWWc5pD1rCyeFekuwRzFBDKsn5wP5YkJuVqFP5Y7h8Ggo5BGmUQT3877WAfXQgwp+Lyd9JqW0aL0K+B3/dJv8CAdRdb97BMkeOOKCmGqWrpWo63wIhnRNYLCh/A70j7zmSxmxiyEBA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761961469; c=relaxed/simple;
	bh=WcntrjdIH/F2vHrs974aHaeH8m2rMck/WuuBmWZWSOM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gv9OkyrO6Fu0I1dWFEXFaTnhWKlPpp+C9Vm5cgL7NUv4VCzULeTe4INCmS77O9n1DbqFXFiYrgi77whFvRI81yVE03NDAzgjs4BHljHM0aAxWFEeD7AowLIy/pToiGc0+LMlvE4HyChtKfeq7l1OhoT4PDAZSmy6tv5aFXn0KHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IkCZdVX1; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-78118e163e5so3287948b3a.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 18:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761961468; x=1762566268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c+fhVqu0PV24AlJRQZwkBAzniqnqOKuxZL9zcVIrjpc=;
        b=IkCZdVX1XwonVY92G0gN/73YKfkjGUmPT6hyA/+bYXWXIL0djnW50HNeBeIeIH7z1S
         HMsu79DWXEpIsFvjdH7SxbLEBP3cvk72xVcgZbU+1/qlo3RclZjLrtwypq0QBeQ7TwzE
         hg1UT8ejei2LjBqmOCKYuGUwRk89qRNFYIYij9hVCAMeYjIS/S40HRkpTiFvzViiffs2
         M+XpNWaoFae6Mx2Or88uNSqGuUXQu6+g09O/0uA1cpYwWHnvpOyMVtS31NLFkihvAlhN
         vz1FPTujUs/hVFoXVyqdcp/5S4IznFayh2H+uPr/qNrGc6ri0rmJha0g997eyzsSot18
         qaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761961468; x=1762566268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c+fhVqu0PV24AlJRQZwkBAzniqnqOKuxZL9zcVIrjpc=;
        b=C2L1k+Ge++GBfqaAN4siVqwrSBOlLn4Drx9nrJh+YlkRp0E95oA6I5rXm8Xi/NFOp4
         LeUNJnzdNRgf75liPMwghghwpOW/Mqs1Vmt3ZQYgXvsM61MpJ4Cf1vA79txQBs0SbiaO
         3BpdTz+QxNhDXrosigdBq7dvbAb88UDBts3H+7Y6IWbEqY6RK43i03ZUz87TRTZNnrwE
         xN0DgFTlWU9zFxCWO2kyPadY57DN/Yfy28PKFhjQbvwqpivDKOTi4/9p2+LXKAo7muJv
         7CPbTlbyPkEKDB2bXKZZ38XQoMCUsXvN69XcQBcaVyYgryza8BZ+/yj+FMrB/+d85fXi
         KO+A==
X-Forwarded-Encrypted: i=1; AJvYcCXBqQ9Jb1iF3rmAzaCwo2SDM+Y7IYtkuNJwWB0r07ueKBKAMcNhS4nxixdSmoBuq2/uNMe1kn47jcE5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4EsDNXGfAmpu3ObQNxUHKHNta+FIDsDUPWoX1PlNVBZy+3RG7
	TCEc3J711meGAD88ncEprICR7Aj0tfDUCYJWh+HlbyrTEJ+u3SwXPBwq
X-Gm-Gg: ASbGncv5E10G0W9snVju9+dJFKdMKNObqNCImL1pCmBhVke/9R7wCK76m08rlsI9auy
	RLeoNDHku1+bdpecJh4qn7U5XkMXIfHeDMx5z1TOc3F18KZpkqebD9GCt906tkHplhcqb5P+Oef
	Ak2SKmhd9y/5QEZBT74+ImIFFenFWiwdEagJC7IuUpBbUdleHsWRH4XRn3OVmnifusyWJFcQYdT
	qmBtI7s2AMQ9UsZWP05ecAtSa86ZTbDypi360lbKOIdcbzc/Ga9xHq2ZqAEkjSsCqGaa8ghWnXW
	vO+e3Huf4Z8Pnk+48ghrLCc4of7NV99Ve9yLQii+o8heYOhDwkjhc/Iy6t//KM4YMghw1JWQHuO
	tCQRePnPJ8UJbfPqlgNERkeQBMz/Zmc3A5ZZH3iQGVwL9WvuVv7PVIfnbutC9/XgWEl4BfhlIeD
	TvhEFt91HYiQkEChTnPsNLXeLjzPs=
X-Google-Smtp-Source: AGHT+IE+BkF67zbvd+SI0Yp+p5eLlXzV4Z8l0jiZti7LH+X2mQ8UpPDNY8rSxKA66iNjrb7ZffhF6Q==
X-Received: by 2002:a05:6a20:9f48:b0:25b:522e:52c6 with SMTP id adf61e73a8af0-3477a5c1388mr13176935637.2.1761961467632;
        Fri, 31 Oct 2025 18:44:27 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93bf078924sm3350585a12.32.2025.10.31.18.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 18:44:27 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v5 0/3] riscv: sophgo: add top syscon device for cv18xx
Date: Sat,  1 Nov 2025 09:43:20 +0800
Message-ID: <20251101014329.18439-1-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add top syscon device bindings related DTS change for CV1800.

---
Changes from v4:
  - https://lore.kernel.org/all/20251024030528.25511-1-looong.bin@gmail.com/
  - Drop the labels in the example.
  - Drop the patternProperties.

Changes from v3:
  - https://lore.kernel.org/all/20251020083838.67522-1-looong.bin@gmail.com/
  - Corrected Co-developed-by information in commit message.
  - Fixed patch version number.

Changes from v2:
  - https://lore.kernel.org/all/20251012022555.6240-1-looong.bin@gmail.com/
  - Add ranges property.
  - Use proper regex in patternProperties.
  - Add complete example including child nodes.

Changed by RFC:
  - https://lore.kernel.org/all/20250611082452.1218817-1-inochiama@gmail.com/

---

Longbin Li (3):
  dt-bindings: soc: sophgo: add TOP syscon for CV18XX/SG200X series SoC
  riscv: dts: sophgo: Add syscon node for cv18xx
  riscv: dts: sophgo: Add USB support for cv18xx

 .../soc/sophgo/sophgo,cv1800b-top-syscon.yaml | 80 +++++++++++++++++++
 .../boot/dts/sophgo/cv1800b-milkv-duo.dts     |  5 ++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi        | 42 ++++++++++
 .../boot/dts/sophgo/cv1812h-huashan-pi.dts    |  5 ++
 .../dts/sophgo/sg2002-licheerv-nano-b.dts     |  5 ++
 5 files changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml

--
2.51.0

