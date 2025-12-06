Return-Path: <devicetree+bounces-244938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DE68ACAA57C
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 12:40:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 59ADA3001BC4
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 11:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 344E12D94A4;
	Sat,  6 Dec 2025 11:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="keEXNzYF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AD826F467
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765021235; cv=none; b=VnndXFbTBu5kFHSWqNOOSbG6bXDoi88jRw/ga1HI3Fp7d1H0imJf9EGuTTWW0M7mgb761OJh2DHnBvxdmtXS5A4HNclp2vgZe+m4xDsbj3Xt8bvG3dw819pNJJWS8gVAEb+5RrXdbFK2S1cWHRNRunloAduGaS2mEn6YpoQtA94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765021235; c=relaxed/simple;
	bh=/ahlrs1yQ6z3JUaM/Sxqc6wFL/tkbsIVPryicW9j2H8=;
	h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type; b=EWR/ZK+rMq24MVJqmSIIEcyTE23i3ZlHeCMHZBKKtd/AWg/i3ycWZG5nbhb4rdDUTSHNcPH2C0OFREZiG1g4xnrDj5JySCIOOG6MuUFK7a4jbAaXR727laMa3wR2Xz/N1t6625iruSrSAH0Nxs0GLB5ai9FjAQRWXXK8YgDVJag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=keEXNzYF; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b734fcbf1e3so630657866b.3
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 03:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765021232; x=1765626032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=iiDwBzndnl96hSb/q/NLb44uNYBwPkjb4oD5H7teprs=;
        b=keEXNzYFCGetfd0TL3er7VFWh/bD2K0y2SbL5gfpFjmgsoaX8NKj7sQdD7BJGQKZKw
         2y4xVU5ELHNfB/Kfo95ca7rQSkBej1ZecuaN5qEZX1rz54HMBR461npAgPu6WGxjD1MC
         bewLJx4M6bNJKmQXXlMWwJMpL5NPWZoEQrh5w4Gojv2TIFxlievDXsYVpdNPmffWpqLP
         5GMgb3Cy5yiN1g9psvvhyixKuEcbzg0ivxThTUQ/Cyh6pnArWCtxCWm24GKI2sm4lBcE
         x3gvUPsYP9nf5RxlUv7MKf83Y3ij+D/4rWFPf3v1zfVWw6TTy4fXHusFxrVNhlNyPkCW
         kQpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765021232; x=1765626032;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iiDwBzndnl96hSb/q/NLb44uNYBwPkjb4oD5H7teprs=;
        b=DpIb6M1DWgJo8gEAv0P5ZBR4SzeS6QQa+8ISYl1fT3xr+rrTqzSTw9TSsXfUiUO3ma
         Tk3FQ4SRujbe030Icy25buYIRVXBxgSKUsRQlr0Ri4B1eciFO50MEG6jUtmEk9YhLxA5
         wTWONI5Tlgu77903yvnE4yycv528gcKEkd4aw5Uc8TrmMh3tFs4uRSl20KzfsUHdT4EL
         Kh4fQoJC43LmonhAEicYQaGA8jfNRexQAK/VS3XRRX+/eAzdVOc5clSr6yWhiM6je9Tv
         ZdJt2xb2BmXdrGwDLogBHk1/ohMC2mRq5/7yDvzL/TPPU1S/S+QJNDr8Kz44bBUyaTOK
         pUYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEDJoOHcnWZeeCalfK4YJULm9Y/2BEQQ+zWm0YYC8EQJikRnZXWEzWLgpuEuA2JP4FlMWpBEGsB03L@vger.kernel.org
X-Gm-Message-State: AOJu0YwzoBL/MY7BTVGC9Fu+0VaAVxSORjH2rUNeRP1lmmp+ZAibotRz
	Whds7kazb+LWiy/qQi5psincce5Q89/xAnZVocvKeLES2aqsVanu5Sew8Cih2HX6oCs=
