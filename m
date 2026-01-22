Return-Path: <devicetree+bounces-258275-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECT9CqfxcWlKZwAAu9opvQ
	(envelope-from <devicetree+bounces-258275-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:45:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A0D64BAC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D0E22623948
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:38:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A6431AA80;
	Thu, 22 Jan 2026 09:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyM9rVvA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B692DC76A;
	Thu, 22 Jan 2026 09:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769074699; cv=none; b=lZI1mIJkyCMjJmZQKots6EokFubAoOvw68t9XbuG1EILyUWwVtW8aW7o2tXli1OuweMC4ZtkLbVFfzbO26aENnDn7VXfYXSLxNUybk6fR09ydkapuG48GUxD/EFeA2twNKnMFJ+fYTVwR2cjStaIcrwn3Vout34w97qf+gWw0+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769074699; c=relaxed/simple;
	bh=EWgAvMz5SU18vwREMMzZWEEapD5INKu1KRD7ZdxGh6w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=f0T09z84X7Gcj5wEiIQbmfYbHRtUxdyj+zCbkc2v+aTAsXz7GczqxY5hCooyYWt1hk248MrvNIJZNSjey7ZQGcj/joG/AlHuWmvClJb7nXBHH48xOs2WYYykHoLm49KIJKWvNB8ZMnZl2+YXmhltEkU8TEfhtnKdSuodaJvLeE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyM9rVvA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56991C116C6;
	Thu, 22 Jan 2026 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769074698;
	bh=EWgAvMz5SU18vwREMMzZWEEapD5INKu1KRD7ZdxGh6w=;
	h=From:Subject:Date:To:Cc:From;
	b=pyM9rVvAhHDtByBv2Oha4vhuJsRAOUMauVOR/OMgEcAQfuT6NzTUADMg1Qp+LM7ZI
	 1IazcLADEbfaWtqOLy28S2f1CBv0Y/iSra+mZ3ip7QGGEb+fEPl5rKRnK9ZJK1jkt0
	 5oEGQLa/GBdPSHRMvIlV9AiAmNNDDLlZr/oIvZ/R6jXaITi7QrRN3itUH+MGSlH1+a
	 LY4Ma9YYp7MqDtYS1lE+2JaaPLBbyFMVtGHAaYjQxd35EE7Suqh5ISDIvxQktV7LwG
	 IyPEo9I18TbZ/gxY7wyThKOEGlgaYVgqO6fLYBKxsRypbmNToDLAEqGJ0ToMODYMAb
	 LZisFdWcR8e0w==
From: Yixun Lan <dlan@kernel.org>
Subject: [PATCH v2 0/2] mmc: spacemit: Add support for K3 SoC
Date: Thu, 22 Jan 2026 17:37:29 +0800
Message-Id: <20260122-07-k3-mmc-v2-0-3c3ffef25e94@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANnvcWkC/03MQQ7CIBCF4as0s3YMUAPGlfcwXVQ6tKQWmsEQT
 cPdxcaFy//l5dsgEXtKcGk2YMo++RhqqEMDdurDSOiH2qCE0kJKhcLg3OKyWNS2F1JpQ+f2BPW
 /Mjn/2q1bV3vy6Rn5vdNZftefouSfkmugc8ZYYe5ucPo6Ewd6HCOP0JVSPrbwJqyjAAAA
X-Change-ID: 20260112-07-k3-mmc-6ca01267e834
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>
Cc: Yixun Lan <dlan@kernel.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1295; i=dlan@kernel.org;
 h=from:subject:message-id; bh=EWgAvMz5SU18vwREMMzZWEEapD5INKu1KRD7ZdxGh6w=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpce/+HinEMWPgByCb1BEgVBcsMFS+EUvwcnC8v
 l1uUlX4WLiJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaXHv/hsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+22YA/6A50NF0MEca1IiK/og/EQsOKYCKWNcMud0+nfCq+qq8XZEg6vanipM
 4RzNH3O5z0dIyHqeCAZ+XVnTz8r6cIxoRKKHBLBYn/Ck0CIsLwlEN+9f3DMWeddwPY0WcsEt9cG
 QTXVDD9wk1uornaqw0j7Z7CAJJ8Mf/9enPXJVKa76uIrMvuIJDkMRfYyTg4IgWJfEo+ngMso1eF
 nEDKJBSGJs6JZiAjNhyPmeUL5J5TMG1GH5pymhYaNvkGAX3zRrKaKamm+uv3+ocWGc3F5Db8pW5
 H6PAfZpyXt1nrSWxAl/kRucGMHQx4texhY5zZOAsjCSwBX6YpYLHJ1bzEBDJUG2LuVjZv3Bk5XX
 6sBfCtZG47hl76dThzICc1ZXczPW61Se9gaWx+fVnCcGrpZSPTzbdgLaCTUjK7cxfa2rJmTZsPJ
 3/4UOshLgZrg3rrJqjaCR7Vax0scjaoyyaKY25zhfoGrXAP4r8B8OtdgkQyEmzhNL7MROThED3g
 /F8U3CwQzEg+gncEOE4PnwESYlHQF7lL/R5V83Dbsy8LK6Q5HnbUySAzj4MA0C2oADv9xWyRXQ5
 WYg5S37+RNK3gYvEo/3W/Vsf2TlgKNPmY1zYZxnY71OWx/165kpGMKHoNLQ3Prvd7ye8VAEuJ+B
 WNM3TvYd4lurJxs0sNP9B6vkaOH3Ac=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-258275-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: D2A0D64BAC
X-Rspamd-Action: no action

Enable SDHCI controller support on new SpacemiT K3 SoC, while as before
only the third controller and the eMMC device has been tested which using
vendor K3 evb board. This board has not acquired support in mainline
kernel, so I've omitted the DT part patches for now.

The new SDHCI controller almost reuse the same IP as old K1 generation,
while fixed the broken 64BIT DMA issue.

Hi Ulf,
 Any chance to queue this for v6.20? I know it's a little bit late,
but the patch itself is quite simple and we've tested on evb board.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
Changes in v2:
- collect Rob's Ack
- drop uncessary blank line
- drop return check from of_device_get_match_data
- Link to v1: https://lore.kernel.org/r/20260121-07-k3-mmc-v1-0-ff77c07bfdf6@kernel.org

---
Yixun Lan (2):
      dt-bindings: mmc: spacemit,sdhci: add support for K3 SoC
      mmc: sdhci-of-k1: spacemit: Add support for K3 SoC

 .../devicetree/bindings/mmc/spacemit,sdhci.yaml       |  4 +++-
 drivers/mmc/host/sdhci-of-k1.c                        | 19 +++++++++++++++++--
 2 files changed, 20 insertions(+), 3 deletions(-)
---
base-commit: 6cefff068d030786d63fa50970d6581c354630b2
change-id: 20260112-07-k3-mmc-6ca01267e834

Best regards,
-- 
Yixun Lan <dlan@kernel.org>


