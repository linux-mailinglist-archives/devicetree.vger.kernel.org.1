Return-Path: <devicetree+bounces-258655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iL3oIY3LcmlgpgAAu9opvQ
	(envelope-from <devicetree+bounces-258655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:14:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E44A46EF29
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23909300F9F6
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 01:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA11364047;
	Fri, 23 Jan 2026 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J3QaCRwG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3696C357A40
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769130858; cv=none; b=R4KWUwOw3tQKtUFYCYEhRmDFn1LbkYmYAZt5LUksAVeKmp0NczbuRnywR8HYnSamDQUTM2wcHEX2GwpwWF33JeimP9Md8r3eONDkX7DSVHpF4cQ4yotNmd1qT14haZoGWt9M/+vDJfgHPH9LebiRXEHEBEGZPOqgj6zy7BYh9s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769130858; c=relaxed/simple;
	bh=aY3lzdYo34rzzl5rEA1NOAbbPbFMvxFb3wjxISqu7SQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PXOcl+R087Vv69CHpAUoNMQpfbBSR+HT621XJZzxsSO8jf8RbzcAzRDQX7nxjN3ORCLqbkGtows0VymhNbFHc3XU0PYxyt7InqpO/hF7YDy2lBRuMk4ylWeluY7G4EZ6XzXBlUw6Wncv0/B7c5amzd5ZXnnlhfyC2DZivasFkZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J3QaCRwG; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a102494058so13980495ad.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 17:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769130847; x=1769735647; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WRGD2YWjrtmwGYVwivTN08CsAVPXSr88y6f4NIlNfN8=;
        b=J3QaCRwGdyavKFsHN5awhCZf+u1HtFoeQvffyHjMsLC501Rdy/w3ttC4v3J83ekTgb
         ODqn9SsS5WImJ1hC2CKwxpEAPJ7fuMFWvvd1JkTGFtvGAFP7MAKuIgnbQF4X+3CYBasI
         MRs13SPzl88zMAoZ6L+SdYNorSU6wga6E5JiY6ZfYuCiE9t6Dl1C2fxHIBl7fCOQVPk1
         jljLjWNJLrHKrbFU6rZ5Q9kPFDVkLdpyAC8s+UNVvOIX4BJToQ0JL+mFhEQyZRjQzioP
         3e+Jphy4nHgAdIjoPi/uok63WGgX9/RPU04cRmphDbX+EaljB/MkUuMZitZEcRQevE3L
         xj8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769130847; x=1769735647;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WRGD2YWjrtmwGYVwivTN08CsAVPXSr88y6f4NIlNfN8=;
        b=s+qpZu5cA1YN8Z5t+y3KKlwKWplRSW0xrm1+6kZ+fHeWfULjcZ5MZdX2b7624wwkTY
         99By2ppWErnL0k5D9lcEfcAQZ9hbXKUbG0nYLe+Zh5pHvAzXa0lOYQKDWontYxqwEJtR
         xryCSjqQmzfBxXU1v8/G650Wm4U8iBF8AQZgCd4tABIi8xg81LEEpTes4wwadQZicmR/
         L9ofhlZsZ32ti9U6L51fRmM24u81MxkHJUBW/SMznXj1paorekg6CW2xCNrnDuOKcSXr
         jCX3Js/l/NMzXpH0c9vOI5wjP/TxE+fqK1OSXUYKOg+Fi6xxmKUtEDIWktLCmztK+a9V
         cP9g==
X-Gm-Message-State: AOJu0YzYs6icHwy8Nri/Woz5w1mH9fiReYvE24PpUmjg7ThNgXtdsVe7
	t/VgJs6pr0xvDtYnRYdNnrlWk+A3fQb7osweGAotB8AvYiv2Ffj6dAeinWdsciblSpQbgxs2qig
	J5sWSt0M=
X-Gm-Gg: AZuq6aIWgPoz7xdJoTIpgtBIv5f5FbwIuzheRgOM7e+9+Es0k/0UcXIZPLEZmT6dWdY
	bWWtxnvnLSYMo+qg89WYj3wRHSj8sMebafS8s7yyQrnH2Loo1LGE8+lRP3CZP0KUNvmDOJo+zuJ
	TimXN4zjZyvs0kq5N+1Yfu8+avxNE+z9Ku1HeqZW4D4LSDVeWlo6eybGzi8lpDQ9V3KoA6cOenP
	WEEcev5Bo8feMPWi1qUzFCeDgxFxP2hNwaD34u/larGp0WbWvNePzyqmm6XXlkH4Pb8gr3lyO7F
	NQShDfeiRIpTNIX4a/JnIf1HF4Pik1vfoPzNN0kUg17VviBQXgHVVXRpKn7paCucSl+OTNZl8ML
	2FvbNzdbdXDepDGfLjVa6J78tBz97f8l4YUDyyPPAgfQ5QyQ5lxspYZtJGBdQvt9Z9JUsKnVeNL
	YDgEzx3Zet
X-Received: by 2002:a17:902:f54b:b0:2a0:9238:881d with SMTP id d9443c01a7336-2a7d2f7cca4mr48720845ad.15.1769130847498;
        Thu, 22 Jan 2026 17:14:07 -0800 (PST)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fda160sm3960495ad.88.2026.01.22.17.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 17:14:06 -0800 (PST)
From: "Kevin Hilman (TI)" <khilman@baylibre.com>
Subject: [PATCH RFC v5 0/2] pmdomain: core: add support for domain
 hierarchies in DT
Date: Thu, 22 Jan 2026 17:13:59 -0800
Message-Id: <20260122-pmdomain-hierarchy-onecell-v5-0-76855ec856bd@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFfLcmkC/43RTWrDMBAF4KsYrTtBkvUXrwqFHqDbksVEHtcC2
 3Jl19SE3L3CLWkpIWQ5GvgemndiE6VAE6uKE0u0hCnEIQ/6oWC+xeGNINR5ZpJLzbV0MPZ17DE
 M0AZKmHy7QhzIU9cBKtNgrWzttGYZGBM14XPDX9nL8xM75Mc2THNM6xa4iG11j70IEOC0sI5bz
 r1xj0dcu3BMtPOx3+RF3q9J4GCd00hKk977K1r5qxlR3tTKrGlvLTfWNJ7sFU1dNCHE/qamstZ
 IjaLWXMrm/0/P35dN9P6R25p/znvEiSDv+zBXxWJ2OSN5wf7WWBWX+DmOwUM39hAb6HGE7CTMv
 cBiQDhAI5SySpZY+yrf9XA+fwHl5LjwKgIAAA==
X-Change-ID: 20250528-pmdomain-hierarchy-onecell-a46fad47d855
To: Ulf Hansson <ulf.hansson@linaro.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Sudeep Holla <sudeep.holla@arm.com>, 
 Cristian Marussi <cristian.marussi@arm.com>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2221; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=aY3lzdYo34rzzl5rEA1NOAbbPbFMvxFb3wjxISqu7SQ=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBpcstejbN/+il4BUXiOOZpRcNwNGsz74GvjwhTB
 7ou/Vz0eMaJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCaXLLXgAKCRBZNxia0/vG
 ZWeHEACe7CpdiIWB2PxK/uKxOKEiOMTBcVQNvq4lj1vZw4q9o7qyG5DQL5hUSCPWUWtvyoU+2EP
 t5xX53KzA2crRXbSzkhfOBRv/fJ2BN8eHrjBbca9OaSIpbLDKVXbjViDn2RpuOHwM3KTxFHV4w2
 5Dp6BngEnIPrz3IARPdH5R2tB04xMIUgevYw/83E6WkixELZGsNaof7uQQT6vE2nxHFlkOGRNrh
 29QDnZ/21z1p9uqDGjBAKvY17Pc2IckmEEWVWf3++3PzC2On+IxlAV9bAuKqjNbjqaELAFmtctI
 Tj1MoCTM3RywCAia85SjJPOCyGRw5NE2C1c3yPl+Vpnf4ZMeti0GZZ4MwHp3CO2IGFLuiiaUfvS
 SbVhmXjao4xXBL8xJHUhbKC5GSSYGjb49WQrbYP+RZCaZaqPXPy3afgS28rRqafd2hljFW5ilZ8
 jJLnntwZVYpqdskBDlQaor0Yz7mpBMIXuMzsOvK2WqRIIDqLTBMZBkE1VUjFOo1FnPb9LMma4ik
 42TKoQTflbbagSeoofQ9ic6gi1drt+ArEOyu3f6v4d7i3FsHzgwF9obnxVtLNrQseQql5nKh3DC
 2v39nHn7ooOwGGO4QM1lA9W0JS4xIEm5p0LUkpZdSUC1o1eFY3L7G2RlZ0mUgFyv9JpjNf/6NuC
 in79ZCaFdxuAF1g==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-258655-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E44A46EF29
X-Rspamd-Action: no action

Currently, PM domains can only support hierarchy for simple
providers (e.g. ones with #power-domain-cells = 0).

Add more generic support by creating an of_genpd helper which can
parse a nexus node map, and create domain hierarchy.

Signed-off-by: Kevin Hilman (TI) <khilman@baylibre.com>
---
Changes in v5:
- update subdomain language to parent/child
- add remove function to remove all children
- if any children in the map fail to add, remove them all
- Link to v4: https://patch.msgid.link/20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com

Changes in v4:
- use new OF iterator for parsing map. See:
  https://lore.kernel.org/r/20251119-topic-lpm-of-map-iterator-v6-18-v1-1-1f0075d771a3@baylibre.com
- instead of mapping on probe, create of_genpd helper to be called by providers
- Link to v3: https://lore.kernel.org/r/20250613-pmdomain-hierarchy-onecell-v3-0-5c770676fce7@baylibre.com

Changes in v3:
- use of_parse_phandle_with_args_map() instead of custom parsing
- probe when device is attatched to PM domain
- Link to v2: https://lore.kernel.org/r/20250528-pmdomain-hierarchy-onecell-v2-0-7885ae45e59c@baylibre.com

Changes in v2:
- Use nexus map instead of creating new property as suggested by Rob H.
- Link to v1: https://lore.kernel.org/r/20250528-pmdomain-hierarchy-onecell-v1-1-851780700c68@baylibre.com

---
Kevin Hilman (TI) (2):
      pmdomain: core: support domain hierarchy via power-domain-map
      pmdomain: arm_scmi: add support for domain hierarchies

 drivers/pmdomain/arm/scmi_pm_domain.c |   5 +++++
 drivers/pmdomain/core.c               | 160 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_domain.h             |  16 ++++++++++++++++
 3 files changed, 181 insertions(+)
---
base-commit: 3e7f562e20ee87a25e104ef4fce557d39d62fa85
change-id: 20250528-pmdomain-hierarchy-onecell-a46fad47d855
prerequisite-change-id: 20251119-topic-lpm-of-map-iterator-v6-18-a61447423adc:v2
prerequisite-patch-id: e5697df059c17cf967fa6e4b1edb70874fee4ad3

Best regards,
--  
Kevin Hilman (TI) <khilman@baylibre.com>


