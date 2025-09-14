Return-Path: <devicetree+bounces-216942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A65B5690F
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 439AB3B54CD
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDE51F1302;
	Sun, 14 Sep 2025 13:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FwI51HHM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16CD1B85F8
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757854979; cv=none; b=jr+sz4o/XIAodskxDhLc8MjAvGAXuRxaAofm3ycsmbjf39hnP3RfG1GjE9M8Ooa0kAbhMNrAyLkk67noQrnDieeGRyxuyJGoSK3Ml70q69JKQOvnKoMqZpY4XxStxqPXrRaaIBdmf+lq/s6Ni8Mc2DLJIdCFirrbZVKEKGLQMVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757854979; c=relaxed/simple;
	bh=rHuGnmNSAWtGbO8Z8WgRAPBhmsVTpCs/w3FGfSbK7vc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Wc/XyA3PFayY7zxdNSchnjNP4ZGpA+1u03sn2xTfgq/Wm//ORgn5jYUCNZ+2nc/BZp+JqWNUiO1oYR0tJYxeIiiYs3bjnqdKwk07k2Mld6W4gdtZAMYXag/ncO8zhOUhMUonOtgW1cdTsK0izyVKE8XAnIE7MByj5j01lqzmin8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FwI51HHM; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45f29dd8490so6637695e9.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757854976; x=1758459776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t3UizsZpg1Ha/ybkP8NHn55rTYoNi8egOSFYxh+y7kw=;
        b=FwI51HHMACcv7AjyhdBSY3NnDunfL1bVOzp97DOdRWHrDaLdE07dyG8J3F6K30161y
         LHbPWmB7fn7YACE3wEIBrXUnP2EyxiEoHeb6MiozeqtT6VGoKLWoa7IP4L6oACeEZOUy
         vUuonmB9JPp90AyB5t2omsaNFoJhMv4Y239gv1N97ZWdqaa+zYl6D8fPmSH9qb04g462
         E4gtr1PSLqSOQudmmznnODNCMNB4zpO/qcARoKI7MjWSwSZkuKdM6l41slOmNOLyjiJJ
         o05htwq+dENOFwrkaOZdGxOgk5vQzLTmcFblUmT7gob+hoVQrIKnoEj/q7Om6Zf5wuYP
         +Kdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757854976; x=1758459776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t3UizsZpg1Ha/ybkP8NHn55rTYoNi8egOSFYxh+y7kw=;
        b=alWY7DGztjPd5xPWTMPZPV546pzB93WQuKOzRJMNyLgvdImF5woYKKACRlupolYYKO
         nEboOAjb7PX7tRgwCZdEH4vSQfRzCs802eMITPB7uU1t0tlgaUsahBsBhdYzkNpVDcJl
         j1CzLHCvRuez9hMk4ljl1MrUpe2o6cVmPNOQ0zb9mBFOGrw/jU+GgWdQC5JNUytC0Hvb
         mBdGb/Mc9bH9oTbz/vpneV0wsuLvVF4V/9yXxOo97RIuhwVl6k2QnXmIFnjBlLWgIwTg
         5gUAEH/WZa9483T8fsk2LoVa2PUkdSCoQDbRMQXOe4xHeoBFWVzx0bjNKPeNySzk3e++
         iW3g==
X-Forwarded-Encrypted: i=1; AJvYcCUR6h1KvydGpaKaW+l6EHoLsDBBGc+4yIs/Nu9R3uXNKiPOkTqwkVrBgS3/GDEyK23jocyIZSJlSN/n@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7O6/8u09a4G2jhoqEcPBoz8RNgg0uo4IEWS1fg+o0qgsLd3Dc
	ri1veFEow8nXymqKmYkbkDeKY6QlVburFq8pscq9mJ6eEBH3Nw4oi38l
X-Gm-Gg: ASbGnctJKhKN7EjaDSo7lFCsyysLcY8n/04V6iKCnFYwqy3wb6x9obiQMa3JDNnVkPT
	KZeSaVkK+zD0hLCUMHI2y5JdQWXsKSvJXoP5GDIJw/OJymy/GugqWfWJACKLzICRvah3hNljCUC
	MFuX8dQbuK+bfoCyrl90D9LBgIQs/eWDaNs/yL9WaQNtp6rR/gX6MnUXCYEV7289b8OVkrmMTxA
	Cs1s9vCvB7RcDXp1J5kh9dzbJRxGsENiwLsniaQbzrxVIImCZM52LMgX0a/pGHCMLrW/BNrOFr+
	+tpoaB7MuOqvt3+Sx41WNKWrmcLqgqubkhJZrhHn6mc5ca8he1QkiVBlt69a8da5kh9eII5jBDt
	gQHl8oE9/nk/BrSS1LM4rhJ61d8OZlIC7oPd++SO4mhpmzRE+RsXjwGCX8VUnMK7oOi1DY2TwoQ
	==
X-Google-Smtp-Source: AGHT+IGmdtP+Xjj7Yz1YjXKOoV3AmMEnzLyC4YA+29C+PPV4+VMe7iGYUdI+/lEFqgOw121dIqHB9w==
X-Received: by 2002:a05:600c:6dc8:b0:45b:8366:2a1a with SMTP id 5b1f17b1804b1-45f211d577fmr60534635e9.11.1757854976111;
        Sun, 14 Sep 2025 06:02:56 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0187f0a7sm77060965e9.3.2025.09.14.06.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:02:55 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] regulator: max77838: add max77838 regulator driver
Date: Sun, 14 Sep 2025 16:02:28 +0300
Message-ID: <20250914130230.2622030-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset adds support for the max77838 PMIC. It's used on the Galaxy
S7 lineup of phones, and provides regulators for the display.

Best regards,
Ivaylo

Ivaylo Ivanov (2):
  dt-bindings: regulator: document max77838 pmic
  regulator: max77838: add max77838 regulator driver

 .../bindings/regulator/maxim,max77838.yaml    |  68 ++++++
 MAINTAINERS                                   |   7 +
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/max77838-regulator.c        | 221 ++++++++++++++++++
 5 files changed, 305 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77838.yaml
 create mode 100644 drivers/regulator/max77838-regulator.c

-- 
2.43.0


