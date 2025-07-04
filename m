Return-Path: <devicetree+bounces-192873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4363DAF8523
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 03:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8512564F61
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 01:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42FB978F45;
	Fri,  4 Jul 2025 01:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TPLIGQUi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9F9F9EC
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 01:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751592018; cv=none; b=KNdoEQJ5v2CN6a9Cc6nBBfac0BGJJYULg/Gykm/R8C3V9PfnIkqeTHWBGv7mLV0pMkqLkklrOgduRSQXgXZIeVEx0dLS2RR4vY0jKRFgzHuKJhyR4c73VLU1DHbNFvzggJy1o7mtmsQuM/8P8r2hAbhKVBjJEnSWDnFmg6taUWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751592018; c=relaxed/simple;
	bh=sn3kEcEnJGdq+CGH93mNVsRhQPGquWnTXTjgFVpFIlc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rlEbi7hzIR+wB1uW/0/1cb7FQ5u7ByhqBPOspOjkLUHgUhcE+xLZCVrz0VO39a0KkyrouXqZvDWe3oHzes5O1LyhaawnHHtDdcLrXiJ9kApcwopRY/YU4Vi0m+g7iktGTKLe72Q8lzHwo7WtY5q9Yifjo8tiucmyIQTAY8QYDZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TPLIGQUi; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-6118c1775dbso165999eaf.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 18:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751592016; x=1752196816; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DC/cBZO4f5h7yIL6Ec05XXIZpY7LlAOQumaUsmGIiWc=;
        b=TPLIGQUi0mYxmcbN2hVndzuw/wULfXQtebU6/CJYNGL1+Pv2+DKwBKeguiPgkdDo38
         o8aseif5IprBLUrxLcijxl7Qv6uCvH6w0QJi8KLbcXw6WBfyBwxbeYMfKSdIcmHCZ6Pt
         5A3RRkIgHBd+6CYwHUhy+iIYKO5xJtht3l5lycgrCA15vDfZiyrdOMvXITH27U3c4SFm
         kB/kw06scTNhmx0bacep+NhiaBpK92cpMYk6vaEt7e0iojLmFkmhLghw/3B82Ppx9Kcc
         PFRR0BEkzEUuBy6R9Q5PSW1K46s4FjZ6jF5ALFjhI83OHd8fSS/ctExZAVIC7d5lGaxK
         0Wnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751592016; x=1752196816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DC/cBZO4f5h7yIL6Ec05XXIZpY7LlAOQumaUsmGIiWc=;
        b=CDfRQM5bFCxqyYhVLzCjMf5hD1ncQ04k55221Nl1oCtP+OM2fbPykZt88G6ncfnxhC
         qrMd/dAvTP3C14egcAvJ4oDGMljezbg2mVLsh4W051TgcLr45BsIPHXZfiBNfzM8Jibf
         MQNK+SejDeDW917T7mh2pHq6RUeDS9WAZIF/frgwN3Tag/dapgLmI9QDWopSy/JIZp+r
         7V90wTCcTsH8KB25+6Rr22yLnjxXN48u+2uWJs6G0lfOQ9niYqmsjevptGBM+a+nn5jm
         L8qItS2Xl65W7zuGSSNzwCeKkYdthGdLDQwz6/fKH/aaKoT7bnGqeK6gLAwmcp3xTjAc
         2qLA==
X-Forwarded-Encrypted: i=1; AJvYcCW1MN8hvyh+n6GxqDMuEt51m5MugZe0uKi691+xBwBVkbxr9mtXvJDfr3Hgi1kd43AIOt7R5W6FYEg/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx32v0nMjYzTVN3XpfAJGUppbCy5l9yMXtbPHOKRGHcEqcHtYmy
	FLF/U/KZ15kFL0jWhc7a78gM1oFdGYWpntV/6VKknbeG71ExNFsE707rJ/WL7Whb4Rg=
X-Gm-Gg: ASbGncsnmIt2ss2fuiEMk/xFyXa0+fWHvfmPZ+S2EtEIKkLDCOzf93GSc3gW3yVf4m4
	BMncWFgy5eOHO116ZAqwMDdTTmJSK/7gcv8n4HhXrj7SCO/kjf3s4W04wdv2c2l9mMb4LhKfXgA
	9lQPjHSxIWQv7PMdqybcyXu8pAr2CI4amzUPa1TeTgD+E2qoGXjixDGiKZ51PdiF0UKctzFVkoy
	p1f/ZT9EImllNljEjyyxAznc9W1kNN9zD7529l4DjOECXah/vC7N82dIo5AHMCXI3eD/IinLTl+
	Lb5H5OsRV12nj7CN+BMfJuHVVsIxGLK0bdKVWTxSDgXxdsq33DqvX15W2J25y4u/A0gkwQ==
X-Google-Smtp-Source: AGHT+IE2gfIyrgT2GmZQ15R5wrbiEzA2Rw3RJESsngVF1fw51ISYnu4DuG+UdMI6ohqlrXf2k5q/SA==
X-Received: by 2002:a05:6820:2901:b0:610:fc12:cbb4 with SMTP id 006d021491bc7-6138ffbca71mr549586eaf.1.1751592015623;
        Thu, 03 Jul 2025 18:20:15 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:1ed4:f8f7:2a8d:77d5])
        by smtp.gmail.com with UTF8SMTPSA id 006d021491bc7-6138e4be31csm164217eaf.9.2025.07.03.18.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 18:20:14 -0700 (PDT)
Date: Thu, 3 Jul 2025 20:20:11 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	imx@lists.linux.dev, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
	NXP S32 Linux Team <s32@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Peter Chen <peter.chen@kernel.org>, Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, Xu Yang <xu.yang_2@nxp.com>,
	linaro-s32@linaro.org, Larisa Grigore <larisa.grigore@nxp.com>,
	Ionut Vicovan <Ionut.Vicovan@nxp.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Subject: [PATCH v3 0/4] usb: chipidea: Add support for s32g2 and s32g3
Message-ID: <5c3e57db-0642-4e8a-a194-f204da5fd2e0@sabinyo.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset adds support for the s32g2 and s32g3 chips.

Changes since v2:
* Add the dts changes (patch 4)
* Fix Signed-off-by lines
* Fix the device tree spec
* Provide the complete errata information in the commit message
  and a link.

Changes since v1:
* Put the device tree lines in alphabetical order.
* Add imx@lists.linux.dev to the CC list.
* Use power_lost_check() instead of creating a new REINIT_DURING_RESUME
  flag.
* Change the Copyright date.
* Leave the .compatible = "nxp,s32g3-usb" out of the ci_hdrc_imx.c
  driver because people can just specify both in the devicetree
  since they are compatible.

Dan Carpenter (1):
  arm64: dts: s32g: Add USB device tree information for s32g2/s32g3

Ghennadi Procopciuc (3):
  dt-bindings: usb: Add compatible strings for s32g2/s32g3
  usb: chipidea: s32g: Add usb support for s32g2
  usb: chipidea: s32g: Add usb support for s32g3

 .../devicetree/bindings/usb/ci-hdrc-usb2.yaml |  5 ++
 .../devicetree/bindings/usb/fsl,usbmisc.yaml  |  2 +
 arch/arm64/boot/dts/freescale/s32g2.dtsi      | 23 +++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi      | 23 +++++
 drivers/usb/chipidea/ci_hdrc_imx.c            |  6 ++
 drivers/usb/chipidea/usbmisc_imx.c            | 88 +++++++++++++++++++
 6 files changed, 147 insertions(+)

-- 
2.47.2


