Return-Path: <devicetree+bounces-249576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E2BCDCF92
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 18:53:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23F3D304D567
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 060D033ADB1;
	Wed, 24 Dec 2025 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MxSccDkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36A5328B49
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 17:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766598742; cv=none; b=btu+UwbaFnxVGchP6ehwjyMnjvRkCYntaoQLLDYfB5DcKD9OH4TOZFHGxOog9zLh9YpfzM2C4WxfnEqrLgkVlUm1JYthIIi9SRcatnpfl6z1vgzLgtFOUlA6nVS0nuTW+5G32Bub5BKcpu/7/YvgfIN3C7Ws++ZQzKgfAvb6qsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766598742; c=relaxed/simple;
	bh=eT+9QgCFPZlap63qnp3orXT7fSowMWjsilOcxggP40A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AGI2bM3DH2GebKtwfwhR0GUjWejcfNTSNE7BmntYJwQB2xdavTid/HHrHvEBNAyfU6yb9Ktoaz6R4P2ZSgEzqjFB65DwJgPybkl/Epu6C8jpXgTs+NHSR0EEAJ7tLl0kRt7KbC/ksEYXx8OANvYXE/b9E9EJc+qYtLq51xY4t7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MxSccDkV; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso59894255e9.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766598738; x=1767203538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m0OaNkMXVXZZ6oeYQY6wBKIQ8q3WHAsulgnB8VJrqL4=;
        b=MxSccDkVw+uUTCWVSQ+7l2ZEjGLE1uvX5R7v8tBLsYNbf9N4wzC0LNZDk7AtyVS4+G
         SYO2QY6gpCrZ8QcC8QeD2YpvAQL4dBq0+uURK02DyywpYqmZAVbu6x85Wk7PmHXCMC76
         arUy6ifTpLZt3t6/6c6oQ6DJJ2cy7QUuY6Tk5pDiius5ku6aFSrA3iV1nkhzGgOsYdyx
         bi0vNhu9WCATtSAOUL0KQMCzw/trkeQmrA0cy2pfxTV9hLLlvZ602D2bb52Bg0ANxDgQ
         KaVraNwWl+SrUuornw65TAIjrOfeohzc+71aYuDH7pvQ0mrUZUT71ffmN/yFLTKwezCq
         83og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766598738; x=1767203538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m0OaNkMXVXZZ6oeYQY6wBKIQ8q3WHAsulgnB8VJrqL4=;
        b=ZQHEniuVb/JmUEkmsE+iJPLM3BWcqJLBI3CECBzIK1evEk2DBGPN/bpKp/nAtEzWGX
         HNeX6VNLb9kLehhSw0XBqDqZcytxMmWuXK0u3KqTdbcWffX1sYp92r5lOEEgbUC/jz0W
         c1At5p8aKAjX8a4ydOGIY22ebvOWjIvBVLVgx+WN24vVLGIDjRmGYh9mtODqtDrmpDNq
         2AptLRPaPoTntuaywa39vwFbpsqm6YRgGz62IAztI7B4XYxZt2Ma8NHNvj1SRdUL/2VI
         McyP7PbTMrvUcVrHgSRfNVQVHDMnCeef3QwF/TgZZzm2Ut74L6Y8Q01ddaFxR1CqM3iU
         yAMw==
X-Gm-Message-State: AOJu0YyBfbgot3tXarr7jjszKqm7SGZDh1uoRolMFmMATPbQ8ZIw7IuJ
	XHELP3hxuZ9Q0PQwaSu8DsOrQgkj5WDQvLq99UtJ5oAs+lF8Aj8pQ3Li
X-Gm-Gg: AY/fxX61WwsehaLDSjCJcc0VZCmTSzKFa3cVdpModu6GUojegHFVjFLZoOJ0plwouk5
	KW5LLkqrTE2l59Cx0AKcrSoz637BtEewZF0DFZlcYbdHjplji150sCygNewi5a17RbBv6IImND8
	DFyFmkjhF2+gOByyrdg4kcAVgEbvThrr5rEkebazMVsedutR1kNCsMwEn6B+KgX7Wb3fR2yRH7j
	RE7TF1wM73H9JNXn3w/fpSl1C/SYnx7rdIRqOUJBYfqDttM3gxzJIBqlyBDqw7c1uzZEYmH+HBu
	v9o+dQsKbRKEgAZnuBpuJToAi55lSJpTwXmOsZjVb1WYa777l2FpCh48mzGOdB+s1OiPdOOuIPS
	i5VHhxr1gvpH7Xy0oWQX88qVvuWBGTL3VhIu1Itmjjy0Y03RD5owIidt+Y3W6vI4HzvqrgdBdhG
	dXqTt555QhXbZ4AxZZ3TmmZ3g09M3FV4ej/131rY8Fw5xHDf41F5I6OhSN7YmquDGniw+ADXtS1
	DFOpgM352jHxsUnRlMaS2ER
X-Google-Smtp-Source: AGHT+IFZOrpXp56epHL1X98t6DOAYK7zBQxfI82+mtrgAuJOrnS/IYyJJfXjnl/8TTCjWQu2PNtUVw==
X-Received: by 2002:a05:600c:4e46:b0:47d:3ffa:5f03 with SMTP id 5b1f17b1804b1-47d3ffa6713mr25858045e9.21.1766598738149;
        Wed, 24 Dec 2025 09:52:18 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a4651bsm140167935e9.7.2025.12.24.09.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 09:52:17 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/6] Add CANFD support for Renesas R9A09G056/057/077/087 SoCs
Date: Wed, 24 Dec 2025 17:51:58 +0000
Message-ID: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This series of patches adds support for the CANFD controller on the
Renesas RZ/V2H(P) (R9A09G057), RZ/V2N (R9A09G056), RZ/T2H (R9A09G077),
and RZ/N2H (R9A09G087) SoCs. It includes the addition of CANFD nodes in
the respective SoC DTSI files, as well as enabling the CANFD controller
on the RZ/T2H and RZ/N2H evaluation kits. For RZ/V2H(P) and RZ/V2N, the
CANFD controller can be used on the PMOD connector using an external
CAN transceiver.

Note,
1] This patch series applies on top of the series [0]
2] The CANFD DT binding and driver changes have been posted separately [1].

[0] https://lore.kernel.org/all/20251222164238.156985-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
[1] https://lore.kernel.org/all/20251224173324.3393675-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Cheers,
Prabhakar

Lad Prabhakar (6):
  arm64: dts: renesas: r9a09g077: Add CANFD node
  arm64: dts: renesas: r9a09g087: Add CANFD node
  arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Enable CANFD
  arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Enable CANFD
  arm64: dts: renesas: r9a09g056: Add CANFD node
  arm64: dts: renesas: r9a09g057: Add CANFD node

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi    | 60 +++++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi    | 60 +++++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi    | 31 ++++++++++
 .../dts/renesas/r9a09g077m44-rzt2h-evk.dts    | 21 +++++++
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi    | 31 ++++++++++
 .../dts/renesas/r9a09g087m44-rzn2h-evk.dts    | 29 +++++++++
 6 files changed, 232 insertions(+)

-- 
2.52.0


