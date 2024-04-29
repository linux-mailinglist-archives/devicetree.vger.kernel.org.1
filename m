Return-Path: <devicetree+bounces-63556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6288D8B556B
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 864421C21E7F
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 10:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE2693A1DA;
	Mon, 29 Apr 2024 10:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NpkWkSRJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D02A38397
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714386954; cv=none; b=uSr62yAy/87VAU8fioGY8Q2wZms+w/j0QY2yeLFdq6J1vRKPocTgQ47VhEXQkAlsNKg3FUaarAKRBBfsuMIQasaFajCzdynB3RvwRHzUDArliSe2tIG6XTzt5l8YfUAdEc71p0SceF5Pmql1AFYQq92eKP1P3QuGy3TkOJRudnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714386954; c=relaxed/simple;
	bh=0T7vq6sQjHYjIvVP1+XfJF0EsH5Cp2wzQJeiQ3uHMHQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TK5dSahmC/zIdIPaj8VZ3hhdljwja9IeBPTRmL/SxgoBMTQ0+dRNilYcEqUApEEx0rSKdx3gvStXYn4vHMNxNKmc09kbXlN7K4iD6fLbSG/URtv0Oo6+lE9rlo4eQg0oKUC/Fde1blEN9pVRVU5GeWjg5a2Sba5Jw8Jy+N7eSS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NpkWkSRJ; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5724e69780bso4340683a12.0
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 03:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714386951; x=1714991751; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D0dFudsAqmrLZH4yacrFdeMowSooBD8BjjmtuCZ0i58=;
        b=NpkWkSRJ0mLaow1BEauMED0xOOikVk0kd12yxlZKNDJILDlv3jjaeH7dZceO5BEfo+
         Hgvo8FArdLKmPXlkBrPUAIuQwxqmJlxgRlGHmKyJU0hB0pRQPqTTkbQUKm85tz16J1Nd
         RinD+vOOPZP0PTjFN7wZJ7ueoDDE7BmUazJ7dhi98g/VtEIPKcj51eWGa8BoCxyBX832
         O1MuTQs4XdDC4v/9+6ruzudoqmoRYo65Ie05wJf0/AQRuSebg+l9NTQ4cQrTXo2lp9Wd
         5FBfpOTHsx7fbX1JJllh5jfqA1Vf05y9rC+FS1fklHZrga7/bGjagTPAkGcyE3bCdn2A
         WCFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714386951; x=1714991751;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D0dFudsAqmrLZH4yacrFdeMowSooBD8BjjmtuCZ0i58=;
        b=Ag8oZwKv3FqPOzTWGn0M+fPtEPOlWxUr23+T4vcpH3XxMumUHNYOujArDPywlROynE
         1hQQdxTB6pD2yQIKZFxiPRQnLX1nk8JgIP6WhQInbjUcHH+c9TZtIBgLYa566ebcPN/b
         7ZM5Vw93U6BoL78WQxEIldQLdfpgjvsaIuC27LqBvyfy25ZvbVlSYHUzeF/vijGtblNS
         KRyaaz+4+hDS5gPIC1FhYLAOaNIjs/4pGMa+HEQLxLJoTm9m/pGU1ZvvlsNYD8s/dB3K
         huJTXeos4zTeVGkuJ7/lt8qUA6oABmfwsLJ2xtN8g9kbbJml/Oh2wzEygul1dIoPwP6t
         tDcA==
X-Forwarded-Encrypted: i=1; AJvYcCV+o1IeXhyVz5Wp9w7sPBXRART3LYxa4mqvCJXWk2fuP7BEo46fI0zQs85kCsKIVscI1u1xDPHC6IT2RGmxQD/WhGQ40EABErk5zQ==
X-Gm-Message-State: AOJu0YyYU2xfJc2gwPxu6Ts1qG6mitE2cIx5lOStj9LgMZRybWxoMmdR
	xYhr7d4UxUMYwPm7ikrZouuuCTKl4h2cjudKNWo3x/LlcHdlHYwEELpAvT6QIQs=
