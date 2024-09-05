Return-Path: <devicetree+bounces-100371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6756696D70A
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 13:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24D382830B4
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 11:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C93C1199397;
	Thu,  5 Sep 2024 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="IbzWBDqM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640B81991D4
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 11:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725535594; cv=none; b=J962XpTldekBcUWK5vIkTGIAwIQTjPoHIdPJjCY90dL/We0kNITtnhyZUWtxce7+AmnT2zB9DY32cW+YDo+m/TUCaXc6zQQ61M362lEAYhPRXxKtYBkIZxquKoZVgMN67BU9whFe9LkGjAzwkMCobKD6ev3UihNgq5H0/cz07vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725535594; c=relaxed/simple;
	bh=WLkEW3TQoHM0CaqvHP+UnEcZrNRj2Yf8ItE7bUlRtS8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oTjNMWBOp8zIU4BGnbKfxhtP3H0TdrreK3cPutx7tfCq6W71PsT5sub+cEF1e2D3kHjoFw006DDtPSN1TR4W7Nx7XYAUre7rNnWSw6G/maBiGzfSYIUWNlYtCN9dqSxb3qoh7PMffJNwaIT/qqQ5gDpbyFb5hyTE6TqFief+B0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=IbzWBDqM; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-204d391f53bso6531315ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 04:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1725535592; x=1726140392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sETn7qpcDB4MO8FELll1einBheR1j7SuMJsqhl5kLhI=;
        b=IbzWBDqMVC+Hp/NzEdJ6U294LRXFqcjOe+/0OBZbBT+u4PRPbPrC13AzA0ohZB47+L
         b/UlbjST5KV8ZrXETyfMJyngg+c76ZCu1RTrZlJWsEFtWYDuTZ4PMFhA/UwTqmiBcwhz
         Z3M7ltLTvQ1m1IpvvCA+mSYIN63h2a70yxc3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725535592; x=1726140392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sETn7qpcDB4MO8FELll1einBheR1j7SuMJsqhl5kLhI=;
        b=FCAJ0zNzaj+7MUUXoX7zkoesS1u1jjSJtYiXthIYPZPsUcrqJ6pdP7J/pKk5mCP5Jc
         FzXq6GIcmSQwFjmK/IjmsKIcpaAGBdxfd3rGC6JUu/VtZeeyY65pMGqfs170SRiWxgzC
         idqNnSjy1JpEQxFD2EhX4As++TZ2J2tCGazhA4Mdrdf0pHBALC20i+TVm6XemETViWdm
         R1DI0a/xw0Go8ccBxvCCp6EJic2Iv5OKyFmvr/Ogd4EWCH7sF0fQMGKlmC87lBdFoTke
         xLsGcnrxOXDXKB3ca2rncfzKI7n8jKYlfNT8ZC4U/28ZXFPoa+hoPjAJgvRwZEPe4HYJ
         iXxA==
X-Gm-Message-State: AOJu0YwyixjH2Ks/hwYrzShrD6VyUCmrkhSqV1/2CbjKK9Uwp9c170Ik
	so3MocQcHAYMqrWGgHbyRXqM7NqpCswAylE8BViVztQLnvrLK1d/gD+mnBuffPdaLghfCTxlmVm
	x
X-Google-Smtp-Source: AGHT+IGunYwZhCrW2FU7qzUCYUDtQWGncMBIDUW0JVoWEUsZn5tzewsZALt9L2+ufDVp9wFgMgxvjw==
X-Received: by 2002:a17:903:41cf:b0:206:c911:9d75 with SMTP id d9443c01a7336-206c9119ff2mr45269485ad.20.1725535592269;
        Thu, 05 Sep 2024 04:26:32 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206ae9138c0sm27445395ad.9.2024.09.05.04.26.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 04:26:31 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	linux-crypto@vger.kernel.org,
	robh@kernel.org
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH 0/1] dt-bindings: crypto: Document support for SPAcc
Date: Thu,  5 Sep 2024 16:56:21 +0530
Message-Id: <20240905112622.237681-1-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT bindings related to the SPAcc driver.
DWC Synopsys Security Protocol Accelerator(SPAcc)
Hardware Crypto Engine is a crypto IP designed by
Synopsys.
SPAcc can be configured as virtual SPAcc. The device supports 8 virtual
SPAccs. They have their seperate register banks and context memories.

Pavitrakumar M (1):
  dt-bindings: crypto: Document support for SPAcc

 .../bindings/crypto/snps,dwc-spacc.yaml       | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml


base-commit: b8fc70ab7b5f3afbc4fb0587782633d7fcf1e069
-- 
2.25.1


