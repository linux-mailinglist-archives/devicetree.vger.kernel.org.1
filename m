Return-Path: <devicetree+bounces-264150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJqhD3hdimkWJwAAu9opvQ
	(envelope-from <devicetree+bounces-264150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 23:19:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E4D115058
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 23:19:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D750301D32D
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 22:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE0E30F535;
	Mon,  9 Feb 2026 22:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="LR0AHfnJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F45A311969
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 22:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770675395; cv=pass; b=Z5Dqm94UCNgmtKRxxdYgm8QIk3DQCvajSX/AOwd1TXhkUeFVKuZ5f3rKVlBdidBgNWyCYXLgI0jJ7zV7cm54qerq7YFqEMRZJvPsLcwCK9IoNxVmmqa3/G6wTvTSrsPhg9+z8z8prXBWDlJRfrQlHsdmeP8rtr3Fmv9RFgJuWos=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770675395; c=relaxed/simple;
	bh=rGfGaApf4Ln8F4Ava2/6rjzX04shlpUSCovpsO90S6Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P0+cyNDaIjkC1whCJXLQ3ALyBHrSqTcQNfwnVRykATlp2Mj1oNBilkocJJbJAbCel6nGMfdbDIMx3c1uQWWaESuhLn9ZrzzH3KfdupZThSB+M8kz6ILFI2WMgwMMd3MiSR4ptNTd/Ev2jK3PAVVu8lUBchwtTGqBrADlhUEu7zA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=LR0AHfnJ; arc=pass smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a102494058so27347425ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 14:16:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770675391; cv=none;
        d=google.com; s=arc-20240605;
        b=ADRv3KYPfH8+CIgXhduprmyvrRbbKTFASdoPUqhDdIJaGIV9YLFtsJxybSo+LM8KE9
         PaajbyX5gEdbYh1lH9Tf0j+muiHdog5kiE3hpsrVb12ICF953zHLu8HjcrYwkKN0Tevc
         9k/4ZpoYINBFMuj7+sVetHELdmPFF0KqnfP/ynVsQ+ysPXXJim8KmP74+I+TeLwo2Nn1
         Tt7AVi5v6PeDdAhh2ie0OhsPTkYamSqaxRGW6U04G3ARVdA8vp0ni9chA5wm3ZW21J8S
         ++U7YcBjAgS4KoBLSXx0qNgGm+ZMOahc1xrHwwIOCLCIzm7yzqLwERfhj/yO6IUCZ0+B
         EJMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rGfGaApf4Ln8F4Ava2/6rjzX04shlpUSCovpsO90S6Y=;
        fh=R8kHWkRMRN9qgl0Ldncyufl9uB56u09St8zWMOBL8Vg=;
        b=DD276ID+Le71L/HNgcPwdQYzSIjI751omypxr7ZgLxLPO0s5fMZ5s2TgEL84Pwm50i
         EWrVmCpEEZfpWCTHqR5hz8LDdiAGVBL9oYMhPkdoNVAFkYpY/UZ0B4QWrlCD0TsGKFyi
         y7Mn+vGYlZ3hnNCd0uN5fFAaRxqnZFkYuiOe06jtcuSndkA50frfWyVVxuOHzQVWoodW
         hi5nHmTyFRQ1xhtvVwlgXtL7ThdmGJO4MczoY6qQA9jAM1LlJ1S41/HgpaJDJfU+dtPg
         jE0e3Kb53C7rqAPgSW9yKo1oxV/jpfF8nOTjG0YMxZLxbw9LOicxgt9k4TY5+p5WN1II
         HALQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1770675391; x=1771280191; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rGfGaApf4Ln8F4Ava2/6rjzX04shlpUSCovpsO90S6Y=;
        b=LR0AHfnJD/ZmjHnXKDNInHdR3VhaLhL5ONPJdRfMTYZFT134GKcE8cguDCIBJ5jB/U
         IwnbfE3XKBR17yehVjZdhyYkFFcM0MEyKiD5jGIpF635gO8cOjPAMyg8o1bPb8ifRO62
         bKfZ39DuaHxoCI91x07OlYkzjubMv9TbTcdVZ1T8zS1mX9c/YF7m/dk6Ye77m+OcYjzx
         vEv63CQLvWRTgilel3G2WhNT0gk2lfxJBInmJYLJH76IMZe2PbiD2Qb4xyrjmGP3Ajwi
         7d7lxM+APMSDB8hVZxNBpg5B4GOEVsuVtXcdFBrg+udnF/L/5/2/297NQfE+HWM58iCe
         jOVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770675391; x=1771280191;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rGfGaApf4Ln8F4Ava2/6rjzX04shlpUSCovpsO90S6Y=;
        b=WViSz5FjHUaAZo4hut7OLuJyRGizNNS+VPT4fpRqheJmTm4ZboezU/3okYj6laYdVY
         tRGm+lFuEvDOcIuYJZilTJ7JAi/lOccTFCq9/6nX6xRAxm1b8ureZfmfuY91ZQ9PgwRk
         tqCrzJQOV9JY0C+ngYkMHHMckilK8yuDX+Qx0aWP9rDXAufwHPTGzz/mHy2rV3DPSu2X
         usayyGdfHVe48yUIaXlJEmtpDckptF9O+eknQ5kl2LH++xbkELaybJJFiojJVyb8YWMW
         0GGoZOpye3HNMk8xpY7Z9MdfvhHqr670gXgT/ACjGgevbStqWieE2hxoU0mQJ/DiGgt4
         trvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVA6T7XEt3Gew1p/AlCLRyDUnyTZzqPE9EDctzWC0eZYOxqzGSz3wc6JPowblVFNXfY8rXOuzpWY4Gs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi9NDXo1hjN1/dRiR5UQVbSHmtd8LWGpOCjqf42KKPd2NBygOV
	Bc7DPgSNGwK2P+pjDEOPAyvYVI2w8mPyDQaWVSo9rzeqLOFuX1KsRiO4TlAh06B8uRFgYIW7Kkf
	6XoOZgyXnZhkNRknetLFHcG4mZ4OQ/Bs=
X-Gm-Gg: AZuq6aL0UG/BJdHNYe03c6HgHZz9qxBaXf7+nQRpJC7ckHviUnxEH9LssB63lddNOLS
	Mhq+GU0VzHbaFP4pAWu6AtiwHprCYSyKInwKuoUq8U59VfODU0TeAXu0g/eCqpmXCD3rL63oyU9
	eDmN0a4e53veAhcE2LjpRmktwFSM6jc4y7gH/EJ6wc7db7v8d1vRhbTUVeZhtfjViL06zoasprL
	XTETq8fN7u5f80SLKj5R9BGtIqObhWsFEQgIsQB9xscg37EQzmmc3cKFcCIFLGWtMpYnZ0IgsOY
	cS+Y6D/pPfiKo7ZVLl0wBNTAi/Tm
X-Received: by 2002:a17:903:983:b0:2aa:d288:851e with SMTP id
 d9443c01a7336-2ab0fe2a8a0mr2557625ad.19.1770675390613; Mon, 09 Feb 2026
 14:16:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260205-a9-baisc-dts-v1-0-1212b46f95a7@amlogic.com> <20260205-a9-baisc-dts-v1-2-1212b46f95a7@amlogic.com>
In-Reply-To: <20260205-a9-baisc-dts-v1-2-1212b46f95a7@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 9 Feb 2026 23:16:19 +0100
X-Gm-Features: AZwV_Qh43dpkg6GHmPnCSKEhcU2fCrAkcN4Vfkjmxi9aGDpCASTd9MHa_ZnwnNs
Message-ID: <CAFBinCB6kgbzm7bWv-=LA_Y+zpB7DwjJ0dqiqxumwuUW97Ddvg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: serial: amlogic,meson-uart: Add
 compatible string for A9
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TAGGED_FROM(0.00)[bounces-264150-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[googlemail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,amlogic.com:email,googlemail.com:dkim]
X-Rspamd-Queue-Id: D4E4D115058
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 7:04=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Amlogic A9 SoCs uses the same UART controller as S4 SoCs.
> There is no need for an extra compatible line in the driver,
> but add A9 compatible line for documentation.
>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

