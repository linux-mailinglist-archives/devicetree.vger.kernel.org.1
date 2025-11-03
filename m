Return-Path: <devicetree+bounces-234510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AE0C2DF92
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 21:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 09A014E751F
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 20:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F6F299AB1;
	Mon,  3 Nov 2025 20:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ktjiQB88"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C1B23EAB8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 20:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762200264; cv=none; b=QBLNjGLEYqus6YX7PgDhhPOFuIpiNhnM2MpIMk8cw6FEX1s7haBw4BhSmBow4ScQtZWFvwiJPGDyuX8FRpLcVnIhdEPOrMdyJJ97yUQBnuRPGUTkrFRiOcGynZgdl3Uy1z9Il62yCi43S1KFaDKGYszI98BXVrFAhvde87F8VNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762200264; c=relaxed/simple;
	bh=ln6i411kQ6CJHX3AEbJla0cNUW37Yxjo8v/tjCWbTrc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cIBoBfSYA1sf2ncxkq+1rdAdq8sj2EGI+1ylzjSG+MTaaybPFKlXHumBra4RT6pA9kToCNGhADLRui3l8kMCDgC249z48KoVoDKyDT7vdt/25ij0XAPTWigtC0sz0+bcP7+XpvHHh2w4N8vuWKpj5BFCnHV/65Lbnid+fcMuJHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ktjiQB88; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2952048eb88so49671145ad.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 12:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762200262; x=1762805062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K9PlQ6g0ZlyemXXjDDNmNoclmHr0fzKsjRa3xohO47M=;
        b=ktjiQB88mmnaknuCsG9RA9Ht01yuNbk/fd37aU0J+Rq2Cxnd9SgXMXVSs0NadS+O3x
         o3BwaSEUALHosZN0y28Ohes/+TKj1uScz4fvCdfk1pJwrfZq1xz/wlZhFowLYGU4A8Au
         FE1eTaamk+bpfS6Jg0rCfdjxOzwejHIbCYpm+FVJG29IrqdCDE09DxnBJdxD6AifQzj3
         XrgIYkK73YUOhndUmqi+Qo0ZZBIFbKA+u5uQkFhiQ/QSOhRj+LgBh631mQiCkdpdc9iT
         /+unyFuJqgdwyS4XBqtddSrdHd4mO/wvHRlVDlW/bbEZm3SK2+as5e6+VzE/qFzcfDih
         3wag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762200262; x=1762805062;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K9PlQ6g0ZlyemXXjDDNmNoclmHr0fzKsjRa3xohO47M=;
        b=QyYtGefv22GxVpd43Xbs/bxQvj2Zg+/MyKG2zKvbN+C/o2uqNVkWi44RgnFSQFyRu4
         WY1u/uMvMneZvIlvdyxXAs3sQtnBZSPGNMJKItWigEzOpCidIajMTvE6UkrEp/50Byzt
         a7BMHlrBjqXkhmlXUQbRA29xFdhQ5Ef4RIf79SdnuIWZtsS4YdD0268RQpe2WIHjTCH+
         8nPbJYRstP8KIfWZ4JHT+Llznoa4ohnfqItwcF9jyqIiYoivmBHjdrguAj/+C4ULztsH
         OFoL3H1tVqp8Qg2IuKUWJ1VqW7a44M2OuQKsatZkPqG1aHNfZ9weNTZUax9EIA5ktKKc
         DvcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVd6Ox68DF0rr1JmQx5/Kp6onryMXvGJSZBL4Z/tj5gX3BeYjMmsRUpOZnDTz0F0TLDsmGffLTk/0pC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+U2l1mYMV9eOdhBX9ovvV+iz/pIeAiWeqh5L/lMiehy9f3FzX
	thZre7WUVL8IK2tyEzQrTI0VhfkQppIkASSs4pYUoMODlveUMNsyNGb+
X-Gm-Gg: ASbGncuDLWBHHRvJAbagCB81Ekm0sLj2D0rOInWjwmhqxCV9gPrTiypWOoOCYN5OjQ7
	Q9lZVAJCHD0CbxNdo7I+QAXpuxTnhFclwQmChxjQ2xVxZpb49ADYjTcX/J9nXiYLInV/Acu8u0d
	Qu2OgqX4VyQ1x2dYSaLfqqnR0iY11ysHk43sPho3CWgI4IsHfjoMvEvlKaLHT8NnE6UjuGLvaRI
	TeFRJ4v6sTRMYKXjfA4aEm6hm9B4VInHEDbmIEem5kl2iuPsYN+DC/DmJGSvrJQczJiTFi5a2tC
	ZXWKcYaIpZupFjUrrbCO7/+kfGCH/EZKYL31cz2Gghb6P3G/jFdniNhjCmVArO0qJJVwNBDceF1
	3fSlnDvhU0TfvQqr52ykWoAKnVSH7TNZO5oX9t26lF0t8n9IkUEnUa5OW+PGK7/FNSKLn32VN9E
	k8BGz/DTXRfXngM4eUW8BA7WovREfNysk=
X-Google-Smtp-Source: AGHT+IHBzT0XgLzw90Yol8EUTMiqYk30dZ78H4h4McimJjXV0e24kxaiYrqwXf7YsQugI70u2j9xaQ==
X-Received: by 2002:a17:902:e74e:b0:295:8db9:3059 with SMTP id d9443c01a7336-2958db9335emr91532855ad.38.1762200262262;
        Mon, 03 Nov 2025 12:04:22 -0800 (PST)
Received: from iku.. ([2401:4900:1c06:600d:df45:8e1:7a61:1482])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952774570bsm127494895ad.99.2025.11.03.12.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 12:04:21 -0800 (PST)
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
Subject: [PATCH 0/3] Add display unit (DU) and MIPI DSI support for RZ/V2N SoC and EVK
Date: Mon,  3 Nov 2025 20:03:46 +0000
Message-ID: <20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds support for Display Unit (DU) and MIPI DSI
controller in Renesas RZ/V2N SoC. The first two patches add the
FCP/VSP/DU and DSI nodes to the SoC DTSI file, while the third patch
enables these components on the RZ/V2N Evaluation Kit (EVK) DTS file,
along with the ADV7535 HDMI encoder.

Note,
- The DT binding patch for DU is yet to be merged [1].
- There is a fixes patch for FCP binding that is pending review [2].

[1] https://lore.kernel.org/all/20251023213350.681602-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
[2] https://lore.kernel.org/all/20251103194554.54313-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Cheers,
Prabhakar

Lad Prabhakar (3):
  arm64: dts: renesas: r9a09g056: Add FCPV and VSPD nodes
  arm64: dts: renesas: r9a09g056: Add DU and DSI nodes
  arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Enable DU and DSI

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi    | 89 +++++++++++++++++++
 .../dts/renesas/r9a09g056n48-rzv2n-evk.dts    | 69 ++++++++++++++
 2 files changed, 158 insertions(+)

-- 
2.43.0


