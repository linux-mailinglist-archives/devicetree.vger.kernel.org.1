Return-Path: <devicetree+bounces-275909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kK4fH5Nut2m0RAEAu9opvQ
	(envelope-from <devicetree+bounces-275909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:44:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D48EA294383
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0ECC330107E4
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCBDA30FC1F;
	Mon, 16 Mar 2026 02:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e2wKiwvL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F57F139D
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773629070; cv=none; b=EHybxsaqzIDumd9G++yPgxWIXiYI3UBkA1gw3efiqayY/TAXWPWq/XfO9N9XxrFVjyr8XnIJYWumd4JXMSDpHl+yhab2onP3AqUGFpVXY1iGGdBNdJZ5gCMd0K32FTOWYcuFMut/jkF0lMWB7KnIUdwRMczMCahTnMgO/9nR6ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773629070; c=relaxed/simple;
	bh=PpKEBuYeYs0pjRivJS9LIQKda+TRZUg9Ie7Ang37SRk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dRQRTs/6GXtGYmXsGZbozZYyquzDrUpgT3/yq29STdN36hVXUfqrd9DoEYoHTvZZaTKppiQNU0UynQOG+nLKOwy5Js8w0+sGeGUXFPpKuFzJUR4pmzihyY0ueRxtKZnb6fJCTj8z8W6QuHe9pdpgiGQEXLf6Oc4+aVhQqP/8/ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e2wKiwvL; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-35b9ed7a329so236249a91.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 19:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773629069; x=1774233869; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P3syyJUxdmUDpDeeFSHzMSFyVj/PjepADLOw7BqnwYc=;
        b=e2wKiwvLcoL1Z1NivmPiaeoHuEka3w1lipO15V4j1oAXsZId1Dft7Na1CUguEV7ehF
         S30EtZwRLzlgoaC490qwzv8w8SToQZ9yhV2E4q6W3QkfHcgvESvhc5EDwlYLpAjFa78A
         L06L0dwgFQtRgULZyUyKgZpaHo9eduGdxw1x7BmMd5661lBFmp5CY9taKz6FtSWZ2BXS
         KBBKuyS0JSEWpX5ofZdsIy0+3uYBLVian/g1udREDdD/rezNECbfxgrrOWc6apCt+9V6
         VgRVMgGoJofH57OfMrYuaXqjhRCAbR2lCjmmct0PO1P56fbtfGt24Wh6+xacaeLzPeRQ
         Yk6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773629069; x=1774233869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P3syyJUxdmUDpDeeFSHzMSFyVj/PjepADLOw7BqnwYc=;
        b=UH6ilwQ9QHkdUZU8h3XvBGbv8GXWl5mWy3BIbjXpgnihkoyksUsShMDU7JPfSBhwQa
         vTMfj4B75Ew0gOigHiQpuNU2JFbb8OTiG1KzyB1PgwzPOqB1XRXyWRAt2nPSwq9O/bNy
         7/Qtaq2XsZ0s64QgBi7lnVD6dCpFcJ+HfzQj3fafCcFqeFYSbucHlni9tH1r5FI6TlzS
         h9Fue3sOClDgMkSrrt9h/zj/zFqFuy/Bk9XzXpPA/xGH2P0S7NgYI96ZLVJrmCftg39c
         UW9pbVu5OteUkZTQRW1YqawfPEheZdjHaNtJeZSMSq1dEBDfYLyk9ri/xibK+LSO7Yqu
         ZEDQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0hKRu14Tv8GR6kPE/WyLcP8/oYDUvHOx0HPmcCSlChQzseJToC/K2RYHirMsyV76bKHN4rR2YFRMx@vger.kernel.org
X-Gm-Message-State: AOJu0YwjmejRXOJhUbjtCQwj5N4/p3R9/k33b8PLb5AgWRY6POETLDUc
	oXR/h72/LjgBO3XrFE3JiE2Vh9MMog2YE9AqhBEiSRL+DwjN9CdDlsMP
X-Gm-Gg: ATEYQzy37LHrKxeZgcLFfvuhk/s9QBu/odSXhNfKcXtnewseO3lOTwTbtagSRcRfbhv
	VTvtlnNIMYCkNNFmPY61andAmy1purApIgiHSUcWrI+79B1JGpST+BlpBpSSPiuWtRJXoev8b3s
	N7ufQytcrY9A1wuT/2+NirO4qV+oSlK9gv7/XOqQ5A9S1I+Da2ezSp82gS68l7tYPEyrr0loKzx
	DQaDToqIRbWrMf2/+kbD/0H5sOFnfuWRWc7c2e37xRWqGknPns3mKfHZHdbk2wB2GiLHd4+OKED
	hUlX6HO/B3slU0m3Nea0CDhd5WATL9qF/rluUjyIQuUDFNo8Fvc1k/Nmklfwhj1qdwObNx56wfq
	kWipd5KORyOZWeJyj37Y4hq+W2iFiFbwg5LkmNIJ4L7bGwJ5T5Y8K2lNnigPUwdrhkdY84f9P8U
	2ALt6OmeVWVCRmbZZ5HgmZJIe9a1vVUu4LQ0Ca82FVciUsMiSOsaGUzTk0ibbAAyP3bnR9YUhn+
	4T2FfRJUdJfhf4Z
X-Received: by 2002:a17:903:3d06:b0:2b0:56bd:4140 with SMTP id d9443c01a7336-2b056bd4a3bmr22278705ad.38.1773629068996;
        Sun, 15 Mar 2026 19:44:28 -0700 (PDT)
Received: from localhost.localdomain ([14.160.25.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece8363b4sm89775905ad.76.2026.03.15.19.44.26
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 15 Mar 2026 19:44:28 -0700 (PDT)
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
Subject: 
Date: Mon, 16 Mar 2026 09:44:18 +0700
Message-Id: <20260316024418.3455-1-phucduc.bui@gmail.com>
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
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	EMPTY_SUBJECT(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,denx.de,ieee.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275909-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D48EA294383
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Subject: Re: [PATCH 2/2] Input: Touchscreen: tsc200x - delegate wakeup IRQ 
management to I2C core

Hi Dmitry,

Thanks for the feedback.

I will drop this patch and keep the previous behavior.

I'll send a v2 shortly with only the commit message improvements for
the first patch.

Thanks for the review.

Best regards,
Phuc

