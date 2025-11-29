Return-Path: <devicetree+bounces-243161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C64C9469E
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 19:52:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E74594E06E9
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 18:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8CF024E4C3;
	Sat, 29 Nov 2025 18:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O6/1zxlJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C8123EA8A
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 18:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764442329; cv=none; b=kA1EpZXnCQM2QM7sPDdlLadaWt3s2wOkUbDFd/eE6aCT6NJcQ/WqdU4TStIW5x9kPe7ZhS+5KxbEPHKO3sI1mvzRoKZm119ihQYoyqa3DUts16DYreVYNHc5kh0At2LpzTi21t8D+qImHdgJDM0DLywRUgVYnVPrNj+D3Qrc9e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764442329; c=relaxed/simple;
	bh=EAj4YR59DFcx3E8WLT/dTjKozDTXEVhEmhSxMKw6G5k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pU6jVG0cJTMFBCQWb2qRWPDSsR7MepGMupmAvnRkn7IO7q5u8rA6KIyuT0LZesh68nmLRu0mjA3rr0f9k1R+oJMFdOZTG9GIJ/f+n09FoCQg10JnMZFjHFfOh4Pop8gFRidCr3qla9bI70KaG7I6pPP6rVcq0sro3WbMuZwJzck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O6/1zxlJ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42e2ddb8a13so46035f8f.0
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 10:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764442326; x=1765047126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rh+9SxG3Y37TCuHfuodKq8qmyi4CIAVj61rveyWfT/A=;
        b=O6/1zxlJ8t1d2hle+JF+yx1d5qT7JBMLU2lBQhC8Uphe58HYc4RcW1nhNYfkme5rld
         sm+siRyjzbLCYRv9cMBf94qeF/C+Ke94k8TkQCnvO8pCFj5vWVdUlstu/d7pQGxIesrL
         Fj57XttjWtqtpFEFU0xIv5Ch6DxD9NkW2Z8JrE0OmqoiPrG/s+H6KFD6irZo54eT/4AB
         eeWdVlspdoQyP2duRQ7rOew6IhpXXrB+HoKQq2DfKTC9pll4Z/+W0K6teLDluGdbtGk8
         /eXuL7uTw3wt+K5mpS1eTV2E4Teks6X9rM6BLyQ/9db10BdmliaApBnLwQkXjM0Q5nYi
         2OGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764442326; x=1765047126;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rh+9SxG3Y37TCuHfuodKq8qmyi4CIAVj61rveyWfT/A=;
        b=girgBYJGcyaoa7aopVAUuEL/q5u/4skChGS1EhT9wAacoEROC3Sz/Ieuu3QfbAdzGL
         q/rwmsiTM/bctNXPvog3VwU+ahTAEO7LJfYHX47pR5zaHdauH+G+Z0sfbhrlLdqd3wt/
         ubaGRH9MSr+2tFeGZ2AY3nip97GlABk25B2a1B+ijT/wNZuRdpRejfvcu+84EcKZbQx8
         +JJsxfLdnpNnalZJUHEClJpmdR6+vdjAgz1WsY5QRbfY2UEwXjb7Qu75/ysNwEk0V47j
         7H3jexfa83mXfsQUje0gsyp8QVm8y3O7khjn27aiHF7M14wtU+TN2Dpe7Gk7+Ikop7f7
         r0Cw==
X-Forwarded-Encrypted: i=1; AJvYcCXM5Ff4rB0moWgmTDEJU20ntpd0ERu12+/MuXo+YgQsPGUmkpv/YRVCra32KfL+ej65h6i6Tuzm8pWE@vger.kernel.org
X-Gm-Message-State: AOJu0YzmLDEpF+GFRJKdRc+VRlOgj5xJYzMkXdU8JuGNwvReMwVRnn0K
	A6zGGjF5S9ys2x48BbDLkbTpjxmRmkPcHm+fWbMiRmdv226pgwZCpuGf
