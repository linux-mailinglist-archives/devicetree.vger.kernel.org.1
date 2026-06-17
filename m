Return-Path: <devicetree+bounces-313060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eZcvCmC1Mmo84AUAu9opvQ
	(envelope-from <devicetree+bounces-313060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:55:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2165A69AB46
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:55:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=J1e8Kfy4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313060-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313060-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F886300CF12
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 14:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 949783D8105;
	Wed, 17 Jun 2026 14:55:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E41E2F1FDF
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 14:55:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781708118; cv=none; b=gY0QYmug6e2JOCRDa2Cc4SkW4rKGpC/jDhrLl4BciQi34dV5yTKeO070rcXxO9yY7jSGY4ZaD1H6buIuwNYPJpkChmqc3fLZRj0+WRaDWHvsIzW2BexVEoU6LeSCKKzTeiTIsiKJmAuSn6I3ONddS5eiKPDyEeIWMtRLjnfUwfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781708118; c=relaxed/simple;
	bh=05HOaEuyul5dBwOVXUvj7r3DDkrvOsAck0De0iRlMmQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iIqMYlxbEj+mU+8vJ1MsaXGXpUgBnmC0Ul1vr3AKcaOBiWwVOVA+l9OhkIwqUJJ8A4EQoy2A9sLnzte5hiKiIgbpfOoj7lS3PJSpn3dDxICzACaQBHsOiOan0BI15ch2SeJ2aFMe9hlM5fSj5HOUs/Is9GoK9JrqjHmbykFc2eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J1e8Kfy4; arc=none smtp.client-ip=209.85.128.177
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7e2fc11088dso55927277b3.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 07:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781708116; x=1782312916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=05HOaEuyul5dBwOVXUvj7r3DDkrvOsAck0De0iRlMmQ=;
        b=J1e8Kfy4suXqdt6bz+XiCLxOaFAXeI/CWT2i/Hw9p9P5ouD8YuFrGkvZG/WCRtTOEP
         DS5qh1zONoynKZyFuyyIgtNqopj41zGA3hUg5gDSyzALuCQbVykEYO7FD58iVsvV27qM
         5LMMceQgYJuMUdhqZfx5b/hupf1YuK6b5oVzu1j5qC1FSQd6FNusePq2RDp71iJmiH1p
         WdUTMJuJ6/e3u2tOp6/8eEjINEEiQVOH7COWJQnHUKU1CfFwm3uVaj2+AZnAI+84PlJz
         YSrbPk5EbDRtXWYCh4ef4Q20Q24wxFdX7xX/tTt+fzflehZ8KCHvts7yl0ykaUHhHuRo
         Mopg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781708116; x=1782312916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=05HOaEuyul5dBwOVXUvj7r3DDkrvOsAck0De0iRlMmQ=;
        b=A1vpDcKgjQXcB88VHuXSuztW2A9xpUv+ORSJoi5yVSRsSRcwNbBp9Sdbf+UznL4P0T
         l2jUu/rl1rbMVyB9giQ+54XZBNfpA8htWexXDDZq/Tin0iR8EZwnmIw/fjlWLf0KlUKO
         kO8FckA7hwfkFKLU5qjzSq4dvOQq9/jzj3I3rDdhYNdrUv826b8t5hZXP0lIGP9eKKt+
         vIPfxraHDUgSmwbYcYb5hYhijKN/Q4SVttsLepMOOLsn3/ASAX9Tj39TE7X9W/CIOlxf
         ImPwhoUXps6cWozEOSqHyZwMbA/SpBM1whEYMYsdJboif045I55Mmaw8SmmFJxiCC/zS
         nutQ==
X-Forwarded-Encrypted: i=1; AFNElJ/D94XqLTfw0jIrAj37X9F8YDIhsdDUaqplJ1hQcvA1iwapLUihqPvWtvW6nx4Ug0tLYLUCe9Zn5anJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzPDN9PFR4qJ+1x5nC5K3m0shglHHtW+14Bxrq7K/owKdKXIFad
	hdU28oldVAH3TpC02onDT6dLVbQqDGtpzjs20SlyxABR/96E2/QJxmWENQKrvGXe2Q3bclhm
X-Gm-Gg: AfdE7ckF2mYLJ9YjH2QXonpysCS8KlIRlZ//tuj7aQH9tM0YYJ5hAr0+Oh4IaiCtsEX
	S/bxqx8Ph1shR9Bdzk4SSMsqpsJVWklK79/blbqPREE2g0h3RszUqGe4/3VfxWwCEkD1BnK26V1
	xAwiHdPgBvPZPjEkhL0M44f0FkNDBMTT0Om1kXewOjGEaxHso9wCs8zVZ1xBd9i4Ph8wwVDOJj2
	kA3E5olqRd5K/waimuJy3o2102BCYFxSTGQ9f/I7KdTXodSMNUIW47BZJ4Ri+JgSX+dVRhLMsyd
	A+3eOanvJLeMBxZDYR2TQ7KsQoUS2dLegofufiqPA5VqSFBzR/FSx7l/rA6bEgcrMUld9YG7XVX
	ikcoe0D3VlFIw+JEKrkiyUEth1hJuTnQpgx/+GlDsfvqp8s8Q2qfwuvHKvdPdrzNuyhzyS9trtC
	AGoSVtmH7eFo2N+7qDWVA3
X-Received: by 2002:a05:690c:450c:b0:7dc:e96a:26d3 with SMTP id 00721157ae682-7fe5e3a067emr41528947b3.45.1781708116317;
        Wed, 17 Jun 2026 07:55:16 -0700 (PDT)
Received: from qchaos.cnea.gob.ar ([186.141.138.29])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7fcd345749csm46739657b3.33.2026.06.17.07.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 07:55:15 -0700 (PDT)
From: "Pablo D. Bergamasco" <danpablo@gmail.com>
To: krzk@kernel.org
Cc: broonie@kernel.org,
	conor+dt@kernel.org,
	danpablo@gmail.com,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	mgreer@animalcreek.com,
	robh@kernel.org,
	vaibhav.sr@gmail.com
Subject: Re: [PATCH] dt-bindings: sound: add toshiba,apb-dummy-codec binding
Date: Wed, 17 Jun 2026 11:55:09 -0300
Message-ID: <20260617145509.1782137-1-danpablo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260617-marvellous-cunning-curassow-0113ab@quoll>
References: <20260617-marvellous-cunning-curassow-0113ab@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:broonie@kernel.org,m:conor+dt@kernel.org,m:danpablo@gmail.com,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:lgirdwood@gmail.com,m:linux-kernel@vger.kernel.org,m:linux-sound@vger.kernel.org,m:mgreer@animalcreek.com,m:robh@kernel.org,m:vaibhav.sr@gmail.com,m:conor@kernel.org,m:vaibhavsr@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,animalcreek.com];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313060-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[danpablo@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danpablo@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2165A69AB46

On Wed, Jun 17, 2026, Krzysztof Kozlowski wrote:
> Nope. We don't take bindings for staging. Isn't this documented in
> staging docs already?

I checked drivers/staging/greybus/Documentation/ and found only
firmware and sysfs documentation. There is no existing DT binding
documentation for the "toshiba,apb-dummy-codec" compatible string.

Should I add the binding documentation within the staging directory
itself, or is there a preferred approach for staging drivers?

Best regards,
Pablo D. Bergamasco

