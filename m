Return-Path: <devicetree+bounces-233745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFBDC25228
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:00:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DF4154F7893
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF0431D75D;
	Fri, 31 Oct 2025 12:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DkHVekZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DDA340A41
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915367; cv=none; b=Wozw08TpXaz2kBTpGo/GWtcix/qAD1BU1wOeaNDFbl6z8/LcwJ1QkQ5vdQXcyIhztNEc751u7gc3CkwmWWvoTEbo/bwEztYWHlMWGJqYWYwVXPaewwM9z7EHenBNn0wmGTyUMmhGfD15HW6WoaTfma8X7po9ZEKMkjj8vZEBdOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915367; c=relaxed/simple;
	bh=5p1LeqfmmwFaeenEnSkkkwhzGqyUgPudlC9tgJJ0jsc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YkRPdpYI8TD0Gb6c8gw/YrajhxsEBa+nIZzBmi7WQH0ZfNqoYYg942CFQLeseLyPIJgwlTMEQ7iJ1U5tZ4GtVzmeZLY3Y3UHkiSEC84UoIrBEL7ONCH72PIV9rbf4A6to2z5H6DEbTJAlZ0iD+ulSu15+6kMojF+d1h7H9Dys0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DkHVekZx; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so17861035e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761915363; x=1762520163; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cSizeuZT4cpU3hNiP/rAVuNIA7WcfkZd0/3ee9GQoRM=;
        b=DkHVekZxYsIHEKdYlAMZ7F6bfAVEFc0Er9nNl/RYgzkOO5wgMM8RxH2HGBCehKP6l4
         Why2xa2PYnQK+Rt558m/Q41061Iu53f/jSHdMq90772oDde+ixRJ1ar8lvSMjijR+iCL
         YnTGiqAYdRee8bBSTBcUybAgijTkaYQYKi2J6BKa3nJzBx2ZOBtlVlpabvHwPH/RreU1
         Te9LDH4kwmdQSKxLQi35RqwkQNCHZOIWt8Nx7dcjic0rO3gUbsz/HSwkWJNTbEuueIrr
         UvS/xBEU1KfpT+PUItslvFsVzFaTvS9yxC6M2kYjzv5L03iKgjUzCbFjeYjB+G/2+FiM
         hDCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915363; x=1762520163;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSizeuZT4cpU3hNiP/rAVuNIA7WcfkZd0/3ee9GQoRM=;
        b=etumF6FPAEC7xQgJkPr6ZW6cP7pAq8JqIWbkto0gJHjtF8NXjPcEpZ3NNohM/2SqrL
         P7fdBh5O/fvgeHJJjkv3OEypRuEn5r4LE1mFo+M+eG2lMzrOG5ceI3eind9DPz2fiahG
         poNet3RSg/+vJl22uVMpt1SaDXbUJKIhR9RdRQxSrg94OZFJ9gCPt9AN8EA4lfjPCGqi
         gMbFYvBBGfht40O3/6BBhy3Kunhi4H3cyYPlBKiNiDXlxzssjJb5+1W1KjFVo8MSAf8b
         CRWQd90KtRNNR3yclq5F6ieS3BuSkSayyQvBrDgQTs1HmeuVOU2OHkSo/n1tXWHettHu
         qHaA==
X-Forwarded-Encrypted: i=1; AJvYcCUrbCz7DBZpHmSuq6JJRt/JD8WaaUKY7OVStS7ZqJwWBM1ZD4FD4Kf09F8GU284GQaFFMUfvr/R7lfc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhb0TvyTrl5blkiVjm35ldbg8FjhQhVA229s2+T7gPBhUPECLb
	BQRPndolXaJz6WnzSZx10O4TxEXIH3RE9jwL0hZEygGgrdYggmTs97Qi3349jPvcTm4=
