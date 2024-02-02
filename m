Return-Path: <devicetree+bounces-37932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D75846D7B
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 11:13:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 039E029586E
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 10:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C027C098;
	Fri,  2 Feb 2024 10:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hxgxT2gE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8F07992E
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 10:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706868811; cv=none; b=mgl15t3GTJ6O6mKMRY/VZTmHfJHlAXaZ5fvf976bOvipVoijbPaSaCzLv8l2NAxHiIKA+0V0+Y0GRuGQlMAYUwzNB4mStd2xyaIaFd2YxaVUCpzTobcYzw8C4tEGCkwNqFookDd3OiNW6P1IoA7lh9aaOpwJD7PD+FBJRl4+uSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706868811; c=relaxed/simple;
	bh=MQ9L7/GkVMpfR+uPH5ShxU1a+Sz6hvR/lvX2co5md1M=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=D1qEqtG7grv0thPUO+SxRsNOp8q3c9//HuieBrLnwQ91rw4URsZkQHBnRQY0sD+SA5UD1KFUVYBU6OxIz3drhuSVtYwtFJjsmGzDA0o/rxMCJJtYVUmOQFJyvPHcWu/VmQjTAbGZzwfrwPDfb3gQErIUj7It1EIeZ9lqZDf3kKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hxgxT2gE; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-5f874219ff9so7488777b3.0
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 02:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706868809; x=1707473609; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BRBtPAQkqEY6HjWGdFWpru8F8LiO7TUhaT7CNwarvZ4=;
        b=hxgxT2gE2O8TtZqAnTt2QXZtfvO7hAZdZEXQ6H1kkRoOOynDGOFXAFm5kEUNUHfuvW
         rzErUFkNyYqV3zetj1+3KEOS8ySax5YnXq7AVeNe+psp1bGNQ9YKSrFChWIzxudyfPlv
         XUHdejSiwcZP4UQJ2xMEmdSHyi6b1qIUdY7XtHaFePaB1B/upmujuEFbYPiAZDB8mBDm
         q7MMQKcBy2J8HHg1NaRL9Tyjie03DYBWbEDwl2WOFf4BsGtdyyElwXBcZKqPsrtyMPkj
         mYv54IqiKkDG41ZjF1ennzwsy8BfWyX56ohffWGOYDU6nKBKTZK9WwEkA3r1WG1PszXp
         bHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706868809; x=1707473609;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BRBtPAQkqEY6HjWGdFWpru8F8LiO7TUhaT7CNwarvZ4=;
        b=swnsNsZu1CAN76HoX03r25mtg9CWLH0w/Pl1CxL8BQkjIPLGJh4aBPBz/l/UaMb/It
         7lIMVt2lyw2T74aO4z+7nwj2gyTJVcLDUGbZY70eI5jsW+N+GbAj/AhzsBwhhv4tx7Ke
         bCyo461HCdi8yJwVinNoxQ/a1rZ5z48iLypU5JZMmZ0x9bLIOCtj3bbmk+fxm7dFiiKK
         wbSGkRaPoFRAFA9EaZzK/2F8kWahS1ZM3oZMMJRasgk59oILjHiA0HSs+aItx169ilgO
         5Otty89JzvMZuHmzZnlCta6p+qeMZxH+ReUQh/B9gqJ9vB3UvXMuB0ekkEAEeCGFEF4R
         n8Gg==
X-Gm-Message-State: AOJu0YwYhHeaxSx1gedyxu0vCT8RWaVLCwP5aCGQtCyCWusjXAh8Zxvo
	GcgnMQq9SCUkoAG7XB6EWArVNxO9I3eyzbG1HP4dyMpWo62DPT2ghSYBH+q5sklTYcbXLJ7oL0H
	25StapQ8DMs00JA==
X-Google-Smtp-Source: AGHT+IGK0Zl6ykIWBy6opXpmg17C9xAlPobtTPHOXH7c+/rKapoXDTqpq/lUeDA9PJIcnUeVcnqR0cLyVOwCXTY=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:6f0:da10:9cb3:5b3])
 (user=saravanak job=sendgmr) by 2002:a05:690c:d84:b0:604:125:f0cf with SMTP
 id da4-20020a05690c0d8400b006040125f0cfmr405440ywb.2.1706868809116; Fri, 02
 Feb 2024 02:13:29 -0800 (PST)
Date: Fri,  2 Feb 2024 02:13:23 -0800
Message-Id: <20240202101326.876070-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
Subject: [PATCH v1 0/2] Improve remote-endpoint parsing
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>
Cc: kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Some changes to do a more accurate parsing of remote-endpoints. Making
fw_devlink a tiny bit more efficient and the debug logs a bit cleaner when
trying to debug fw_devlink.

Saravana Kannan (2):
  of: property: Improve finding the consumer of a remote-endpoint
    property
  of: property: Improve finding the supplier of a remote-endpoint
    property

 drivers/of/property.c | 71 ++++++++++++++++++++-----------------------
 1 file changed, 33 insertions(+), 38 deletions(-)

-- 
2.43.0.594.gd9cf4e227d-goog


