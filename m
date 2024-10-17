Return-Path: <devicetree+bounces-112226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5833D9A1762
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 02:58:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 039631F2656F
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 00:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB7C18E3F;
	Thu, 17 Oct 2024 00:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wdAMqi4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF89182D2
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 00:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729126686; cv=none; b=hXjtbzN0FWgUy02uWyFNKbeyUpfzLoAhW/XppQnu+jsklIb+Bux1LK58nakSQri7ad6LGzRRpDM52zwk3d1e/Bfdw6m/tzf8ZeR61Ke8ycwQmJoCTmeTy+/8CiZuS25tj52p2qkSqQVKyQAGV9lNTL4TJzwVjYyFh4Ve1H5JTGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729126686; c=relaxed/simple;
	bh=o/hKjkpIXN5X9YEh3aqgzH3lbQ/mZRL25pDg6BvBfrw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EiyeWvWd01H6Lqqp7XK7iSJWSDr09TVqMancK4btCLeZUxLhxPZDcz7fLf1MCRnc5RFMpNFJIX5xPpmhzOM4vMl7FDQe1zEk7U9zoZ8EvoxW8RbGy8OEHyJN7WhP8Kk/7jhEac+rKzpb6OWnMKB5ucQtv3emd/lYLYIrmGLRTNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wdAMqi4N; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43117ed8adbso5462535e9.2
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 17:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729126683; x=1729731483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k1maisugeZXRPQVK8E0aCsP5z+6Oqs6IPuJ8CXduzX8=;
        b=wdAMqi4NpIkv3+wQQddefEBlIA+ca6dfI8RW/OIoZ6poMb8K/uIZHYfFnPE6ZcbTee
         L+5gReaS/9nY49ZoGJQrC+bkZr2BEHTPTLzWfmlsoYFZ8wOWdvVBS5hxkRWPyGJ1iuhD
         Ffz3tGKC9R4vLPhq/CmJHtY/RMK1lgC+qd10SCbP3CBPwFvHVc8cEKDF7CVL7Bjs+AmR
         RMsPGAaq3xs4/Eo1daCQGTiqDgd4KSm7C+drjU1Mktje0BWM91aSWJ4hwRphtphNO2MD
         8XRx64SwP8m99wtAOAwE1mqBMjeJvI5C/3NENuTvlOsavx99Sw1T/gZtz+yZv7vNA1ch
         /ajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729126683; x=1729731483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k1maisugeZXRPQVK8E0aCsP5z+6Oqs6IPuJ8CXduzX8=;
        b=jX6RRe6fD7MOVKUQt/cTXDJfAfcKw644KopIPrAnzn2HFQhzv5SvHx6tFMIVTQNln7
         jNA6muVgl72fTLYdpMMSGgaOMJWXDBoH1IwVJAF3h1UGTKWjxHxBc9cjE6ivj20icK+l
         WwGOWoN7NTO3v/VpzVqEwepxPk9SV5GUYpbsJFLpbMd5J5Lp6VMx3PSO+l5rC6wVnrzx
         6h56qOvdGT0/9hvdHA5xk59t71IW7uYeE/Z8EY2tnzGnNAPo6v2xdcptHBrwDzxkJQgg
         jDrirU/8GNKg0Oe4n6fJhv28kYXmt1xf82pWaqwnwbviKeWWM1pmZHEDk/3L1yabXITN
         U2rA==
X-Forwarded-Encrypted: i=1; AJvYcCWB8rQrE4UzXyQVOANU0ClltDYmvyuu5x69pLkjZ7mmeo7XfTxfmV8rOEs7FQNVfEM50fsAMVuULV/D@vger.kernel.org
X-Gm-Message-State: AOJu0YwK32vA+3lBgwrK7aEHcfzr/lkQSx5IWqej85vrDMuu62l1aEyN
	BL0iEpcvUUQQnHnUfENlNTV/gfnM07DX8DP5zSDlArYF+1Xd3MB4mEpcdvlT3RA=
X-Google-Smtp-Source: AGHT+IHQOZdoVHwdDnPmYo0BPHF99KOUTkgQrhJaQe7J8+H2TN4TWG6rm3GApCnqm8iB7/Op/pBa0Q==
X-Received: by 2002:a05:600c:1c9e:b0:42c:b508:750e with SMTP id 5b1f17b1804b1-431255dae1bmr185559755e9.11.1729126683234;
        Wed, 16 Oct 2024 17:58:03 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa9053csm5657259f8f.59.2024.10.16.17.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 17:58:02 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	krzk+dt@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Qualcomm sm6115 LPASS clock controller
Date: Thu, 17 Oct 2024 01:57:58 +0100
Message-ID: <20241017005800.1175419-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is one of the required dependencies for audio support on sm6115 and
its derivatives SoCs. This was written by Konrad Dybcio, however his linaro
email is already invalid. Konrad suggested sending it as-is and keeping
him in c/c. Some updates may be still required, for instance the
maintainers line in DT bindings file.

This was tested on QRB4210 (Qualcomm RB2 board). The only changes from my
side were fixing compilation errors and small changes in commit messages.

Konrad Dybcio (2):
  dt-bindings: clock: Add Qualcomm SM6115 LPASS clock controller
  clk: qcom: Add SM6115 LPASSCC

 .../bindings/clock/qcom,sm6115-lpasscc.yaml   | 53 ++++++++++++
 drivers/clk/qcom/Kconfig                      |  9 ++
 drivers/clk/qcom/Makefile                     |  1 +
 drivers/clk/qcom/lpasscc-sm6115.c             | 85 +++++++++++++++++++
 .../dt-bindings/clock/qcom,sm6115-lpasscc.h   | 15 ++++
 5 files changed, 163 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
 create mode 100644 drivers/clk/qcom/lpasscc-sm6115.c
 create mode 100644 include/dt-bindings/clock/qcom,sm6115-lpasscc.h

-- 
2.45.2


