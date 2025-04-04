Return-Path: <devicetree+bounces-163067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 629D0A7B58E
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 03:45:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 435683B9A71
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 01:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E4A339A8;
	Fri,  4 Apr 2025 01:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kPTwadx5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCF1B67A
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 01:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743731109; cv=none; b=ExMOx6cRjCBNT+mVaBV1gKfhjqcba1GmWulhDsf2eT972R/KSKU/OPIqyvKWHHYNskh09UdHon+yvTS/QCBvHDhPW+35TrcH5ymOc9qbfUqvAOrBAHwzEvUgW1+kvJ4+vjTgbpGgkWddEMOjhRWK0F4lD1a/9xqbD/5MHwAzJVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743731109; c=relaxed/simple;
	bh=3VZyd7qeqqdU+fU+qG6or5DrTUYgsIUuffWMNMB8H3g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DwWfa5yQIz2inOnmTKOx7m/Qb2wHPctH4UfGdN3m90MhizgHAiAcOafrlIvWXM1ODiABak/kkWICEjsKJGfCCjBxkut8R2vYmiCqwAiXZdidxUSZxsaszOOhgHrFpdaUeH8esHzyOMfSRG/NPKN/6BHk5qTBIEWZPgP5mSL7geU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kPTwadx5; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7390d21bb1cso1548428b3a.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 18:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743731105; x=1744335905; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bjiXd/lJykaxGlMVtDJ8cu8A9Kx6Lj/fnArm1Z9o5jQ=;
        b=kPTwadx5dz5hHRsonexrFKaXmuenq838Cfl+62MEEx1/mj5cez3xen59FfPpDK8evm
         lrY9OCCMMspEGfd0wd9+4YLX/Vn+dB1CFV/womAuhkOoH0YrF8CdWcUQ96zPM/V49eUn
         vg25t5BftxOHlrKqbsGERO41VjC+GuFaBmCPYaY6Xbf8CjAljsc4DBrDO8gvKeXMCJri
         TCOP9Rv4oJuiTirUMEIUHeUosfTRfOqNZs+DJVEkLD+RpNHAQsBFAiEUFKSrM9hrY1GX
         yhlsePJJ66gRZ3QJJShQKaHYmmJaIcAaim2uxi9UTS/jhFIsGT2LVS4O70WlRlPxTlRs
         EX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743731105; x=1744335905;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bjiXd/lJykaxGlMVtDJ8cu8A9Kx6Lj/fnArm1Z9o5jQ=;
        b=akQI0I9OfED2H2Hg5K4Z0/yKrwtqHxj+4dW2aXAsITPbCFsB3RuFrX6jb16a2f99Lo
         tXPZCRk8jUcSr7IV7g0R6fFOeBT1zO4bJRAtxzlXzYjC4kOzFjfb6EpnIa6shwzqILr1
         45U+YyV7LBkgz/tlPII+/wgB+hwNlhjK7fd80bO8sO7sL1AF778W5lcDF5gsgnbaMKYR
         TFAgMdfVy/7Fa2a+rCXSlk9qH5tUJG/MCJcgHP/TGyv1yIT1MO48h7Zy8cCF6Zq2PKE9
         h8g19dWDwHoaB5nn2Xk/Om9ObQMtXGMoa8ZsfWr/YFnotl9qeTqmQarEsvh7ic8/M86n
         kAVw==
X-Forwarded-Encrypted: i=1; AJvYcCXd6dV7amrpXq5EP75LKSLs2AVJodxWdrdlI+HOxpkdEk694xREKQmCxKPtN1sbZDlv0kg/2ev/aQCB@vger.kernel.org
X-Gm-Message-State: AOJu0YyrlcsJSb8K1Dj0K66VRz5F/v/7cTY/2uII1IGTusTIylJLA4lI
	xYkgQFL9QgKEUmuYjkOqvUHD1OJTwTsxkAP7hnBaQnMcyE8m4Tcxd3g2HOKsAq8=
X-Gm-Gg: ASbGncuI1tDxP4nP+Rj+zn52/V2rvsHUsymEBiP/OeCI2pxuRSuxJNF3Ve9kVfbSVWF
	andYCAWXRH/szXLLf1j/zfMQrvR1gCfA5dNVo7ZPqXrOD+kYMtugmrtYIfSwxwYr1jNfAwAKK+M
	KzDkO6MCJGhmR7GGhFKVVb3v2SyhvhTo4uDjspgbyNpRImYJtkKsvtzY+c6IM8czMSlLnJyDdTt
	FzsjoNODsGVyWGVpiH/nAuUYyDJ4hPiHdu092ZdpMWnw7EyrHRJ3Gv9IVQ2Nw7rCXo5JrZRtwBG
	SdiLfyukIjuEnFof+0pjzsF4QpdTxeCtiz0BYpcGWDjDZP5+IaIkB1o8BY2RS8K/p+nz8idnon0
	z1+4Mtjeehe6h4dKpbA==
X-Google-Smtp-Source: AGHT+IGZdc5ayPV8h3jLG26Fb3Kc7t8JCxjxP14CJnyWZUDnMeJLYlf0ChW7M7ptwKjPLxd1mWNs0g==
X-Received: by 2002:a05:6a21:1643:b0:1f5:8a03:ea22 with SMTP id adf61e73a8af0-2010472e135mr2027506637.33.1743731105128;
        Thu, 03 Apr 2025 18:45:05 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739da0e3184sm2195304b3a.160.2025.04.03.18.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 18:45:04 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] dt-bindings: clock: ti: convert to yaml
Date: Thu,  3 Apr 2025 18:44:56 -0700
Message-Id: <20250404014500.2789830-1-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert TI autoidle, fixed-factor-clock, and clockdoamin bindings to yaml.
We are fixing bindings warnings only. No change in existing dts.

Sukrut Bellary (4):
  dt-bindings: clock: ti: Convert to yaml
  dt-bindings: clock: ti: Convert to yaml
  dt-bindings: clock: ti: Convert fixed-factor-clock to yaml
  dt-bindings: clock: ti: add ti,autoidle.yaml reference

 .../devicetree/bindings/clock/ti/autoidle.txt | 37 ---------
 .../bindings/clock/ti/clockdomain.txt         | 25 ------
 .../bindings/clock/ti/fixed-factor-clock.txt  | 42 ----------
 .../bindings/clock/ti/ti,autoidle.yaml        | 49 ++++++++++++
 .../bindings/clock/ti/ti,clockdomain.yaml     | 38 +++++++++
 .../bindings/clock/ti/ti,divider-clock.yaml   | 24 ++----
 .../clock/ti/ti,fixed-factor-clock.yaml       | 77 +++++++++++++++++++
 7 files changed, 169 insertions(+), 123 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/ti/autoidle.txt
 delete mode 100644 Documentation/devicetree/bindings/clock/ti/clockdomain.txt
 delete mode 100644 Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,autoidle.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,clockdomain.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml

-- 
2.34.1


