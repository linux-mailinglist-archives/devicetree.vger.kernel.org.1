Return-Path: <devicetree+bounces-322816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zn+4D4tJTmrhKAIAu9opvQ
	(envelope-from <devicetree+bounces-322816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:58:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 825DE72687C
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:58:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=Y3AHn02v;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322816-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322816-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 294373034674
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 12:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAD4451056;
	Wed,  8 Jul 2026 12:54:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D9A44E055
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 12:54:28 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783515270; cv=pass; b=R3X+hoJ5VTYpDAo2PZv8akWXD9tPe6GM9qT55cWuITTlQIKWGiF+UjW8OQCP3ImzlooJ7bSVkgoeZK+q1fV1D+4+rw3fUJF2VF1xgttW/5zbzr+JbmAGVRPb3aex81BPeJSg4MSZVtLc4UEEUDD4OucbJnkqUCEi0Ai/9Rhe1WA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783515270; c=relaxed/simple;
	bh=r3ECCAtGbH7zr75T8t2rfCw+syUIUNTuubOlyZPJ6YE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G4fSCT6SVfSg1unRyhAL08xPC7F9d0MNW3jqCaDx7yA5fVBG5XPwwG+wzDMTJnlX5AIV0ozGjEGt1bP7MCMCEqzbBgBcDejL68v2Eqq6S/NsB0hFsBRhUGQQcQ6hJTnJ1YMZJFfILJq6Rwf8KyU2fRTg2y2qARhMYHrNCRu8sSY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=Y3AHn02v; arc=pass smtp.client-ip=209.85.210.52
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7e9f6b94a49so392486a34.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 05:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783515268; cv=none;
        d=google.com; s=arc-20260327;
        b=Y1LgcYPjk5yGKdFUO4IfHi2+xVhvTQwmgl3MEaVTBvfvE+trWz6hcxBfGocogICLYQ
         ZUxcqCa8WecoXm/DIS4Kxk1ddhdvtKspzcZJZUKWsQW0pll9BSm1HJRTsgYBuDuoDzW/
         8hw3ACyTPzLlkTORQozKj6+m6Jca5hHfhaMIwyJlsrPCJn6m9nOD41ETVdbCI4EzR9aX
         ZZK/HttaUt8jTlPtTr2QMmy7fG/sqAwY3epcIJ+WnwRaRArWy426TlHSf8itCyu2R3tK
         yrZ6lQPRnKmF8pjlbNRG33+R7vd5ljR7HmFTrx5TNMqHSghFiZbsRw9d6C+KfNRzkH8V
         Fg7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=r3ECCAtGbH7zr75T8t2rfCw+syUIUNTuubOlyZPJ6YE=;
        fh=53qvJawqK0TJTsq+MaD47KBMEtgXQmC582XHmZ7TrbI=;
        b=XcWoMzx8qoKrEf96SBmHdUDvqvAUqGMubLQzl2qHlICxoPHP4mv3lDhVUBvrNDF0bw
         IhJ2Rk91T5Udx39cxl/2jfaFPXg25VCLfaVp/JoDXIhkGqF4E46DExO2Vg6cl2Z3KWJz
         iCmbrk8h2Uz9b+w8CO0hTDSvv8cCjvVGirfC98nlYKjnMhP+g0AFq8mUvMxmXUVwg4/4
         OgA78JqwsSwpsOi/4IALVS4T/aTzkde8OO/iH5eOocCO5jRHgLpghCsEIrtup2IuNvzg
         LYkTFjoeYzYm9HQtwEMjDTP6/yXh4p6rxbbpzwOXnzIuQi0oNsygoWVZ4RfsjNVPU3Ji
         4m+w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783515268; x=1784120068; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r3ECCAtGbH7zr75T8t2rfCw+syUIUNTuubOlyZPJ6YE=;
        b=Y3AHn02vgaHiSzRR/3ElDSmtPYAwjCQTsTJQ70q9d6oNxjM3dXDm9ohOtrxCjz/Tbe
         qu/XEVrvqzWcTsI/hl7fc/o2sFtgib0Jpfp+RXOm55btSkONTI0k8uzecrnUOQsmAR/J
         e2W4DFX4F0cN/M9ICeLhYoZqSE+tTfHpw+NExIP9DhPrqWnp7T7f7Q9cSpWYxQx7L/EF
         gYFxl6hIW9i8OGLmHodTfpp7wWsHuNvhSH/ylTPr7hYlVAfe98oC56A+cX98IF16tYs8
         PfnUX4JXT7RRrab0F8uuXb+NWepdb1C9l5RpzGzMhzxFIVpSrwXDJyI+kNeUtVcIYTsJ
         mt8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783515268; x=1784120068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r3ECCAtGbH7zr75T8t2rfCw+syUIUNTuubOlyZPJ6YE=;
        b=aCGb95paB5HokKsB5YHXKIm/wrMJk+LltSJrzrAkJ3hLrWuIWmhLc3eRch5CjCRq5f
         dHZU/3HNbDhY+NxLOSq37dF78DgOzP5YYwgmnAQXnrVEdxztTM3UytPFTk3Qgs38Lq3w
         olqOsSl2TglF811SOYGUqpulEPlW8mIRcsmhfYs6ewnxyQ9w930X2j09HgXDBlyP1suW
         10LfVX/bUzx6SruK53Z1ccpler4GBN0E64UtSG3aP+U/KaAsFv523uE6WhreVF+eAiVS
         Ao/fxdyXTMcsOS2ckYzwtnpdrHSyIPXw8d8Qa4q8q50q19crkqvhT8ZdaPhFE/mbnIJ8
         +LZg==
X-Gm-Message-State: AOJu0Yy7RrZ12gH172qfp3oHuAxiFf6KbzOtAWeJA7a1mABELH3jiFb/
	3aYPcqoyw9ui7P+UuDlE007YV9CwsArxNgi3Jd3QVZgdGlGMEwnLjly1nUg1EMIpRC/c0tbqVX2
	BY3jyuMmZQzTjA9o1LtqHtrbCGXZ3Pjw2mxZ9Asw70A==
X-Gm-Gg: AfdE7cmhadii57RmbGj0VOfquwsn/+L+aW8LorT0PXz45z25DUZ2mDSVvBgyHnKHJvK
	UYQTGNBjRmdYSs9R0m3wPeARcOlYmDZoP7H8W52mH7g9/nSRelyNO1jc7LU2YXy4pQNJvpp0PMy
	bcKXxgukUdBfR7n/JO5AYKWkjq9QA0jiG5R2lmwfsjjq+oTkPjyPJzu20D8uVt71A6wBetyEn/L
	s89/eaLjLo/Qeig7kAqJUC3NxEiikw7SbBRcqmo6HEGwOy29LkKbzPcmwIlOe/h+cGreXUzHXtR
	b8iFSLM=
X-Received: by 2002:a05:6830:2b25:b0:7e9:ef39:1caf with SMTP id
 46e09a7af769-7ebcff98b5cmr1742576a34.16.1783515267714; Wed, 08 Jul 2026
 05:54:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260708-ccaione-genio-serial-aliases-v1-0-bf22229e9383@baylibre.com>
 <20260708-ccaione-genio-serial-aliases-v1-2-bf22229e9383@baylibre.com> <20260708112603.9532D1F000E9@smtp.kernel.org>
In-Reply-To: <20260708112603.9532D1F000E9@smtp.kernel.org>
From: Carlo Caione <ccaione@baylibre.com>
Date: Wed, 8 Jul 2026 14:54:16 +0200
X-Gm-Features: AUfX_my1kvVsqi1aym_CBX5VWlURwFfbliwIVwoILuh3pJrI17C70h5-11qux0c
Message-ID: <CADh8Lsfc8PYaQPewRk9KM_QK_3ju3OZtuHjovcjnNeYOsVr7iQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] serial: 8250_mtk: honor DT serial aliases
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322816-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[ccaione@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ccaione@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,baylibre.com:from_mime,baylibre.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 825DE72687C

On Wed, Jul 8, 2026 at 1:26=E2=80=AFPM <sashiko-bot@kernel.org> wrote:
>
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
>
> Pre-existing issues:
> - [High] Runtime PM APIs are invoked from the UART PM callback before run=
time PM is enabled, causing circular dependencies during probe.
> --

This is out-of-scope. Not going to address this issue in this patchset.

--
Carlo Caione

