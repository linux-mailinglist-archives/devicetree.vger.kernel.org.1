Return-Path: <devicetree+bounces-108518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FD5992DE5
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 15:55:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 486991F23F4C
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 13:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ECDF1D45E2;
	Mon,  7 Oct 2024 13:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FWNIV/FU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF35B1D4176
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 13:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728309318; cv=none; b=QcpjGI8SocaacBpMz4lceqYRKvI4aMaLUxt0sJS9acCoGguhoBx7tQ6Kc2BNYdM5I/uLYezmdhB8nM7j6IO7MXuoioxROvsLMSDZK/qtCupsI9p2P3pLi5mT4eGipQPC1l5i3DB1SRnmrnW6uJ6cdOnRAtil6iPibuN35qBKkCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728309318; c=relaxed/simple;
	bh=zMkYuC4k53t/2vYMskqXDg4dImpJ3Zc8B0tIY41PagU=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=iocFFCwV5QuNM1vH7cup6VLFcvD/3RobkB00cTk2k3qmsfm7joCuEuxl4ONosXUISRv4brhNnhfRJD9zLYYHIN7Ncs1nh4Dx35pAIJRvebfIoHJke4wjCoAa5nXkKh5nnGaXwsl7jSu6GK3YY/Klh7sO075YuFMMokArYsTz1wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--joychakr.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=FWNIV/FU; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--joychakr.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-690404fd230so18535727b3.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 06:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1728309316; x=1728914116; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jb+jaPaOusLrFyoBjXM/LeuJGBrvwQ1D0bf5dCdvEsw=;
        b=FWNIV/FUyq9ISqgJykEqQP6QRV1Z5HnWlz4ju9k/WLvcnoBXx6UuL2IkOHK7EJ60XM
         hOPRvS4rG3dmt0NP2tytQQsfCsJJFvxuZvjacDXnyz+8hcAtafmMiEw7bLgN3DZzrDiY
         V21N3pKf6gudq4R3obKmm9yZdqpjPRahMJZp6QsFaLEGvXbaLb5GonHKMsnuTilb89IU
         AUqJSGFCinshurWAx2YtaVPpp3DiGHKDw1p6Wi076JWvFyehde95DaKOBJ8S44637IXB
         H0wvKLPKosd0yVBNgaVB3yPUtTNeQuMxiyrgARPu6eJzLP/rLYPUvKbgeLtLeqacKUP1
         wP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728309316; x=1728914116;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jb+jaPaOusLrFyoBjXM/LeuJGBrvwQ1D0bf5dCdvEsw=;
        b=YpCF0YqBZ2P728xxCVk5eFr06AK6SF3zXfyPvwhjFZMTAcBeQIJwlPhbIN3q30VAy+
         8FtE9fZiF1UEubyaXmJOCJXVQQZKz+Wmn6D12HxPpM6WaHHwtlch2Wec/exLqrG53LVo
         3+DUB59RpInVEKx+JfdnRtCxaQ2YRQcqvY+hy46zCAH6wolRWQqMfF1715eWjFCDJwYP
         +kxXR7mffJ3W30p61UHVW1hZxS6NTCLcYoJMra9ozKIO1iHmGEVL7eQ7iXYZCwmH7Muc
         HFEChDfuEHCdACeDna8lZ8o7lsnyHgYjvAb7V4OgU1HxFUby6W4MmeZZEyg8DNOTYPip
         PEYA==
X-Forwarded-Encrypted: i=1; AJvYcCVTUW9txyy5tLN6cK12+CWxtSpFYukuMks4x6bQR4nYuH12ZJPKsdE6gMbaoITiC6pn+SGhLAC8sbrE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/xvLd0Xt1WLNnSw3fr+HNMIszk/3Jn3kzGXRE+BE0LkdQzoQZ
	v4fXPHwWLHsw7D2kW+iBQA1coB/QVFxqdBZqG6x75/TFohr05mZJmaEE3OnrC00mqe+AiMxyUsV
	CC/wJISLzgw==
X-Google-Smtp-Source: AGHT+IHVs/zdYgZDtbB6oc0KAm4aIUJok5s4kXcSvZw8LKcF+F+T7+c3qaXBYpFFqVndgkIcTG22DFH5Nkh1uQ==
X-Received: from joychakr.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:6ea])
 (user=joychakr job=sendgmr) by 2002:a81:c746:0:b0:6e2:1713:bdb5 with SMTP id
 00721157ae682-6e2c729b1e1mr413977b3.5.1728309315945; Mon, 07 Oct 2024
 06:55:15 -0700 (PDT)
Date: Mon,  7 Oct 2024 13:55:04 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
Message-ID: <20241007135508.3143756-1-joychakr@google.com>
Subject: [PATCH 0/2] usb: dwc3: Add USB3 Gen2 De-emphasis setting from DT
From: Joy Chakraborty <joychakr@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Felipe Balbi <balbi@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Joy Chakraborty <joychakr@google.com>
Content-Type: text/plain; charset="UTF-8"

This Patch series adds support for setting 18 bit de-emphasis setting in
PIPE4 spec from dwc3 Link registers based on quirks passed from device
tree.

Joy Chakraborty (2):
  dt-bindings: usb: dwc3: Add binding for USB Gen2 de-emphasis
  usb: dwc3: Program USB Gen2 de-emphasis defined in PIPE4 spec

 .../devicetree/bindings/usb/snps,dwc3.yaml          | 12 ++++++++++++
 drivers/usb/dwc3/core.c                             | 13 +++++++++++++
 drivers/usb/dwc3/core.h                             |  6 ++++++
 3 files changed, 31 insertions(+)

-- 
2.47.0.rc0.187.ge670bccf7e-goog


