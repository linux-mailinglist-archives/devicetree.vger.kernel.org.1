Return-Path: <devicetree+bounces-216959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6C8B5696A
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 770463A6A93
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C78631EBFF7;
	Sun, 14 Sep 2025 13:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ND6q329a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0CDE2DC79E
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757857525; cv=none; b=EQ02wSgtCM4RoM2b5lotka8NlllDxS1Q/48Vvnpa/9Xo6iEDDyiuehtKxCPdoKosB9xd8QUq1R9OUmUwbXJoix9avryhbqAfgFI4xA7wwafTjE9tcsfKyjKO6qDOTKEABWL20CMX4f6ln9CWJEQ3yZBSMptjKcf2u5jgQaDjrxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757857525; c=relaxed/simple;
	bh=FV8p+SLdKIFqO/3EWnCpzCmMf+GNL0Rh41XOQVklt44=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=H3+OAiOadvdDoauJ0yWlQ7CVRGOAaKGfix2kBw9guLA2js2qFt4tcZXhA3pkQWaguzPDpyp3HXb9+Nfjwd1kpPhBLCtnZI8jf6rY4uzXQHCvBNIsVRIvWAIwItLyhNrcAzY54LKcf+XypsK++bwPZ0Yd2MCDzlhCALr77JQWpnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ND6q329a; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45dec026c78so33489135e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757857522; x=1758462322; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SKUqexZEitT6bzSaew+b19nnDz+WShkm3n1xJnkdMJs=;
        b=ND6q329a1EGIWzr9X2KIU+52m34E5prmFatdZ+tX0K33TUQMiGGV4gk7iSJsD9ytIG
         w+yipH6/RROp+7xDLkUpb8OHQtuey3YeTfp0roesklnuepHQXhZ6fRxgLOueVdtF7o61
         v9qmMqyUNP/Wy0NilM4L53w2oyPR8Iar3uoLYfN83Oq3YVyTT+vXFZZqUMmXQow2WFGj
         6IczwMeT41IFdRwKYke/p7TAtwoJCmbeaAwhqS7H4BWfxdjcbyT5eDJfrKnYgiilIjDK
         RoCYhWRAMqVJOb2mFnX1FRH5FU1t3r7lzQyG8llMrzOFjG2a+iShmgtUtNUyPQv/s6pg
         akAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757857522; x=1758462322;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SKUqexZEitT6bzSaew+b19nnDz+WShkm3n1xJnkdMJs=;
        b=tFXYOMhOuBvK2dfwEN2z/fOhtmx2iiw6S8cFv8xMcA7w8lULCadp8tvmR4FUdNS71/
         wtSvf4EVAiIDhSdNTOCiweXCs42qFYyZ52Kwrv50/GlewqnohahAM44srmcndtVzyk42
         IZBCIPE3p6/7bHgLbmvpqZ4Y7IvULC0F799UICnz0RMilrlJnACQpD4rHkQs3p5zkViS
         yZx3WUeiZcp6wixXp89X43dVyQYFHf4HtZ3cjK2Mq9SXWSynC20Ng/61RYCncGWdriqs
         bKxz/f2JydLiMl8l9pJzVVsJnJ9jpuB9sXZOA2+T5L2jgNppaU1CjsHqu7eSM+6hYqRS
         S4Pw==
X-Forwarded-Encrypted: i=1; AJvYcCXuXpSGJIyaVC45DbwK8G9TXqs8CWp3EKqkqcrwvkNf/ipkPCPIvaLk4lYvzOpgr8IjmBXYj/1Lqcpq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe3SdsnzmTsimSh8YP1B6LIlSM/txx8ngknHCIiuLwskGYuKAp
	InTN8//nRNgR+cEuzHGSa6RvUkXDQgN1HueTlsRLHMg9L4I41jeIuxo7
X-Gm-Gg: ASbGncvD2+QbJBHeKNyTkijnhYMgGZ3yAsj+kOqNk8DPAChe9lFnIZHiHj1P5imtWHc
	Qnz/Jkg85q19AT28X3ZoS1iiFaOTg84eF9B/ga5jPpK6UDGHnlzRK5HOJzDjduVrb2haix3hyqx
	dtrtb6+hc/+TCPl7rsTM++xON9ElujqiOw05g8I+YORcEme5A1liPuNVLDQEmwzfhLuj8bGnKyy
	5Ci+NT+ISCWwDnNYHW5D2SNROA7gHpulyWr4BFSXnqbt4A8FtjZvdUH9JoX48Vg8nUmZa+wXzww
	JjrWxj+nckaC0/cVC34aLp1N3rFo6C4q0WI6EGntZxmXBh2K3u7HkcBuQtNTT5AUiquN3lD3c6H
	usml0Yy6NNYZysob7ylAHxDfOM4pw/bA7/R7NzDihU43cW9qY8MMT9eQB9PJ+yUo2U5+YudfLNU
	9VQHT/SUv5
X-Google-Smtp-Source: AGHT+IHBvWsNWGPacN8UTX5YfRqDAFI5tNEvxSQah7xL7TEoK8EoMA73bDud3VP/tlRdpm4BfsNPjw==
X-Received: by 2002:a5d:5f53:0:b0:3e5:6297:dd21 with SMTP id ffacd0b85a97d-3e765782ab3mr7606735f8f.12.1757857522073;
        Sun, 14 Sep 2025 06:45:22 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ea4b52b7fcsm1467591f8f.33.2025.09.14.06.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:45:21 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Input: s6sa552 - add a driver for the Samsung A552
Date: Sun, 14 Sep 2025 16:44:55 +0300
Message-ID: <20250914134458.2624176-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset adds support for the Samsung A552 touchscreen controller.
Naming is based on the current s6s* convention, used for Y761. The
IC is similar in functionality to 761, but has enough differences in
registers, bits and functionality to deserve its own driver.

Best regards,
Ivaylo

Ivaylo Ivanov (2):
  dt-bindings: input: document Samsung A552 touchscreen controller
  Input: s6sa552 - add a driver for the Samsung A552 touchscreen
    controller

 .../input/touchscreen/samsung,s6sa552.yaml    |  54 +++
 drivers/input/touchscreen/Kconfig             |  11 +
 drivers/input/touchscreen/Makefile            |   1 +
 drivers/input/touchscreen/s6sa552.c           | 439 ++++++++++++++++++
 4 files changed, 505 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/samsung,s6sa552.yaml
 create mode 100644 drivers/input/touchscreen/s6sa552.c

-- 
2.43.0


