Return-Path: <devicetree+bounces-317764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zSLsFpW9Q2rmgAoAu9opvQ
	(envelope-from <devicetree+bounces-317764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:59:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9C96E486F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:59:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BZvw+gJt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317764-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317764-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F10E306A955
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C8D40FD86;
	Tue, 30 Jun 2026 12:53:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44033FA5D8;
	Tue, 30 Jun 2026 12:53:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823988; cv=none; b=PWc1ydcvb01gIZfU/4xKS0gG3M0V4Fdcf/xe2hNu+XdOrUMgs9XlSjJN9HqHl3M+kdLYj2tOoGG9J0zc2vhLU/EFmiT14q9BwC+VIYeOtg3US1K+3c92C0rEfA05uJwE0mGV/dYJcd06EnjQ4ZLumBmTpvQ3HgNRWxU6FG2ozbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823988; c=relaxed/simple;
	bh=ROcY5MyDjeKC0r7oBgUYsRLMttcLNK+R76DuiYC0u4E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TkGHeCOpqbx01TJi6SoNcuAReBbnQQtQ6nQo045HWpMpEVhETARnAvMdF2CD99RfpGYwKmuL4jKV8bZDXuR6VIOeU7yTXS7WVbuT+qFHL6R7P/1XxumMy3WIvlLWK/OiL//XSgg0ESmKqvsaffgNY3nv2hrnO3ZZ6XKikHt4rF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZvw+gJt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E06DF1F000E9;
	Tue, 30 Jun 2026 12:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823987;
	bh=fFTV49VQW5ZLiYL/aWzjzFEMFn4A4VsTnUBjOkMuqWY=;
	h=From:Subject:Date:To:Cc;
	b=BZvw+gJtjsEfu3BH3FwuCAS6hJw15zwm0YFP7w2g8qNdTKf9SuksiES7LX89gf0zr
	 NVY0CR0pwdHP6ns2hzuACB73oM+Oepgb3ydWKQWNrNKGwl8F46XAL6ZXwWv21KDn0F
	 xgYkZZmyBSXZl7IjFbi19+IpQcJayjilVoY30lNZAcMgPLtKsD6EUCJQPqEVYjNHsv
	 qflbEwUwWR+k1cUwS1Qi6UyggJ92eBNlaXKrfviw7bOC+v5VZQYSzWdKRojzf2Lkwj
	 NuBbKYzkeWFHRmvEi6JL5IQAUAd7kXAlYVLw0DdE91bhLEK8ILzXlQs7dNenN5Tl+Q
	 D/I6R+c3zneTw==
From: Yixun Lan <dlan@kernel.org>
Subject: [PATCH 0/3] clk: spacemit: Add clock support for UFS
Date: Tue, 30 Jun 2026 12:52:44 +0000
Message-Id: <20260630-06-clk-ufs-support-v1-0-cf7521d1d0fe@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABy8Q2oC/yXMQQ6CMBBA0auQWTPJWElBr0JYSJnqqIGmQwkJ4
 e4WXL7F/xsoR2GFe7FB5EVUpjHjUhbgXo/xyShDNhgylixdkSy67weTV9QUwhRntA352jR1Vd0
 Ichgie1nPadv9ral/s5uPE+z7D0ZG/5Z2AAAA
X-Change-ID: 20260603-06-clk-ufs-support-680f72874490
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=924; i=dlan@kernel.org;
 h=from:subject:message-id; bh=ROcY5MyDjeKC0r7oBgUYsRLMttcLNK+R76DuiYC0u4E=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBqQ7witHp46MnBhRPjHRqWbO9ifeIppPTxvDQQ/
 YQNw4zSt+eJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCakO8IhsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+1OmA//food5KEGKOPt1pFdI0WOzWHoqS7YKsm7TL3J5jP8jn9e5T6VUg1XC
 ogEi79jITIqS7/ffigZ6qgvw14YLGl2n5gxLNiJftyEY92bT8/XIuO2rWImBZ0TwUduqMoLTeeu
 t3tzVz3xkOLdFF7uNIa1E11NLgiTbjjFgioIFeLAXX132Mjw6ZFDHOVQAVKLSrGQAgNMpjgyBhP
 FBEafeUtwOXR3VffUKJJr49+nnPRBcv2DyUlDrPW6SA9EqlS/QTIsN/hZfb9hTSvJUkQkwUPj/b
 KIqCv47XPpin82iWqR8YZNWetTT7Yw66W1p1zHGYjiBKgBAl6cD3t8773ljd8xuFAb3TrTm45Y3
 sp6nUH+uIwm2TIE3ddIjGelHQzQyIOhOQwNoPVNt4Lk2r482Pi2EWyCCGviNXATyreIJ7aK4yLJ
 S4RwEEXIZnDImAwSSzJEMBMFMq8VIAMsFB20BD+kGXTgR6+uUVYNiC5KiH1bsCwbVb4tYJqcTY7
 nbPxBqkYiW8PYIu3QRGVYzupBsP8WdON64GKQgCRb1rDs3bYeH62aMAyQy0kkgAWyfE+1H0mUBZ
 6Hth1A2KMYzjPze9s2PAdB7ZchtCIklgvCY/U0ICjFG4pHQPPiwcbCoHj61kdOuAB7HZPrIRzod
 mxPHEtMzxBMexmFQHgHL/nk1PzTSfM=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-317764-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:dlan@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,spacemit.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB9C96E486F

This series try to fix parent clock of UFS aclk which was submitted as 
wrong version, so correct it according to updated doc[1] here. Also, add
a UFS reference clock which was missing in previous patchset.

Link: https://www.spacemit.com/community/document/info?nodepath=hardware/key_stone/k3/k3_docs/k3_usermanual/17_clock_reset.md&lang=en [1]
Signed-off-by: Yixun Lan <dlan@kernel.org>
---
Yixun Lan (3):
      clk: spacemit: k3: fix parent clock of UFS aclk
      dt-bindings: soc: spacemit: k3: Add clock ID for UFS refclk
      clk: spacemit: k3: Add UFS refclk clock

 drivers/clk/spacemit/ccu-k3.c                  | 10 ++++++----
 include/dt-bindings/clock/spacemit,k3-clocks.h |  1 +
 2 files changed, 7 insertions(+), 4 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260603-06-clk-ufs-support-680f72874490

Best regards,
--  
Yixun Lan <dlan@kernel.org>


