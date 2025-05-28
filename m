Return-Path: <devicetree+bounces-181339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8490CAC6F9F
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 19:44:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D027178214
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 17:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF8F628E563;
	Wed, 28 May 2025 17:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="vRzg7njp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434A828DF52
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 17:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748454287; cv=none; b=J2VUGJwRGkxzT6P/QGP+vZLCn6LXIBxe8nl+2r95WfupUE1FfVrrfepKpz4hfNo+7yore3XhOJ6d2XDkNkCqCu/A+1vB4EtsdnaC+LAbAPnOLR0a4cOK0Z5G76WG14S9tK3W41+n8iUWj33vu8M6hwFOqJ8jaZPxh8MKZu72Nc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748454287; c=relaxed/simple;
	bh=Ke7f+N8EYaPIsWFiQo9kTFagmjCL7kFrPiHzFoMk8Fc=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=JN6eaNrUB8NyRIia5utVSJmC0rmFulq3eWG3WeQk31QThYKKN9uB7Iu9bA71L/wIh+0IMDEXHAJOQ8BVmPgCQZJ3mNV36FnU+18YwM+gO5UDtDOM8PfDoDYDOqHQxdo3R3ZjeETaaXgGJFp/Or6na6Llz1+1olGK/77UEwz5LhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--dtokazaki.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=vRzg7njp; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--dtokazaki.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-311a6b43ed7so16081a91.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 10:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1748454285; x=1749059085; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M2KX3sikPH2APolbKPV8a8aBkNBnP9uCpHqlWdEr/f4=;
        b=vRzg7njpKSfafPzdMRU3DeWK7G1WAiY8lbSY74vgCNKugfv4M06diJYuba2sWse9A+
         Shv8L3LEJbEvCVnNiLqgA7z+Hv819gb5CoGHbVReaeLLZuZlHkAvdN0qgIWEmwUK+QuF
         dyksLOpqfZg+RcD691QR1X1IBNb+UeR7YSGQAiUvd025cWssJ6FtOkPn6F/dWyGLzuwV
         CjzhGUdG6NIWqdDEV8Ft87NZXOTIh+jbSxUSXTcd0tFhE2tm0fWXMyA4UNYguGCzfOiM
         ePRVfeCeACAU2n1MYkO2KhCzcmJOfzs3DRYD+kgI7NYU/p6uQtdV8Vf5hMlcTqOpqGKF
         SF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748454285; x=1749059085;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M2KX3sikPH2APolbKPV8a8aBkNBnP9uCpHqlWdEr/f4=;
        b=MqJ5tNHj2hCZT6lVubAxZHeXOH+G0oaSCKdwIhCgHDa0aIBPHHjJ/2tWVF2M8ATltM
         Kf9GO615lzKyB6qB2SlySOQs1gHaSjycDOlXQkosGgk4F2Xx0tG/wlyqKfbwhM1mx4yQ
         UprQSxQiHq5tRgo/lXzwRuQhUN7DAV0vNja6t23VBHZnPihA7i2mc82EmxvD72tI7Wv0
         QpFjG/QQJSJjsZBwZ0vI52twOHSwE+t9vlMntna74FP3+OkHwsy98GwMpr5v2hca9840
         i8V2Qy4IYR+GXZqRt0oLPnkxUZoO38isCcHur6tbR+7QzlUpdzuEeDKvyBJvYrzrtDZ5
         K5Kw==
X-Forwarded-Encrypted: i=1; AJvYcCUQVugmquoSkf3e17SaISpiFDmUMT2b4vUuEjH7wut0fD0uI/W6Y/pPN74TNcYS92nB+nuFU/3SAAko@vger.kernel.org
X-Gm-Message-State: AOJu0YzMCS3bqSEbHzT9I4JeVNYTytqtsxfOq+eXgQvZ8Cox9RnADfp6
	K5uRA4M6HQjr+H+bK0Bsk6m+U1lHgTSFGJSZYNaCHkmKiMOYUQxk3UTAznJ6x71BF/zeuhkxY42
	SX/fOhMYj1Pym6j3o4Q==
X-Google-Smtp-Source: AGHT+IFozkIeePl3vm1HR9lJAMY1Y91Gb2WVvRQYMBVrwBfwa80dp5I92NQZM3Fp5BzYV95nDp1GgrPyGkeHI1w=
X-Received: from pjbdb11.prod.google.com ([2002:a17:90a:d64b:b0:2ff:84e6:b2bd])
 (user=dtokazaki job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:1a92:b0:311:fc8b:31b5 with SMTP id 98e67ed59e1d1-311fc8b38d4mr3468886a91.14.1748454285447;
 Wed, 28 May 2025 10:44:45 -0700 (PDT)
Date: Wed, 28 May 2025 17:44:23 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.1204.g71687c7c1d-goog
Message-ID: <20250528174426.3318110-1-dtokazaki@google.com>
Subject: [PATCH v1 0/2] userspace-consumer: adding is_shared flag
From: Daniel Okazaki <dtokazaki@google.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Zev Weiss <zev@bewilderbeest.net>
Cc: Daniel Okazaki <dtokazaki@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

Currently this userspace regulator driver requires exclusive control
of the regulator to operate. This patch adds an optional flag to
remove that constraint, and allow the regulator to be shared by other
modules. This allows for userspace to share control over a regulator
with kernel space.

There is a boot time behavior change when this flag is set.
Before, if the gpio was enabled before this driver probes, it would
stay enabled. This change allows regulator_init_complete_work
to disable the regulator on completion.

The regulator state reported by this driver is changed from the
absolute state to the local state of the driver. This abstracts
away the regulator state of other consumers from this driver.

Daniel Okazaki (2):
  regulator: Add regulator-output is_shared property
  regulator: userspace-consumer add shared supply functionality

 .../bindings/regulator/regulator-output.yaml  |  5 +++
 drivers/regulator/userspace-consumer.c        | 39 ++++++++++++-------
 2 files changed, 29 insertions(+), 15 deletions(-)

-- 
2.49.0.1204.g71687c7c1d-goog


