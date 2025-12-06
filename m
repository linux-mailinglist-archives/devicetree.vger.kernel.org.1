Return-Path: <devicetree+bounces-244920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DAECAA416
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 11:23:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B5BB30054BA
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 10:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 741157640E;
	Sat,  6 Dec 2025 10:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XWzg3yuR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092484C6D
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 10:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765016415; cv=none; b=opey7EZ0dZLoFEBkkXAgXrmM5TN/W9slFnPX+N5RLtfyglsmWGeCOFGpPDonljxHTZsmk1XeM6MsJnQp0dmW6GWgGMZmYtgHwqkD5j+FB/ATGu3WlL/ig7W6A64BxkDCgGt054lEbd6HoVrNplfbwYXDB09+SRrwf1pAniFexmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765016415; c=relaxed/simple;
	bh=/ahlrs1yQ6z3JUaM/Sxqc6wFL/tkbsIVPryicW9j2H8=;
	h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type; b=WcVnZm+klmMnuGJR+moYyr4ZcjMzkzSC9LcaeQQKKbzUvganVvJTrZKqyrBnbPb25zqU1qYBSxaAtzS6YQzKhIP5BP3yDzhRQ3EK6ZSHPoFAJhyW+lCJtd9L0nSmzO9r5jHaC5lneiI8FxOxUF9LxBMmD8XCg30a6rj9QLLBi2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XWzg3yuR; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42e2e239ec0so1761304f8f.0
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765016411; x=1765621211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=iiDwBzndnl96hSb/q/NLb44uNYBwPkjb4oD5H7teprs=;
        b=XWzg3yuRWPrAAIAhm1bcPpzqZTojOcG4kMuQFf5/h76svuem5zkzCi9iDEaVtkwajA
         TRPsyMViE0QbXRv+LsTwEcaHeSMUO9MOUWfpCz3Kbc6UQP9qh6EmsTQdaDouwfYqy5I4
         E+UXhE/+x80b9FnUglaaXS5GHdXV705NlozJTo9JDeitepUHR21+BW6mcvWYodDme6yx
         OHOYtGaE2n9rrlcuIBlFsAnG2GFj4ER3Qc4eLDzD9/RcKoayI9yPB494Dn8mDCK98OAm
         1Y5v5KwbQcekyKon8rTgk4YYNkVAB5JeTlzyyrFk9xTIHTjvuePBHef+MNHp2dIhmPsT
         nZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765016411; x=1765621211;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iiDwBzndnl96hSb/q/NLb44uNYBwPkjb4oD5H7teprs=;
        b=WDd1ELxV17KVQBXV0fvUxB1Goo9/eJNi8G7zmrcuG5Dbz69fYE7eQVIsJEH1Cj5tT6
         TAzQxdixc/HvonAnUKz+5pm5nNqY1j1gVmUAnova7Pc6vER0TueP6q20vBc9p1sQ2swD
         MUdjfp/w9tp758e7vABxSgTi1znaJcok7a/Hf7eltdZAopYLirr0c1mDks2EraevVptZ
         Oi8uRt45Vj+v8DW/hn1/zs0cWkp0MUCYIF1EZaoxuueUEHnVJ59CIjpc7uazmMHKp9W/
         3Wq8BXScj4Tk3A9/Es9xLbFMDI/cOYfomdzQfVlJIIROnnedK805LGqx8A6XMlBnhYtG
         XJSg==
X-Forwarded-Encrypted: i=1; AJvYcCXDhIfE9f1ck9gSU6bSUgWz4qMil2gL/T3q5h8BcayMMtsBRycU7x/wjouC90tFHaM9tsq/l8QUPLUy@vger.kernel.org
X-Gm-Message-State: AOJu0YxYaL1OPQ5NhTzNk8Uds+JxlxA9OxVfO02woFeSdPplnFw4bi/4
	1Z1JG6InFTsiwd2PL/ZszFnw14rwmbx9YYbqsYCe71WnZbLFza58VnNQYBKWHJXzQj4=
X-Gm-Gg: ASbGncumTF+tuABCEMhwF7MvtC2DUEzsMc/qhQBSSdiOXBtI43BF6PzG9UQewArG2SL
	aUHYQFBMDEjrjaTnMRTNSEigO+8CsII4zm1UbN7aNgfYtUK8WbyHrImAo6ftJPsL2fcDnIjUJIH
	+qgKmnlJ0ZB7TAY2+7U08kHkME6m/GvFZXZ1HgKMDEkxUOBr012E/VBEAR9/tIvOEz3wee5gYrR
	u8VF0Cylo076FxiXOjc08v8rZ4LGSK3yLk4RGefDs9xFYkmP3g0mLFXkwJCj2DUVehGUv+OzorM
	euTTwsFoySRHrD7XSDHED0m6K97Ri8Tixb5zXRJVxZ3f0z7O4nweRDLC/5h72CLzoLecpnNjUzV
	NvRA3apPka/OxHLYivaeaULt+qz0avlhEi4ixtfjuEwXgIkpKEVDe9u/K8ReW/HsuGcCMR20C0A
	aM02p8Wbj8zZqbKfyvi0InH17gdg==
X-Google-Smtp-Source: AGHT+IHCCSKpPzDS66jMH4ALE7X9BZR5z4AUj5KRqSpHUrEc/DwbowSb3EPWCQS5cwLW9Z47DlGV3A==
X-Received: by 2002:a05:600c:1c0c:b0:477:5cc6:7e44 with SMTP id 5b1f17b1804b1-47939dfa46dmr19757195e9.11.1765009694011;
        Sat, 06 Dec 2025 00:28:14 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:13 -0800 (PST)
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
Date: Sat,  6 Dec 2025 08:28:05 +0000
Message-Id: <20251206082809.2040679-1-christianshewitt@gmail.com>
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


