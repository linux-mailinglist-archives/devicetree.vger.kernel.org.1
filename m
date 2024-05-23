Return-Path: <devicetree+bounces-68765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 963AF8CD804
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 18:04:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C71F51C2107A
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 16:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A2CCF9D4;
	Thu, 23 May 2024 16:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="H3VqYIq5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f73.google.com (mail-wr1-f73.google.com [209.85.221.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4ACF17577
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 16:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716480263; cv=none; b=pWsPAeaJCxttIHUj6m7dH81XBORxds1oedaIDk3IX5RcKZYAEQ1ouU1+NXgp7jR9I/FichDpDEmse7mvhCnm96zHJM9qYHISvhPCID/xo2A5zkQSPFvacDSq1L0lk22aq7ccR1puMMMOo9GW1DkK7Q27uO6sevi/1JYUhhNAbmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716480263; c=relaxed/simple;
	bh=BuD6BMMZY1IU9ovL1we9YQ8Gf4eDIfH3zkHxIMtE8+E=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=PeTTnwxCir/vPcAqtamp3i7/Y4zKkLR0c+ZrfFbSGx2C2rVBOULVcmGK8xOT6Ybk5if1J7nDVDUINpPTm06jEWb6QdMBNiK5FhYSLbYI5GILVF4VFEuzSpfSWbBsR1SFr6r2dQ2tvBD7zZ0k8il1s6zvAr2U4kdsRYxv3w1s1EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=H3VqYIq5; arc=none smtp.client-ip=209.85.221.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com
Received: by mail-wr1-f73.google.com with SMTP id ffacd0b85a97d-354e233a2b3so1357642f8f.1
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 09:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1716480260; x=1717085060; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KJc0+7UIJqgiClfd2IyE9FS/NB7cg6zILcm/gVeKAEc=;
        b=H3VqYIq54YEK48gX0dUIGhFcIT870tSErVz/b6xgsra/BUJjqkjYk3GOISfJ86qhmA
         XMlQCUGCMV4jlgv/KBYme0erBw9YsFFBt1gICLRWGGrwNAk8QfcRBrXX16XloXr3popk
         p7lL6RsAXKxNezJDOO3TVA1EWSERI40gcONDqQ983LgN2YfySJq7DxiPftnJ0WcTNMVN
         BGXzcqdddG2xiPrjjhXgPLw+b8hpo0MrAbnlywwZ40IL1ssxGd3AMXrqUtKk38zSNfoG
         Oe6QvhffMIrfYPbZwkZ6bKBKhw0zviJPRwVkugC29J/0kgw8J5WzuzTEQM+eyHy1UyWQ
         aSpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716480260; x=1717085060;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KJc0+7UIJqgiClfd2IyE9FS/NB7cg6zILcm/gVeKAEc=;
        b=hdLD8X+En52chGRCtLuL/MWZMmaMfy0hGW+lcKAOE5tWjo4BNjyd3clhPFtuD3hOcg
         TCrsxKUYDQP6b0ZBIx2k6Rnm/l/Qcuw+Mu2wKP37N+W5kUcYlFK4IjyN4aGrPAhKJ1CY
         LVWI13OKWrSTNS/Xa74RtjRzQNuZ8uEWz4xEQY0HyWvmZfgeJpc5lHU79XrMZuZsjjpu
         7I5O7pybkzV5cSxdKqLz9MjYkJCpVRzaYkcczsZI/HiNSOE7Tse83kLSZ2KS5y18EKLC
         Rv2T568nIZN8Um4L8tlq0F267ybbu5kQ1GSntSW3Y18KB1/5X3WNQ4t7qMSQBtWCvl3Y
         JJIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWs9WibpohfUhKk4HGsg+XqKn0Y3tTw8IVpfzQs8nuiX1Hi/uC1KiJEz79zyw0mFyuYLWc8xDAojxKKxlh8BUdyb/zB9UcYxpB6PA==
X-Gm-Message-State: AOJu0Yx6ZPW7ZUEEhvyTA7m6jEzKismrTCHyGj3Cr7UZ7qSHt7g3tW1D
	y8y0EjFnLO1kvukbM6hSKXO8pwbPc3rFwQ+yT1ZJZePeUFutcSCOMXwHV5JQ+Kfs2o5qMgSJRu3
	8ovzLjTBARlXdnhfDI9gkWjzG6A==
X-Google-Smtp-Source: AGHT+IHZvHdfnxRIHWXIAw0MHICJf3TOgQlRuQDw1UHlIqpoFyjyoO+79uYf5BQnoHDVDIsScF9ysHpVnvkHycWldbU=
X-Received: from sebkvm.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:cd5])
 (user=sebastianene job=sendgmr) by 2002:a05:6000:1788:b0:343:c54d:28f7 with
 SMTP id ffacd0b85a97d-354d8bb14dfmr11021f8f.0.1716480259991; Thu, 23 May 2024
 09:04:19 -0700 (PDT)
Date: Thu, 23 May 2024 16:04:11 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
Message-ID: <20240523160413.868830-1-sebastianene@google.com>
Subject: [PATCH 0/2] misc: vcpu_stall_detector: Add a PPI interrupt
From: Sebastian Ene <sebastianene@google.com>
To: arnd@arndb.de, gregkh@linuxfoundation.org, will@kernel.org, maz@kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Dragan Cvetic <dragan.cvetic@xilinx.com>, 
	Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	kernel-team@android.com, Sebastian Ene <sebastianene@google.com>
Content-Type: text/plain; charset="UTF-8"

Hello,


This is a small update of the previously introduced vcpu stall detector
which adds an interrupt to the virtual device to notify the guest VM in
case it stalls. This lets the guest VM to handle the reboot and to
panic in case it expires. 


Thanks, 

Sebastian Ene (2):
  dt-bindings: vcpu_stall_detector: Add a PPI interrupt to the virtual
    device
  misc: Register a PPI for the vcpu stall detection virtual device

 .../misc/qemu,vcpu-stall-detector.yaml        |  6 +++
 drivers/misc/vcpu_stall_detector.c            | 41 ++++++++++++++++++-
 2 files changed, 45 insertions(+), 2 deletions(-)

-- 
2.45.1.288.g0e0cd299f1-goog


