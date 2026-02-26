Return-Path: <devicetree+bounces-268825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGy7BTlHoGk9hwQAu9opvQ
	(envelope-from <devicetree+bounces-268825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:14:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DA51A632E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3387C3051A8C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56BFB331A4D;
	Thu, 26 Feb 2026 13:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vaPeWzeu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D75325700
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111506; cv=none; b=GMCV8ayzHH/xXwJFAMSQ5YMt2WQ1PbDb9WqUhWcGA1O3ap+jSJqYr1Sv4q+eqAkykNGVIgiaUoL2XeeuIyyBnuraBz9b+By3y9pIVIVozWaH6UXRxb1Ydd96iG0kd1xGaS2i0ocUW6aAqhhq0Y5DhVMWnlZ62IBl6Fi+8fRHpCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111506; c=relaxed/simple;
	bh=CTmFEqd4z7gM9BpiQXC8TftzHTevIiLfsiyczPYt5VE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R4y4WpmtEvM5jpilHRFULBe/XWY+ijb7KgFz0f35BNSsfApYebRCWOCMjv+ld88Zpk5tEnXgl36pAgpYPGvM4MhZs/5bOBliBtZrUyIrBQnwwnqijbW2lfqO7FFeJSbeTT4pvByRZlnKYp6koC7uDt6t4eCQuXsBgzqBSS1yGDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vaPeWzeu; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-65bfc858561so1627468a12.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111502; x=1772716302; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=doSnaoOeWo4jS3UXOttanh09pOHZ+ZihIcXNRAknjGs=;
        b=vaPeWzeuDnQKkkgrqhCFab/T2fyx4GQ535y/mawvR9tZ8dG90inrcE8UEr2qlw7TQq
         Fc3bakWZUwRAJgPu7acLMEnEvUtpChlLMPP09QhMA8kq0EIyRm6BujFyG7RNd/0+GIKl
         hZLuIVysBS0k/72boDLN7xNDKVtgTOi1cgSyPydhq5YFX52oIcCuipvnwl8kxhZO0xWW
         RWiiqSEM2rUqeHhWWGrUNQFWMHtYc1UKh0jHC0rvjvW1DxQBWfBizSiE1ckgIO+3VEK3
         26qCn13QdLnzycxpJalSwc9iXzb8xNgvSSarWDWmJWjZa+64peQmmbl6itALWHAQ08D6
         wDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111502; x=1772716302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=doSnaoOeWo4jS3UXOttanh09pOHZ+ZihIcXNRAknjGs=;
        b=Pmg6t+M6STWFGJ43wPCgrWbl0h5NZCB2T1wWxkNtZaknAC3iqXtLRbEk3pB7WEf4Oo
         cVtzDxCBRaDEEO0faiq6h7hcr35kKIjt2apPLFq5SNQ8WwJRlpeGevGObnz8cO8Ixr7P
         /pOatVdI/YpBTSPrd3CoWcwnlbBz70i3UbSvOHx/gb1YQBW70xz/fSpUE2nM7BdsVzdk
         AF3SA/Q+mqefctTgPPtYd+0CkCiZ7WQaudAQgKKNjSsUiPnuzVxuFXbThpSDSva2g+jx
         UEjvGrAgyi2e9eddwkJz9WAwTF4JSZlReMNquejiQt4yo+TNzc1aQF6Jce4gsL256y7N
         2sqA==
X-Forwarded-Encrypted: i=1; AJvYcCXXv5IwsdlpaUKSHqi4NR7qKzU/ngG1H3pBj/riKMhykpDl5QqeChpvPGJg0ETLyO2bvh8oj400dlkZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp+SABIQfOWuxO91rP4J4H8mZFXIh5IZop7WoM3nGLshh1IsDb
	pgSptLOFMnOmFJJbQY+07s6uvnoiiSqPwGrMb75NP4WpAObewV7h0lC4yVaDzKmcots=
X-Gm-Gg: ATEYQzxLDUJN3tGK9XvbuJcNUuzr/8tEBKLJ32tQFkTEqEkgjkXV5jbzYDTd2VlI6wP
	Hc6Fs4FoGs1zDPc7vEp143aMTChuPFXHvLcIE3qTlkzL2Patq3T47AForwm0OslOP/sYUks9dJt
	bRN+lw/xKsfZAwH2Et6nYve9hy/iia8FaddrgYVEC/dB8Q0hPcpbTPctd8//u8McnIsG0/16Zzq
	8nrLKvUsCMGYDQo45isOrWdbtApFs1sOQio+Bk3hTPoynS+dEk+PeAi5ezIiNSb3xepXl7Jmgi0
	WBJA0ERwBbj5E3lVSgd5O+do0Jc1nrsixXyVNQS7uNFHps2Vl4i6GoP9TmTZYI3lppoO2ZWP6n1
	PXNTwnB05K3OSLNj3Me2SrCJ5dEM2/II7XmQiIHC0n7fm8J1vGSECpSeNkmZhwdWoPWIyfaHdR5
	l54LfQa1jQ9iVnT33CmZR/HtPTYXA/ytacNTMaT9sfUfawoUjmYxXOcMQjABq9mr1KDWoMSJk3K
	xdJ/Mf4pXjDqF6lGA==
X-Received: by 2002:a17:906:9fc5:b0:b8f:7aa8:d9a4 with SMTP id a640c23a62f3a-b93514dcbe7mr261352866b.20.1772111502212;
        Thu, 26 Feb 2026 05:11:42 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:41 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:41 +0000
Subject: [PATCH 07/11] power: supply: max17042: time to empty is
 meaningless when charging
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-7-ff0a08a70a9f@linaro.org>
References: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
In-Reply-To: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268825-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 01DA51A632E
X-Rspamd-Action: no action

When charging, the fuel gauge reports U16_MAX as time to empty.
Ignoring this special case (as this driver currently does), causes the
remaining time to be reported as ~102hours, which is incorrect.

Update the code to not return anything in this case.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index 8808c0d2ad10..bae0670e2496 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -434,6 +434,10 @@ static int max17042_get_property(struct power_supply *psy,
 		if (ret < 0)
 			return ret;
 
+		/* when charging, the value is not meaningful */
+		if (data == U16_MAX)
+			return -ENODATA;
+
 		val->intval = data * 5625 / 1000;
 		break;
 	default:

-- 
2.53.0.414.gf7e9f6c205-goog


