Return-Path: <devicetree+bounces-325127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gqDcAtUAVGohgwMAu9opvQ
	(envelope-from <devicetree+bounces-325127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 23:02:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4AF745E52
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 23:02:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="cy7/dwwz";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325127-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-325127-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BFA9A3002524
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 21:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ECE82C21FF;
	Sun, 12 Jul 2026 21:02:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CB02472B6
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 21:02:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783890125; cv=none; b=dSgDHMGUUkwI5rhnZWpMYu625NgRT8VTXzrANpnM/IkUm73GVqWRw7fMsYDxhR6Xm8Njcz+QUeLcZq9ZWSzb3LQfTR8SCstDUbuHZmSPUEIJlCrNMe85DAIrFOFGusBBjrCyfklBQbf9Qg5US+FNlqNVgyn0LpdZK6sKS/7PD8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783890125; c=relaxed/simple;
	bh=T28gBk8PpRiPyrUVn/AV0hFvwxFNY2+cfEko7TjUCSs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B2iy7WNVmqvUiQ61z7Vzu+NafwpznvMw2eDmKFR9YBEeKxjQzniyFTq4z/rttX68M/uBflsq4vfiEUwo6WPY01nRZlfZH/PxqNPrLyYheKRLQFJOybMHXNWqpRTFL/2Q8lpwNvI/aFfwNqoQNfUFEMsRDcYPhTCmye2GmwiIMC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cy7/dwwz; arc=none smtp.client-ip=209.85.218.42
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c12614b81c9so449013266b.3
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 14:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783890122; x=1784494922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MkOwj6BpgCPRb3iQcJNzYz3de1+iZ+z6XiAk9dzhA/Y=;
        b=cy7/dwwzPxMTtlw3cBF0h3Ax4cpmgx13Y4zYoURprm6Vn+kMsOqWR5DLnF/jU4rff4
         XIb9iYtiQGGTaupApt5f5lKejuobSckjqZyCkD0SuN6QrnzsYTvm8OUxxydcVZuGK9mR
         SMrqzQ/0P2P4ah+Qaz1SFwBLWH4g8r8zVb5D3PWBG7EfEjzVA4DK6xJlNYGGxwCTCa6y
         JzvUpSIkvL2e1g7xfJa6nwWQPktjQsn2dcnuYW8RHHp6TDgdb+PhL9sYausaitTDW1Eg
         Nz45wNUS6w8NQJNg0pLVeFfT+1rf6Gx2St+AzM6lawzWe83LhZoEhNZyPM7wsg3eWNvJ
         61Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783890122; x=1784494922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MkOwj6BpgCPRb3iQcJNzYz3de1+iZ+z6XiAk9dzhA/Y=;
        b=QhAiIZUEGV91LFm+L2jzUp3zxIgpWp6MQNeL8dLd8iyP5YTIJOKdZscSQNv0Qqm/5N
         uLqCcfQ9PRAx3A80jWZLhoHJNnp6kNPmWr/toyT9u1uor42Bngin5TTJNclbI1mOwsX0
         vWEPoJor4hLdVvv0cCF2PFpAVgdo45jnyG+mkbtN5iDNlDX0X3wcDWJ0+wL7h5cB9zFe
         SPD3JjY7gq3TS73fxaGgZiZO+Ti2292orcidLrdTf5H56/2r1n25tYejN+DTMGIje/6j
         S6avFcXTeJMdoXx8mrR46oK/0LUDODUtRQvj74o5hZAIS1X8Ad+hHvTNY3QKZN5BiDsD
         SY1w==
X-Forwarded-Encrypted: i=1; AHgh+RqgZa704ph673chSVHARQTBrHeZxWbnVVO7GjCgx9iRZHnWATU0BT5KWwL0baAnAzMNeYLacuBeWYwy@vger.kernel.org
X-Gm-Message-State: AOJu0YxTWvkEi1TY8EVeJsrP56pRLWnvadCd1f7pLJ4+y+QI0vf+M3O9
	lKdXPCrVBpWhsRqg/mZFF+9+WpdxZ0lXVrdh3hYnmm7ZlqnlAV1NpFS7
X-Gm-Gg: AfdE7ckhtVVNAdM5Ag+RhLp0l9DP3CLsbB1EI00H4b1ptYFznvPAPafyityOiqpYtiA
	QD3I7qbO0U72G7BIPGu3jH7HkUVDi8UnG3kDFcqSMkxa9CePyQdd4MU3il0/iWy66hwmhOezQEW
	EyM7rt2xI2J6D1LQr2yPwqgVAXmt7jYHT34QDFsQfY0Z3dtWSkPJoAdVzpoPWnx9k4VyiF0oshx
	vDVYpEhXFBmcF2y7DsuzZVXNl/aK8WQL2XalNSsqXRn9Jl71OK9f3CqXJ/wRXAyg+DnxmFez750
	gN0+6egi/L2/0DM3EGdFdAdQxN+4TNLF4OX647fGkMWoFiu1PJljg8KQeyG6BGs/1+WDvPLDtSL
	1xFqW0eaZYZEZVlv/7JWZgO3YdsAsb0eG8zKOnSZ9Du4P+8zJvA8GHe99zCeT9kKn24fLkqXX7/
	p2N8BTm7rAKHD3BJ2HCWp3DSpFdX72Zg==
X-Received: by 2002:a17:907:bc87:b0:c16:e54:9cbb with SMTP id a640c23a62f3a-c161ea62321mr271109066b.25.1783890122065;
        Sun, 12 Jul 2026 14:02:02 -0700 (PDT)
Received: from unknown.tail46804.ts.net ([2a02:b027:14:a57f:d586:c83b:e719:c2ed])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-c15cd42b336sm721045266b.38.2026.07.12.14.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 14:02:01 -0700 (PDT)
From: Gianluca Boiano <morf3089@gmail.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: Gianluca Boiano <morf3089@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Shenghao Ding <shenghao-ding@ti.com>,
	Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>,
	"Wang, Sen" <sen@ti.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: sound: add Texas Instruments TAS2557
Date: Sun, 12 Jul 2026 23:01:47 +0200
Message-ID: <20260712210148.384870-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260712-cyber-gorilla-of-acumen-19070e@quoll>
References: <20260712-cyber-gorilla-of-acumen-19070e@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325127-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,ti.com,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:morf3089@gmail.com,m:broonie@kernel.org,m:lgirdwood@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:shenghao-ding@ti.com,m:kevin-lu@ti.com,m:baojun.xu@ti.com,m:sen@ti.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB4AF745E52

> +  ti,channel:
>
> ti,audio-channel
>
> Most speakers do not need such property, especially that what do you do
> in 4-speaker configuration? I found only two references: awinic,aw87390
> and awinic,aw88395.yaml.

Dropped in v3. A node now takes a `reg` array of 1 or 2 addresses;
the device at each index applies that half (DEV_A/DEV_B) of the
stereo firmware. Device order is the only configuration needed - no
property. This matches tas2781.c/tas2781-fmwlib.c's architecture for
the same firmware toolchain.

`reg` is capped at two because the firmware container itself only
defines two device types (DEV_A/DEV_B). A 4-speaker board would need
two independent stereo pairs on two nodes, same as with tas2781.

> +    $ref: /schemas/types.yaml#/definitions/string
>
> Wrong type - there is basically no syntax like that (except a few
> left-overs which I remove now), so please kindly do not upstrem some old
> code. Drop.
>
> You need maxItems.

Fixed in v3: maxItems: 1.

Gianluca

