Return-Path: <devicetree+bounces-270024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOb7NeqRpWmREAYAu9opvQ
	(envelope-from <devicetree+bounces-270024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:34:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC4E1D9DA4
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:34:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EA3C3077228
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835853FD129;
	Mon,  2 Mar 2026 13:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UMet0V+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A792B3FB056
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458341; cv=none; b=ZZWuI5QDVbiWKhbOiS5w2HSFood+MJR+0N94Rn5WHOWnteb+A5QBI2Vq0fhzXcAjfCkvxxSbZnbxd1EWez18VplFCfApV9BVFANojxtE1pRp+lOGF3ZrWfSZcGa7PXSfG4LHIRHC9t6jyVmnTAeT8MvkGuN0m1GHLjai1p65vAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458341; c=relaxed/simple;
	bh=0fHYnkqoEKuz5XK2Q12Z5f/zLbniHnS3WnmQmYhp+6A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E1TJy1lcD2VIEmFUv0Jlv/fMrXDURYXkDyer9lgteO4R+HKSHAK+iQuCNpnW2TCejud3JaJvvFMqWYEc3m5nCqVYWvH7/Q4wjUjTiWuSQRgAuj+zSSgDO9v9nSyZDoyqR5o6U9fe91LpBfu4AK7Z8qmuB5GwE6o8ePenp4hec30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UMet0V+1; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-65f71ed7c6cso7577769a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772458338; x=1773063138; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=25TtrNEPK+tyfDonQxbtbOLr75Gzb88j/UuuH0xGtz8=;
        b=UMet0V+14FxEopSKi1zB98d7xJrlKLxoEPKYG+5EV4L94tlSeN/zJEaZerEo2S+6Sr
         AOJ8u4Iywd/bepZOC0TlKfzT2TV80RRI3an87w8Zafi+Qm4yKMqWSzs7dsiJkQPBZnK2
         x/tNp4tj1tzybYqH8VhahRm356cfxQZ3og4w5lIX8jU76QGPERLEcEEiotw6EjJT/isA
         xdQBehtbrx+GVc1rS55FDb0H5vrhhR+rBii0vGOTlj3ebeaYfgFGUj1338uH+0yU6lBp
         G8FIM1b31FGvr8SH44hzarcQIHx9K0ac5HrsfOpzOvzMTLIIqpQgmVGc8RIWARpWENJz
         zvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458338; x=1773063138;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=25TtrNEPK+tyfDonQxbtbOLr75Gzb88j/UuuH0xGtz8=;
        b=MI3m+QuSbI8iqzq+QlfzqLf76kSHPkTb3eIF93CqM76Nh3Jm2TLxRvBvOaxZpcwU4X
         x4GfCUjTz/U5+DnrWGgXUAc7Q4ENOX9QPB1WLVMZ2DjCJTNdRi1KuSm9UfsdwMeClSUn
         Co3Sx456i1HzX6Jk4FklVBnkOAcGqihw3myjQhL16SvB0gawe0KpTJtqjh+cV4AdHHbs
         TIPS/zkDWQ16dzuCaOnD5Xu/LKOM/mpTWh2FAp2Xoqp+LejTO+7DZLFkuQxPwREs1WfH
         JZA7RoJL3+zFJK/F0xzjpePnmhu/wPhYvA9C9l5nRITcBLUBPCh2UXgPwT4vLU5OvTxM
         tE2w==
X-Forwarded-Encrypted: i=1; AJvYcCUILzoZXtNmmKmTyZmA0ZDwVI0a1MvLrxfwwr6RPA6j0lNxqRbcgoHQb1ZHYR7FZ3sxWl6TQ7C2podK@vger.kernel.org
X-Gm-Message-State: AOJu0YwXEVmGtXHvAyq2llxIueVyvBuoMwlZakvuGuBBRoRn3mjHvHMk
	FMDjP+0K80bZ8mvh3X1CKECFytoWt36g+qsUqc0NIasptTsbf4yh1yqYFe2Q2F2fqpQ=
X-Gm-Gg: ATEYQzxURl3xN1gg0m8KqhwzKViSx/+zz8fl0kYQexi76rOgU26oOt0R6rCA/HSwqa1
	033Q9YfhjBX39KbFw8sXIjvldLamKx3Xh9Wb57aG7TotZwSuzX6GUTiyUdGM/EKGVSVXDC8Fx/I
	oz+bd9b0Lx3fg9/ZPSNMJkk8DQSzG1uQPG4YEVq3TSij7708RY0ToyAybGxrULZNkcOpF1QrkpO
	pVTTrS66KgsZLiQDWmD3QsckbABrcUteTZk+w0wNeKaK8nFuxnERKfc75azekuWSDzloLye8uiu
	gE8THIxyBVUZn7T7gGOtA7UtZJ8bUD4iGWy+YD5nZ2NcvmbbbDHLKbpAjGsyWpeZx+/wacei7wK
	wHR++xR0PI3VaLVXB4cuvni16T87RS4OeTwx32AIvgE6ExCDEwxUvriyT8+EucI09FzNem9gUZU
	2j97cluhIpre9Z5CHZK8LK2mItL8XdKC4UyI2+IGg9lsM1ibamQkP74RasHfLC3Sh2yTCzZvqXa
	FoVTMuGUlul8L8=
X-Received: by 2002:a05:6402:f23:b0:65f:730d:8026 with SMTP id 4fb4d7f45d1cf-65fdd6d76efmr5124254a12.9.1772458338027;
        Mon, 02 Mar 2026 05:32:18 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm3282988a12.17.2026.03.02.05.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:32:17 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 13:32:03 +0000
Subject: [PATCH v3 04/11] power: supply: max17042: fix a comment typo (then
 -> than)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-v3-4-3c5f01dbda23@linaro.org>
References: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
In-Reply-To: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Ramakrishna Pallala <ramakrishna.pallala@intel.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270024-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3FC4E1D9DA4
X-Rspamd-Action: no action

Fix this trivial typo where than should be used instead of then.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index acea176101fa..07759d4fdc37 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -131,7 +131,7 @@ static int max17042_get_status(struct max17042_chip *chip, int *status)
 	 * FullCAP to match RepCap when it detects end of charging.
 	 *
 	 * When this cycle the battery gets charged to a higher (calculated)
-	 * capacity then the previous cycle then FullCAP will get updated
+	 * capacity than the previous cycle then FullCAP will get updated
 	 * continuously once end-of-charge detection kicks in, so allow the
 	 * 2 to differ a bit.
 	 */

-- 
2.53.0.473.g4a7958ca14-goog


