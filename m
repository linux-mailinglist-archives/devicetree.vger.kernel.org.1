Return-Path: <devicetree+bounces-12917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C97A77DBE95
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 18:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EE8F28142A
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A4919459;
	Mon, 30 Oct 2023 17:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="u2it7Zra"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E2F19449
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 17:13:59 +0000 (UTC)
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1909B3
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:13:56 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id 3f1490d57ef6-da0c7d27fb0so3775219276.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698686036; x=1699290836; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N/14nE/fQrv7yXeUiJ0T0oqRncNS6lZV+I39ngsgxFM=;
        b=u2it7ZraGVU/6AnVqJrlWSr4t+dPy1Z64bAnK6Wg7nmQcZBcEZtqU/+L4b+zK3rvL8
         QcXnhZjWNBNDwC7P1ekWKt8hyKlZF2aiF8bD0JJO7xDQ4aXRZbRzM45bKZfq5p535Dot
         8pt2kLTzvKyjaFPKomQ7jaefYVgw9gqmZorp/paNRi7DSUmBavhSwnFXEQawmykENW5z
         M9CVk6f0AkEId4AvnsIHN+AHzn3UelF168Pc8u4x6ZwIWKe42t7UI0O9Pk+BkUJJjtYl
         eGn1XwM/k00qqYBZ/2ZCaFG6YsMXbPipYWTXwlDUKtJgnWjsb1oF2INEbCJFgGQzZIA8
         vgXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698686036; x=1699290836;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N/14nE/fQrv7yXeUiJ0T0oqRncNS6lZV+I39ngsgxFM=;
        b=ia0Rb98Q2fu39j9UArxiBOPuVjhnnhv8Lgry4e4IxfxRHlv69jLnVw5YsVBByzv5JZ
         JT3/AjKMnHmuJsqfBeGXHRv5xXURRr+iVTyECAVvMP5C9vZGpdHReFN/7cQIm1sxa3Cp
         4QsHTAaQWWxLazIdysel4J35X5N8y7cwjHF41eAr9dYokmpX/V9V/fIu3q1Q6mFMOf6s
         KDYr3VExMq9BgM6omzg7zEw5tR2p9G9yh+oKg7zYIn4wnmcIsevgLEpf2eRQCmJA/IuY
         oqptS0rVEAPAQ/6Wf1xXzIl7m+WR7C3RYokVWI0/a3BWEe1tdO2QC0pi7wW1CvpBs3ls
         kflw==
X-Gm-Message-State: AOJu0YzrGiydNuhRHgaTnmr+lXp4WvBIyllReOX1cMEMe0EDD6M49IRA
	gFFpIr3CvzhIMd88mG999LBMEJ4iONIw
X-Google-Smtp-Source: AGHT+IGsuHQjHdqpdleuPu5UpGMdtR3K+bQ/gAXqTzzWJ4LG9rljjOJgS9dyOlVqTf0oET/QMyj65QGvk/oS
X-Received: from kyletso-p620lin01.ntc.corp.google.com ([2401:fa00:fc:202:99ae:e3b5:518:c5b4])
 (user=kyletso job=sendgmr) by 2002:a25:d7d5:0:b0:d9a:58e1:bb52 with SMTP id
 o204-20020a25d7d5000000b00d9a58e1bb52mr180684ybg.6.1698686035950; Mon, 30 Oct
 2023 10:13:55 -0700 (PDT)
Date: Tue, 31 Oct 2023 01:13:46 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
Message-ID: <20231030171348.600621-1-kyletso@google.com>
Subject: [PATCH v3 0/2] mutiple selectable capabilities in tcpm
From: Kyle Tso <kyletso@google.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux@roeck-us.net, heikki.krogerus@linux.intel.com, 
	gregkh@linuxfoundation.org
Cc: badhri@google.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"

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

 .../bindings/connector/usb-connector.yaml     |  80 ++--
 drivers/usb/typec/tcpm/tcpm.c                 | 389 ++++++++++++++----
 2 files changed, 360 insertions(+), 109 deletions(-)

-- 
2.42.0.820.g83a721a137-goog


