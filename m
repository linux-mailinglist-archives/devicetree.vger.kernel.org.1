Return-Path: <devicetree+bounces-118430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D38B9BA3CA
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 04:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41AEF281EAB
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 03:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F46D70818;
	Sun,  3 Nov 2024 03:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="YgQelnFM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C7779C4
	for <devicetree@vger.kernel.org>; Sun,  3 Nov 2024 03:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730605604; cv=none; b=HWg6CDdWEFK81yVjhXVXm9xtTSjhD4svVz9D/NXS1BFDO/hVc0KPJc1mmKQbGBYAxAOL8a8A+JANEF/Kas6gjLvl10WvduOG0JQ6JQw048CjO9I/5TH0Y+2r2nYGER1T6IKIN/U3kTfL4QUdb4ZlIpESZMuaP2Le3k6wJw0D3SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730605604; c=relaxed/simple;
	bh=Y8PUlPYSyYfURqxBrhBW27mPXCr/o14+GzZHLQXbQqc=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=FDHqkhP4OoOELb6U5ENw7m58vSlrQ6XqH+QOWFY1dxyqWp1FtATfnkHaNuhwaE5xLaDHCBiWL5r2gjGWXH4kSqyHzBNrVt/M3/iDgCafcNaQRQS6tII3F95SRlCgvugpApT7SNNVbVFSt3V8YD50ds2QoN18a4l2NR4NMfg8Fkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=YgQelnFM; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6ea881bb8baso7501087b3.3
        for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 20:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730605602; x=1731210402; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yqrMO7jaI/jLQSZ1khmj67HB8Idd75hZoxXR9Jgd7NE=;
        b=YgQelnFMcAeKbRXX/TxCmGDsBjMKHLgq4sDZMM+2hk+D+SHvB5dGptm9DgMkQ1RvY7
         HdRSNcNGTB5kwQL/ydfk5zR9wJWPqFS4RUnc7dsONgTbI58oEAsjikR8+YkCPLZzRLyG
         t25ET7FQOVlDhZ8+OC1EpvAqjtOtSE1taM4bmyK2zWvxXA4NciV9ZjANc0cBJXDRLdea
         P9He9MLXpKu/bxYZTyE7+zfwFTQFcH+gzazbT0Jh/axdZMv+it0XRj+llMRs/WDXmqxs
         NYf0kIAU9KxgqvlJe9PqM5I3AaP7bFBw4UMbz6+agjZQ2TxGhlfvfBgVwrvPCKI0yyC4
         0WaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730605602; x=1731210402;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yqrMO7jaI/jLQSZ1khmj67HB8Idd75hZoxXR9Jgd7NE=;
        b=ZaXpgtxjCKiHz6qqURA35zXiuhE7+0368AY2ZN79YMjhFBu/H9lrsJrStJ8VG2ufH1
         ekOLf4273zPnT+OQlKvv0qGyZGwzo6/sdQwB+xATW7s2ElRj1pJqNx+xAMUoWv2TnE1a
         EZ3cR89hG160NABpNVzdHHGY/wYdYEo0e1TNn7v0CBvTya7Q2m9AtTIaJO+iLZDAYWbO
         LI+kFVfi0fpDV38gfCo13BLA8/KzvBXfaKPD5OrdsKw4nKGrJHQ9M8tevtrW9XxtVgOF
         gppvoMMb5ghO+vUh4XiVSupN6xu0l+i3E6qBxEnf/6va5RgyIIYw3Z7E6heK4/H1aG0D
         BJtw==
X-Forwarded-Encrypted: i=1; AJvYcCV0LyJg1j08/Vz8WHM9OjITi/n48UrWzyQ1CwcLIJaB1n+N7T+Zi9ZlhummtUK0kgZBMXDPyrpetV4p@vger.kernel.org
X-Gm-Message-State: AOJu0YzxFgM/7PBT9+PsPQtTX/fX8O+QOKA9Z0mTkj6JHAJDc638s6KP
	T64bibYX7OZero/6bI7gK7KL6Q+EWG6443EMlwBKVU3i0fzhPWvswFJlLORwILL/wjziLYXlpwh
	Q6w==
X-Google-Smtp-Source: AGHT+IFzQ+XLUA1KqayCYTQxnRNjwiTTVM+4ZQkOR0Cd+ZD6QXJMpVyAz4IyOMK5iRkGypJY7FXAKdLo4ug=
X-Received: from amitsd-gti.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:827])
 (user=amitsd job=sendgmr) by 2002:a05:690c:460b:b0:6ea:7a32:8c14 with SMTP id
 00721157ae682-6ea7a328fe2mr115267b3.7.1730605602048; Sat, 02 Nov 2024
 20:46:42 -0700 (PDT)
Date: Sat,  2 Nov 2024 20:43:27 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Message-ID: <20241103034402.2460252-1-amitsd@google.com>
Subject: [PATCH v2 0/3]  Add new time property for battery charger type detection
From: Amit Sunil Dhamne <amitsd@google.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, heikki.krogerus@linux.intel.com
Cc: dmitry.baryshkov@linaro.org, kyletso@google.com, rdbabiera@google.com, 
	badhri@google.com, linux@roeck-us.net, xu.yang_2@nxp.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amit Sunil Dhamne <amitsd@google.com>
Content-Type: text/plain; charset="UTF-8"

This patchset adds a new time DT property to handle time taken by
battery charger type detection completion.

Note that BC detection is based on
"Battery Charging Specification Revision 1.2".

This patchset depends on the patch series:
 - https://lore.kernel.org/all/20241022-pd-dt-time-props-v1-0-fea96f51b302@google.com/

Changes in v1 -> v2:
  - Fixed the subject line in patch [2]:
    s/maxim,max33359.yaml/maxim,max33359
  - Fixed typo in patch [3] in body:
    s/conroller/controller


Amit Sunil Dhamne (3):
  dt-bindings: connector: Add time property for Sink BC12 detection
    completion
  dt-bindings: usb: maxim,max33359: add usage of sink bc12 time property
  usb: typec: tcpm: Add support for sink-bc12-completion-time-ms DT
    property

 .../bindings/connector/usb-connector.yaml        | 11 +++++++++++
 .../devicetree/bindings/usb/maxim,max33359.yaml  |  1 +
 drivers/usb/typec/tcpm/tcpm.c                    | 16 +++++++++++++++-
 3 files changed, 27 insertions(+), 1 deletion(-)


base-commit: 0fc810ae3ae110f9e2fcccce80fc8c8d62f97907
prerequisite-patch-id: c08696694dabcbb86b458a935a9cbbcbabb75672
prerequisite-patch-id: 634924883df820956acb33941b659e8c9ef85d1e
-- 
2.47.0.199.ga7371fff76-goog


