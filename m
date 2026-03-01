Return-Path: <devicetree+bounces-269661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMkRNN6vo2kmJwUAu9opvQ
	(envelope-from <devicetree+bounces-269661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 04:17:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DF91CE607
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 04:17:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA10F305E355
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 02:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDAC030B51D;
	Sun,  1 Mar 2026 02:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B8sykDSF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725872FFFA5
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 02:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772333869; cv=none; b=Ql1+zKStUqU58tLDlhqnEX+g8cVwuTi6O+d3FUoEiMRy+7lLTHpWClKtOSgZGXnmE62byNynAowFRQmjBT1iDerQoRTfoBdeP6qSz8X+dta0SGcB/kcwIihJOEbgmVmFgcI2qvk2xjuBYap8b/cXpBCG1SEo/SsKyhV4LoQCLCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772333869; c=relaxed/simple;
	bh=v7j7u4Cgs/YgDdAJ7Cmwg6YLlgzhvBFEmlTEsg17hQE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=GgddxoZAmjzg0QRr8lPpDPmdaxgcram+cV+I6nKuWTckvHScbSNQqoByCew/B2qkGLoNUol6sZ4kHUdNWHrpetWO4EAm+odAUNa3jPNMlqOCWeBAgiI+tUrqvpZKljp460Doq5SKz7BQXU8I8JSWBf4M0pflDZWZUSXsjuGwpqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B8sykDSF; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48375f1defeso23869615e9.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 18:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772333867; x=1772938667; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v7j7u4Cgs/YgDdAJ7Cmwg6YLlgzhvBFEmlTEsg17hQE=;
        b=B8sykDSFAyaC67iFyk4CYMeKS6Il9k1AUltUMttpfugW/RVix+yn1tROE+MVWY7597
         zPP6ejKH5rx+uu/rJhHP2wRfNcO31ZxO7+gG28k/E+M9wXr+JAO4ejq8uurzjF7yLOQj
         dAZadi3O9SihNq+f3RPFa4ynZ2UClR5y84C5bYhuvOzEa6q6kT9LJq5gfqnmI/TCu4rA
         N4ls9Sp5C4aY/9wAHeS6sK1c3znjZHgnBorPoqj4aMZ3dl5thqujzXWiGljCS+ksnjib
         yt1JowWzDvtuZLwQNP+lvWrT093WvZptGIgEB3pnQLIwQdyh90+DAOYkqvYy1pRsktoL
         7sWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772333867; x=1772938667;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v7j7u4Cgs/YgDdAJ7Cmwg6YLlgzhvBFEmlTEsg17hQE=;
        b=NosGvaPZrtzc3G2T2dATtBRh6SNK3Im2xHhE0IVsNJ99xLNKhnUC54WwSaitQgWPqY
         mJPdbrCY2F0pxsUhOnJvLlkUC+JEZJ1gCckPZoaZHWUq9Z+o51qkmk6Ca+xEi+Q0aPDy
         pSGsqqVIx5GbqVuqvBGJqJ9QMeSttQatktugllNZENQ8RXaGphg1zpNzJu1mPYBTEoN1
         44QU86hcG/y4lsAdByWRXhIw7DLrK3sIbvMh5q8hWjaRREwSXoxwEaYteTIxhsAUNBKh
         4poNmxs0j5eB8a4YggFCF2HrYaZbtopZTUDRkAB/PDUt09kORu3kPqV0zPU7xRBM99Xf
         JuDw==
X-Forwarded-Encrypted: i=1; AJvYcCUzNwObToevKXZ4jLz219seSap4LMup3tCcN9ARfCLHDAwL3pjK+krsbxmLqAUu9wgprwMQwYPUFWBk@vger.kernel.org
X-Gm-Message-State: AOJu0YxZhBhDuzsYESg1nKVENe8fVzdZbIzW/FnI+gZXczIOUF+uhTXK
	8wC/+zvyFOmXwLp8Y55q1K0XInsJMc0td9sxAI8CEmsc2La2vkMK9V8GJmqXk6xJn+0=
X-Gm-Gg: ATEYQzySji7ZrmOaov/HK+E+WZBX3aNFzYTmbV2LYbKLp/F9iYlG/c7acIoyWULXxHr
	EpoOKdtiY6dcUJsH1b/867GT7ta3XIDCEg3+ZmJ+dpxxW0IsZ0dVtT/b850O52M1CU0Ed3EEumz
	hVXUrq5oJRxPBPldPD+bPyAizRAeOzBYAwam+GzKBGJoRY18J/6IenqLcIXTjsxd2H/X3M/t6oL
	Ipbvr/iXF6/w1mie3Ars6iD/ocs3DALyaFmVlDeR8NDCUQAkwamN9/4P81UgrpdcCCKCIfdQCOw
	MRXkvkdCHZPGrPFTLET+PUqk5KG0r1vcape9JSVWKcX/d0gLrL3Men8j93VXmyhcwkH+pGRn6Ae
	bAATq94bUeoLVNfLcPIiP0zf+mpq5qgPM+EN+B/yfEWMzdiF4npUOvtUBisNjystcPS/TbcPVI0
	DfP9iWx6e8cp+sDnnNh0/BGK2CYfs/8ZByYwRaI+EhCMk3UOXc1RHbuYHfrBgKWrFvaWg/b6qAh
	p+d1r/1IhoBHxsZCg==
X-Received: by 2002:a05:600c:8106:b0:483:afbb:a064 with SMTP id 5b1f17b1804b1-483c9bb7b7emr131516965e9.1.1772333866793;
        Sat, 28 Feb 2026 18:57:46 -0800 (PST)
Received: from localhost ([2a02:c7c:5e34:8000:6ece:b3d1:ab81:6eaf])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c764a35sm19633263f8f.30.2026.02.28.18.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 18:57:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 01 Mar 2026 02:57:44 +0000
Message-Id: <DGR3X53FPO88.3C2UO0HGRVQGF@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, "Daniel Lezcano"
 <daniel.lezcano@linaro.org>, "Zhang Rui" <rui.zhang@intel.com>, "Lukasz
 Luba" <lukasz.luba@arm.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzk@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>, "Bartlomiej Zolnierkiewicz"
 <bzolnier@gmail.com>, "Kees Cook" <kees@kernel.org>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, "Peter Griffin" <peter.griffin@linaro.org>,
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 <willmcvicker@google.com>, <jyescas@google.com>, <shin.son@samsung.com>,
 <linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-hardening@vger.kernel.org>
Subject: Re: [PATCH v2 0/7] thermal: samsung: Add support for Google GS101
 TMU
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Tudor Ambarus" <tudor.ambarus@linaro.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>
X-Mailer: aerc 0.20.0
References: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
In-Reply-To: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269661-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,intel.com,arm.com,samsung.com,gmail.com,google.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 75DF91CE607
X-Rspamd-Action: no action

On Mon Jan 19, 2026 at 12:08 PM GMT, Tudor Ambarus wrote:
> Add support for the Thermal Management Unit (TMU) on the Google GS101
> SoC.
>
> The GS101 TMU implementation utilizes a hybrid architecture where
> management is shared between the kernel and the Alive Clock and
> Power Manager (ACPM) firmware.

[..]

> Sensor Mapping (One-to-Many)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>
> The SoC contains multiple physical temperature sensors, but the ACPM
> firmware abstracts these into logical groups (Clusters) for reporting:
>
> - ACPM Sensor 0 (Big Cluster): Aggregates physical sensors 0, 6, 7, 8, 9.
> - ACPM Sensor 1 (Mid Cluster): Aggregates physical sensors 4, 5.
> - ACPM Sensor 2 (Little Cluster): Aggregates physical sensors 1, 2.

What about other non-CPU devices? Are there no sensors or implementation
currently doesn't support them?

Is this implementation and ACPM TMU support exclusive only to GS101 SoC?
IIRC, mapping could be different for other SoCs and, for instance, last
sensors could be non-CPU devices.

Best regards,
Alexey

[..]

