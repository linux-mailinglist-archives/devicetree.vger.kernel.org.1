Return-Path: <devicetree+bounces-26064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC048158B2
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 11:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 981361C24877
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 10:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8DAA154A0;
	Sat, 16 Dec 2023 10:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hs5Ycn/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8002814A8A
	for <devicetree@vger.kernel.org>; Sat, 16 Dec 2023 10:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--kyletso.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-5e283ef6299so12622987b3.1
        for <devicetree@vger.kernel.org>; Sat, 16 Dec 2023 02:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1702723596; x=1703328396; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QkCDEilXtYQCIy8e9lsEDQTx5zICSWpJ/Ic2JctqGMY=;
        b=hs5Ycn/3jvMuGFG2bWbyBOF9WIz8y5dtxdaUI8qUnAM7Nm02vUETjJxpyqtbbUOXrM
         I9SxoPpuYDGHW3eATtzlIghrIAgZD6f85aDsxIgjV/SZ0sQ2zK8a2VEmDykUv23mz+55
         +6ooS4Tqt02EFfv13HB1DJWvhdv0obUeot+0xBOuoUNWfHVm5+Pi9gfffd1xaBbai6X4
         ioqhBm2I4hAlBppZICCjqB+X97BfyWqrmbRdKun7VUAJQg4ny47Mdb5WjKQEuS5Y0nfe
         jBUY8KxnZnAmcQqpTwBZOmRdkQhY+RaWmsCyliND4opRNjj0bKblbV0DZx5/mqJQdGfj
         4SKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702723596; x=1703328396;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QkCDEilXtYQCIy8e9lsEDQTx5zICSWpJ/Ic2JctqGMY=;
        b=wA/yO/Mrvw5O47Y2yWzeBCVxLqFwUrblQResHHICKOMlwjf6ha/s7N/qWcSbB7VPcq
         NIe/s0FuD3pKDWwrrR0UYeuXVaJfAWOfbSw0AvkTiFHHyogg08zIipl3AQie5vz6+ZOb
         VuLQGJvP1hApb1XCBMVyd8y1pkdDKxS+h9MLtzbGiPvvoIwj5CDFZlOAnKQiA+pvd4r2
         AyfZTarsVZjp63PDww8eATPMT5ypjhduHMukmq5HhEIPj78R1s9BDjKgWWtVqc/21NtF
         pS8p1nS/2PoXR0pk50NURHogbcL+YqfhnvSK2K7QiKlRxm0RWpyLAivYpLN04LieFwan
         DG6A==
X-Gm-Message-State: AOJu0YxbjpE0D6Zjrm7X2S8kBLTf2ul7QfRQ/ejUIZ6xb02MJW36Agok
	+dptb2fcb7fcPVXnSm8XoH5PaL8XcKbv
X-Google-Smtp-Source: AGHT+IH5HHW8H0BQ3s8e4080y8OMTeeAtCLdER0+lkahEqI4VMI1giM+SiTeQ5GjqSPRkEKIEU7L2armqYvk
X-Received: from kyletso-p620lin01.ntc.corp.google.com ([2401:fa00:fc:202:dd61:6f37:fe44:8be9])
 (user=kyletso job=sendgmr) by 2002:a05:690c:2708:b0:5e4:8ead:6e3e with SMTP
 id dy8-20020a05690c270800b005e48ead6e3emr271190ywb.2.1702723596548; Sat, 16
 Dec 2023 02:46:36 -0800 (PST)
Date: Sat, 16 Dec 2023 18:46:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
Message-ID: <20231216104630.2720818-1-kyletso@google.com>
Subject: [PATCH v6 0/2] mutiple selectable capabilities in tcpm
From: Kyle Tso <kyletso@google.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux@roeck-us.net, heikki.krogerus@linux.intel.com, 
	gregkh@linuxfoundation.org
Cc: badhri@google.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"

updates in v6

dt-bindings: connector: Add child nodes for multiple PD capabilities
  - Cherry-picked from https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=0d3a771610d0e155c9aa305f142f84dda5030fae
  - Rob did some modification on it

usb: typec: tcpm: Support multiple capabilities
  - Removed the function tcpm_fw_get_properties and merged it to tcpm_fw_get_caps

---
updates in v5

dt-bindings: connector: Add child nodes for multiple PD capabilities
  - Fixed DT_CHECK errors

usb: typec: tcpm: Support multiple capabilities
  - no change

---
updates in v4

dt-bindings: connector: Add child nodes for multiple PD capabilities
  - Modified the structure as corrected in v2
  - Modified the commit message

usb: typec: tcpm: Support multiple capabilities
  - no change

---
updates in v3

dt-bindings: connector: Add child nodes for multiple PD capabilities
  - Updated the commit message
  - Remain unchanged for the comments about the property/node
    refactor

usb: typec: tcpm: Support multiple capabilities
  - Changed the error handling and the usage of the APIs
  - Updated the commit message

---
updates in v2

dt-bindings: connector: Add child nodes for multiple PD capabilities
  - revised the dt-bindings

usb: typec: tcpm: Support multiple capabilities
  - Added missing cleanups in the function tcpm_port_unregister_pd

---
Original cover letter:

In commit a7cff92f0635 ("usb: typec: USB Power Delivery helpers for
ports and partners"), typec_operations has two new ops .pd_get and
.pd_set providing selection of different PD capabilities. This commit
implements these two ops in tcpm.

To support multiple capabilities, new dt-binding properties need to be
defined to create a tree structure for the driver to get each set of
capabilities one by one. The first tier of the child node under
connector is called "capabilities". Under this child node lies several
2nd tier of child nodes whose names are in the pattern of ^caps[0-9]+$.
And the source and sink capabilities are placed in these nodes.

Kyle Tso (2):
  dt-bindings: connector: Add child nodes for multiple PD capabilities
  usb: typec: tcpm: Support multiple capabilities

 .../bindings/connector/usb-connector.yaml     |  81 ++--
 drivers/usb/typec/tcpm/tcpm.c                 | 387 ++++++++++++++----
 2 files changed, 348 insertions(+), 120 deletions(-)

-- 
2.43.0.472.g3155946c3a-goog


