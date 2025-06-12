Return-Path: <devicetree+bounces-185098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A983FAD681A
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 08:37:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71D857AE2FD
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 06:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0C71F3BA4;
	Thu, 12 Jun 2025 06:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I0ZbN2CS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE921F1313
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 06:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749710240; cv=none; b=OMaPg6uU/bZFtA8KrCcZGND9TflvlF+CqXnJ9JH3ZLGAMbUnK8cLGQDXm8XdHYtgxCgx/Bg4I9cffrFz8Ub8uCXNY+ewcQyuCDLh231gfY+Uq0xHi/ViBdKJ8Uo4jKcm3BwJA2YxRknvRZ3BOBHDk2X86IBD/EtIOQ6ttgLWpPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749710240; c=relaxed/simple;
	bh=bDAvwbJ1VObs0AVjG1exWDNdb1A1cE2Q7nFhIZYqscY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cN+VSfa55vAnXR3tkb3PQqoRm8ZPPPXwORMGZdNMmtirWCA5ZJUXX+ShbbM+x9AGyLLKVTh/ORLl/6ccKLUCppspf4fyXXlUGen2eGv59DzNw3OvxwkOIRpPan8JAgmHX6ck56g76JjsqQjns/EN2Dlkr4ZrJRLadfv2e+NBE2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I0ZbN2CS; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-23649faf69fso5731195ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 23:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749710237; x=1750315037; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bDAvwbJ1VObs0AVjG1exWDNdb1A1cE2Q7nFhIZYqscY=;
        b=I0ZbN2CS3asXMdIlYPXxFRfIazs2bDOn0//ijsuQ2rNbCLjxqDxJCjYHc4icErEbYd
         Beu//3CYq0/qRvL6zj+EovT5tFxmFCqmxnq5rGxkaXhWFJEulJjTBy3ba/XlY00K4zVv
         KlyW0zcyk+zxapiMOgXd/5o0wPxonEPIAai4yTwslZiPZxdPi0kF1WmTANQPVI8/P7dK
         5PK+K/VLrYLdp3IO60TKnGi9G2EEkXC0XImuvAAbPITxl59t4qovgWaMAlHsx4ydqa67
         +AGHeX92j3E8M1d6aMZfhk9UMge4FtuDrQnuzcmhGw8Kbogp23rPdnODU+jzKsTD3rAG
         eT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749710237; x=1750315037;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bDAvwbJ1VObs0AVjG1exWDNdb1A1cE2Q7nFhIZYqscY=;
        b=O/I9BufCIXVS7D7pA/tiRl9uhS+Wol3jag7nY5ipg/w69mAxzKHriyHnkJLyLdNExo
         v/n3A952AKl/7QCk9GLQq6yIYFui9gj1owvAdglmqr2LB8BsgEU+G+er7vE0Nyn0YJUj
         aIcFe4fXokI70zDFbmDEeIUFd/75vURvojWQ/+1V+BN0OR6Rdx0UTZTW4uoVXY2v1/3q
         8uXRyvjeGDFwoTIqSxOES6vwuU8ODcpyzPe69kZ2KHvQtM5bGk3OkIqkaSzXyrdimcdQ
         Kjf3nap6zToafViZKxxB+T/56Xkjq35LBrxYi8XMgV1u7ybOgMAy0Ait0zGXf/gDyFMJ
         ezRg==
X-Gm-Message-State: AOJu0YxCj2xkW1EnT1zH0bBiMWWnVIGQFRHpFOhUt9bgvKyq9QW3zbb0
	RKF2SeVfom7fdxe3WND4X17+WwWo/BAaxV8JiGyEEZxTdebNCMN9Lzh2nqxIQC41
X-Gm-Gg: ASbGncv96+Tp3uzOdaArifryG9PrrB5iGwUVKJ+IGzBN53og7iSUeplk0yLadBum/V9
	HFkuVKFwEWlWcZS4RXwOe7Yu8eNMtyLMg+zeZA+EVl1Bj28R3jd4YVLeexulM9YQx95pr7Ohc77
	aA/m/IYe988O2aOILKVEwOk85CLG6w9y3UrMUDYGhPDp8xSfdhOn20VAibauQe5DVB+gO9AY65Y
	F1zZltArvtiHl/x6pwNb31ekyTZDLyX8Nghd1Z2QyGhHHCSBkv/XnJtFuSWRXe6z9T7WOOwGmin
	ZWExUqrhGAAsiZJe5PH5q+3Gu8k68QqoTwEYPzy2mOhs9RgBLDQCp4u8mstyz9L8yPJ+JrOh44o
	Ec23Y4g==
X-Google-Smtp-Source: AGHT+IFAgSaIZIurO74kM7fCZzx3Nr+2ymuq3GKroE4zD+9rtj2lGJwDvqBvtp5AJ7Yap+vV7pHP4w==
X-Received: by 2002:a17:902:dacb:b0:235:f143:9b07 with SMTP id d9443c01a7336-2364d62d461mr29150925ad.5.1749710236745;
        Wed, 11 Jun 2025 23:37:16 -0700 (PDT)
Received: from shankari-IdeaPad.. ([2409:4080:d3b:b88c:ada6:2fb9:4645:ee3c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e61b608sm6530795ad.19.2025.06.11.23.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 23:37:16 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthew.gerlach@altera.com
Cc: Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH v4 0/1] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to YAML
Date: Thu, 12 Jun 2025 12:06:59 +0530
Message-Id: <20250612063700.874830-1-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Apologies for the earlier versions sent in quick succession, and for not following the proper patch submission workflow.

In this version, I have carefully reviewed and addressed all prior feedback. The following checks have been run locally and now pass without errors or warnings:

- make dt_binding_check
- make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/memory-controllers/socfpga-sdram-edac.yaml
- yamllint

Thank you for your patience and feedback.

Kind regards,
Shankari Anand

