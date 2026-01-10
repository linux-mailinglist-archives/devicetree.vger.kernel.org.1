Return-Path: <devicetree+bounces-253443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5503D0CF70
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAE5C30142ED
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 645BA2E36F1;
	Sat, 10 Jan 2026 05:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="GhbAwa1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54892E413
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022339; cv=none; b=e+5jo+h8l0RjV80v9NZE+Ru/jodslcWtvoEqy5HU9nTsn95cyzAxXA0LNRsj2OSiC7QzBlbwPMZvQC/bS05TLvUu2DE4r+YUWxXDWsJ1LYR7MXAQhEhghWoE2DXo7RZnYWrwG2Xxf3DYaHi70cpZn2tYlkpxzd3ChTUuPgjoPhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022339; c=relaxed/simple;
	bh=JkzhGdqI+PaPbPODmI7rQFPqBMywGTnzk2npuKDslnw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ji45Y437nEPDJVWxyVICtC/7J+6M54Qx5MtrUXMkqXlvRYP1bFwX7c/54euDfQiqn4azFgtCjh+cwXTrOue3H9WAAcKGms9AdTl+bTsr/JnOfM88VmuzbmTT3RtFYOoLyi9uE3zqpIUmrQfrmKk+HXeeSbjmP6N8J8b/szYVWLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=GhbAwa1l; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a099233e8dso35739005ad.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768022336; x=1768627136; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gwINnpUPFb0M8hbnqw2ipXo4djJBXYPLd1SCBqsQOZA=;
        b=GhbAwa1l/A4wIqfe/1lhQssud4Rs4CVacd0VPCwUYeKhpyd29/T+z5YElqsLOXw1Wm
         PlH/yrQCMxKXLY6c/o+UNHH/V3NnKiaGRhsFxwjNM/Ek3S0ictzttJAXmCh8M6spOhDS
         QaJN801skY0rBa0ZLM9I4WLGEi8aUnY1LRBZHilOdJHwxG8TnKOMa6hBIXd7YxG5mBWo
         Pg6h5mRdl3P2T+ZfnwZCdDAukzGizqnEd5zhQJMUtoC4HbcpU7mjsGkI0d7OfBFLZSuo
         mVt1ss5SmmgLGujBshliPag/5BkoRWBqjnGcT5kgmg2vZwSTZQlYCAj5NDsPEh6xYns3
         2JiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768022336; x=1768627136;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gwINnpUPFb0M8hbnqw2ipXo4djJBXYPLd1SCBqsQOZA=;
        b=lQ+dATjVR4bSQKkA25URLbPf7vhZxJkXsrrR4QE4UdSCO5FO0pp3INcyNI2CGnD/kH
         u9BdZ9SIKbx/K2VaPLEv+AsQoun0B4VAKFYcpLyiUFnK+y31qhc/AY7rlkGu1cCWRbmr
         qU1o6zYSPXVCxVcIjszgqx4ZxWoGTNT/LXdVkqojbaXc/ww6zfUN25LtM/w7Ho7Tt26p
         ct6TpcuIu6XOazG0EzeuQ/Z/TVroJSNd/TlXzfTnae29WKvg6XTpcHSCZz0K7B7o71GL
         OAQRYn7och1xTHjeBGVhtjJIMDMjfa+1QQEf+r3u9PcKZg5zyzL5N/hXdP6fWJNI5IDk
         VmsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFstpYV5iP8JUveXDu3H4I8mIw56yM0+ppjGMDiZBjQTVnEQHRBzNeVw6h7A6y1YFjo1fFpWVf3EC6@vger.kernel.org
X-Gm-Message-State: AOJu0YzxW9fpgc/nn5piH34gU9ccdKprTHGXjmcrnC+HFANkVlIqt0bs
	F1PPoAMXy6YByWkEHmFUYlEG3D35CK2GO2Clg3sjIxGWwhEzgjOaL+UH/bMealT/q1AJ062gkGP
	l4sULNlQa03BZ
