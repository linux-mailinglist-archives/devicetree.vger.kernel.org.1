Return-Path: <devicetree+bounces-268084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMGKOoIgnmm/TgQAu9opvQ
	(envelope-from <devicetree+bounces-268084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:04:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F5718D046
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BF697304796A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 22:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6688C33C52A;
	Tue, 24 Feb 2026 22:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FRfrep2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f226.google.com (mail-yw1-f226.google.com [209.85.128.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A82E343D80
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771970687; cv=none; b=t6Q2KJxKls8YTsHrGbtF0RP4nMqV7bGRF3VHyTCANVKSD+Jk0Sz1ZOYQbZe3XEKOxcLKPinlNXB6hanzwDFPAISTpiL3d11ZQQv08StKscBoJ6PuOo4INfO6N3hodmQBigzaXI23mKNHftYSTCHIRXZfYhKbsv0+21Jb/he78zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771970687; c=relaxed/simple;
	bh=R4/ULu962fEdVJu2ZyHiN/LTuaZxTTBv+gZJtef57ms=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VFATgJYXAUHamX5KCQGLbDLg16Q97U/rD5YGsw9ELmgMTbto5lOuSx/PzoFv3bdgWssYDmW1xz5pLQZHAEEZq/WMeeE3fKgDmnacJFUCQ1aWCFQvd4H+Et9SDoIj2rAdd/4g5ATGr6aPKRvkV37ldaQ7F6rzJmSZxmY6Lo1uA5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FRfrep2L; arc=none smtp.client-ip=209.85.128.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f226.google.com with SMTP id 00721157ae682-798617c0ad5so6161717b3.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:04:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771970685; x=1772575485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yUe2/zV4rw3eAKHjqP1mXU6br5sdLAclT1ghdsXtXr4=;
        b=tdSuTpdtfeDcuAvgQheMFPA3sbzvyyPLpD6P6+cyzRiHwkG/ZnGl7U/A/qpK4KVIFr
         anRpUqKd61X6oYD0WDOCVeSM3D9qJpTUfnTLMPpI5ytqvV8iu0MuCEjdtUiOfR+J1Fa9
         AG4c0BHsnGTHlYXW40965PBAv1gJOC7apOI7EXCpPzMNDyiPKzGWkWAx25v/TCz8BY2c
         juwJ9/N9h3pgANyRyabXnWB+mhjC5ShUU50AU7f04CDf/3+edFta/9xn2bjGcnhYA5Xz
         jaUIs3Gh+6AMrJlMzYHkcUts/FpCuy3BNsbGy/lwac7JEMXp5WLvnDvuvYhQMqK+DLeV
         wWbA==
X-Forwarded-Encrypted: i=1; AJvYcCWFlNZA0ZbFIN7jtivFbwV87yew4QSIe0tzO4yo/0mVWRlJqwv6GPVOsi60+xUswo8+QO1VSjYx6nbx@vger.kernel.org
X-Gm-Message-State: AOJu0YweR+RmqhCz8ZtLdKizeCiis/8dFOZNk6/l3OiJtSepNQmBcES8
	vhudO5W7i4utH+IaJg49nKF1gi4Yi58Q7uwg5QxmNmSGmRiXRblwjL2haCJA6MvLRxvvrsI0Yu5
	UBP22LJ5R/3kPMF8yApljN+7XVLsN5Z+Iq1rbGrPu+TS/w8U48K3oPyKwiPIWv5+px/vLpRnGpK
	TMhVSSrZvuuYYCd4AAK9X0xuZwn913Pap0FdAfTFZA0z6pKOVPmqjSIUnjgFxR2oiRAFd+43mLt
	t4vfei1LUBs1g==
X-Gm-Gg: ATEYQzy8SascyIeCUl1sZ/vfhFylj2zRSNfxLayLq26rniRFTUGCjgJQEFXQf2Gqei7
	cnSptWsaTEQzMxQ29VarGEzK53tvuuvjPw8VWhHyglnbc4QQOm9m3s7/1poD8mbCQm+PniySQQz
	zA8JckAMUp52MhTEZmskeNA1EpybOPvapeRTpC6X7fHKKQZxLd35KJ9qSVArDUMACcBL1KT8Dne
	xwUgN+SYJ4wk+bk4+gbQdY2V+mGo8/XKKG3lO0eqXMKSChe8nzUs0i/6TcmF8kCE/Y7xXoV6fGF
	OzV22jX69ZLygdSRucejtmWN+gme2BYxFZt0SOrgWmj9lxoUnX7wHE1X/ptBVGqnpc4eM8KYg11
	Aub2HIfmLqF2G5odMxH+toHYfSBR/qMn7gBmBsi/SkiWgsYoWAFqAy36uwFYq5wQ9fmQYVBkqvM
	KyPUKnCAy6fxf7p8KqC5SfYks/4BCfhWOoDAvjC598BeNfv2FEDVG/Ng==
X-Received: by 2002:a05:690c:a90:b0:794:ef16:719 with SMTP id 00721157ae682-79868120a0bmr2100457b3.22.1771970685103;
        Tue, 24 Feb 2026 14:04:45 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-95.dlp.protect.broadcom.com. [144.49.247.95])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-7984fa4c8c8sm6373287b3.2.2026.02.24.14.04.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2026 14:04:45 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bd3bf5dde4so5776418eec.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771970684; x=1772575484; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yUe2/zV4rw3eAKHjqP1mXU6br5sdLAclT1ghdsXtXr4=;
        b=FRfrep2Ln4IPcRziYgGW+2G9tVXDe/7OQleqTuGJDWN5Lxyavshk7hFWSydsoYbfT7
         uXygBillPIOXZhcvuqbJDU0k9ILOj1jq/0HMRAAW0/+7z+UrJwNOMKDZJjTyT7lSGJYD
         vAISyNxobp6RauKv3jquIG+DFHE/3AXHdydsA=
X-Forwarded-Encrypted: i=1; AJvYcCXwVrZpkiN9JoY9hWLTqlvWPdvN/SZgfzuwUEhh0CpKoh07OVVxWr03yAxzSgcpqq86AU6FEGf9PA18@vger.kernel.org
X-Received: by 2002:a05:7300:572c:b0:2bd:afdb:72d7 with SMTP id 5a478bee46e88-2bdc317c4famr26769eec.3.1771970683881;
        Tue, 24 Feb 2026 14:04:43 -0800 (PST)
X-Received: by 2002:a05:7300:572c:b0:2bd:afdb:72d7 with SMTP id 5a478bee46e88-2bdc317c4famr26749eec.3.1771970683304;
        Tue, 24 Feb 2026 14:04:43 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdb055507bsm2374822eec.0.2026.02.24.14.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 14:04:43 -0800 (PST)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: baolin.wang@linux.alibaba.com,
	florian.fainelli@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v6 3/3] MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver
Date: Tue, 24 Feb 2026 17:04:07 -0500
Message-Id: <20260224220407.2351692-4-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260224220407.2351692-1-kamal.dasu@broadcom.com>
References: <20260224220407.2351692-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268084-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:mid,broadcom.com:dkim,broadcom.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 32F5718D046
X-Rspamd-Action: no action

Adding myself to the maintainers list for the hwspinlock
driver on broadcom settop platforms.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b8d8a5c41597..cb3e653b204c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5249,6 +5249,14 @@ S:	Supported
 F:	Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
 F:	drivers/gpio/gpio-brcmstb.c
 
+BROADCOM BRCMSTB HWSPINLOCK DRIVER
+M:	Kamal Dasu <kamal.dasu@broadcom.com>
+R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
+L:	linux-remoteproc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/hwlock/brcm,bcm7038-sun-top-ctrl-semaphore.yaml
+F:	drivers/hwspinlock/brcmstb_hwspinlock.c
+
 BROADCOM BRCMSTB I2C DRIVER
 M:	Kamal Dasu <kamal.dasu@broadcom.com>
 R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
-- 
2.34.1


