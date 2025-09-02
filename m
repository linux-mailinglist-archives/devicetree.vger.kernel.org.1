Return-Path: <devicetree+bounces-211613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5F5B3FAFE
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6799F3B1CA1
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78A827B33F;
	Tue,  2 Sep 2025 09:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VV9cfahB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2E627B330
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756806467; cv=none; b=SK/SQFdwfUloKYckE3FS12JxT7bMEN5qqi7mGeJufupEWajZzVyJ7VB5foC8tneBQGkXpU9ZIVEjLp0JInLPFg14cRNkIyJG2o3j/F0QowaLwinjUn1/OMMwos01yS9aDh1gPQSIm5ahkSMc7cTMJtYFqh8czRoeKeqv1xECNs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756806467; c=relaxed/simple;
	bh=tb+i42TjS4WClFhI4g/9RfeNIRUDoADVsxkZ23rVgfc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=CWmCuvdYnG5PQFgIMsXz04O57bFUStsck9z6eBdjwpTtxcg92q8uSwAfmU3GOpaVjG8s+ztsRxI/uacpWagRlxDuXos6l1YHLri+yFBRQ2GPd1iJE8+9JM3Pb076wI8L5MEttDJJUcZdIrZ4YtmgwNsFPndpSJ4u6Cq+YS09HrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VV9cfahB; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3cf48bde952so3546093f8f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756806464; x=1757411264; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C15nnHq5jGNekOrg1oEoMYGXiDnEqflax+NNj/Q5DWg=;
        b=VV9cfahBSdV4536rCamoWM4r3441c0MVAQG9l5kG5CkY8wAkR1Bxz5uI4+Em384vvu
         DSPx1Ei+RUHtz0sc2csR16kKcSTqR3HPhwmWoQsgwIvb8+xiWMRta0iZ/d52OS1AO/gG
         K2ElTRA5nVc1nyxjUURLBRMdE37vajeRARHWlDdsZ4b41dpq52VlYrhTGsBiPcCe/sLF
         9H4SBO6WUkBHnQ3qIH3Pjm7pajI3sgTES41W7d5urWjMfwMld8/lFALlDN1K4sG6HDqp
         V1qE3Djm2w0am5kYiJtISN8+FSvtiwq3DGNJkn85Dgy1AOo+fHjmTGjQAnVUvGMkPGtl
         c/Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756806464; x=1757411264;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C15nnHq5jGNekOrg1oEoMYGXiDnEqflax+NNj/Q5DWg=;
        b=u3UwsAIeqp7NtexYVx+50i8Sm8IvMBT7PYwKIk6aIKGS4UI/xawzmLBV8BU3lT7NJL
         ZMU1V/gkFBDyWIpkh57iPY69tg2GK9LHZE5jHOtHRFYGi+T6HYnm4q5GfwvBrgQ+qao/
         /lgNRHKAQBvbD2nzfVi99+zPcGcWi5OFWR/dgmBakR6IMwVHX8pZBIcneDG7GgivH80Y
         mDvmELcA0fBt6b6+DWpuqSmVZ2pyryp5XIZSmk4xBa7JBllEtiMKKl7/zWyRbtpqlZuK
         CB6ls1IblV5lnKGq/iiYc8Cn35fWX4UtJEjx8Gteb4gS4Q9C4q2LnBDzCmsY1qYlm3lh
         4tog==
X-Forwarded-Encrypted: i=1; AJvYcCXOFmd7MhaxlwEhf934i7dRd37L1S7e0CtSgMzLZKGaedALk5lSbtcCAwjBRp524YIK6neDA74Xf6rn@vger.kernel.org
X-Gm-Message-State: AOJu0YwqlLLrDG1zPXuhfh24OpHsDHiGaE5BSMFlyPm0w5m/UDqfMmUb
	6A6NiUo+zNIOqd7iGriqbrO8mJ2ZQce0JEG0ePhfoOgLNH8ymF1xlFb+EurHeDMzPPGMJwJZMpc
	RTZod
X-Gm-Gg: ASbGncskgHVf0AJo10YduKhuKfx8F6tXrnDFzRXdMbirc0BDrM6gBySZ6WUgw0ocyIn
	JEZNDI3JxfxVmj5tmRgVLFCiB9n/5UlRHlUFllNCU1Ou6D8WR/aruOKLTqiyd742vRNwPhsymMJ
	DEeiJcCQfdIX4yFVPEebAZrqhnUk0Dm4OxtbUoJ7IOFR10L1QTG2+G0/gltQFiu9yFBnJDPqxCz
	q6VcrvpmhIklZwbQNMZKqqPzzQcrNeiq7HZk6ueJDneuGqOZ5muIc+yMBXIg1CcggWIC8FYG/+D
	NMQJW8ilMOpSA5un3o/gouAeSvL/QpgRtdeeR8i4EuaUQxvgEAQ0BoSNpVVPex8JVGjfV6Cgpj8
	hP2IW3vvVkFhdQXNyG2YK2cCjeiVsACxu8CQ9bg==
X-Google-Smtp-Source: AGHT+IF3trB+IqLVZP1NbcKHzI17jtlNkvyPbQokeVhgB/0JExvYEQ3RkklZMsS1InChMNxxtoDrQA==
X-Received: by 2002:a05:6000:4023:b0:3d9:b028:e278 with SMTP id ffacd0b85a97d-3d9b028e5c9mr1425217f8f.51.1756806464235;
        Tue, 02 Sep 2025 02:47:44 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3d0a7691340sm18023223f8f.39.2025.09.02.02.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:47:43 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:47:40 +0300
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
	Srinivas Kandagatla <srini@kernel.org>
Subject: [PATCH v3 0/3] nvmem: s32g-ocotp: Add driver for S32G OCOTP
Message-ID: <cover.1756800543.git.dan.carpenter@linaro.org>
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

v3: Mostly small cleanups.  Re-order device tree entries.  Remove unused
    label.  Use dev_err_probe().

v2: Major cleanups to device tree.  Fix sign-offs.  Re-write driver using
    keepouts.

Ciprian Costea (2):
  dt-bindings: nvmem: Add the nxp,s32g-ocotp yaml file
  nvmem: s32g-ocotp: Add driver for S32G OCOTP

Dan Carpenter (1):
  arm64: dts: s32g: Add device tree information for the OCOTP driver

 .../bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml  |  45 ++++++++
 arch/arm64/boot/dts/freescale/s32g2.dtsi      |   7 ++
 arch/arm64/boot/dts/freescale/s32g3.dtsi      |   7 ++
 drivers/nvmem/Kconfig                         |  10 ++
 drivers/nvmem/Makefile                        |   2 +
 drivers/nvmem/s32g-ocotp-nvmem.c              | 100 ++++++++++++++++++
 6 files changed, 171 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml
 create mode 100644 drivers/nvmem/s32g-ocotp-nvmem.c

-- 
2.47.2


