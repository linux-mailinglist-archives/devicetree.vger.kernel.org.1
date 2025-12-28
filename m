Return-Path: <devicetree+bounces-249958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 754AECE526A
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 16:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3D7C830056EF
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 15:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B0A2D47FF;
	Sun, 28 Dec 2025 15:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i4kIyy1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93692D46B1
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766937541; cv=none; b=Sxt4BAu3aPcU/4M8QSd0Oe9XMkEyr4SJhXnHaAP4tm//gDjgLvm9+0p2y/P+EID/XlliDQOdf4zU58KOpWgiex/Ra7CrDuadTD1zrmUDB37qTvd8QNnQwo4PTRu/+duzHYLR2EjyJnPibWrLA03xZNUVVsyHCLh9TrV4RIt3jgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766937541; c=relaxed/simple;
	bh=sOs+xxjOAth5SinqEDNTW5BavAEqES60CIzgUrc5z8o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Es9Aqzpi4RmUegwXs4S134NBTMF7M7vDmR478/gYs3FYGvdEaSc74U3b3lsUa59EF/zN+XMAVz7oIc+nkxM0iW/9MGi9eMYCLCsP5+Ojmd+JAMRs0o14OsbEG0yHBCTKjXZiK0p+d4MFWUgcw2jj2pfAQQhldgqzPQnYP8v9244=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i4kIyy1O; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7c75fc222c3so3933161a34.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766937539; x=1767542339; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Apfn0KmQlrxsfwtcbU9O/5I4jLFTnnC953VYvTwKvak=;
        b=i4kIyy1O9q+xVPl+fM3ITmhjamjf0wx+V3wIF1BBRaMWkh2E/O4oqdmSJ03ROI9wD+
         e+oJ4fjLnHd7sMlU01taVK/EfNuuO6PYWWqv5pd9AL2U6IhN9Wigkwx5vG9c9qicFjXP
         8AmcErzFQrRdnrk6R893wotDi/c8bpoyJU3Bhh1gqmCuwnXxcPYpr/pLUkd7Az8WM0I1
         JJCesn/K595XG8NItMo61NFwcZU02FND9auOJDq+Jhsm7YBhu68pnGucCGh2vjnknSFj
         J3CiPAiGit0QXIPnT430eLqFv753VuzinlsmTEzTWSsAg6XbM68aiFC8lu2pKONeVLk+
         UAlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766937539; x=1767542339;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Apfn0KmQlrxsfwtcbU9O/5I4jLFTnnC953VYvTwKvak=;
        b=fI498tGgsbowun8BkfjwioETHip3c9Uce9W+mwPCM5jpIDVkQFdqQn3FWPnCLCe4rl
         p03Z+05z7MnKY5d2Nj54tywRD4gHF+qBQKhmd/J1zhchgc3XsDMt6EqDqLiU1n+WOU3V
         w5FgcnUUOKLC0WnfFUvcEgSuqs3Ej1ukAWoOyK/Z65mLtoaeW9mc3Gxe8Q21Ax0L3ZtA
         nzlSXiU3yD1900AFzXKC+A4s05tg3pAw7INDP+Hz6cLW+1I/wNraoXabPq43I2oN0vpA
         dj5CU1eE1ct7Ja/KLhegmNZ+2PqOc/VdWMVSQ/K+d4pGiOvVbLQyRO23/l+hJhoECskL
         HZ3w==
X-Forwarded-Encrypted: i=1; AJvYcCX06tBcpU8HC8PgZbwIiF21Jlyu/CXjR19v62zvPgFPW6pQm16AYG9xSzx97ymYvWpPp5ZG2vTdQDtX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/KFcWpxZjC58P6tgXPgq5wCl64KlKHXo1bu6o13Gjhz14rtYX
	3umvljoSz5YVBDmLfO9u2Y7cFvP+Fe1F64vaCyaZwWVGPMTi8vSAUdZt
