Return-Path: <devicetree+bounces-169792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A416AA98432
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 10:53:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 532BA3A5B55
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE501B0F31;
	Wed, 23 Apr 2025 08:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="IigiiLae"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB43D2701B3
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 08:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745398399; cv=none; b=PaBhBL6yyYGwNf4C35A1mreIAiQjEg2hY1JU5Oc3gOU1oUQuJF/FventY+pn2F8l6oedsyJP6SfKS9P84pSxvSCTUXDTLwUi3sJaQoDKQ3Y2sfy6nHRNpdLnmR946GBRcIvaYQw6Kxv8uw1AHV4c6j3Y1VtA5mdAwIeULHZp/ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745398399; c=relaxed/simple;
	bh=UOI8lXRZPdfZSPbWA2ksZJRwnym2wxvE561CmHCyVWI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YNr2u9QGYvZjtPH3SckO5+VXftdY/oKryMa0y/yJLREIWhs5zSkeBVXz2NfRgkFfuLQEeXvD7rttdDeDg0GZAE3On2/dIlsEUCDZmTYqe8rMGicDIuIp7oXc4F+aTBKAlhykahRZBds5XJ0On0WcfIhwhQpFBq1I/pxskrumLxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=IigiiLae; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-224019ad9edso86713805ad.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 01:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745398397; x=1746003197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JjebrSqhRy+XNyTElbHFiq0P7Ym7xRzEEhcpacCtDZc=;
        b=IigiiLaeAZvI83uC5U0K5yngenzXu2CxZSUGHrFSWlrm+sZOIOf0rKkUdD4O6OwEuZ
         hbJOlbVg49fm+JCITRbx2q9SpFTZ61kGzxrn1wFokvSGJcWBNCSaLqAYb/Erd/qZnkEm
         uIXo1OgC8+/x/MQWIXWNcEpy4h/t4NnO+V6GlznJwe6pYpy47/09NJX8BBkkThfqTDB/
         YgINLPOGDNjNdzRhvoQn2kXSu+KsOHvhlvgH/K+LQfSISb7j1IO4CF6hVK4awlOJWnhA
         nUr5lSKQ7VjzWtODzm27phQa4WY8lSx+QJPoj4WSzGxt/QOGp35JwDuk893rtZkWDsnX
         baXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745398397; x=1746003197;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JjebrSqhRy+XNyTElbHFiq0P7Ym7xRzEEhcpacCtDZc=;
        b=l4AY0AFdKTcX35Yy3+6Xx0Bp2azk3kyb88Sv5/alNZEr4PSPwFFBjmTZlaBNhWpHG9
         122PULhZJ1Bv4/oMfDOnAzoC0DlyAPns4s6Kr/csdWxOdrV/9PazH21uNJsrNTCKfOHy
         aRzGKXCT9e1672/bZr0WEQXgTZJzgX+pjJ923w/n0q4/e4KkwX4vRiuWSOI8VTt4ULjL
         sr9xoRo/mGjUzRBqqkMAJWZZavnQUmg/4sCUoxXwOgRMJd63iASDEK9ehG5b4BuyHD6h
         HksFUuPAQZAZlOFgQ2RYZw3BrSHeEFtp0BqSMRB4hBQ9zqySmY1mk80fMmP+0ChPPgfe
         eb1g==
X-Forwarded-Encrypted: i=1; AJvYcCVpSDDlvUxWfmw8ssOxnjF3Ze8zWME81Hy7SNv6CsewvJOVzhomvnMaVDelLKH64o/gpFjtsMzIDGi7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx92/iKVqlPwasYbK8Lx1Fe5WoGODSvMtCp/KPv6fKUaAhMs4Z
	fV6jCI7EaQBHKm24Nk6/J4d9UDZvF2w/6LgnObRDMXxyt8FopepVt7JPVYXZnAw=
X-Gm-Gg: ASbGncu5nJNhRckFbacecRbzZIOL7JT89IA5rw9xyDxfj+zPAA8e+Si2ERmtvQr4Oar
	KOGsjaDnL3Zke3UkLst88sk8fDsKkHyLtsRqhDq7WUkqjCAUkVomlzUzV6RmZyq34mSUBCgLOnX
	jUWnhrp3hrEiT1nlEmB/SJfpk2qXENEZxA5+FpWqDl1bckX1/vh47WLYsAsLEduQMmAB1MA59w3
	tDzYQ2N+CVLkT5/2aVP+RffaxhhoT8RGd5TNs2P8AuCCuvzDfmuqPsQ7BXlS9IaXyuaikf4LaW6
	lf8x538YP6ohs7o2qtFkgf9CKNkvhZ9OANhFRtcrzCe6Xw7hQ304+NE8nFUVNrv5arq5kY8QY/s
	M4A==
