Return-Path: <devicetree+bounces-270489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKmTLn3fpmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:17:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DAA1F0117
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DC9C303AB4F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8C69423A67;
	Tue,  3 Mar 2026 13:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZsZiDJt8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B501E344021
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543535; cv=none; b=hDalTdaYw17oymkI0rak3dHe7M08GpYkeEL/8AMHfbb0C2FhrPnVHlhCU/IJ2+AS1Oz5Z1sL3l13QksFE0EgCtVx+iV3EfQIrmdadi1Q+VJ4nr5cY59C/ywuTABUbcs+9Z13xeIBbDotz7Ff3kT8v0hYdgem6VPpe4wFiE486Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543535; c=relaxed/simple;
	bh=HM+yz/qADflJgVqJvPR9Gq0hbAUJje1bah6U7JOZLKk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pNrcIi1vF1xu7UEQA/jbteOZHmSDJOSz9a1urN8FjvJ0oW696x+bV4mI1mjPAC8A1e++FamnmSg1i1EdhtGJKFo3XpFNIFOmdLy//9m9KTDiXbXlVkP7bbNv5VqRM2e4wLXy6MfGBdgBWJZnBTAxg4PUS3CS1IahP6XXXYhC9rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZsZiDJt8; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c70ef340a02so3211202a12.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:12:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772543534; x=1773148334; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kkE+ihhN1StvvvDdV6tpK16qjdCYNfoxoHoVZoMCLXk=;
        b=ZsZiDJt8zsHNJ6e5bgMSUgiihh6c6+g//Y/QBnjGWBsPN0SbIVqaXqK1hrNw9uzcgC
         kSVU2X3jshHab2llMljPfnORzTvDZnsAKdbT0XJTkg2CY1HtNMFd5OWUeE44oDRjJ6+a
         i1bDAJB0wcAjh2Z+nnFxiKuCg+u6C9QgptovWXBh7DeMRhGKgLFEwretZwUurgPCGXdO
         D+yZv+c96vyvl4qZO3OYkC4sh5kF+unmeLWmno8hNlstiVKhTV5eS1DBbWNpM/iVB0eG
         8LxlFspw3KeOY4+GhrGCQJ8pFOUblCFvU3SMVEuMT2fkgfovYwLE/V45NXFxFvhu9zXu
         xLdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543534; x=1773148334;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kkE+ihhN1StvvvDdV6tpK16qjdCYNfoxoHoVZoMCLXk=;
        b=YKKJI20YM0b+HJfv6gsRbfZxGIW/V4UuEb8yLe0tZLTJ/QqiY4oVpgcbiie3HhEuHf
         aTdDmnHtrORMI0MuzCF/nT60radrL+eCTRWSC6NJA6bMU90vRP5ojnFdEHvdVlA6pxv2
         TMfQruci9bjubgucMhagvGMuEVjIH8lHB8QFZ1Y59ASkEoc7nYE/dqKmHRKhfjACSxL8
         +P+O4G28+8/zEsxjD+xM+9IT2E2l9P3EYeFvIXbbJwmO98DDHRVpUU1dkNzbvJfVpfjR
         rBDgBj56stVrFXeKzApM9/1ZGHVNa0Mx51+LYUpZ2OyS4CbaT1TKGJPg8ijSr7mMVaHj
         VM/A==
X-Forwarded-Encrypted: i=1; AJvYcCUny9wcHF0qpRhJYzyKBFS955LT5JKEJyGQVRgRnLgyuplBvyszo9REwRdMjqpXBmvP9kmd7qEoxzfH@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh8sW4L8Q3UovFgmSiDpuzwUSFDZBu32HqWO3ppeULK+qBB9sC
	ItXD4+xZ1lfbaQbr3POkJXf3droJko1DLqcifC1HZSJ4+x2tgNPlNAod
X-Gm-Gg: ATEYQzxUJ3Qmp8Oh2IlpcJtIWveA7nJp+YD37xXz4XKqtGJVPWTAP1Tssz+ZKUuB58P
	+588dBatwdI2ip0Ap+FarCBgZoedtfW0J6+cY/KtROKqWkSgrJlUIiJm6tugrMaYF3ZQASaU1Tg
	DhcrfjNbKi8qnN4tHXvFpRrgJI803NXcje2M/l5tGZnViG1fsT+dV86N6Cf5K3c3SsRkfNQy7l6
	1uwmEuH04B+xf3pxR8P6LxASqx7IEcREdSKE4CSug3M3tjWZhDO47gtUbLm0ObV/r/lJeKsQVH6
	/5AP6p+LN5X0hT7vEpVmQa8g8BOyTBhm4TRS4m2T1hHcctGRiHsO9GCmRt2BuIskOXuqWXVIvOo
	PJliP7NugwqLTWZNROoh/MInn4lq+tv/VR3cShwrPKfwPT5rKp7LfYKMEX6J7kK1DAUYB4e3LpJ
	BxpD97QZ4pkTTPs0TbqqV7vtvZC1YFRHCRH9RpWV3lYCPF7oLz0DQSim8kBon4mDgs10VfYIVYZ
	TbvDw==
X-Received: by 2002:a17:903:2352:b0:2ae:4aaf:3b04 with SMTP id d9443c01a7336-2ae4aaf3d52mr87355405ad.56.1772543533890;
        Tue, 03 Mar 2026 05:12:13 -0800 (PST)
Received: from localhost.localdomain ([14.160.25.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae3e4e34f3sm108598225ad.29.2026.03.03.05.12.10
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 03 Mar 2026 05:12:13 -0800 (PST)
From: phucduc.bui@gmail.com
To: wsa+renesas@sang-engineering.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	phucduc.bui@gmail.com,
	robh@kernel.org
Subject: Re: [PATCH v2] arm: dts: renesas: r8a7740-armadillo800eva: Enable SDHI1
Date: Tue,  3 Mar 2026 20:12:02 +0700
Message-Id: <20260303131202.6817-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <aaW-tf_lagkvPnq4@shikoro>
References: <aaW-tf_lagkvPnq4@shikoro>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 23DAA1F0117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270489-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,glider.be,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,youtu.be:url]
X-Rspamd-Action: no action

Hi Wolfram,

> I don't have any schematics for the Armadillo, but the SDHI parts here
> look good to me.

Thank you for your review.

To further validate the SDHI1 implementation on the Armadillo-800EVA, I
have tested both SD card and SDIO modes. Please find the test results
below:

Video demonstration:

https://youtu.be/jWDJSKTzyn8

Boot logs:
https://gist.github.com/BuiDucPhuc/f0390f11407b7973a43b4279a1435589

Regarding the schematics, I am referencing the hardware documentation
included with the original DVD shipped with the board. Since the online
schematics require registration and hardware verification, I hope the 
provided logs and video serve as sufficient verification for this patch.

Please let me know if any additional information is needed.

Best regards,
Phuc

