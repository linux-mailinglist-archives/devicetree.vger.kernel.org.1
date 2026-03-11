Return-Path: <devicetree+bounces-273815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBPfHtresGkuoAIAu9opvQ
	(envelope-from <devicetree+bounces-273815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 04:17:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AEA25B581
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 04:17:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AFB13078EA1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FE62EE5FD;
	Wed, 11 Mar 2026 03:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nfpQZjZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D565F29C35A
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773199063; cv=none; b=Azr4yqBEacTheL0FeOxdFjIpG2Di4bBmzzM/8+ZtfB0cqCnws+SMW4mYO3fTCOv4CvHjQkJ9IMYg47ZeaLsUIljuqXrraWPsA0u+1ixF+dXOoRpcZI8qYub+Wfd2sBeIe+libr5LVid2JIujLNZwpJftUeYaZX4eWas00BphI2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773199063; c=relaxed/simple;
	bh=9oo8f816zUb8gdoM9br7bk+Bv4pQ1YUHqKG/Gnd1WLI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=V1FCr0Ef53SGhdRiSMrOXH/II9EZG8ZWNhpv3MmhcT8JGh8bNS/E9W3pDDVk9l/SKc2JdiRFmruQk1r3IKJHOO4crz8lIjB0sfpMt9YhFrKeXwlQ7pliR40NeWKwaaPaNFZn5QIo3kghH8PGoLyGM39fMqwqUkDNBUCPH+n3x3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nfpQZjZf; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-829afe24fb5so3026567b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773199062; x=1773803862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9oo8f816zUb8gdoM9br7bk+Bv4pQ1YUHqKG/Gnd1WLI=;
        b=nfpQZjZfY6X76Hb1dyvwJLVEXYQv+4MCXo1Q6Jm8SqZmQXQWUa1rVko+T5WLjqrAll
         cAT4rjT5d+y20Vavldb1mSyRgiqjNtNaTsN22EpX6FRf+mIWEsXfUhV3c5Uxi2s7V//x
         SUfj56KVE/+VaYsvbX77PzzQZwMZCXl1w4BUs0YGyC+UEPrqp5blAeELCt/Mfc1xuKIr
         l2l6HPl3ACm8sAdW8JqHXdkwiZpda6LUyDiSb/HQrQgsitKhSNpqZssfkNUKosNg89tT
         nHDBs+qIWQw0bOw1UHGYUxjDp4au9Vujcamkc4jXQ0oqs9bRQSK628P9e189Q5UDrbJg
         ptYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773199062; x=1773803862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9oo8f816zUb8gdoM9br7bk+Bv4pQ1YUHqKG/Gnd1WLI=;
        b=OWBHZap2M0PFKS3S0Iyyc7W8sCax3x/bRQLGzrDW88/Z022eH3ZSUnxL6pyu/GUFu0
         gKRk6Um2RC+ZN3hXM3KYoHwNqvRoVx4O6dBZ6sgSCJnCYJHZdyA8xeHoYArRaO8r63k+
         ZoXQdZrp9vOxfNmE4c0daxLxAaMWemXtQ+go7/t/wTb8o3ibMiTmMmG561KKOcoNNa6C
         3Qbf9ZgopTj5yQA88F0IMaf/aa+G7kHfY/dX0K2wdny2OxMr5Pvo/3syWunb22PVYxrc
         3zDA0hOuz0aTwIzP1KVMf572HMbt3r9MrpWEgKxt4B7z0J+ARWTXj6YaeIoVHPIiOJFZ
         4+gA==
X-Forwarded-Encrypted: i=1; AJvYcCVA0XpZJDvvpEkTAPoM8lSOlvMCDuI1ff56KSMPXy3ighfRQ4cmUtjooz1mGRzhB52GV1Oh9SjkAzEo@vger.kernel.org
X-Gm-Message-State: AOJu0YzB06FHJWJ18tG+4YQYHBJfKG07EVr8P19KGSn/jh2gM9FEUD6C
	X90WrXZQUvPI7W8dTUboZPxuLG2y7CIqmB4JOQFEJOhqTl93PtZwp087
X-Gm-Gg: ATEYQzzjKaZMOjbIvjUNfSG7MjfmcYUSnCQhgwGLb8va1dkdM/oma69IIvCdNP8/65o
	8B5AiyOJBkI8zblILY8x1to2V0fa/Wj4J3KUQmoA8kI55+SOIYsEc+p1zFmqarNXyO3dLWsjnG2
	+6toavv3DbfU/vxwC0D6VKGdtyiPShpA/PhB80SjN7C8ABYKpEzpb+B6kGDtKuh2djZdxq51k6/
	BJ1WjF1f1517PyuYA1ZD3Ci5HkDdtvjZ8u4Ylk+QcQlGICwfmmM6D/oFX/guUhbh5HIpgqdSuCy
	BPryLIAg4fHspSZ9sSqn3RsUUXv0VGD4grtgad1pxxeeSCOzlfI6vZy24sH5HOzgoZcVf89Rl5e
	zn2y7Z1DdkrEpPqckJyd9VeeRvHfuqMwezmuylKSEh8GS/4PgUG5lUFYAjA1Fn/z6BWiY1Xpgo4
	MXVMw57STw151lrunjM3MyG+pPnBj4y2jb3+CfARR5gcNkJGrs3Xm839iyMG8zezYBgNI+GEHmE
	76Yeg==
X-Received: by 2002:a05:6a20:938a:b0:398:6461:6888 with SMTP id adf61e73a8af0-398c615d5f8mr835628637.60.1773199062154;
        Tue, 10 Mar 2026 20:17:42 -0700 (PDT)
Received: from localhost.localdomain ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6df3417sm711651b3a.19.2026.03.10.20.17.38
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 10 Mar 2026 20:17:41 -0700 (PDT)
From: phucduc.bui@gmail.com
To: dmitry.torokhov@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	marex@denx.de,
	mingo@kernel.org,
	mwelling@ieee.org,
	phucduc.bui@gmail.com,
	robh@kernel.org,
	tglx@kernel.org
Subject: [PATCH 2/2] Input: Touchscreen: tsc200x - delegate wakeup IRQ 
Date: Wed, 11 Mar 2026 10:17:35 +0700
Message-Id: <20260311031735.2044-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <abC1NfUoHCHEeZpr@google.com>
References: <abC1NfUoHCHEeZpr@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D4AEA25B581
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,denx.de,ieee.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273815-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Dmitry,

> Sorry, but this just makes it all worse. There is no downside from
> letting the driver to control wakeup if it wants to, so I'd rather leave
> it as it was, at least for now.

Thanks you for your reply

I was thinking that the code might be simplified by removing
ts->wake_irq_enabled.

In resume(), we could just check device_may_wakeup(dev) before calling
disable_irq_wake(ts->irq). From what I can see, wake_irq_enabled is only
used there, so it seems redundant.

I don't have the hardware to test this right now, so I didn't try the
change myself.

Do you think it would make sense to remove this field?

Best regards,
Phuc

