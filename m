Return-Path: <devicetree+bounces-270614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ah8HSkDp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:50:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E45901F2EEA
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:50:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A3C52309E7A8
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27FED49250C;
	Tue,  3 Mar 2026 15:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ItstUBvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AAB4921A8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772552844; cv=pass; b=bG5q0GZgpgcPBaCOkoRGj1UGoqRoUi+1vlO0I1bcwHf0KzNcOJBp2I1RSDX9cCNgLjJOl55BqskNV+MP2F3h06JZBK+Wlnpl6JozptRAnJXFfpD9I0hGk9R1dIX6DQoU8uqhf96/Hl9esyw7DV04xMEbRzzsbWqfKYHYWNn9vjI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772552844; c=relaxed/simple;
	bh=wZgekaKjKWhcsnBGlJkXxC6z3jyfRnUew/OlprWLgK0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s4RI/7QtY2UF/H/y2Qc5oSjiAnBYf5adVXl9IvXQo75H2wdgh0jjIImNh8DMomltr0dYDTsLvHIlaz3p6JKkuX2af4RBKrB1daTipmUk9LoxoN9kudRptf1awW0Pf0KT/AL7YGL78iZpHQQlLkv/oAbyNaj7bkT1aNhXd+WrNoE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ItstUBvQ; arc=pass smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3870df2331aso31931991fa.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:47:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772552840; cv=none;
        d=google.com; s=arc-20240605;
        b=k55YbUrU491Kgoly37SMyw5Vk5vihywG6sKJ/THk3fKpyx2cg9SizOkBNm2le4Gsw3
         pCUfeaZroS2zGFrhtH0cPJpKzN0Md4tOypIjDKWbA3PiA9MaDuUuSVZztNZxzGajUO2p
         vjm/GfUxSqahDib4z655GoA1PpHLtwz801W42aUZq9kXTY4lfhnJ8rv40xNnWzEdqjRY
         UuHEBlY/+siJZyVGZJ0u6CeHCR03pBJvmv/wJP8YhLbJOLEZONeN1TKq5Mn8Sn3hB9lZ
         S3isKZb37XHAjC/8itZa93bmblCDR8rP68vguBK4wKWA/HwTCryVxIfmlD+tnL0srDJD
         jnGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gD2a6WR3H4tVJC77g+1awJLOtzCGL8fqkwjycUOG98g=;
        fh=qG5Uu1I+15IbDnCLcfu9ONMUE+o9OURHAWfpe9I0RT0=;
        b=OxNxNcmJYAZvyDubdW9c68iVc1cavT+YUxo+MhnXek1whuMRCKAta4iMT93oqWBLar
         Hci65q3EbJOPo5nX1FtU+f/u4w+WRjuLlqAdr+h+R6cUeJG+HNGdvepLRWax4ocxnUHp
         5W0cNFRxvgS3Rg4Zgv41VghA9e5tZ29zpEF+zYXT7Sf7PEMdTsRhnJDC1L0e5awEx/co
         pie8InbMw1omQmpsxlVjPdg6kizr/T/lTs2Rnfs+LrHjyUS3ER9OAFPIV7rccTGHLa2Y
         nNEZQMUEvxYdcMXrdFBuJDQqzzdzhQ0jLLKtF79ng8trBtpBw5vvgSI6PSWkZB1QAz7c
         rZbw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772552840; x=1773157640; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gD2a6WR3H4tVJC77g+1awJLOtzCGL8fqkwjycUOG98g=;
        b=ItstUBvQPLKoIc/LO/7+6ZRCCMedGbCw8BYF/81GD9AZhQniBlrS7Yyd0RnUwmO4CN
         ipY73t7d9Z4203zs1Ep29oGkAJWNn11oZvpG3vfbav+U7lHt3PFeJ0lR3QSnFrncdL7I
         7UUjU/vtUCjrOCAU7gQpGH+24seBvDtvJ+I9d75bUE8s3U5NlJEbrX8baSGFBfuBAn9C
         iJwp/6jmyx+nRfBRPz4X2hcLZIYK/Dl6Dxz+KvXxh78SBI4t3BmaFUuLOC++V6cb+AUm
         HFgipBNVyva/IOwoRtZjT7y0gkVTL+/X8O92I5kR99zRFZd+eOnS8cabzea0e12XZTbI
         hjjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772552840; x=1773157640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gD2a6WR3H4tVJC77g+1awJLOtzCGL8fqkwjycUOG98g=;
        b=e/J7dcdsIrwlNIKTiklhQRrRzl4WiKin69uHXYO7Jp/DvVmMcwNP4Qpm/gXKMrUWI+
         njPFnTdZZ1eu6j0m3Ig8cG663OBUe9o6FtkEeRLHqx18xDWnrWrGRAYlfjaPLHZD/nfW
         8kGIzWZhgXYBHhJjy5n97OrYEWZozsZVvswZh+RBLzcbBIqqKQP2SN2hY4bMYBknsRuu
         /yWJNThue9IflWupGKS9aRvuaxf6UNW41ObWA8tVWvAsP3sIU/+N7l25mccrhDcI0+Bv
         yXwAz/InhhMMl+sV9e5/F1K1XQT1+7mem+uIdSUVH4gsriK/GjMn6lNBwuhUrGKwNPwY
         YptA==