X-Google-Smtp-Source: AGHT+IHX5e2PjT6Zi7stQ95VQoSVfBeNDqewVXxb9OK/UqHotHHp8TPzAVv7FQ+J+dvjMqI50M/e1A==
X-Received: by 2002:a17:906:e2c3:b0:a55:b520:766 with SMTP id gr3-20020a170906e2c300b00a55b5200766mr6201811ejb.0.1714386951265;
        Mon, 29 Apr 2024 03:35:51 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a7-20020a170906670700b00a522bef9f06sm13717707ejp.181.2024.04.29.03.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 03:35:50 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/2] enable USB on Pixel 6 (Oriole)
Date: Mon, 29 Apr 2024 11:35:48 +0100
Message-Id: <20240429-usb-dts-gs101-v2-0-7c1797c9db80@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAV4L2YC/3XMyw6CQAyF4VchXVvTlomIK97DsOAyQBPDmCkSD
 eHdHdm7/E9yvg3MR/UGt2yD6Fc1DXMKOWXQTc08etQ+NQiJIyc5vqzFfjEcjYnRyaX0xEXR0QD
 p84x+0Pfh3evUk9oS4ufgV/6t/6SVkTB3wi3lBUt5rR46NzGcQxyh3vf9C/tOfk2rAAAA
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

These patches enable USB in peripheral mode on Pixel 6.

We can only support peripheral mode at this stage, as the MAX77759 TCPCI
controller used on Pixel 6 to do the role selection doesn't have a(n
upstream) Linux driver. Therefore the role is defaulted to peripheral
without any endpoints / ports.

For the same reason, we can not detect the orientation of a SS USB-C cable
and therefore it will only establish a link in SS mode in one of the
possible orientations of the cable. In all other cases, the link will be HS.

This series has a dependency on other patches, please see below.

I have mainly tested this as CDC ECM Ethernet device using the following:

    mount -t configfs configfs /sys/kernel/config/
    modprobe libcomposite
    modprobe usb_f_ecm
    mkdir /sys/kernel/config/usb_gadget/g3
    cd /sys/kernel/config/usb_gadget/g3

    echo 0xadad > idVendor
    echo 0xddaa > idProduct
    mkdir strings/0x409
    echo 01234567 > strings/0x409/serialnumber
    echo ADADAD > strings/0x409/manufacturer
    cat /proc/device-tree/model > strings/0x409/product
    # create the function (name must match a usb_f_<name> module such as 'acm')
    mkdir functions/ecm.usb0
    # stable MAC addresses
    echo "6e:27:3a:b9:40:87" > functions/ecm.usb0/dev_addr
    echo "ca:49:84:b0:3b:bc" > functions/ecm.usb0/host_addr

    mkdir configs/c.1
    ln -s functions/ecm.usb0 configs/c.1/
    echo $(ls -1 /sys/class/udc/) > UDC

    ifconfig usb0 192.168.1.2 up

at which point the other side should detect it and network communication
becomes possible (once the other side also configures its network
interface).

Due to the clock IDs and DTS phandle references, this series depends on the
bindings and DTS patches 
"dt-bindings: clock: google,gs101-clock: add HSI0 clock management unit"
"arm64: dts: exynos: gs101: enable cmu-hsi0 clock controller" of
the series in
https://lore.kernel.org/r/20240423-hsi0-gs101-v1-0-2c3ddb50c720@linaro.org
(which have been merged to linux-next already)

Furthermore, it also depends on the bindings for USB and USB-phy which have
been proposed as part of:
https://lore.kernel.org/r/20240423-usb-dwc3-gs101-v1-0-2f331f88203f@linaro.org
and
https://lore.kernel.org/r/20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org
respectively and haven't been merged yet.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- fix commit messages
- rebase against 20240429 linux-next
- Link to v1: https://lore.kernel.org/r/20240423-usb-dts-gs101-v1-0-3421b0371298@linaro.org

---
André Draszik (2):
      arm64: dts: exynos: gs101: add USB & USB-phy nodes
      arm64: dts: exynos: gs101-oriole: enable USB on this board

 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 24 +++++++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       | 41 ++++++++++++++++++++++
 2 files changed, 65 insertions(+)
---
base-commit: b0a2c79c6f3590b74742cbbc76687014d47972d8
change-id: 20240423-usb-dts-gs101-4269e0177c0f

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