X-Gm-Gg: ASbGncuRWuvSPV0rthtgX00MwtL+fvp4igYMNSrLYnOr6cad2/Mh1elePMenDtweC+T
	k34RBb1NieBNG1JnvZu1XK2SE8z5NP8HJ9Ro+JuK2p1o2PgBgihFtGJlVtGxpmxtci9rH/IpIT5
	IxAS/iViUYNnbUb2hH0yVFXnKfkYZbo6/cVS7fedw4qiAR1UoCJpzi91f0Y9LbxwhTuOh1LLuoj
	1mVtZT862RvZWC0flqXHyRCLp4QYqiAXJWGktta2J8xbA1pHv5jna0TctV/HKVA9B0Nf2Zdp8en
	znHvHSlnYLyD9GnEriQoikORKJPMjSgdWOQ8OjVTpK/mn4Omo80dc2ctHrDHWrgAjU8PBh63CGH
	6i+aiX685/SVRWE1i99IMbt74sHYwAANknbDQurJaOa/RBpgdew9mvNBKQW6F9c23lVVB5eN2IS
	5rURlrmJhgzdCHBLUsj32Io0kJGzVSG9aFuvqNbaF5zQP7TyXm5OCBt6G3kfxyuRM/5Mrz4v4Aj
	8Vnideozb7ftTMM/qArKdDJK8mo6W8=
X-Google-Smtp-Source: AGHT+IEch5XdeUdr7mXT6sdy54b/BDLGlbVtRraVRhRpYmFhS3inVBTeg5/xHMV5vWpNer4OItr+YQ==
X-Received: by 2002:a05:6000:40e0:b0:42b:41dc:1b5d with SMTP id ffacd0b85a97d-42cc1cbe330mr33382500f8f.25.1764442325934;
        Sat, 29 Nov 2025 10:52:05 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d613esm17442067f8f.11.2025.11.29.10.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 10:52:05 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 0/4] Enable RSCI interfaces on RZ/G3E SMARC EVK
Date: Sat, 29 Nov 2025 18:51:55 +0000
Message-ID: <20251129185203.380002-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable device rsci{2,4,9} nodes for the RZ/G3E SMARC EVK.
Patch#4 is added for testing BT with rsci2 interface on M.2 KEY-E with
the device[1].

v1->v2:
 * Updated the compatible from r9a09g047-rscif->r9a09g047-rsci.
 * Renamed clk from bus->pclk
 * Rearranged tclk{4,16,64} clks.
 * Added missing irqs aed and bfd.
 * Used hexadecimal numbers for module clocks and resets, for
   easier matching with the documentation.
 * Collected tag.
 * Rearranged pincrl entries order by port number.
 * Updated the comments to reflect the board signals.
 * Added missing pins CTS4N and RTS4N.
 * rsci2 is guarded by macros SW_SER2_EN and SW_SER0_PMOD.
 * rsci4 is guarded by macros SW_LCD_EN and SW_SER0_PMOD.
 * rsci9 is guarded by macro SW_LCD_EN.
 * Added uart-has-rtscts to rsci4.
 * Dropped rsci{2,4,9} nodes from renesas-smarc2.dtsi as RZ/G3S does not
   have RSCI interfaces.

This patch series depend upon [2]

[1] https://www.embeddedartists.com/wp-content/uploads/2021/05/2AE_2BC_M2_Datasheet.pdf
[2] https://lore.kernel.org/all/20251129164325.209213-1-biju.das.jz@bp.renesas.com/

Biju Das (4):
  arm64: dts: renesas: r9a09g047: Add RSCI nodes
  arm64: dts: renesas: renesas-smarc2: Move aliases to board DTS
  arm64: dts: renesas: r9a09g047e57-smarc: Enable rsci{2,4,9} nodes
  arm64: dts: renesas: r9a09g047e57-smarc: Add support for WIFI + BT
    test

 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    | 220 ++++++++++++++++++
 .../boot/dts/renesas/r9a09g047e57-smarc.dts   | 107 ++++++++-
 .../boot/dts/renesas/renesas-smarc2.dtsi      |  13 +-
 .../boot/dts/renesas/rzg3e-smarc-som.dtsi     |   4 +
 arch/arm64/configs/defconfig                  |  26 +++
 5 files changed, 363 insertions(+), 7 deletions(-)

-- 
2.43.0


