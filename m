Return-Path: <devicetree+bounces-21573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F65804568
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 04:01:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 159281F21348
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 03:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B557E803;
	Tue,  5 Dec 2023 03:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="JPfe9bXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1998CA
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 19:01:20 -0800 (PST)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-5d98fde753eso6907967b3.2
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 19:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701745280; x=1702350080; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xlu9+t1DOTHoAK10hD5B5rkt19wvJuo0A6ryzFaunG0=;
        b=JPfe9bXc+oGpxL0G2OHXkTGaqYTvLGNwpMHxvWnnH3pJnVoBX4bfjhIxxeyY7mcC8i
         t4e2mvr4blH6qhnBKfzjwEomxOxNUo2KqcYRF9rsn0rEpxqVaKN3eBRDkex8qBNwcQ/B
         eris3MxEYWK4TcA7oSTaOiiFrgVdpaPRgwaJBXLsoruMLsSzmSvPudcbRjWXxOR+nL6Z
         0o8OCCen8K1HBeOIhpBPsyxCpR4bRyqqslCYoE4GBqv1HwLnvrWjlTczj3cv06nQ/MdW
         QQXCPpTs19u/o1krOTmDmSKaFEZZgC68QofUhQGOvqJjy7H7fVULmgAokoKIaA4CCDHc
         6vRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701745280; x=1702350080;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xlu9+t1DOTHoAK10hD5B5rkt19wvJuo0A6ryzFaunG0=;
        b=QJIbkv+qFbsL+9liT8oIq1FApoQfv9FSpzeHCwQyBv5ZsXwp5eebiX+uN6VZL0mCbo
         /mF3aM4afuvpe2kHQWyOVNyA8zwQR++bsatjs2Yt7i0xlRi9og8IKPvazoATQE8hvBJq
         t6NR9d5Qm6EOkAV1wlL5AjnQS8jA/2dwitmRQPQ4KPsWlR1VtAcqx/ZJVa1gIHAyHfr5
         uy5aYM6fuuyW910UyDteQqHoXuWcRHqWm6pPkD50lFk+rmrrnVZGO7kdfG06MOcVv2Cc
         orfwkiN3kFuhdEJlzH1hnVKgwgLHG4p+bk9+YIo6GxETS3jwxFsGxyRzJcQbJit1dIn6
         UsxA==
X-Gm-Message-State: AOJu0YyI3GjAI0BhE87Jf1Laiw6QoyqpOUnFcn6w46TroNElw26elZDR
	v9cnU8keVkP8kuwYVS88ppdNtQM5JkbY
X-Google-Smtp-Source: AGHT+IFIaX5+NRoqRDR+X9oO3SfkvqsPc5su1wbudcbyofAFuYAu5FFuFg2nsfpjjnGJU/RNH+57gdAQ/snB
X-Received: from kyletso-p620lin01.ntc.corp.google.com ([2401:fa00:fc:202:ac51:a57:5e72:a957])
 (user=kyletso job=sendgmr) by 2002:a25:fb07:0:b0:db4:5d35:c5a3 with SMTP id
 j7-20020a25fb07000000b00db45d35c5a3mr1059913ybe.0.1701745279879; Mon, 04 Dec
 2023 19:01:19 -0800 (PST)
Date: Tue,  5 Dec 2023 11:01:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
Message-ID: <20231205030114.1349089-1-kyletso@google.com>
Subject: [PATCH v5 0/2] mutiple selectable capabilities in tcpm
From: Kyle Tso <kyletso@google.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux@roeck-us.net, heikki.krogerus@linux.intel.com, 
	gregkh@linuxfoundation.org
Cc: badhri@google.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"

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

 .../bindings/connector/usb-connector.yaml     |  88 ++--
 drivers/usb/typec/tcpm/tcpm.c                 | 389 ++++++++++++++----
 2 files changed, 362 insertions(+), 115 deletions(-)

-- 
2.43.0.472.g3155946c3a-goog


