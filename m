Return-Path: <devicetree+bounces-273986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODxCJi9DsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-273986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:25:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F37FF26216C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EBE5355130A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34263C871B;
	Wed, 11 Mar 2026 09:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y/TqjSce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F223BB9E9
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773222548; cv=none; b=iV/CYnicvO8BS1Qi+ikXuapM3yL2gzDdL0v8tfr4LpEgrZo5HyL+0Rt62dsQNalZ5LWMnrdpryWX/sdFIumT59zCwdxrcPgQh9Kn9d2NEtVQl6yJm9iuUmc2USNpRlY+LUdeiaEToYBMwbWdxYoXH8LppNXs5EXypOJOFu49xN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773222548; c=relaxed/simple;
	bh=pZTH03PvjyWFTzvxjXzXUdxVTRI5tD1whEymnGT/6lQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a7F5eZ/Ofjw53iVd90XQrBuXTS38vSE8q1SLkYwYWi3YtYvPheRyUwguDrz1kKTd3wy82OBK8czOe/Pejxnpfwjbwn2WcSoaE/kk0c1lCXg78XK+8SjGcRYD9aee2Icaa1AIC9+q0lSLp3RBVc5fG/wL28st5gt1FFXTwbbXBg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y/TqjSce; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4853c3c2fe7so19731325e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773222545; x=1773827345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZTH03PvjyWFTzvxjXzXUdxVTRI5tD1whEymnGT/6lQ=;
        b=Y/TqjSceR8G5kcgTfluanAkZB5QomHtQsHs1lVHfHSkRCNbmRvyGhFlkWZEUXAy08h
         Giln0vQoypHepfkXpf/fbbg9LOZNvHV3d5pyqFMZ7Ed/3PqdblImMAeBp++iP1Yeoq6H
         /RLC1sroj4MhfnNEhgW6EI8nDTh8Ai9VEs1MdyDIhqqcS0o+K88vQ05+cXOEp8YQFbYa
         QejLFrKGfEKwmPzTyf8mhOuHXfMlGwxRP3L85yqxRlnVejbjbZNn57skW5VFfnP+p4Og
         EJNNw5ixQ/KJ+mCaomoa1g5WyKU+wWJnlSbzJdzAhnmD7YPG5xhpMc4P3AkpPPQrpXGB
         552A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773222545; x=1773827345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pZTH03PvjyWFTzvxjXzXUdxVTRI5tD1whEymnGT/6lQ=;
        b=Jm30Mth2QBRS4iqvL+l6PTOhytuzmDUK5p5+i2TZLE0zkSLIJUbCXB2PLYH2aoDH24
         YfHKS1kKULOG3Y6HZ7jlmxGlcDrootMcIC65BhH8uS66XaJ32OhlNXf1RpvkCFza8CJ8
         kvxELj6yANdJwlne6XX9TGWMtaJwnNCkl7cuAom1LA5l5Pq7LkjWhkpJ15ZwGhu/7TNa
         Pj0nrflYCA2bEjuUiB1Xcc1/V7h8HCuzhyo0Nsowm8Watk37yCrBO7M/VVNYX739zTpl
         7yqsMDOVWs5UohOCAbThJ96+9ItPzeVHhGAmxH9SQ8uLwyz76w7AQoSrbzvqw5FBOAuE
         DD0w==
X-Forwarded-Encrypted: i=1; AJvYcCU7gfKjFwl7CRR8cSdhNdoGZ+N/2g2UKia0o7t89FrDyVTNo84bCMi0/BuOPTyp5TH9bUxDmchCZ6kE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn/8dY6IyKxOmbN5KskVSHmf6HX1hsNt5BFSni7GuPqI35rGvc
	kdm2KlYOqBvQ7locS6K53ZzKcjBJtUFygKoc3UlKIkOBuRGJrXxRPR0z+u+wqA==
X-Gm-Gg: ATEYQzzv/tygQFRcBUIhVe7Q/Zx3qfI5HOhp1A9IS2g5TaATPgJ34ssf57482/FqQZm
	4RsQdWCkLGJ0iXpsGspzwwbHvysh+Osa9r8Zv4594VQHin1RaTHirEVVsUSKY8Kf84tuBo1AOsB
	MfRxrgfGmdA+W2Vikbs/EU5jfWHeDL9WLnKpFyR7UfTrCPcjHEeCg8Mb0JsUHYcMGFHkBUP0x9/
	1vDDSqQhaq0WGvBdwHXt4b5qIve/8LJspZfk+4TfDxcGezC3MwZ2T1h7R5vsdNfdCkXBaayr8+c
	jmYaw3QS6tIZ5FtJxcpBnTFo83tJamAfOTYaltUhYsKnD9tkK21Ub7fmKqWhBUMo+Nr8mXFUpJf
	6xx9MC3w18YH6zNyI86dM4+FuCcQD37aSNOl/QGbjWU5Cyh9RU4aGdr80mVvh3aC3grd+khZecy
	k+g4BE755E4wrQChAlOR5GT4fXw60+YoexEzaKTlpfQOciZ6qRYUAEE/1WiQ==
X-Received: by 2002:a05:600c:3511:b0:46e:32dd:1b1a with SMTP id 5b1f17b1804b1-4854b0ae565mr31303265e9.7.1773222545398;
        Wed, 11 Mar 2026 02:49:05 -0700 (PDT)
Received: from db07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854e67ea40sm3246775e9.7.2026.03.11.02.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 02:49:04 -0700 (PDT)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: krzk@kernel.org
Cc: 0rayn.dev@gmail.com,
	Michael.Hennerich@analog.com,
	andy@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	jic23@kernel.org,
	krzk+dt@kernel.org,
	lars@metafoo.de,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	me@brighamcampbell.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v2 1/5] dt-bindings: iio: dac: ad5504: add output-range and missing gpios
Date: Wed, 11 Mar 2026 09:49:02 +0000
Message-ID: <20260311094902.9252-1-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <a617bbfe-0339-4334-8b52-dc85de12c626@kernel.org>
References: <a617bbfe-0339-4334-8b52-dc85de12c626@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F37FF26216C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273986-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,analog.com,kernel.org,vger.kernel.org,baylibre.com,metafoo.de,brighamcampbell.com,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Krzysztof,

I misunderstood how the Suggested-by tag is used. Since
Andy explicitly asked me to sort the headers, and the DT properties were
provided during the v1 review, I thought I should credit those direct
suggestions. My reasoning was simply that those specific patches and
changes wouldn't exist in this series without that feedback.

I now realize this tag is meant for original feature ideas, not standard
review feedback. I will drop the tags across the entire series in v3.

Regarding vcc-supply: I made it required because the driver currently
fails to probe without it. I understand now that this causes an ABI break,
so I will revert it back to optional in v3.

Thank you for the clarification.

Best regards,
Taha