X-Google-Smtp-Source: AGHT+IE/xgNsfxLOOIy9HFiTH79KuPX/M8jQhMYXEVtLbecTAoeikygJMa2gCllgel3Hj8t3lvLqwQ==
X-Received: by 2002:a17:90b:2751:b0:301:98fc:9b5a with SMTP id 98e67ed59e1d1-3087bb4150cmr24558428a91.6.1745398396823;
        Wed, 23 Apr 2025 01:53:16 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309dfa5f880sm1047611a91.38.2025.04.23.01.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 01:53:16 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Samuel Holland <samuel.holland@sifive.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	Nylon Chen <nylon.chen@sifive.com>
Subject: [PATCH v13 0/5] Change PWM-controlled LED pin active mode and algorithm
Date: Wed, 23 Apr 2025 17:04:41 +0800
Message-Id: <20250423090446.294846-1-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the circuit diagram of User LEDs - RGB described in the
manual hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3.pdf[1].

The behavior of PWM is acitve-high.

According to the descriptionof PWM for pwmcmp in SiFive FU740-C000 Manual[2].

The pwm algorithm is (PW) pulse active time  = (D) duty * (T) period.
The `frac` variable is pulse "inactive" time so we need to invert it.

So this patchset removes active-low in DTS and adds reverse logic to the driver.

Links:
- [0]: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf8453f8698_hifive-unleashed-a00-schematics-1.pdf
- [1]: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e68ce76f4192_hifive-unmatched-schematics-v3.pdf
- [2]: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8b16acba_fu740-c000-manual-v1p6.pdf

Updated patches: 1
New patches: 0
Unchanged patches: 4

Changed in v13:
 - Fix syntax error: Added missing closing parenthesis in do_div()
   function call.

Changed in v12:
 - Replace division with do_div() to fix __udivdi3 modpost error.

Changed in v11:
 - Fix rounding consistency in apply() and get_state()
 - Add code comments to help clarify Reference Manual errors.

Changed in v10:
 - Add 'inactive' variable in apply() to match pwm_sifive_get_state()
   style
 - Update comment about hardware limitation - it cannot generate 0% duty
   cycle rather than 100% duty cycle

Changed in v9:
 - Fix commit message to adhere to 75 columns rule.
 - Update commit message's subject.
 - Add a variable for inactive logic.

Changed in v8:
 - Fix Signed-off-by and Co-developed-by typo.

Changed in v7:
 - Remove active-low strings from hifive-unleashed-a00.dts file.

Changed in v6:
 - Separate the idempotent test bug fixes into a new patch.
 - Move the reversing the duty before the line checking
   state->enabled.
 - Fix the algorithm and change it to take the minimum value first and
   then reverse it.

Changed in v5:
 - Add the updates to the PWM algorithm based on version 2 back in.
 - Replace div64_ul with DIV_ROUND_UP_ULL to correct the error in the
   period value of the idempotent test in pwm_apply_state_debug.

Changed in v4:
 - Remove previous updates to the PWM algorithm.

Changed in v3:
 - Convert the reference link to standard link.
 - Move the inverted function before taking the minimum value.
 - Change polarity check condition(high and low).
 - Pick the biggest period length possible that is not bigger than the
   requested period.

Changed in v2:
 - Convert the reference link to standard link.
 - Fix typo: s/sifive unmatched:/sifive: unmatched:/.
 - Remove active-low from hifive-unleashed-a00.dts.
 - Include this reference link in the dts and pwm commit messages.

Nylon Chen (5):
  riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's
    active-low properties
  pwm: sifive: change the PWM algorithm
  pwm: sifive: Fix the error in the idempotent test within the
    pwm_apply_state_debug function
  pwm: sifive: Fix rounding issues in apply and get_state functions
  pwm: sifive: clarify inverted compare logic in comments

 .../boot/dts/sifive/hifive-unleashed-a00.dts  | 12 ++---
 .../boot/dts/sifive/hifive-unmatched-a00.dts  | 12 ++---
 drivers/pwm/pwm-sifive.c                      | 49 ++++++++++++++-----
 3 files changed, 45 insertions(+), 28 deletions(-)

-- 
2.34.1


