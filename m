Return-Path: <devicetree+bounces-261689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CnD4JMJigGml7gIAu9opvQ
	(envelope-from <devicetree+bounces-261689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:39:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD94C9BB7
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:39:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A45B7301225B
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 08:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B096285C88;
	Mon,  2 Feb 2026 08:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dMHBd3rJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9154E27145F
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 08:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770021450; cv=none; b=S5RZMS7Fet8vgGl7EXwhtUE+9FBA+qwxrnYOMlCKyU5dtUL/Th7LSyvkQjYLc1YavlFYYqjDK/1PFAw63g6nY3BtI/f8vsdsK+qNCWQ6s0mj4OSsdFI7XLfMqk5SpObaRZXWGPRk9X5uW5wZMWybTzXq0He9S2nwYrV45/mLTxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770021450; c=relaxed/simple;
	bh=bERW+1dHy0vUh17HBWzjY5pG5Z1bSNNrbqFAq6GkPJk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CA4dJwhz9dvUvUQcPbAV+hgpzxyyLYotBTqmzY6S6M1vrRCgIoQPTPFnLnDXMwgV79OMHA4CYaidXAEerHl0iAUsaiGRNDF3nq8NCzKCSI9oDpez/Ornt2mUyC5Bze5KTpKT3koYTp7Ig/vb4QGIJUhwcDBflfMFzj3uEt2AHmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dMHBd3rJ; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso42560675e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 00:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770021447; x=1770626247; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vWq9Hnp6KWeMpHzlDV6hhOVjTaAvi1IP4KKp2IsINYo=;
        b=dMHBd3rJ9OGXcecnWgRky7cFM8X1wcJemgDo3CETgAYkO9FfFrZh0v6trHjg0chRKe
         PAZd4TLWw77V45JLYg82NN1zHw9ogBRPtvvT1j3rPW81jZyhT44eJdDURwxHsSX7t2ux
         3npXXAHqzixZJjI5+q5m1wEA71qIipz63h6eXNcZLYg7X+mjW/AbYG/vNwROEvsss326
         /PoRqngMfSLDJBtlOLGyyHmTnsqf+ir6GL5QWhiwNtvlp070WewB1kpSA7fJ2fClLbBq
         msxFpkw8XDd0o8YonLlY/BrTfJlPrgTKTEXxMKTjQwHN1sCWY5dhMJmvrdyemZDSaaI4
         5mCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770021447; x=1770626247;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vWq9Hnp6KWeMpHzlDV6hhOVjTaAvi1IP4KKp2IsINYo=;
        b=hCnLu/n1SsjqejF34+WSAbxVlYFcPWVjEOO7RhLBLMaTDY4rULXp1t5AF9Z26NCJkT
         FSLL1oHp3yVpkRO3hAqJvxjwnkCkbqRatlIKRE0IEW3Nz7ov1Eo8eR6hE+tnbpRgxbqz
         +AYHakrrguu9SLfCkII9URfNfXGQSLApQruFC25VQ0r1YkvlW3z7u0IzCfipOOBdEm3M
         3+h8H9Y1Lc7NFCfdS0Ht38poVdnANw8nDNUAaJ60I1by3YUt9bIVP4vCbaaeGeMGtbHn
         6SJLfuRvICK9gUf++lfQW2WMaKY2eN9qcte26wgTVgV740OInPUqWJMNTZ+Xq9+xJqLE
         QoPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBJgTmLXymmIf7ZwVx/xxLh+nJVgGbX9nwCvdhtsiCPB3LaGAdXD5lLSau2qZYvzABkK/XpfDNR/EJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxdO3/NP/95WF8ZvZCJcmmGe8RKB5brZNwTck4Mu78UiBN9zlG9
	wpuiECVdCaqvOHAx53ocgh4Ch0F6ci4ep6run3O/q7o62kIMocJx0NiT
X-Gm-Gg: AZuq6aKK/de4Op+PY/YdmlGv2AcfO8kzsV+z8DIpwRlvC3LYnSOM6uXFJyOl0WawfQK
	3sZtqu0GTlmitW96MCkYh7psyOhd3KjNzzKdxNJZa+UhdLQasYAXlrVamoKf4UWSLrmXSd2/9xX
	t3IJgo6oIkMXDAXFGLEPQTj1o0m7RNS5jiHH+a3ZnFTZarMmEg4eDMxtzkk93FRR9YiJ+EzeLbG
	lfadVSr5u5NPB3F4fSp8fDK89DJObR1ioHjR3nn+xd8ufvAVxYWaLNbj7OiJwNglKyklvImtoid
	deyf4e19RYCpM0H0zRHkKhgF4BbTjPOPHr6ivNtI/IoMfClwfFqtSOIaXO0HSKUd2g465h2q1EC
	thzHreAPppxp8hC7CVnS5GTjc2Ro08KfJ+jGXH68z3wEYu/JG8RNOT1abZL/FIJfCndu/wqqa1I
	cbbBtNPqcMeJs6P2HOycXQbqFJ+TQUP2URlj43E5+5qf6uth2z5Tje3sm4O6frdEKAM4YgpD7Uo
	xSC3O6SqJh5r3wO9sYKzM2YZQZuUDCPq4J0T3v60DqzjBQPLp/MKsvlbGkCusYkg4QkQmGA8ol9
	a9AEE3Jk
X-Received: by 2002:a05:600c:8b31:b0:47e:e78a:c832 with SMTP id 5b1f17b1804b1-482db4b692dmr124615335e9.37.1770021446832;
        Mon, 02 Feb 2026 00:37:26 -0800 (PST)
Received: from franzs-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806ce564f9sm399535415e9.14.2026.02.02.00.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 00:37:25 -0800 (PST)
From: Franz Schnyder <fra.schnyder@gmail.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Franz Schnyder <franz.schnyder@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] arm64: dts: ti: k3-am69-aquila: Fix DP enable GPIO
Date: Mon,  2 Feb 2026 09:35:59 +0100
Message-ID: <20260202083604.325060-1-fra.schnyder@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261689-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fraschnyder@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DAD94C9BB7
X-Rspamd-Action: no action

From: Franz Schnyder <franz.schnyder@toradex.com>

Correct the DP regulator enable GPIO to index 21 on Clover and Dev board.
The 3.3V DP regulator was not being enabled by the assigned GPIO, as it
is routed to GPIO index 21 and not 37, which was causing instability
with displays connected over DP or via an active DP-to-HDMI adapter.

Franz Schnyder (2):
  arm64: dts: ti: k3-am69-aquila-dev: Fix DP regulator enable GPIO
  arm64: dts: ti: k3-am69-aquila-clover: Fix DP regulator enable GPIO

 arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts | 2 +-
 arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.43.0