X-Gm-Gg: AY/fxX7DvHOOcqHuKGEUOuvSWoHtvlDq/W3S2Lu7wybeZ4XLf1r1uL8z0y+UvjCe3bs
	e/FoyUfmvqsxOc5TlIYLrlxmBLIprMMNV8JFWiKKV2pjhH46Rt4MaFhjD4O1QLOu7IXjIqjjwhn
	biNwxN9cEU7JtEpz+eBFQaOgnWyZfbbX2Qi00FwiFSJ+46QT0nog6jQBglzanFl2gfLHBnHdEgE
	+7OjRVJ1LEbxNQyYEXlnZxJBqgto77PfS4nNkQxzL0RFPy0HGlCbeLFmWO2UAKn0yC/v154lOw7
	YRABJkNaIRwJJ+/kEk80/Jwc/SJFLmpgMsjFaoekO+4VZmN9J196MAsqhNbo4KQvomtWV1ReR4a
	32lKFVhX5T99CBfo39S8HY5Z1os6Gt4zVorAmnrFoN9tdcbXk/97XbNPGRVTJgzNzroRv4HyIoy
	bufawjVoPuKtASlXAHeiQkV8yggddp2ke+26PLjkETHX2rhbPAvmhyiwDzq+gMf8hunNeQMC4Pj
	KoKkktxp4D6hoGZyfHThJ6SbXXAzktFFuHlaqE=
X-Google-Smtp-Source: AGHT+IEPnuAVgrQlyTcCck/1MSYHWZ1binnrypX4kIGAcjnHnqwbQcKWspQ2QoMzsrmBQt4uFsy7cw==
X-Received: by 2002:a9d:4798:0:b0:7ca:f4e0:9ca1 with SMTP id 46e09a7af769-7cc668e14bbmr12009180a34.14.1766937538664;
        Sun, 28 Dec 2025 07:58:58 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc667ecd6esm19004434a34.25.2025.12.28.07.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 07:58:58 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jjohnson@kernel.org,
	ath11k@lists.infradead.org
Cc: johannes@sipsolutions.net,
	linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH 0/2] ath11k: support IPQ9574
Date: Sun, 28 Dec 2025 09:58:50 -0600
Message-ID: <20251228155855.2118792-1-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This is my attempt to make ath11k work on IPQ9574. IPQ9574 is intended
for wifi-7 devices, so it seems the exception rather than the rule to
pair it with a wifi-6 chip. That's exactly what my Archer BE550 does.

This consists of a wifi-6 (QCN5024) chip connected via PCIe to the
SoC, but exposed to the OS via AHB. The Q6 firmware [4] requires
remoteproc support introduced in a separate series [3]. The QMI
firmware interface is very similar to IPQ6018, such that almost no
new code is needed.

I am not including the wifi@c000000 devicetree node in this series, as
it depends on nodes from the remoteproc series [3].

I have been successfully doogfooding this for a few of weeks in AP mode.
There dependencies to this series. [2] is a compile-time dependency,
whereas [1] and [3] are needed for full functionality. I was adivsed to
leave [1] and [2] as separate patches and not add them to this series.


[1] https://lore.kernel.org/ath11k/20251206175829.2573256-1-mr.nuke.me@gmail.com/
[2] https://lore.kernel.org/ath11k/20251228151408.2116108-1-mr.nuke.me@gmail.com/
[3] https://lore.kernel.org/linux-remoteproc/20251219043425.888585-1-mr.nuke.me@gmail.com/
[4] https://github.com/quic/upstream-wifi-fw

Alexandru Gagniuc (2):
  dt: bindings: net: ath11k: add IPQ9574 compatible
  wifi: ath11k: support ipq9574

 .../bindings/net/wireless/qcom,ath11k.yaml    |  3 +
 drivers/net/wireless/ath/ath11k/ahb.c         |  4 +
 drivers/net/wireless/ath/ath11k/core.c        | 82 +++++++++++++++++++
 drivers/net/wireless/ath/ath11k/core.h        |  1 +
 drivers/net/wireless/ath/ath11k/hw.c          | 51 ++++++++++++
 drivers/net/wireless/ath/ath11k/hw.h          |  1 +
 6 files changed, 142 insertions(+)

-- 
2.45.1