X-Forwarded-Encrypted: i=1; AJvYcCV/GfbDe9VyprLJJ6ALR/LNHnAtwYDBRC5wOML6r0n4THgmE3ZOYCyBQwsDtpZkrfCd75PIJS22DfD7@vger.kernel.org
X-Gm-Message-State: AOJu0YxuObdjPGPJJ/MmmFnIMVZhAX8Z42/NBH1ujKQtC3I5NfE6LTgk
	kwDV0uYTGL47rn4EjME75N1C6vAzlVwniI7MglQIUZRIyFI6OphPcp1EWbaedaGf1yoSBAPn9Rr
	rVl7p9d80m4wgTJwzt1+SMTySIru+SFb9O2fomj6s7Q==
X-Gm-Gg: ATEYQzyL24rvFz82IyIq88y3LuWz20kykvyFOx9XlBfcMcnMuqfLg9kxCn49whZzBbw
	IMVUcKFP0VBgZaqVv+lKXDtw6KNzuZKSCriKCcHjNQcdNeYqPMlnyLn1R+zzyDjRo5qx9We67G5
	xE8HHDi8IbhvWP0Av5EZzKv3B4xMkvDq7a8evfbw+rhlKFAcc6cJvjpmoYEPMZfPaZRnaNgzNQ/
	t6Xcs90KI860IJHCNHzxr6UXxUwzWEul9FNW4Q6CYR3oQj3US+0HbHix9FcGWH7X9EvukdQBhuL
	wTioZrSlGTbSqrWtVWw=
X-Received: by 2002:a2e:ae0a:0:10b0:387:a16:ee83 with SMTP id
 38308e7fff4ca-38a1c40121emr16229581fa.11.1772552840006; Tue, 03 Mar 2026
 07:47:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260205-gs101-pd-v5-0-ede49cdb57a6@linaro.org>
In-Reply-To: <20260205-gs101-pd-v5-0-ede49cdb57a6@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Mar 2026 16:46:42 +0100
X-Gm-Features: AaiRm51Gkmd1147qVAzeBw_Z4HEuTsOKVPJKFQ1XaM2VqwFLZ9phmWOW4SQBHOY
Message-ID: <CAPDyKFpCCoCH+z8MGhf84zLQbQB-UFa+JxkxMCGxcHmcT_1M+A@mail.gmail.com>
Subject: Re: [PATCH v5 00/10] pmdomain: samsung: add support for Google GS101
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: E45901F2EEA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270614-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,gmail.com,linaro.org,google.com,android.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Action: no action

On Thu, 5 Feb 2026 at 22:42, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> Hi,
>
> This series adds support for the power domains on Google GS101.
>
> There are a few differences compared to SoCs already supported by this
> driver:
> * register access does not work via plain ioremap() / readl() /
>   writel().
>   Instead, the regmap created by the PMU driver must be used (which
>   uses Arm SMCC calls under the hood).
> * DTZPC: a call needs to be made before and after power domain off/on,
>   to inform the EL3 firmware of the request.
> * power domains can and are fed by a regulator rail and therefore
>   regulator control needed be implemented.
>
> Bullet points 2 and 3 are new since version 4 of this series, and
> related changes are in patches 1, 2, 9, and 10. I can merge patch 9
> (SMC call) into the gs101 patch (patch 7) if preferred, but for now I
> kept them independent to make it easier to see changes compared to
> previous versions of this series, and because patch 9 actually applies
> to not only gs101, but to many newer Exynos SoCs, and to make patches 9
> and 10 themselves easier to review and reason about.
>
> The DT update to add the new required properties on gs101 will be
> posted separately.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
> Changes in v5:
> - add domain-supply to binding (patch 2)
> - Link to v4: https://lore.kernel.org/r/20260128-gs101-pd-v4-0-cbe7bd5a40=
60@linaro.org

[...]

FYI, I have reviewed this and it looks good to me. Although, I am
awaiting a new version/confirmation about the last DT patch from Rob
before applying.

Kind regards
Uffe

