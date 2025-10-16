Return-Path: <devicetree+bounces-227880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AF40FBE5615
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:25:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 39694359A43
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B497C2DE1FE;
	Thu, 16 Oct 2025 20:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z/qiCvfE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDE3298CBE
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760646345; cv=none; b=VFaHybL7ofO+HLvG6fE4p+PzNN2mrETcF2/numOcnCZi9XqUppG5J9SuF5MyqKbqOC/iRsKCQm9gHTfo4wBi1K8qIzJU37EmDbdPq2QVk5NsvMrS5WxPid59nUK0HjrdkVR32lW3ig9/IP8PS6inMTbspDaxnAGSHABvKxlwOG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760646345; c=relaxed/simple;
	bh=xzMCfBofaf4XHkgbk8F4fMxam7uappNgmG0GSVXRwoY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kGjswnVUfbChlv5bo4LD7mySBDK9AxwHtXWkB8nMiPTfuL0vyKf9N97iEp4Jf9ybIbCYPvT6RkEoUUWZMnkCqI2V47Mh04cvB0CeARkZ1MneKiiSdDXqXxdMrhdSbAPgO6p2r9avhEKs9LtafY+dRlflP9VTTIxg+0VU8mB3938=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z/qiCvfE; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b554bb615dcso854803a12.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760646343; x=1761251143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5sM2OUSBW/7DJRiuJ3co/xCNYS5XBVYrFpTjYZpSMgI=;
        b=Z/qiCvfESzFYw2aUKPefxj7bcpBv14QsgXpKcLUPIQ+zM6H3eq8UXMPqBVQGUZpIho
         4UZL8+ecSkwlALhAaH3It57NCB46Na0V3ZgPzHV3aluhDKrO9Ud4EntXZr8vbZTYUwva
         Ar+Jgj13OKLaag7hRXyHyNsxgOrmSOg1S20JOZ6NgTmJ6jqN70O6UFitb6rCf4rhdLE0
         ygMP8muMfMS7qKQrEb1owCGGrn9QFBpLC1oYLXjUKfHP8ZpltvtL9xBpnswTQ/HSL5zN
         Ww+Eo1pUzmQy6tltZzYiGmjgJZoMmW8l1moCPUdxJFBpkUJ1ZnDEGOoKJctt5CrP9NHS
         Bv9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760646343; x=1761251143;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5sM2OUSBW/7DJRiuJ3co/xCNYS5XBVYrFpTjYZpSMgI=;
        b=Ng+h6w5iF3s7iCS8Wm1qU0Q5HAFYoVF4naYatWv186A6Ud4+D99t/07781YgPgbDnN
         28ftjuH3h3FI4SqolK16HleZwxMplWNu7VfGI+0Tl80TfF9aeKy9HHd4P35WDR9AS48q
         jF9JZfmia14BWe20BDXidKD2HaOG4PNx/v0eiw0wwiv0zICbtkjyjR4soLa1MMt3ZziF
         tFgUjQxeocYKPHC8Wt+dxe6uDnPvJYoZWNGdm9342IZ4Cqn71Y0RiZG0zT9F49oyOsZE
         wwCmvkc9eNf9zbA8ux8ZnMOTb7tr5oXUSJi1qx3RKVRzyvhMCMDwQajdIanUl2FZ5TXc
         RUUw==
X-Forwarded-Encrypted: i=1; AJvYcCVv4zOwWWyN6flp7LhoNxMmGKUKoEO1tBziGux3VqGiIlSrHW6geLEvLugZqWiRiMjixuRhQKh6Q7tx@vger.kernel.org
X-Gm-Message-State: AOJu0YyzGcD7wLPMm42Ej3jwIoqcuLsWQXkH9Bdt0gzf3BmJ2lEOZ/gz
	f/tFel+7EHDW4t/+gH51Hmsj3CGULVxoZjbgzmU/GgRkZTe1V3BHtidm
X-Gm-Gg: ASbGncuVxSvuPp3YNH3KpgXFgWcQgMt3kf2y4Rrn/AY9jnSZTUj5TcjnE0ME4eBQHkD
	Idt8Rbn+1OH1php6nlOrhfwzAoMhrv170+YlHILFwpQ0dO+1LsrOS3vdb4uzdOYQ7F2Cr/Oj+C9
	z9hWVi4Far2LlFWzA8alhnShHXkQ91DoRTubN7XxQ2CMwt7fKDeREkJErsNacgd+hO3SdqBx4B8
	JNODhaHd2tX1gf7/eMCTZqD9cUuX0WExsuHJnp/IfzDsIJMurq6mO03LRPouSQ1NMoqNDyWyZj6
	8kKdpSyNtmgwm1NqhJ3E30EyY/t8+HCn/0cpS1c+ICP6LJ8yNft06KWKYDVvs0CMJwj3LoDaE6C
	RFzss9XRv8XaozLt7jAWQA0ZjPAyjvRAobUQiUyghW6ap3Kai2/aEb0smBkTPHJ44H3/2OBGm0D
	2mxhY7k0b3Z/sdJTeT3aOqVw==
X-Google-Smtp-Source: AGHT+IGs54Upiel/Ao5NcK/hfJnpT2pOUEtODPp/RACbAL82uRfTJvEpomnmEP81ZtMTAH9e6PZGeg==
X-Received: by 2002:a17:902:fc44:b0:26d:58d6:3fb2 with SMTP id d9443c01a7336-290c9c89697mr14011435ad.12.1760646343364;
        Thu, 16 Oct 2025 13:25:43 -0700 (PDT)
Received: from iku.. ([2401:4900:1c07:c7d3:a396:54ac:a48f:c314])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099af9131sm39577735ad.103.2025.10.16.13.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:25:42 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/5] Enable Ethernet support for RZ/T2H and RZ/N2H SoCs
Date: Thu, 16 Oct 2025 21:21:24 +0100
Message-ID: <20251016202129.157614-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi all,
This series of patches adds support for Ethernet on the RZ/T2H (R9A09G077)
and RZ/N2H (R9A09G087) SoCs. It includes the addition of the MII Converter
(ETHSS) node, GMAC nodes, and enables Ethernet support in the
RZ/T2H-N2H-EVK board DTS.

Cheers,
Prabhakar

Lad Prabhakar (5):
  arm64: dts: renesas: r9a09g077: Add ETHSS node
  arm64: dts: renesas: r9a09g087: Add ETHSS node
  arm64: dts: renesas: r9a09g077: Add GMAC nodes
  arm64: dts: renesas: r9a09g087: Add GMAC nodes
  arm64: dts: renesas: rzt2h-n2h-evk: Enable Ethernet support

 arch/arm64/boot/dts/renesas/r9a09g077.dtsi    | 482 +++++++++++++++++
 .../dts/renesas/r9a09g077m44-rzt2h-evk.dts    |  70 +++
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi    | 485 ++++++++++++++++++
 .../dts/renesas/r9a09g087m44-rzn2h-evk.dts    |  79 +++
 .../dts/renesas/rzt2h-n2h-evk-common.dtsi     |  94 ++++
 5 files changed, 1210 insertions(+)

-- 
2.43.0


