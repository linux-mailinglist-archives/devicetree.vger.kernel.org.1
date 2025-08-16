Return-Path: <devicetree+bounces-205361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A38ADB28CFE
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 12:47:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70ABC5C3770
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 10:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6933D236A70;
	Sat, 16 Aug 2025 10:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WC5bPN+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9905C221283
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 10:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755341225; cv=none; b=XuSY6+1YleztHnbn9m2O2NMrqYGl1UmSAXWlVzZjfl55SoaVlZ2OS93GJW/n5BpF+8MQwZ5ovwlMpBgMaJKEAd2KxEqwsBcebJL2TPquygCz6a9EcFhEReDxKP2keBYZ7iwKNWxqQZWLyMTWlIS5tpGTkqp7x2vCjERAm+GhTjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755341225; c=relaxed/simple;
	bh=OfZOqjSEfmBvg1ifBn9VANH8m3yfiI0SQ2MQSnBU/lc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WkhW4PaEL+cLQOEWuD5vb6w1qtPAfmvFrFRT+ZtyFNw3ATbBc3gMBRtIXufHau+ubhAlWWyp8SIwAKGXhIeOG7hltxdQiY7XWgE36uA2aQEuZBLoszgB1IxVUVfp4U2vlgmjEg+AmcywpZ27Y8oPBo2djUlwyDIltCjzlfzG+dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WC5bPN+7; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3b9edf504e6so1275233f8f.3
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 03:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755341222; x=1755946022; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c8/K9OcQh+VZ2ps1hjk377/rzEGr4MXBz1jHP2xKk3A=;
        b=WC5bPN+7+ptyVRAyk8pn6sXHx5yi/X5o4mcUK1jycXlGT7NBpLcEzG3thEBrTyhSG9
         i//uOo7/XB8i2D+NtjLfW9IqGTeqJ3fzhUQGJY88RP5glkpESI11H19NyRkE+2uZ6GWs
         AP+qLD90w0rBJmFYAJXNskmax7OgMmZUOdZdSlRxQxVdQpBoyqz8jcTl00ywuzv0wl/F
         vqsdt45Z7DJGB6cP4m/fWnlqUNCsHau5IHLgpraBUMTH1LZ6NoZ7LURBkIKMzlgUMJ0h
         emchwI6IxDGHJ+TUh+f+/XsPcOwinE7BLd166Gp7PiuMIA0LWNmhYJcZDYSCSUdkN9Bc
         26hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755341222; x=1755946022;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c8/K9OcQh+VZ2ps1hjk377/rzEGr4MXBz1jHP2xKk3A=;
        b=gi8U0xyVOQWd9pNdhy15EbhwQN9BjRrMEO4Big1/9WJM7rXxEwdE/6LLw1qSNCv3x5
         az9xgMWbdRrn/bVEeXfhA2q2p53dWGdAc53Dl5wr0+IzgYz4854kmnn+1PRgjI84wlIH
         +rFFWko7jzGcljunIfcfRytWZ82JQFN3JYg7dzc5mBmZjKJ+NC30xmmhBlrwTY/+fPEx
         mfXstYiRMJRnJ2EvvO/kOVeT1izeuM00IJGRasEDLlD7fNAi/TTtxwV6HNXtqV/6VHqe
         FGs6DeFyqgB/9i8xL4ahGCcgiB0CEoFb1rpSM6EuFboUFtfhE2Cdk+2uB945oB9bwWJi
         em8g==
X-Forwarded-Encrypted: i=1; AJvYcCXg/2i3ELpPT9UvCor6UvInVfT/PTBBo/YZFRsZt4VeTJbz0U7a8q+E0Z93Mctq2kQleLrhBtIR5uR2@vger.kernel.org
X-Gm-Message-State: AOJu0YyDY4rIJHUZxL/5M0m67O1JJpCnmvQp8gFb+RSVm+/BdSTUao6X
	7jsUoeMRKb6lrEVwLDic+WZICiZ6sxg31mb0eBr7xWYI9hcVDpZeTQs4bUIUFdiDA1M=
X-Gm-Gg: ASbGncvR9dNvi3R5a1ibWfTSCYtll4vIBZ8y9YvCbIut10jwOpvHfmcHagL917JYyWd
	44N8E7jze/Dhd2dD+2LEtZ9thS3+QGFh7rfHovUhhUsHGm7F45q83UpDWwr0o+25ojVXZ603IFm
	1n7IUVoN5xI3eYEL+o1+KUG8wgO0u2Gs+D4+ZNCUgmfOY3y9Ql++oLizRvq0bJ0VPI9G5J81KrC
	Q+wrO2KlDlcBLU86baORBixzx2XNqdXg81V1d9x9qmDLv2stRtpjiPzfOqoeIPbJNe7NbqgI619
	G5eP4YY7pMS9Pix1SoN3wMN0a+JLb8sEU5qLeiyORjI4GQgnJvHuTMR9FIsOM5mqlcJ5Bk0Purd
	EvBfv/Uz9DZK0TZHxCyiO02e3ys/eETy9KFwy8t3gNA4=
X-Google-Smtp-Source: AGHT+IGeBUxsWM8TKjBjOCNR7N1cHTH9VLKWrA4KdiQror9m/vvPgYr7/Et0/P2bYgMxSkrNqMzKvQ==
X-Received: by 2002:a05:6000:2f88:b0:3b7:84fc:ef4c with SMTP id ffacd0b85a97d-3bb66180488mr3569613f8f.6.1755341221916;
        Sat, 16 Aug 2025 03:47:01 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45a22210ab4sm51914445e9.3.2025.08.16.03.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 03:47:01 -0700 (PDT)
Date: Sat, 16 Aug 2025 13:46:57 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>
Cc: Ciprian Costea <ciprianmarian.costea@nxp.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	imx@lists.linux.dev, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Matthias Brugger <mbrugger@suse.com>,
	NXP S32 Linux Team <s32@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>, linaro-s32@linaro.org
Subject: [PATCH 0/3] nvmem: s32g-ocotp: Add driver for S32G OCOTP
Message-ID: <cover.1755341000.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This driver provides a way to access the On Chip One-Time Programmable
Controller (OCOTP) on the s32g chipset.  There are three versions of this
chip but they're compatible.

Ciprian Costea (2):
  dt-bindings: nvmem: Add the nxp,s32g-ocotp yaml file
  nvmem: s32g-ocotp: Add driver for S32G OCOTP

Dan Carpenter (1):
  arm64: dts: s32g: Add device tree information for the OCOTP driver

 .../bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml  |  57 ++++++
 arch/arm64/boot/dts/freescale/s32g2.dtsi      |   7 +
 arch/arm64/boot/dts/freescale/s32g3.dtsi      |   7 +
 drivers/nvmem/Kconfig                         |  10 +
 drivers/nvmem/Makefile                        |   2 +
 drivers/nvmem/s32g-ocotp-nvmem.c              | 171 ++++++++++++++++++
 6 files changed, 254 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml
 create mode 100644 drivers/nvmem/s32g-ocotp-nvmem.c

-- 
2.47.2