X-Gm-Gg: AY/fxX7jVxGs5lx0Qpp0qapiN/Nb12wkBl2UEFs8MOt1Vw5UWYUuD9MDRG2gahl9eFU
	VWSg6QS8URGz5+oLH9bpEwuqwsxqCB40kDRdblqUmQ0u4iHl3jZQuHlvN6WnSDahi1tWtFxqyoT
	8/7HB2pw9t1K/GnV6DiV31Aq31D135y/Tg/0SWHkrYIeNNX6lM0hMyRCYHSdiW22z0HdOGlc0bZ
	vxtE6pN93AJckoGHXqjQC8c7VGLPlhi4RBopOhF/R/OVTSoNsse5ETgDZQKUixs/ukhhLqdqLPp
	Tkycfb7diBFQrGr0Rm6cQctkFcvKnt39Hm7zKGfHJBZ12WAKIrEnHXiIXxxTkmZpyg3MBKPCS/2
	7mgxuMCLB+AuCm3PtrKLgybY9kfHTX4RSCS2ZgBSAbnd+sNc6RXmQkmIebP0WziwZ3VG1EFo937
	b8Ousb1rWl9M/RVkyVym4Pd7NzawCs4jGYF9IFC1UWMSLiscSaTr5tiw==
X-Google-Smtp-Source: AGHT+IHgj01KDJwIVi20hSTPJNWxRc9OnOAfkIzPOzB7+X4nvk7f4qSMG8zVfgmzJIM3AOdnYhkWSg==
X-Received: by 2002:a17:902:cf05:b0:2a0:97d2:a264 with SMTP id d9443c01a7336-2a3ee49015dmr105294885ad.37.1768022336093;
        Fri, 09 Jan 2026 21:18:56 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88cdsm118208265ad.73.2026.01.09.21.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:18:55 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v4 00/11] riscv: spacemit: Add SpacemiT K3 SoC and K3
 Pico-ITX board
Date: Sat, 10 Jan 2026 13:18:12 +0800
Message-Id: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABThYWkC/23QwW7CMAwG4FepcsZT4rRVw2nvMe0QHBcsRLslW
 cWEePcZ2KSBOP62vl+yT6ZwFi5m3ZxM5kWKzJOGdtUY2sVpyyBJs0GLnUPXw97DJhYhSBUoha6
 1tndhCEbFR+ZRjte2t3fNOyl1zt/X8sVdps97FgcWok3Y9RQSBXzNUqjUmF9oPphL1YL/OOI9R
 +U+jn70lOw4xCfc//HeOjvcc6+cUwi8acnH5B/4+XZZ5s8vfU+9nWeUM+j+IHXdTHys8FseVJx
 /ADq4RXtYAQAA
X-Change-ID: 20251216-k3-basic-dt-cd9540061989
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3

This series introduces basic support for the SpacemiT K3 SoC and the
K3 Pico-ITX evaluation board.

This series (starting from v2) also adds descriptions about ISA extensions
mandated by the RVA23 Profile Version 1.0 into riscv/extensions.yaml.
There are extensive discussions about how to handle these new extensions
in v2. In v3 (now v4), here is my best understading of what I think we have
reached consensus on.

At v3, Samuel Holland shared his opinion regarding how "supm" should be
handled [3]. He suggests removing "supm" from devicetrees not targeting
U-mode. I did that in Patch 10/11 of v3 with k3.dtsi. Samuel also notes
that "supm" could make sense as a binding for devicetrees targeting U-mode.
Considering there are other changes suggested in [2] and [3], I would
prefer to start a separate patchset dedicated to "supm".

Among others, major change in v4 is adding m-mode imsic and aplic nodes
into k3.dtsi (Patch 10/11) to better represent the hardware.

Hi, Conor

For the binding riscv/extensions.ymal, here's what changed in v3 (no
change in v4):

 1. Dropped the patch of adding "supm" into extensions.yaml. At the same
    time, I will start another patchset which implements the strategy
    outlined by Conor in Link [2] and by Samuel in Link [3].

 2. Dropped the dependency checks for "sha" on "h", "shcounterenw", and
    6 others. "sha" implies these extensions, and it should be allowed
    to be declared independently. Like "a" implies "zaamo" and "zalrsc".

 3. Enchanced the dependency check of "ziccamoa" on "a". Specifically,
     - added the dependency check of "ziccamoa" on "zaamo" or on "a".
     - added the dependency check of "za64rs" on "zalrsc" or on "a".
     - added the dependency check of "ziccrse" on "zalrsc" or "a".
    The commit message of this patch is updated too, to better explain the
    relationship  between "ziccamoa", "za64rs", "ziccrse" and "a".

 4. Enhanced checking dependency of "b" and "zba", "zbb", "zbs", making the
    dependency check in both directions, as discussed in [4]. Since "b"
    was ratified much later than its component extensions (zba/zbb/zbs),
    existing software and kernels expect these explicit strings. This
    bidirectional check ensures cores declaring "b" remain compatible
    with older software that only recognizes zba/zbb/zbs.

Thank you for your review.

