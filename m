Return-Path: <devicetree+bounces-169262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CEEA9630F
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:55:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9F7219E0FA8
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0FD25A2A7;
	Tue, 22 Apr 2025 08:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="WBEUvY0h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85038254853
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745311309; cv=none; b=NDWeAR/xUg0utIV9gEhZwCHtWGxfa5MWJ5Rojks9K/ZScPFqsl/6/RYPtr64vq/eQESw1mKtMyHraCzMmqjQI2boSKp83r1lq6EN6CggkOrY7niMJu0uH5QayGvxaNMOTGK5HVtZ0GkHhTQ4+mbzw2IO2hxlR/6d5HK1vqWDePo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745311309; c=relaxed/simple;
	bh=rU2tl9SCzAOgbil25IGKZ40RSY+N21sqdQ5DgV7O1wc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=upTnUTIO36r1gO7t/v7SyHSbtCa/aY1nsfOcN7m7RthlUsLWdYS5bpwiq+d2K2aqbTL5VN0W1AeZ8Wyu5/KySNdxqj5SuonoQYeLrOA7ckXZtcsDIy7NnptyzmCv1c/RGUYMa64Zj9q4Wo710iLQCFuzBNeK6Rw74QuP6aNbFLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=WBEUvY0h; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2254e0b4b79so72603955ad.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745311307; x=1745916107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nGVHUzQ7HsHW4QPhu/ISOoKLCvthpJGLbl2UU7uWwpM=;
        b=WBEUvY0h7+HjcQx8vQnyk4KkUQK0MU3MMrxqEvo3641nkhxh9p6+1KeDOa+p1eKB1K
         4CKsIYito5QxcLjVintEEkLWcytxFdHuWzAo4/5dGq6yWoyuBYcpWN0cQBswtMrXI1pS
         Hi30R1Dn6o3T2lhzM4bz7+beHDbrvbgQvzz04ctK5h034xfAq0TcQqxQLV87l+yD9VD0
         7opa9uIOr03COIprPIlxA8bDVHKM2/aldF5pZpK0u4+1IkQKy38qF1DtqLlLYRO0leDC
         kgPXhSQ07YbtW4WtXPVjpLTQN7D3DdqCNb+E1abHCV5uRCWXM70y5qDHNSjwo4hxYv+9
         zKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745311307; x=1745916107;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nGVHUzQ7HsHW4QPhu/ISOoKLCvthpJGLbl2UU7uWwpM=;
        b=HNsAYMFMvrruDDYxl6MRbW3VqLlVCVEy/JFNGV+OfXGRqxP5WTCNIwucGiG1oCCKXA
         XewJOZF7Bgrw6igzkv84p/52r6mTdHkQzP1lSWmZQoQt5OsYBB9TwYwiWNhCkmYBRJoi
         0wRv76BiHpcgiNdk/0LBslxnJNxTIfiXGjSMunbfZrhLQcixNZnmrs7iz0uxrrGyw2kI
         NZC0bb01poc3VJ8f3Lm/q8s7PFL/FfnD9D2EiMVK67uVV8St6krbT9rM224C2qT6jXp2
         Hav7Iwq+KVRkrD1jUOgaXvkpEsaW73t6UGJQdTaF7n0wcDEBto34HDvQ+3ksRRfmHtju
         s76g==
X-Forwarded-Encrypted: i=1; AJvYcCVuxE74UjJTUH+mJP/DYCwwNnhrzX1iGR7kTAfakG/wtgMMG2BBMKqsR9XAfdq+Zxr0vPmUfWVvAD75@vger.kernel.org
X-Gm-Message-State: AOJu0YyrmFKoCworSt40sV18ZjjTkC6aQAzSYQ4kJZVsGBUZrcuZn0Dd
	SCQMfnYYOt2qpVp8yEcoZIUBW/gpCRaR/mIroNnQjZpfa/wNlyYKjfgQnLCpvfg=
X-Gm-Gg: ASbGncs0HMM3QNsZFZNPVRtcvsXJXq97XwjDdnVEUnO++JD0MMMeu/ttNvXuRhD5cR0
	Dgj0EG+R+FagZD+qysIbmkBXmvGnDeGOa4ey0gznbeo+ygWHvp6YASSMpfHfmHDfq9CMSiTeZIN
	w4oF2YrHAwG99udjZfWfIGOMwhCXj6oK7xhfEj7w6qUUyKIfBhWRXMS1jO2kYfdrpzeGajK1HOr
	/NchC/gLuus8hkOpRqv0EKj3HFZTuTF0OdTZmpEOi3YucyhFFcWz2vm4dvDysXDQ4yc41+JYiZ+
	SI9oB6ICiQPuxifqTXK1Z+KEy+RjEIPcHti97fBrPEzo9X1zB/1xWPowFJI1xiCQ/fQoiOdEDLI
	now==
X-Google-Smtp-Source: AGHT+IEPYWCuq8ruBT0tEw0x1V09UvVpIABZBC9119Nj8u+ntZXYEwKEy+rCGtoMMmbWNOj8GNY4og==
X-Received: by 2002:a17:902:e5c6:b0:224:f12:3734 with SMTP id d9443c01a7336-22c535adfb7mr204374005ad.30.1745311306710;
        Tue, 22 Apr 2025 01:41:46 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf90d7f7sm8038343b3a.82.2025.04.22.01.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:41:46 -0700 (PDT)
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
Subject: [PATCH v12 0/5] Change PWM-controlled LED pin active mode and algorithm
Date: Tue, 22 Apr 2025 16:53:07 +0800
Message-Id: <20250422085312.812877-1-nylon.chen@sifive.com>
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
 drivers/pwm/pwm-sifive.c                      | 47 ++++++++++++++-----
 3 files changed, 43 insertions(+), 28 deletions(-)

-- 
2.34.1


