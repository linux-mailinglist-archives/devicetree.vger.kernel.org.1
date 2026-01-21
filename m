Return-Path: <devicetree+bounces-258137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CKiATJIcWn2fgAAu9opvQ
	(envelope-from <devicetree+bounces-258137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:42:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AC65E2CF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:42:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6EF454E2C29
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29332436364;
	Wed, 21 Jan 2026 21:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UYmo5QcF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2076438FE2
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 21:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769031725; cv=none; b=hVZwDXRjgYvmg7Mhv3TaXBbOyzILJmBlczcErJX35B3yJM9ey1bEin8d9bJsUuYkPyIjmt3nsZjP4yVDWsj6IkxYWeAuYTvCDW6Zlupr28Ie4UKkUYPt/5/+Erc7PafBnv8BPf2w98HN0+2YniOI3RXEIfllpbjAPXXL5V9vi8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769031725; c=relaxed/simple;
	bh=M8oQ0q+6xlkrire61zib4w+js5dW929OXGx9RGG+2sU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e/5yzEYt5sO0VrlCGq2dJoiUpfoVvw03MLaRDV1y7EXwRmypv1d4vZIj1Q+m+pMwJFwV32iCh5rK3HyRqRlGDEmcOGZ63quHMk5JpXPGi+Ih5RRmak1GR2zyrLEuhvoyXmD0bwNzKbH7rRrdGxkwRFiMuXQsHAry3d7lr8AiHkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UYmo5QcF; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4801d24d91bso2938605e9.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769031721; x=1769636521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=70Ms2GnAoWzuHwMSo94L5mFs+gfdu8prUboYjtNpRhM=;
        b=UYmo5QcF5pFdAcwdyqDg6ZWAEJ4daoPtp+fD5feknUNJgYsV5TTaEzKte7nbYcXOwE
         7KumauM4fB0qXX3IWj2adna7P0OXrdouKdyBcCpl/v9NR33CtzJ0yALMl7kf5IApXTlJ
         iHXrAD8SL1ctRMive3NNel/F+DkswEerxm8q9F8c24RHPG7Jj7MYe8SF3BL0FEozlV19
         2fzPpZoLW1do+oYjLp75Hv35ph5BMTc0u7/7aUpSQ01a+UsXVShvzDQ49Du1egBOBriA
         Ga81lUoPTCwbTyTjaC7d/z2uvNRCU1jVtKk+a04zWkmOvGdnm+pInFoHtUljAXSnj3Eu
         vuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769031721; x=1769636521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=70Ms2GnAoWzuHwMSo94L5mFs+gfdu8prUboYjtNpRhM=;
        b=TklN11DdHYjDgKT8uz9cMsUv4InTWrpMGGOaanGiL7nAYBuhFCxkrg5Chk4Ef6PcH3
         dJg19tJ7a3IJTuIJsj0FKip0fUCC/lRGMVCikzRVCpA70w3LOgQHuTrFNORL5YNap55a
         ZxczyX/K9HxVCFx5yJNnej+CZwO7irSNpeNNjFI/lVgnkV9X2G7RQdz+izpbNeKI8ggC
         Jb076rHay+oza6+KQU4sAfBQH2DL3KJ+46Fy8WPyBIdl51bb6gW65gKn942G/Z2BAVqL
         PdOlicWHgYYlIT9R1JMrsCU0rLXMOsxVxh3vodj6jU+2Uc869F4bWQfZ1vRTHaXDM9Z/
         929A==
X-Gm-Message-State: AOJu0YyDkb0YTQhoWw8F4PXjVnoE4SdEGOkuB15KYFxQ9OiNdBvSMRcq
	hBIUcoM7Tnlmenp1jJOBHpxFhrzGdCXcbKByoTAxgF0OJ/yiTUsYLMQc
X-Gm-Gg: AZuq6aJr6ClGJHTvZoxJ50pIUIpfY+d3/L1hsgV4yu2gnRj1TVyA7Yf1OpqiDQ6gPXm
	guFvxstJ1JqcftZK5JHgHsTNWyAihIUBEIoeQJGeUGYyMEgjizNwElh/WFGDHUSCeU4HsJVXKDj
	NB3bOojDmnv/hNnEf0ao978BzCjBLSeAdciLSJIdcn8613Wwb714Sbe5npN2Qv5fAZpbLz5fpj6
	WDHvALnbnehHNaEHCrc63kxsQFUMGRUMjLnVDB1JV8Ao6SylR5fkLbqo14YwtqLcsITqb8WHOQy
	8FP2nBVFra3KZXJ3pEbzYBMLpZyrqwjzVZdxjDMkf1E/SIQS27822jdA7VHnOD0A+hhH8KXM/FH
	syPPzakUgWizjdOzc8z9rLXKX6+pMPHNi/Hfik6x0ckvj3cZ4Asi2weyMNTc5iejJM9cc0//MFL
	47Eui+99iVsBDsiLFLwzjb5gZZ
X-Received: by 2002:a05:600c:1990:b0:475:e09c:960e with SMTP id 5b1f17b1804b1-4803e7f3d7bmr101505225e9.32.1769031721019;
        Wed, 21 Jan 2026 13:42:01 -0800 (PST)
Received: from unknown.tail46804.ts.net ([78.209.83.30])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43569926ffcsm38351929f8f.18.2026.01.21.13.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 13:42:00 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: linux-input@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	krzk@kernel.org,
	dmitry.torokhov@gmail.com,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH v2 0/2] input: touchscreen: novatek-nvt-ts: Add NT36672A e7t variant
Date: Wed, 21 Jan 2026 22:41:38 +0100
Message-ID: <20260121214141.36858-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120193600.1089458-1-morf3089@gmail.com>
References: <20260120193600.1089458-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_FROM(0.00)[bounces-258137-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_FIVE(0.00)[5];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: A5AC65E2CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for the Novatek NT36672A touchscreen variant
found on the Xiaomi Redmi Note 6 Pro (tulip).

The e7t variant uses a different wake_type value (0x02 instead of 0x01),
which was causing probe failures with error -5.

Changes in v2:
- Removed Closes: tag referencing downstream repository (Krzysztof)

Gianluca Boiano (2):
  dt-bindings: input: novatek,nvt-ts: Add nt36672a-e7t-ts compatible
  input: touchscreen: novatek-nvt-ts: Add support for NT36672A e7t
    variant

 .../bindings/input/touchscreen/novatek,nvt-ts.yaml         | 1 +
 drivers/input/touchscreen/novatek-nvt-ts.c                 | 7 +++++++
 2 files changed, 8 insertions(+)

--
2.52.0


