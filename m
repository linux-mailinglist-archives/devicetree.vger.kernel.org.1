Return-Path: <devicetree+bounces-85628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB20930CF1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 05:19:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DFB75B20DB2
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 03:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60951BA4D;
	Mon, 15 Jul 2024 03:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="ilBcOG/y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6AC20EB
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 03:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721013540; cv=none; b=MYrc2cvJYu7RomBYaGNBGNfaApObxpu5z6GtcBhxrd4W6Q+IVqirDUDYt+wW7KOMoEwkfOAv9I/z5yqyY+78PO+Txcy0wS1p7WxDPr4KhamEtLXdoxz7TOIQq9u8RLUFEv/V9nvodpDg758arNL34Y6KZ0Lm6Q5g627taz2FG1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721013540; c=relaxed/simple;
	bh=wjtBdPMHreyMfVcg/owj5MX/nMWnUBE/aQsKVUQYBy4=;
	h=From:To:Cc:Subject:Date:Message-Id; b=B5aBqdiCvxGMvTICng7HLkzKU3c8zkBYW2gN08bmTZgJa3mBSgPFPytPi2H1zOM+xaAONZavFunyhhFQiPbgJgUMU8C6o+2W4Q5cqq61cdogN/HUa278IsZrMoQhtiL8lYiIGvQBb4k/jPz4HqjTs5Ph8E5ipqQ7ZF7upIn1rE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=ilBcOG/y; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1fbfb8e5e0cso20293765ad.0
        for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 20:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721013538; x=1721618338; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ju8DrbZ6bInn88qO2FCZ8unT05Q9AQ07iShZqqDav6w=;
        b=ilBcOG/yPKL1UdO6cUva/pe8UVYOpp3MniKZ2nXoiihc1Z4wGyjfCr4r8khgH6nS8n
         osFPpgeNqUTYVwfDQgFw+tkbWqSN2kSYwDPHiKtGnp2y0svaa/G2iaratisLGQKYtpyV
         qLTjxO+3iFsXS6LVbMP0A/FCvu8zt++46cyrpy2vZ1npxpKsynj9fWBzFNA1sNseEO2B
         DAvAmZZSqgv+eHa7k80eCxJLWih9wLm6sUqOhGlT/ecoaDfVZaRe7B9LgCZy6SLl74eH
         Gpd2oMxYPY1XFPJkEa6TVrp7gEHV7OuiuAnDVeWMW4w9FYBkypPBitR8vHbbfy4qCm4N
         iWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721013538; x=1721618338;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ju8DrbZ6bInn88qO2FCZ8unT05Q9AQ07iShZqqDav6w=;
        b=OvLJ3qNtSNX2bRfUIggPJ1ZjYA+JrJfswyP6oOeo9h8nLpwvfmAJoiiERbD4KCZQvE
         dkj+IZp2c/SdKnCISSY6vs7oPcXV0WEJowAwPg1jL+Dq4NT3Io+fNtAlh//WBj1ZqgB7
         AmtLI8tJosVlmGH6hEyARddAasTFIqR6QCaAMPn3jJjrrNfJp5QbAdoOB9SH3rbkrnRh
         A69EEqgxJxGHF3r+s+LGVSuzHH3rp5W79f1gFNcx72j+Xy0jWNf6EsYefIjuW0tWZMaQ
         ElRgeuKEcktInip34Fxl/X4qDuOZIKdytzECLLqm0Imm7pRLb08IepzdSUAKxt6s5o/2
         Ak7g==
X-Forwarded-Encrypted: i=1; AJvYcCUZEJUm5o/3eGWb1KS2TrU5KafS/FX/rdIYSPCQrqKf/Cf/CRNm4AXAhaDOirdfMmw4vI89vaurMr+nwhoR2zjx0yB/1jlql6/bIQ==
X-Gm-Message-State: AOJu0YyfTashfuZg3wuysdFgWDWeEAtoq0AEz50H4Bn0k6KShUoFlSDF
	ujwQVcdIG7fgzx1Yk63n9qJ+LcvP68ReAueS4u+HH2Dew3uScQ0+fIqEKX6d27k=
X-Google-Smtp-Source: AGHT+IHkwiw3EzjwMCGtmvmLnp16oQUFGBX4iFQ0TKvfa8nazIkjDovF36AKWz+RcScrp1yYyjzrew==
X-Received: by 2002:a17:902:ee54:b0:1fb:5808:73af with SMTP id d9443c01a7336-1fbb6d91566mr121255385ad.61.1721013537636;
        Sun, 14 Jul 2024 20:18:57 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fc0bc451e4sm29962635ad.247.2024.07.14.20.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jul 2024 20:18:57 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	airlied@gmail.com,
	mripard@kernel.org,
	dianders@google.com,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/1] Fix the way to get porch parameters
Date: Mon, 15 Jul 2024 11:18:44 +0800
Message-Id: <20240715031845.6687-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The current driver can only obtain the porch parameters
of boe-th101mb31ig002. Modify it to obtain the porch
parameters of the panel currently being used.

Zhaoxiong Lv (1):
  drm/panel: boe-th101mb31ig002 : Fix the way to get porch parameters

 drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

-- 
2.17.1


