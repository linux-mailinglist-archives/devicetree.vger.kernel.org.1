Return-Path: <devicetree+bounces-265395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EwiKp1Bj2k5OgEAu9opvQ
	(envelope-from <devicetree+bounces-265395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:22:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1971113777A
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:22:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36EB13047BE5
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B743624D5;
	Fri, 13 Feb 2026 15:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R6tuS2og"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251C936212C
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 15:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770996121; cv=none; b=JT+h4eYOFl4OXFwkpGucek8ksf1wqmBl2ymvLPEX98ZMdmwIDpUcSJOK0ypzm1NdP5i+P6MMkBGCWXCZG4MLGVIIu7pgw0qNK2BwAKJkGPhzS/MiC2fnEywdmcz6AN/cnZvFw99EvWPqw2FkoLSjLX2pV74d79VBVnFvRq1RgHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770996121; c=relaxed/simple;
	bh=uydvb3LqyX9bVJlykw6NIMEUAdvxhC/xs5cOSq50KTk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HDVsuDei6Py5TFIgmJJL0xyZUls0E/rRGNNc2otzBvO5/sFa/t88JLIycl9vG6kT2K4iCR4jyYXAd2pXrr75IMJQFRS5E338SFk/ATZWGYoabp77Ss0npcHRs+fUBpZAKqptCLyrJmHK25i7FYybV4MuQGZphef6FQ+pLuCSijg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R6tuS2og; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2ba76e80509so85750eec.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770996118; x=1771600918; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FtiEbL14aQUzb7T6n5oR3XhpTAebmhHLOd3OCZt0J6g=;
        b=R6tuS2ogYnlRH6I8UHOEKas0TU1hUtEXZwQ7hXbPGYUmHb3mHZ2+Mfmg38FmYxAUgj
         SumPCJlceAMX/ymiARxcO/QXBypKEoBw+1eK/2ddju+gKpXW5dVkQADnuR3NNnLF8Iqe
         hRbwd6vHm+fb6FlnmnPexM7il+eR8lC1yWNmT2t818tzsyJPV5CI7xkUhAUiVY+tOjJE
         8z1EcmWh4e+8sT94j9TKDQ+5K+6AFStjJwT2/kc+T9G0gHdLIBj8JJXuv48x57e/UJNr
         35WSc95ezlr1Fqc84EEtGIfHcaSm8kTO04WuNoF7LQ18W8qdGfc6LY5oSZ3jGlQZgInu
         U0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770996118; x=1771600918;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FtiEbL14aQUzb7T6n5oR3XhpTAebmhHLOd3OCZt0J6g=;
        b=bbF4CKabNEoiQQZgrgYWzvgNdErzdD5HiRhT0gm8yOK7OqVGrkQposx1iBo3f4gUVS
         0Ht3j18i+sJDRiEc9hu8wRBk7JPpauASnHAWueX9n8p+zxCLEar9Z8TVs3pnFoccnx8k
         r8xpaAqZwLI6B3L6oQw7ZDB1HrXfLSxuAe+Jd9B/cParEd7OzIxJAoXC0iWge/l+YDt9
         7o/yYXH+J+ksu8G4Lwytpy6IkKr8ZNvfOpsAe8cXboBPz8heRRnjDDo54W2ABusk5uPW
         slxcIItn1VUaABTMGNB9gPATwE8qLBq8fIbBYAwJ+ieDIfplm4xxT6Zt81Vfm1iaDnXs
         r+Wg==
X-Forwarded-Encrypted: i=1; AJvYcCVqDCt+zVVeaL3hisRhX9XhGVH7NObY+WYAeKJXLnTw9xu9N3KzhFOsw4+vSue0Khn92rSLTvkgjwes@vger.kernel.org
X-Gm-Message-State: AOJu0YznaBo3RVl9iFaoiFncKNJTprDbgxTc981n0v8ykSqbjjbts4Sc
	e4VMOCJ1/LrLQEakTkEDq0LYyX6rmBK8G99yXuBB2h5k7As1jHD0hS4G
X-Gm-Gg: AZuq6aJC9lY0t0DgpYQT6IKFPZVDlwJ5c1jzrBFvF6FT4TEyBcVf7AFhIBjVWQZusuk
	sQSfAX33AsoIvQwgFwxu8gj8qBMCj25NigZst2dhO1yl/dC9yG9R+M/ThvKbJnLfWuDqqV7MoZ1
	HSRhkrGOHzbQLm2C5+HkxLPrk1FDgqQXfSDXTBNm6B+qtfltLS+6CUnbNxn5x3T5LlfVMPv0EXz
	BksO5d7KTsLAEeRJcJuhncBVwtHCuVQMdXt/KUNDl16Ip59A6B2nCLlRPiaXXnzZdnEPiUAvvvm
	ncQp4+sRVSH55OwNi7A/eKA7PjvoP0OgCuDxV7XvNdzUfaR7AW4zSb8aBAkaLS7EDIrOWp0XX31
	jNJPP4sI1WvBGT7HYXPfoIHlCbJS7I61xGUsr2ziS1bhJRJOoFDJrSgCgVV6ky8tfHzunbPZ6zf
	iXZ98kC0t1eODnDBMorpBeS5RzRHTfaKrG7kzhzlsceOjZ4K7WX0SW71w=
X-Received: by 2002:a05:7300:324c:b0:2ba:6f02:2939 with SMTP id 5a478bee46e88-2baba0131d1mr569132eec.1.1770996118050;
        Fri, 13 Feb 2026 07:21:58 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba9dcd01d1sm6755006eec.17.2026.02.13.07.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 07:21:57 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Subject: [PATCH v3 0/4] iio: proximity: hx9023s: firmware property, safety
 fixes
Date: Fri, 13 Feb 2026 23:14:42 +0800
Message-Id: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOI/j2kC/33Nuw7CMAyF4VdBmQlK3GuYeA/EYBq3tUQvSkoEq
 vrupGXpgBj/I/nzLDw5Ji/Oh1k4Cux56GMkx4OoWuwbkmxjC1CQK1BGPkc/OcJOfhdtJBZY59Z
 gmaEV8W50VPNrM6+32C37aXDv7UXQ6/pPC1oqCffUFiklylh9aTrkx6kaOrFqAXaChl8CbAKUd
 UWZVYb2wrIsH9YcFeL0AAAA
X-Change-ID: 20260209-upstream-20260219-a7af6d9a85ad
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>, 
 Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2699; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=uydvb3LqyX9bVJlykw6NIMEUAdvxhC/xs5cOSq50KTk=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJn9jq2cPcyWZS7ipybMNvE0l/GIOKcnUqW24e73tGyn0
 6tl7lzqKGVhEORgkBVTZDnz+g1rvurDPcG/XTNg5rAygQxh4OIUgIl8m8DwP6P4rMGXmexssa7e
 JqdyJux9nyDVMnfHp2V5lR4uhf35+owMt3y70g1SDvMENk8/Jsaz82R2N3/OV8b+RVMvvxRZ823
 vHgA=
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265395-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,intel.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1971113777A
X-Rspamd-Action: no action

Hi,

This series contains a set of small fixes and improvements for the hx9023s
proximity sensor driver.

The changes include:

- Fixing assignment order for __counted_by.
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
Changes in v3:
- Patch 1: Refined the commit message to accurately describe the __counted_by requirement.
- Patch 2: Updated the zero-check logic to if (!val && !val2) as suggested by Andy.
- Patch 3: Enhanced the commit message to explain the necessity of the firmware-name property.
- Patch 4: Collected Andy's Reviewed-by tag.
- Link to v2: https://lore.kernel.org/r/20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com

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
      iio: proximity: hx9023s: fix assignment order for __counted_by
      iio: proximity: hx9023s: Protect against division by zero in set_samp_freq
      dt-bindings: iio: proximity: hx9023s: support firmware-name property
      iio: proximity: hx9023s: support firmware-name property

 .../devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml       |  4 ++++
 drivers/iio/proximity/hx9023s.c                               | 11 ++++++++---
 2 files changed, 12 insertions(+), 3 deletions(-)
---
base-commit: c8bfb63c902678228a0a265e22a5f55404988a43
change-id: 20260209-upstream-20260219-a7af6d9a85ad

Best regards,
-- 
Yasin Lee <yasin.lee.x@gmail.com>