X-Gm-Gg: ASbGncucXofxghibtKCBnTQ5gqXHa9V0GvgcNxepwZWSV/LpTkRnYqCSDmqDutMNcmK
	rVOgxq+uZ0NqxPYRW5V4ah/o2dMm87wzF/Wzz/RtJNrxJmddsfhXsM6T3vsSDaWY26z21zrdL/T
	6uA0nOKeMRfP48quh+w0n9p/sYXByismowxsv13qc3QQvbybaNqE9suX45X2oC/t8NjlDhmhcJv
	Zbd0UWUEtdjSPCkgJgS4KZg+qloGY0ZYdx63EmbTs0FghRgnX21GoTGNxae0ywrVDUIC1LmZFuy
	/wI38kO6KR/kw+VY6p8CIxDdrtNeJleQnFtyGCpZhCogytycpJawx+ecZ5cffLCpoGbrLAL2TzX
	pq4W9u9nuZVr9mgtW7YcMp0N4rE+TLovmbofI3PQ1500mfDr4+UsshZvRO73voSfiEifkB8piD+
	lVX+gC9zGMFwAXcQY=
X-Google-Smtp-Source: AGHT+IEutgnW3ziDYssPsy/rObFW3KXEtxwegCsIX+tFKBiL4raHPJrNmS+xnXzqQl+ZEEwHsCOK3Q==
X-Received: by 2002:a05:600c:354d:b0:46d:ba6d:65bb with SMTP id 5b1f17b1804b1-47939e4a8e3mr22685325e9.31.1765015323917;
        Sat, 06 Dec 2025 02:02:03 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310c802bsm126055205e9.6.2025.12.06.02.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 02:02:03 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] media: rockchip: rkvdec: add support for the VDPU346 variant
Date: Sat,  6 Dec 2025 10:01:57 +0000
Message-Id: <20251206100158.2041439-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This series depends upon Detlev Casanova's current v5 series for VDPU381 and
VDPU383 support [0]. Patch 1 is marked DO-NOT-MERGE as it contains fixups
for minor nits spotted in Detlev's series. I've flagged them on IRC after v2
but the messages may have been missed as they are still present in v5.

Patches 2/3/4 add support for the VDPU346 IP block used for H264, HEVC and
(in future work) VP9 on the RK356X boards. VDPU346 appears to be a close
relation to VDPU381 used with RK3588, except with a single core, output
limited to 4K, and minor feature differences, e.g. HEVC level 5.1 on VDPU346
vs 6.1 on VDPU381. To handle differences we declare a new compatible.

The device-tree changes are derived from prior-art in Detlev's patches for
RK3576 and RK3588, the vendor kernel [1], and some earlier patch attempts
from Piotr Oniszczuk and Diederik de Haas.

The register differences between VDPU346 and VDPU381 appear to be minimal so
we currently and intentionally reuse the VDPU381 h264, hevc, and regs files
to avoid duplicating code. If further register analysis requires separate
files for VDPU346 the refactoring to Detlev's drivers is a little beyond my
current beginner level c skills. As the overall minor changeset to VDPU381
it would be awesome if this series could be absorbed. I had some discussion
with Olivier Crête during VideoLan Dev Days last month that suggested this
might be possible? - hence sending now. If not, I'll wait until Detlev's
series has been merged before sending a next iteration of these patches.

Testing with Jellyfish files of varying bitrates shows that RK356X starts
to experience jerky playback above 10mbps, which seems rather low compared
to RK3588 which can play 300mbps media without issues. The vendor kernel
documents 'advanced' assigned-clock-rates but increasing them does not have
any obvious impact so the difference looks to be something deeper. NB: The
same is also seen with Detlev's patches for RK3576 (max 15mpbs) so further
or follow-up work is likely required. Despite the apparent limitation real-
world media from my collection plays well.

[0] https://patchwork.kernel.org/project/linux-rockchip/list/?series=1015221
[1] https://github.com/rockchip-linux/kernel/blob/develop-6.6/arch/arm64/boot/dts/rockchip/rk356x.dtsi#L1539

Christian Hewitt (4):
  media: rkvdec: minor fixes for current DETLEV patches
  media: dt-bindings: rockchip: Add RK3568 Video Decoder bindings
  media: rkvdec: Add support for the VDPU346 variant
  arm64: dts: rockchip: Add the vdpu346 Video Decoders on RK356X

 .../bindings/media/rockchip,vdec.yaml         |   2 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi |  49 ++++++++
 .../rockchip/rkvdec/rkvdec-vdpu381-regs.h     |   4 +-
 .../rockchip/rkvdec/rkvdec-vdpu383-hevc.c     |   6 +-
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 110 ++++++++++++++++++
 5 files changed, 166 insertions(+), 5 deletions(-)

-- 
2.34.1