Because the K3 uart compatible string patch (Patch 5 in v2) has been
applied in tty.git, the entire series now rebased on top of linux-next,
tag: next-20260109.

The SpacemiT K3 is an SoC featuring 8 SpacemiT X100 RISC-V cores.
The X100 is a 4-issue, out-of-order core compliant with the RVA23
profile, targeting high-performance scenarios. [1]

The K3 Pico-ITX is an evaluation board built around the K3 SoC.

From an RVA23 profile compliance perspective, the X100 supports all
mandatory extensions required by RVA23U64 and RVA23S64.

Link: https://www.spacemit.com/en/spacemit-x100-core/ [1]
Link: https://lore.kernel.org/lkml/20260101-legume-engraved-0fae8282cfbe@spud/ [2]
Link: https://lore.kernel.org/all/4ebbe14b-2579-4ba6-808d-d50c24641d04@sifive.com/ [3]
Link: https://lore.kernel.org/all/20251230-imprison-sleet-6b5a1e26d34b@spud/#r [4]

Changes in v4:
- Patch 5:
   Adjust maintainers list in alphabetic order.
   Declare spacemit,k3-pico-itx as an enum, which could save future
    code change when adding new boards.
- Patch 10:
   Fix missing blank space after comma in simsic compatible.
   Add m-mode imsic and aplic nodes, per suggestion received from Samuel
    Holland.
   Adjust node properties order in nodes simsic, saplic, mimsic, maplic to
    follow the DTS coding style.

- Link to v3: https://lore.kernel.org/r/20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com

Other Changes in v3 include:
- Patch 1:
   Acked-by: Krzysztof Kozlowski
- Patch 4:
   Acked-by: Krzysztof Kozlowski
- Dropped Patch 5 "dt-bindings: serial: 8250: add SpacemiT K3 UART compatible"
   as it has been applied to tty-next.

- Link to v2: https://lore.kernel.org/r/20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com

Changes in v2:
- Patch 1:
   Fixed alphanumeric sorting order of compatible strings (swapped x100 and
     x60) as per Krzysztof's feedback.
   Update commit message with more information about X100 featurs per
     Yixun's feedback.
- Patch 4:
   Fixed the order to keep things alphabetically.
- Patch 6:
   Use "one blank space" between name and email address.
- Patch 7 ~ 11:
   New patches. Add description of RVA23 mandatory extensions into riscv
    binding YAML file.
- Patch 12 (Patch 7 in v1):
   Removed aliases node.
   Updated 'riscv,isa-extensions' with new extension strings available
- Patch 13 (Patch 8 in v1):
   Updated the memory address to the hardware truth.
   Added aliases node in board dts.
- Patch 1,2,3,5: Add Reviewed-by and Acked-by collected.

Link to v1: https://lore.kernel.org/r/20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (11):
      dt-bindings: riscv: add SpacemiT X100 CPU compatible
      dt-bindings: timer: add SpacemiT K3 CLINT
      dt-bindings: interrupt-controller: add SpacemiT K3 APLIC
      dt-bindings: interrupt-controller: add SpacemiT K3 IMSIC
      dt-bindings: riscv: spacemit: add K3 and Pico-ITX board bindings
      dt-bindings: riscv: Add B ISA extension description
      dt-bindings: riscv: Add descriptions for Za64rs, Ziccamoa, Ziccif, and Zicclsm
      dt-bindings: riscv: Add Ssccptr, Sscounterenw, Sstvala, Sstvecd, Ssu64xl
      dt-bindings: riscv: Add Sha and its comprised extensions
      riscv: dts: spacemit: add initial device tree of SpacemiT K3 SoC
      riscv: dts: spacemit: add SpacemiT K3 Pico-ITX board device tree

 .../bindings/interrupt-controller/riscv,aplic.yaml |   1 +
 .../interrupt-controller/riscv,imsics.yaml         |   1 +
 Documentation/devicetree/bindings/riscv/cpus.yaml  |   1 +
 .../devicetree/bindings/riscv/extensions.yaml      | 169 ++++++
 .../devicetree/bindings/riscv/spacemit.yaml        |   5 +
 .../devicetree/bindings/timer/sifive,clint.yaml    |   1 +
 arch/riscv/boot/dts/spacemit/Makefile              |   1 +
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts       |  38 ++
 arch/riscv/boot/dts/spacemit/k3.dtsi               | 590 +++++++++++++++++++++
 9 files changed, 807 insertions(+)
---
base-commit: 31d167f54de93f14fa8e4bc6cbc4adaf7019fd94
change-id: 20251216-k3-basic-dt-cd9540061989

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


