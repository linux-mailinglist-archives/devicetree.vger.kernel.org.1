Return-Path: <devicetree+bounces-11655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7DE7D64D7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F66D1C20B89
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B69F1CF8D;
	Wed, 25 Oct 2023 08:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hKaPJB6r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6901A5B2
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:22:02 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BB2EB0;
	Wed, 25 Oct 2023 01:22:01 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6b44befac59so486620b3a.0;
        Wed, 25 Oct 2023 01:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698222120; x=1698826920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NvpdJed8NCe/yTREqi/Xqq5XpahV3XtayL2qO/vF1bc=;
        b=hKaPJB6rUJ/OPCFcqGLTD6z8QY89YzvYem+rL0ZyLov/qiaQlOQScd7OBLjvM//ACW
         dQ63D+Ry1ncSTH/trgi9prplJuba7yjn78GmybjeCY7APNEDvsrK9AhCME0CRLQt6NyZ
         UbeeARe5+HO5yaZ0oec7RZO47QLVSOrFBdECBlbJA8i8dct+wkV1E4uSN5F1SwlgSDTb
         45TFlQ+x63ykWTvxkq5NI3LCL3XyrzR1V/Vdx+qPDRqmL8ddu5iUCN/sIfNkICjjG/dh
         sXdiK06WuYb+06bvoQYz8NkilE5ocWk3njilX03VZR/d/FlC2PpfFT4ubSrh4j+qxaoH
         fQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222120; x=1698826920;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NvpdJed8NCe/yTREqi/Xqq5XpahV3XtayL2qO/vF1bc=;
        b=Afk2c1DqSwxi6dgUS6UwIWF1MksHgeT5x0H/mZluMCZD949tOSPySfFPv/JmYjNfvI
         0YdSrBBuu32r4R5I/jmw/QWrOKTdtcooE7U0t1gXgwZXTJgRaTOokATuFc1JTjnrvDix
         /RX/hWQQDNAK+ahpnjkWNg7fOLX3qFNRAfgPD1ggHpEVlwXejJixxESMSaS72YfbQIIV
         uK835mQlxKdO3gXvmIjPJbotBBVfyNiwtonL2+ex7FTSO31w0SSfQmpMdPHsggECA5eS
         4dBqiV2A/pMsONr4JjmEz82DhrMVXdwcDuMBY0okLwjq2hvsU/useA5Gqj/CfUhTalXr
         2BKQ==
X-Gm-Message-State: AOJu0Yxluw0kQHpjI+PElidUUTqNB8ZclbTV5MxLfpraYGjUToqP4LLI
	SzOdBhAvOBM5Ozmj9nBlLsoFPv0hOt3njCh/
X-Google-Smtp-Source: AGHT+IGxHaO21Y7We44VFn56IIIjQpblfIOHyJnAwflJ2icjvRi5bnX2MikIvWC7cwv6ba89Al9keA==
X-Received: by 2002:a05:6a21:6d89:b0:159:c07d:66f0 with SMTP id wl9-20020a056a216d8900b00159c07d66f0mr6177544pzb.6.1698222120380;
        Wed, 25 Oct 2023 01:22:00 -0700 (PDT)
Received: from localhost.localdomain (2001-b400-e38c-defd-6dc9-16c9-6f6d-2997.emome-ip6.hinet.net. [2001:b400:e38c:defd:6dc9:16c9:6f6d:2997])
        by smtp.gmail.com with ESMTPSA id y66-20020a62ce45000000b00690ca4356f1sm9255860pfg.198.2023.10.25.01.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 01:21:59 -0700 (PDT)
From: Wei-Shih Lin <frank101417@gmail.com>
X-Google-Original-From: Wei-Shih Lin <Weishih_Lin@novatek.com.tw>
To: dmitry.torokhov@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add Novatek NT519XX touchcreen driver
Date: Wed, 25 Oct 2023 16:20:52 +0800
Message-ID: <20231025082054.1190-1-Weishih_Lin@novatek.com.tw>
X-Mailer: git-send-email 2.42.0.windows.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds a driver for Novatek TDDI NT519XX which mainly used in 
automotive display products. This driver is different from the existing 
driver named as novatek-nvt-ts.c in the path drivers/input/touchscreen/. 
The existing driver supports another Novatek IC NT11205 used in Acer 
Iconia One 7 B1-750 tablet.

Wei-Shih Lin (2):
  dt-bindings: touchscreen: Add Novatek NT519XX series bindings
  Input: Add driver for Novatek NT519XX series touchscreen devices

 .../input/touchscreen/novatek,nt519xx.yaml    |  60 ++
 MAINTAINERS                                   |   9 +
 drivers/input/touchscreen/Kconfig             |  12 +
 drivers/input/touchscreen/Makefile            |   1 +
 drivers/input/touchscreen/nt519xx.c           | 995 ++++++++++++++++++
 drivers/input/touchscreen/nt519xx.h           | 130 +++
 drivers/input/touchscreen/nt519xx_mem_map.h   | 262 +++++
 7 files changed, 1469 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml
 create mode 100644 drivers/input/touchscreen/nt519xx.c
 create mode 100644 drivers/input/touchscreen/nt519xx.h
 create mode 100644 drivers/input/touchscreen/nt519xx_mem_map.h

-- 
2.26.1


