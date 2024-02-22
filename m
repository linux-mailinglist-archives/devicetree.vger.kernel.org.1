Return-Path: <devicetree+bounces-44581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D7085F006
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:46:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D798B1C229D9
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC0717577;
	Thu, 22 Feb 2024 03:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="HxIurYKw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624711755C
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708573589; cv=none; b=gdi5HN4nKoHnAOerhSV6MutGu+ZN0HcvMQS9tyXvaJ2tDkS+uGjoF3G8y2y7zhI/pP85G7qLBJmOQCb/1mCI0ReVwpFU1RbvzthP6gbiiehyc3NyM4rNwlthL+4CCeFpAVdUXCbsIvlzqFwsYTsA9qrBR6hAqU3JA3UUosGTiZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708573589; c=relaxed/simple;
	bh=vA2pdbQ+LBQGE4JsVOwYzj4zQ+3197cEH10/uV1J0ws=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=cexTaX1HPR6B4rZUKg90G0khFQI4Bvc24o0d6yJStraPXH5mqr5hFKs3QoKHllw781qxFoc7bZqiQSppcXTUd8EOYBlJQpqS6xhz/x8NKThgB/l7gJ2pWY2jhhtkLqpqZ0CRNWATqTThWUW0+dmSYUv1ODoXpNJy3xUwvfhHMXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=HxIurYKw; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-dc6b26783b4so7319979276.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:46:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708573587; x=1709178387; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=708QuIQsvoQpwRBXFqGjyGgcNojmh8+A+3U5/P9lDlw=;
        b=HxIurYKwX3sPRmzF3cxmuJH2RBJsnAmHFQis98yKwvtmPRm32AAdE5g470MRbo8D/X
         BCDTjz4WLhWNC8ZwsQk/23ikchbCB/z0cFB3ZK3q06Uy/acd371eI35fl8v/lCkozysd
         GUPzLyChQ/B1JlB2juHpoMwjPm8hjFEi5C6e9a01OQKJg9JkyNRR9wkGdkSv6uzOylaT
         DORMwkwAPHKpm8MwBJQl7XO7QNtoLLl/ycdylSRHNqNVKws2gcKsS37aDoxEf4vCBXnS
         tfYdhhIJysx1CvHjtKfvLskdDzJska0CDw82Eme8cefRs2jQa92I3+CD10T/OKJjKOvk
         feEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708573587; x=1709178387;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=708QuIQsvoQpwRBXFqGjyGgcNojmh8+A+3U5/P9lDlw=;
        b=ddXezRQjwsMDAac/eTt5CP1fAnDFGs7aBn5iURt9b9a1bzwtnHfg3tkdwdPnKi95pT
         ulwwLojg8nOS32J66yEcZRFUUlZK0a+vNL1xPAYRK6FwTDPTehIDEteYhq2A62KTtBFf
         s7if0+YxlWUGWEG6Y8A6V2WATqZ2a2zpoATqq+ZSVm3MYbNrwtqXNllenAvXnyNHgDNR
         ipMbVW5DWYI8/38K3S07oV7L8QEcpZL/7k9oLteDRW74cxP8eo5P/SfhgxlLypwicPhs
         8IULAMSls6XIdAR+kZH5hC8cSYy5tpKQhvXyBlu+itMmlH9mDRB/GXXTCw//5g4L9MG+
         Ts9g==
X-Forwarded-Encrypted: i=1; AJvYcCXlc61KjwWSZPbK4ijEBW8gU7/lXzhTVoiONlK9icPE6gv9FFf6JAHRAJJkFoTrS/wttbzeWlyJGGpKkH3XNhRvjnpU5n8ksTFEYQ==
X-Gm-Message-State: AOJu0YycEYbrax48vQmtArOhdskc/T7Ad8r74VKbl4eITQtO672JZQS6
	wB8DnEvImVPBDdng8CY4ztZJnKxQ2hQDfsI5dRxl1YVYATh/iDc4BKnVHNuWqRwsgNVyqROshDB
	TI1mBuN8vWlFzeQ==
X-Google-Smtp-Source: AGHT+IG5iz4C0XWr0hw0lr0P7P25CRKutkzBhn/QBqN7oFtCGa+/bzH8SlB+2NPEB5FLPXb4rj+ArO+SQgqeKzk=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:451c:c6c5:1fb1:a2a1])
 (user=saravanak job=sendgmr) by 2002:a05:6902:1008:b0:dbe:387d:a8ef with SMTP
 id w8-20020a056902100800b00dbe387da8efmr44003ybt.1.1708573587147; Wed, 21 Feb
 2024 19:46:27 -0800 (PST)
Date: Wed, 21 Feb 2024 19:46:18 -0800
Message-Id: <20240222034624.2970024-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Subject: [PATCH v4 0/4] Add post-init-providers binding to improve
 suspend/resume stability
From: Saravana Kannan <saravanak@google.com>
To: Saravana Kannan <saravanak@google.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>
Cc: kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-efi@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

This patch series adds a "post-init-providers" device tree binding that
can be used to break dependency cycles in device tree and enforce a more
determinstic probe/suspend/resume order. This will also improve the
stability of global async probing and async suspend/resume and allow us
to enable them more easily. Yet another step away from playing initcall
chicken with probing and step towards fully async probing and
suspend/resume.

Patch 3 (the binding documentation) provides a lot more details and
examples.

v3->v4:
- Fixed MAINTAINERS file to go with the file rename.

v2->v3:
- Changes doc/code from "post-init-supplier" to "post-init-providers"
- Fixed some wording that was ambiguous for Conor.
- Fixed indentation, additionalProperies and white space issues in the
  yaml syntax.
- Fixed syntax errors in the example.

v1->v2:
- Addressed Documentation/commit text errors pointed out by Rob
- Reordered MAINTAINERS chunk as pointed out by Krzysztof

Saravana Kannan (4):
  driver core: Adds flags param to fwnode_link_add()
  driver core: Add FWLINK_FLAG_IGNORE to completely ignore a fwnode link
  dt-bindings: Add post-init-providers property
  of: property: fw_devlink: Add support for "post-init-providers"
    property

 .../bindings/post-init-providers.yaml         | 105 ++++++++++++++++++
 MAINTAINERS                                   |  13 ++-
 drivers/base/core.c                           |  14 ++-
 drivers/firmware/efi/sysfb_efi.c              |   2 +-
 drivers/of/property.c                         |  17 ++-
 include/linux/fwnode.h                        |   5 +-
 6 files changed, 142 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/post-init-providers.yaml

-- 
2.44.0.rc0.258.g7320e95886-goog


