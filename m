Return-Path: <devicetree+bounces-40325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A968385024E
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 04:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC0921C240AA
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 03:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5875663;
	Sat, 10 Feb 2024 03:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ZUzekhGW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FF533C0
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707534356; cv=none; b=LgELnX5571191Csmk4YWMDNfIyy/kX2bcjGMAOHsvGRrcEmsZ2mdpdW7/Nhg3yqJOo01VA23sX/sLgBRY4JZhoZOM8nZUIY9VX2LieTe/m/s2YJXNrMivxttmvS+QeFCeqVnJWjBKm2WYq66vLgso6eIUpSnPv3zJjMDD6yUTUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707534356; c=relaxed/simple;
	bh=H9Reg8b+jS8TkwjOMN95FrdB7sOlVzGGwIlyR7QTdJA=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=Oakvh6teLCZw8WycYohDxggOJsWUqfsY2ruEPYwFD3wD9+tDE9aLJaiInQDSOBiLfDVw2nlPgfsZwflI6EPOBpjfOjQ2VoixxXtTK9ot7qGZaEkJTzjEIVbHw4odtHQFY/+0NKwqYQVDem75sJaqd1oYRVwVPSxhrLHP7pGg7tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ZUzekhGW; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6049520940dso33048187b3.0
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 19:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707534352; x=1708139152; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Lk+GB+kHbk4tJmAHLH1aR/cCxbbVSiuBX2AWpDuc13M=;
        b=ZUzekhGW6kTW1J+jsmslEXjeEImuNOv27L1c+OnjlkhfQWf0Ln93kGZ3KRf+KvM2eg
         I35b+9lz6tq37+AX6GChsK4emqmAfTc3CdnEHG8zBpY4ROi4YB1ALKgkypN4LuW7Q5nM
         yXbq155Ps8CaL0miP6toTluQ87RoLUTW5PuqviVzBNqpj6EI54drEl6QAsvncl6337rQ
         JHil91EgHpcOFJoqnN2xUh1nEoAnDeLv//ud6JpfCKvyzfyyLVfawK6Z+5/TgWzNMy5g
         BG5pIoewdxyhCGClmqX8J1flow3h6LKmYkXBWmU/nP+rqMi5yibKjgrMOC2GXPiF14gG
         5L/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707534352; x=1708139152;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lk+GB+kHbk4tJmAHLH1aR/cCxbbVSiuBX2AWpDuc13M=;
        b=jzh7ekpZfVERJ/VLd+dwHK4wO9EgMyZAuU4JaRT0lbRN4wwKAyuk+Dn04J38WcOtM/
         OahuSw/8XosoYVU1+7HyPAQ+yWv7L5xrynBYtBTw8e0Shs55MXv8ZRRqsxRYkHm3ZcDF
         SuRz7nDtMa8XcYd6uAo5CqvHM0qp/TkFtCosSANNszR+KM8/rpvZjbjqMd//v6UsK5E6
         qGLPRrET5Xb2T9UUY7QSJhfu+uER7q5Ecz8FImwWJmaUyTn4b+hRt4n8Frj2VpXeANR3
         8Rp3Vp70PQcP63YF6WXNkhKoeecRUzoFIDdoIjBsk1/1QUa73mLaYSZ5nKky7Dfaehdq
         KTBw==
X-Gm-Message-State: AOJu0Yx8SvVznKYOD+iitBDd423ObP0ztgT1oEQIa0KE0FqBxtkVwH/H
	LAKeDalS5m3KYZd9/3gXnt3k+1bcTIOP6PpaTf9W9A+aTIq2IlyFaZas2gIHbUQHjbWz5lCUKl1
	1BGEOLa1bKB1s0A==
X-Google-Smtp-Source: AGHT+IE/uuWDxdol9sXaEnPCB66yNsPa4nWES8Tyh05rnMrvZgyjUNND+XZgyBWyRqOpm/3fC76p14pGakwp1i8=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:6b44:91e7:13e1:5d92])
 (user=saravanak job=sendgmr) by 2002:a05:690c:a98:b0:5ee:d5ed:5f70 with SMTP
 id ci24-20020a05690c0a9800b005eed5ed5f70mr243749ywb.9.1707534352400; Fri, 09
 Feb 2024 19:05:52 -0800 (PST)
Date: Fri,  9 Feb 2024 19:05:43 -0800
Message-Id: <20240210030549.4048795-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
Subject: [PATCH v1 0/4] Add post-init-supplier binding to improve
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

This patch series adds a "post-init-supplier" device tree binding that
can be used to break dependency cycles in device tree and enforce a more
determinstic probe/suspend/resume order. This will also improve the
stability of global async probing and async suspend/resume and allow us
to enable them more easily. Yet another step away from playing initcall
chicken with probing and step towards fully async probing and
suspend/resume.

Patch 3 (the binding docunentation) provide a lot more details and examples.

Saravana Kannan (4):
  driver core: Adds flags param to fwnode_link_add()
  driver core: Add FWLINK_FLAG_IGNORE to completely ignore a fwnode link
  dt-bindings: Add post-init-supplier property
  of: property: fw_devlink: Add support for "post-init-supplier"
    property

 .../bindings/post-init-supplier.yaml          | 99 +++++++++++++++++++
 MAINTAINERS                                   |  3 +-
 drivers/base/core.c                           | 14 ++-
 drivers/firmware/efi/sysfb_efi.c              |  2 +-
 drivers/of/property.c                         | 17 +++-
 include/linux/fwnode.h                        |  5 +-
 6 files changed, 131 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/post-init-supplier.yaml

-- 
2.43.0.687.g38aa6559b0-goog


