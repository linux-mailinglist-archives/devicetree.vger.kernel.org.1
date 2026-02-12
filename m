Return-Path: <devicetree+bounces-264908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UK5rDiJ0jWn42gAAu9opvQ
	(envelope-from <devicetree+bounces-264908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:33:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FC312AC1F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:33:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2B0030C152A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E144929D29C;
	Thu, 12 Feb 2026 06:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b2c1TuA6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B047C299AB4
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770877869; cv=none; b=WaTDaGgWIq7ITShLqzfUSEbHdU8g3HzksbppQJK34DkNTghT50pfaPC5CCMzQupq0lUVzr24ajcp3GjnekWPS2ijixl7mLPbNB8XZOOSE2hc8yWtdb3v5Vmp8cInNnqS1cigT1/bGI9b4+9Sf+/fZg2N9btmuGFOw5Tf+BFUK4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770877869; c=relaxed/simple;
	bh=gmRI7aghapLbKpiwYhR02SrobhJ6b11shwU9mxBB3GY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=e0DuKK0ynqjkbSFfV/eCGFaE2xQvv8Q2/B7gIgC72ZFaCvTYRt5OsjI9x2UjaMOYW6fTvZxdumYnyLJci8nmF8Xy/moON5vNjbpWW+u9EQLzuT+l/mUv6/tkO0IYshZ8oyKTOJ9dqNhQrk7N4Nkctm0ZSuBBj7+hta770M2lMnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b2c1TuA6; arc=none smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-127337e3870so3395c88.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 22:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770877868; x=1771482668; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFMRcGyf1te/AxGGubeG1NiPmJvyIrPnnKleI39yt2g=;
        b=b2c1TuA6aL+Ya1T0iyfTn6jUTfdgm7aKOYyUFnvDLymeQYcHlYCIdTGAO6fBMEttGL
         lh7Nfn2SkF80lC9C5uk2bqKkq9gjXrstZtcY4KxoVpaIR606MYqGtnc6VQwLNsH8XrNN
         gE+SZecIvAYyw6EnJE1THhIWaEW+SBUdw28Xag/chJ7Wd/fr8wtiVROG/4JL6Lsln5Zv
         Hmy2RuwV2E0L9w2cGDlDWVWcZEQ8D4GYFUzXdCFWjxka+Fja288GLV3yD6fzRxEf3N+1
         KeYWekb491w2ZygRpTeEZvueOpLfplqlga5z45t8LlnYX0ajOUi3zda5I9QSA2l9eek4
         GwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770877868; x=1771482668;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZFMRcGyf1te/AxGGubeG1NiPmJvyIrPnnKleI39yt2g=;
        b=LCruYytfgQWTzDnIZcmPzuWPygW7R7bMz6rAM37IjQ3ozR57nhCwD2/YuMCzGkOiZS
         AlVQQcaBEV67i7a5vLbk0nsZHuSRcHsCkIP3Y019bU63aPOgJVN51GuF6NihOUvalQWR
         v6pS5edfTQ+2gaeZlInvPy0DH41JH4tVlKlZOs/2LqqQPa5cMsXUKfkfPALMOs1OGVF0
         rrilm7U71s3ztc0uYkLfLvVbi0qiqcrPqunM+aLF63D1hgjGUHyWBpnKXK6qex30pk33
         EIY0PQU1AFIGCqrfm9NL/zdNA4dz2cAsnQjY49ZgAk5V9kTzS2TtAvBGBsimYDNR/ef7
         /ZCA==
X-Forwarded-Encrypted: i=1; AJvYcCU5PFaxgCabs1LOPsI19VtQjDNHY76YBo2tUpoDicDyUQm3npZvE/1uPjHBEDjUW7C45dKkCTfKLZ+q@vger.kernel.org
X-Gm-Message-State: AOJu0YwtUrzWP4Bk35xJKSyfum9HeaICdwfESbVJH38QTWzmPKeYc/p0
	580aUTgwEbr24D7YDDKF9/urmpohboibFIjXihLE6nRFR+ai1HT/R3Ml
X-Gm-Gg: AZuq6aIeY7vyGUE4yZi14pARNmZHPy4K3ZMl8D6oFxtDDg7Ol4gosvTStGtAD8tTUWD
	wJ+nb5nH6JM3Z91mpQ1Rj0wFSlMf81Y9otqDCPcxkoiCyxZl7XUCst1TiXeDRXiOsTCnxIGuc0K
	5WJ75HtmStFnylzqpQPzi3dTbVevFGIEeuCFfjNcyyRB8ZG1SWVWvqSQVRDk7EcZM4J+OwsiYN0
	1Ee51KGO1LAivuRnRb4LmTHdwce579hlcsJ+VDJZUrxkSErxKzJ8BF5uCvWiIoXsdhJj2R05Nxr
	a70dXqLoEdx8Njx+UiT3YztPtprEtiAvAGdhu9MX0+86RCAiL9PvQauC0d3RccCc9abvv1qUuP7
	LIfNRivoBZVsqb/Bh0ErtyK1BAYxMb6TLqEIZIHaYbr6+RXnYyQgLjNlvY+yBy08j9Z7XEJMBqG
	AAKXAij5uD6c93XDkdHzc42wOKbd67p42dU2IY+XlLKm6llwKN/B0FCzg=
X-Received: by 2002:a05:7022:6993:b0:11e:3e9:3e89 with SMTP id a92af1059eb24-1272f79a6d3mr419258c88.7.1770877867704;
        Wed, 11 Feb 2026 22:31:07 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1272a6f29dasm4313870c88.12.2026.02.11.22.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 22:31:07 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Subject: [PATCH v2 0/4] iio: proximity: hx9023s: firmware property, safety
 fixes
Date: Thu, 12 Feb 2026 14:26:51 +0800
Message-Id: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKtyjWkC/32NQQ6CMBBFr0JmbU1bESwr72FYjHSASYSSFhsN6
 d2tuHf5XvLf3yCQZwrQFBt4ihzYzRn0oYBuxHkgwTYzaKkrqaURzyWsnnASP6OMwBr7yhq8nNF
 C3i2een7tzVubeeSwOv/eL6L62n+1qIQU+l7auqSTNFZdhwn5cezcBG1K6QMCwXjrsgAAAA==
X-Change-ID: 20260209-upstream-20260219-a7af6d9a85ad
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2298; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=gmRI7aghapLbKpiwYhR02SrobhJ6b11shwU9mxBB3GY=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJm9xXPUF85IDVN3ztpe9flrlplTxqkn0VN3WHr0qW089
 tHx/a9LHaUsDIIcDLJiiixnXr9hzVd9uCf4t2sGzBxWJpAhDFycAjCRGHWG//7317rzemRLOgSe
 uOx/T5h92bvWZ7f4HJJ9IzxVPy9b6crwT2FX3p0e9UNvz/H8ml30Y1PNXYP0TI8I6TkXTm7PCt5
 wxAYA
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264908-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 99FC312AC1F
X-Rspamd-Action: no action

Hi,

This series contains a set of small fixes and improvements for the hx9023s
proximity sensor driver.

The changes include:

- Fixing a potential out-of-bounds access when copying firmware data.
- Avoiding a division-by-zero case when the sampling frequency is unspecified.
- Allowing the firmware file name to be specified via firmware-name property,
  along with the corresponding DT binding update.

All changes are independent but related to robustness and platform support,
and are grouped together for easier review.

Tested on a DT-based platform with firmware loading enabled.

Thanks for your time and review.

Best regards,
Yasin Lee

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
Changes in v2:
- Patch 1: Added Fixes tag
- Patch 2: 
    - Added Fixes tag
    - Changed conditional logic to positive style (val || val2) as suggested
- Patch 3 (dt-bindings): 
    - Removed redundant description.
    - This patch now comes before driver implementation (documentation first)
- Patch 4 (driver): 
    - Fixed variable declaration order (reverse xmas tree)
    - Split declaration and assignment for fw_name
    - Removed unnecessary error checking for device_property_read_string()
    - Simplified to: fw_name = "hx9023s.bin"; device_property_read_string(...);
- Patch 5: Temporarily dropped (ACPI support)
    - Will resubmit separately once TYHX vendor ID is officially registered with UEFI Forum
    - Need to provide verified DSDT evidence
- Link to v1: https://lore.kernel.org/r/20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com

---
Yasin Lee (4):
      iio: proximity: hx9023s: fix out-of-bounds access when copying firmware
      iio: proximity: hx9023s: Protect against division by zero in set_samp_freq
      dt-bindings: iio: proximity: hx9023s: support firmware-name property
      iio: proximity: hx9023s: support firmware-name property

 .../devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml    |  4 ++++
 drivers/iio/proximity/hx9023s.c                            | 14 ++++++++++----
 2 files changed, 14 insertions(+), 4 deletions(-)
---
base-commit: c8bfb63c902678228a0a265e22a5f55404988a43
change-id: 20260209-upstream-20260219-a7af6d9a85ad

Best regards,
-- 
Yasin Lee <yasin.lee.x@gmail.com>