X-Gm-Gg: ASbGncsxAmbIT8Xsr2boo+WaYju4IlcMhmb6zKEM/RY3GXAcpCRpsjyPd8pYdJFcYhT
	vNVRVcBWt861m+q2I+xhmWq8t4ZEBbDrnTngdGgD3lBq5KAwX1ZSxm2OcF87baSZXu4jYkm2xnz
	iJHjUh2sDhRiC/8PCEjYDHMuHobsZRlSA/KLcuj+Mm/BCgs2HR6bOa5fSWJl7IYoqtXxTAyA3oy
	wfXQqIFYRSjYuPvrd7SDW7OybG+lvZmr5Le0xOvtiYa4xYRHqkIV8Sm7xOfNB0K/5inC7LFh3j9
	Uc5GE0wJDyMgiXJqejMDDWUa23a9OkQ51CM1VhAkdLHrYMncwnmZLhZ9g5dF+r3zMOqzd0LAH0Y
	ZdzX+IqJuzrKkbBsLxA+S/UJ4vODFpKX1FoIn+p0DgnMsRjHCetxM2MhttMRfuzvEyISRvoaZWO
	eXm/NoHN19vy6hWJ0cjkeQZLockQgHJCsa3J247OfKERSt8mYLMm9hgM2fl7D+lw0=
X-Google-Smtp-Source: AGHT+IGWxYF93lfuQ/cW7BRqRYwYwuobMFF5l+VG4Chs/3oiv4JkKC1iwBzuzNb9Up1q3LYo95lusA==
X-Received: by 2002:a05:600c:a088:b0:477:19c2:9765 with SMTP id 5b1f17b1804b1-477307da91dmr31824705e9.4.1761915363285;
        Fri, 31 Oct 2025 05:56:03 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732fe1075sm31814585e9.11.2025.10.31.05.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:56:02 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 00/11] soc: samsung: exynos-chipid: add gs101 support
Date: Fri, 31 Oct 2025 12:55:59 +0000
Message-Id: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN+xBGkC/x3MQQqAIBBA0avIrBMcK5CuEi1ER52NiUIE4t2Tl
 m/xf4dGlanBITpUerjxnSdwEeCSzZEk+2nQSu+oVpSxoULpEhf2MnizeWtssDrATEqlwO+/O68
 xPkTejqdeAAAA
X-Change-ID: 20251031-gs101-chipid-fd84da8afa2f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761915362; l=1738;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=5p1LeqfmmwFaeenEnSkkkwhzGqyUgPudlC9tgJJ0jsc=;
 b=d+BPbUINRjy4l2Ym1VjrE6HaCPsue9Nyr0tngMPGtDoQTB20S2dUN9hf3AEOOwYRtOSMPMOd5
 AEgHi19masrB06nuIdc/Jx2kl1prsuWCOWbdWaO8oCSDDIa9mNVnt+f
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The patch set has the typical dependency of the DT patch depending on
the bindings patch. Plus, the dt patch references labels from the
efuse node, thus it depends on the bindings and dt patch from:
https://lore.kernel.org/linux-samsung-soc/20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org/

GS101 reads the Product ID and the Chip ID from the OTP controller
registers. Add suppot for Google GS101 SoC info.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Tudor Ambarus (11):
      dt-bindings: hwinfo: samsung,exynos-chipid: add google,gs101 compatible
      soc: samsung: exynos-chipid: use a local dev variable
      soc: samsung: exynos-chipid: use heap allocated driver data
      soc: samsung: exynos-chipid: refer to match->data as data
      soc: samsung: exynos-chipid: introduce match_data->get_chipid_info()
      soc: samsung: exynos-chipid: make asv_init opt-in
      soc: samsung: exynos-chipid: add support for google,gs101-chipid
      soc: samsung: exynos-chipid: prepend exynos_ to a method's name
      soc: samsung: exynos-chipid: downgrade dev_info to dev_dbg for soc info
      arm64: dts: exynos: gs101: add the chipid node
      arm64: defconfig: enable Samsung Exynos chipid driver

 .../bindings/hwinfo/samsung,exynos-chipid.yaml     |  51 ++++++-
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |   6 +
 arch/arm64/configs/defconfig                       |   1 +
 drivers/soc/samsung/exynos-chipid.c                | 163 ++++++++++++++++-----
 4 files changed, 186 insertions(+), 35 deletions(-)
---
base-commit: 73f7017e663620a616171cc80d62504a624dc4de
change-id: 20251031-gs101-chipid-fd84da8afa2f

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


