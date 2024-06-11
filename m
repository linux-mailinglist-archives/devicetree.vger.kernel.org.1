Return-Path: <devicetree+bounces-74523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CB1903988
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 13:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FDC51F24D0B
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 11:03:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D4F176FAB;
	Tue, 11 Jun 2024 11:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EXYfL+0N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD99C172BCC
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 11:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718103717; cv=none; b=RTsQhbAFmFLrzyBJTUa4sBAOBxqURrr6J1b5rFgVxZb0sJOrtcTHzZ08HZr50D5MSgK9JPDwW5ZYxEB+6Enu79+KkJcVdyqkgepC+gIUBdaGgct6lDskDKIRiaSxa6/yTcg8wo/Kr0Kmn/7Xv9pKjBm4pm+5xgjPG5tk8k090hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718103717; c=relaxed/simple;
	bh=0BoR/ySkUdp86yQU+xkkVvDFb1VlTIvfRG05tr3vSAg=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=mQJzygoX3Sgit51p5y9yFehOOXBRClaPBbNQqJQr4aUyzAaAXmXREB0lMiBOmJ3ojqvjZIgjtA4k6+v7G1Ukeny32ku2tZJM96d2qE9xNSyapmciCMOukilufP+E40pxMd7D8W774YYjs3uqTw6wOoF96L7Y7FXmYcwcTpT8c5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=EXYfL+0N; arc=none smtp.client-ip=209.85.128.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-42181c64596so5576535e9.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 04:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718103714; x=1718708514; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eYv3kpEvUfvo1XGO8nCMMZZVqKU0cSbjSBA134k1VjE=;
        b=EXYfL+0NQmChVpJZaFVfA2+5Wu6HRqzl7wP84rnsswCeW5x1mQaZrka5i4XKfR1DK1
         A27nx/LBJ+34U4N17OQXYdnAAkcEU8x1Lrzz9FhMtnAYSojCmEn76qIGGlDp0HBtWLbz
         CfvahTX5+r6B1vPVeWvs9xaOWA//104aihND6vAIrGyyoCa0eX3KgwiBBHS8u3ThDPCU
         lZqD4ZpZnh/8yyOmqaOpTP9DPLczcjchczhgc5bEyAsVRh+W8pAGzCRx8l9eiMfMAGFY
         VBP8WQ55rNL0C1c5h+4/b1F7rVofc1GrxhPLqLLxIuk+1/EWoEwCxkcsk/zoBafaCnpV
         xFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718103714; x=1718708514;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eYv3kpEvUfvo1XGO8nCMMZZVqKU0cSbjSBA134k1VjE=;
        b=uVM8GSSEJ3aO03FleCz8d9Bk0aiY1Ct0n/BT1cRFGe8TbjiOoUny2x/1R9rjO1FTZZ
         w1se23XlBDV1jOErjAfV4mrPK5D2ZUh4q7eNNV0WICmdMBjcaFSex3fSRyVJMzYzGRRo
         kj2t6TxvN7+VbazUK7epNbgcqYjWk6ix4op5n3yJLMpl+wQGptK0oPmoIsdE6fXrfjns
         5AUary2FFl7KbJmONkY1lhZcptss0dIay7JmUqeVKoWuOxGsjlnv6TfQPUCXOgeIHju2
         XoGAq0V3v7kaIrCkak9jtX2aiwfGsqnJo53lThdE8vpCgQtAUVyprU1q+GIaLG63kBG7
         XBiA==
X-Forwarded-Encrypted: i=1; AJvYcCVcQ3670D1D0iJuRAlY/D5dUuUmhA3wkW/HPxzqgiTXf5y+YIuR3QA3ASP47qQmUvt5HMVqyS7HzRtsGPrL10W/dHeGmyzEDIXXXg==
X-Gm-Message-State: AOJu0YzbWfejwVbzFzIUBrCxhk3MXgQeybce/u4lXwT40lv/LtMJzZlu
	9aVvbaRBW0M8WdeKm2QLLjvr1TGzlSX0H0yY1T+rllfE6OCAUwxpgY48aX8+hQ+py5UnZJ2c0kv
	ozFEEFTyMr4ZtMYqsDpMy27Hp7w==
X-Google-Smtp-Source: AGHT+IH84YBw2ZmyJ2+Ml1KaV0R5/LVaYWBE3YAE5+auTkzKnYMkco4vTiLOSQDUFdAmJC6oe30A8hUqbzq8abY81VI=
X-Received: from sebkvm.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:cd5])
 (user=sebastianene job=sendgmr) by 2002:a05:600c:3ba6:b0:421:79c8:dd2b with
 SMTP id 5b1f17b1804b1-42179c8e02bmr624795e9.4.1718103714137; Tue, 11 Jun 2024
 04:01:54 -0700 (PDT)
Date: Tue, 11 Jun 2024 11:01:35 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Message-ID: <20240611110136.2003137-2-sebastianene@google.com>
Subject: [PATCH v2 0/2] misc: vcpu_stall_detector: Add a PPI interrupt
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

Changelog from v1:

* 1/2 : collected the Ack from Conor Dooley, thank you Conor !

* 2/2 : applied the feedback received from Conor and used
	platform_get_irq_optional. Removed the error messages during
	probe
   

Thanks, 

Sebastian Ene (2):
  dt-bindings: vcpu_stall_detector: Add a PPI interrupt to the virtual
    device
  misc: Register a PPI for the vcpu stall detection virtual device

 .../misc/qemu,vcpu-stall-detector.yaml        |  6 ++++
 drivers/misc/vcpu_stall_detector.c            | 31 +++++++++++++++++--
 2 files changed, 35 insertions(+), 2 deletions(-)

-- 
2.45.2.505.gda0bf45e8d-goog


