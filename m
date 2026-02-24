Return-Path: <devicetree+bounces-267930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHyKCruxnWm5RAQAu9opvQ
	(envelope-from <devicetree+bounces-267930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:12:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C2318837C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:12:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87FA13019901
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5617439E6F0;
	Tue, 24 Feb 2026 14:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="af52YdOb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA50241690
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771942317; cv=none; b=KGWES7ekYH6oTq0w112z0t7TSQGWwFsSq87LTJEY7mToCbsRBxON4o8XApljKdTtrDMlhGGWPGDdPE7TovRk73DODwVciFhCcMPKi2BgNyl+3C8j79V/djsPTcPD1mYREyNlF6H1jeq6lnf3CZpfDEI3uMO21E6ApFr83N6bD1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771942317; c=relaxed/simple;
	bh=gPeMlKlkLhLPFXTVdb0PzZxfcOOAKUq6PTjWhHjPnPk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cz8Trlb8+/U9C3x5S0WfOXPV4hntggO33+hEKXm+JNsDrdLA9Cafjc9VQwJp7VjXdVH28OQLy/btNUmTe8fGhYtYr18ycXDV5/EIXtZ6N75UE7HEWxHQe/5EVQnPVINNXxC7gopfHirVVL6qjMcEftQGXNSgxQMWbdZ5EEQpM+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=af52YdOb; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-480706554beso67264005e9.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771942314; x=1772547114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VfxmIint1teZNykjZC485zz7ZETg4m7E2VcZKNSipf0=;
        b=af52YdObxAquorgUVHwP7qYoeukxysZr01QgE2LzUS2s3KX23Fvyux4SJzpHq+5tXq
         ZknqVbAwSbPnCq4yom5rhRFjg+f0BY2yQy25bcZF9R17+0FfrEuMJVxZkUcSaQzxoKLw
         AAA/t5RnolP/PPzRm0ON1YhBM6SKeuWm4aZHX1ntWtatBGhFgEWir+ak4QbTaqjOCBZk
         sG2sJFYJflqgeYq9ufgc6tXvyZK8li+xYM6QRWMqtTA97srhSoSd8l9W8Aswzt/guKY3
         3riDKlWSiH3PbsvDf0qkqrnbE717uZkEecuujbDoA1nmNFjVsNO2S3YH2uLKWv3YKpoq
         uSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771942314; x=1772547114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VfxmIint1teZNykjZC485zz7ZETg4m7E2VcZKNSipf0=;
        b=qMwZuENx/RtZNDwu0Bhxy3nQb4BkWnKseER5+H930juA+z/GLBX1NMICpYLQG42fXT
         BfUpLoZqoJBmlghgUwhHdn5YWIWKuPAW0xivKevmGCWvH24n0I3nHXbM0CFpUt3pNpZB
         XgfR4Rm6vDRCOALrIbX0rBwFQrK8wwppsku15Gxb39POwGwFIbdq2ePgY8lbQ6bzWSFd
         wJA7MKPILXVu812Wc5DQCASAqCXO/5fhtMB6XW+YnLCd2xpsAtfQXDY0Ym461q9kNRU7
         mmZa2zjxx2xxziHYCxKciq+WkUWZV9ZM89SjyqltFoAXrqKtyyPkPDuXnnqB3j9Jkrsp
         00Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXbmbKvOA/pYra08KjDx1UDRkLiHMlGAj3iODqpzHXcUTpedCYTBKa10p18FuBZjHP3/twRUem0myTc@vger.kernel.org
X-Gm-Message-State: AOJu0YyPot7RPvn/ko61+QH8jDHv6Z3vfq6eLx2/3zl8VPUlS25Sxks6
	1cG0KYoAkHN/+488zcIAuBgvyKPjAPGQwwW8jD07LcESRuQVxf8Fx4Nq
X-Gm-Gg: AZuq6aI8gLnl+tUoe8rUVpzj1K02+Mr01FFU8Go+cmq8YPI3urn3vZFLst/cEgrULDx
	XW0aTxgw7DgAo6cM7qDebbxPS/8o8na+cbkXN6isVANoJi17zHrRgETLh0Wl4ZlNUvsXB2j+afR
	CPq+u1audKcdrX4S9bap5wZATQiUUyluN2sq1fnX7j87bS2v68RPyagMKk48TeiOH0nP6BFOKQM
	trVVObQtlaBZJIj9bMFNTobdBWE+LDo/QHOCeZbqVHH6N+/TmngAEWcH3wWhtLv2jvY08D84QRf
	L5W82v549HJ16CpusQkR39HZNAIZK8FbfziR/oaKdUibgfJr9Z5eod/J7GhJsgFbxVaKBEz/m3x
	QNZmq62sJi2gtulrvjS8ZQksrZrpa0U9HimL1kDZOtQUAVLjEDSGRMA8JuGn0o7cDjDqbiUgSLv
	yYJOKRuvoKZfT9J9n4/oLXqxzEdoLFGCw=
X-Received: by 2002:a05:600c:1404:b0:483:ad56:8d16 with SMTP id 5b1f17b1804b1-483ad568e4emr116586305e9.6.1771942314223;
        Tue, 24 Feb 2026 06:11:54 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1004])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43987f3ed03sm5456698f8f.16.2026.02.24.06.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 06:11:53 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: jic23@kernel.org
Cc: conor@kernel.org,
	devicetree@vger.kernel.org,
	hns@goldelico.com,
	jerrysteve1101@gmail.com,
	linusw@kernel.org,
	linux-iio@vger.kernel.org,
	stephan@gerhold.net
Subject: Re: [PATCH v4 0/3]  iio: add support for Bosch BMX055 IMU
Date: Tue, 24 Feb 2026 22:11:42 +0800
Message-ID: <20260224141142.225317-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260207151207.0df7493d@jic23-huawei>
References: <20260207151207.0df7493d@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-267930-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,goldelico.com,gmail.com,gerhold.net];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 81C2318837C
X-Rspamd-Action: no action

> On Thu, 5 Feb 2026 18:39:18 +0000
> Conor Dooley <conor@kernel.org> wrote:
> 
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > pw-bot: not-applicable
> 
> Applied to the testing branch of iio.git
> 
This patch series commit was not found in the testing branch.

could it have been missed?

Best regards,

Jun Yan
> 
> Thanks,
> 
> Jonathan


