Return-Path: <devicetree+bounces-262996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AANxNr6IhGl43QMAu9opvQ
	(envelope-from <devicetree+bounces-262996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:10:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F44FF23E3
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:10:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBB34303D300
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 12:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D76523D3484;
	Thu,  5 Feb 2026 12:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aairm6CY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE283A7F4B
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 12:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770293182; cv=pass; b=sI5rVYClo+HVCYgaXDWP8CEPAuyPQlytA8BtDFekUBKKB/IAUUbluIDBrTHU9AP7fvq1V18yClAnEVfOJ3ntvABanUtaKLae7ddQE0EsrRu43nJCGWSWO7XADBqKQ3yMeO2OtStY/FUVK3VUdqfkWUevrnZqDcdh7FHAV5A9f8U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770293182; c=relaxed/simple;
	bh=epTizwofu6tUIWScFsKfhBb6Vw+PqSxYlpupgsKdrEY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mbH93XmrqWVXBYxi+XTVN9vj0yghuCTemC35V37u/WbIkjMrxEkw3YnH0+6tgNgQIn0RV/fRDCXSuyyFlB6ATonymUabn78O/CAa6i8O0RbHeH5DveD1sHpFaSSHgWWkD3tzljMsGIeNlJhSl+H/lZDwMI4vVnhdqFwLkqcrrJE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aairm6CY; arc=pass smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59dd9aef51eso1084155e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 04:06:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770293180; cv=none;
        d=google.com; s=arc-20240605;
        b=OJwe6Uxb9uVssbQ3CHxv/VfjMccrAKtvI772zMv9vRpACxewCpaaq5M/SS2kkxvZmj
         NvRAFw3XJ+NfaNT+7VhaXF4irygGysI2H5IKYZpbPsddl2f5oHPVzXTnSk/cGtUhiMFm
         oegjC5L1hYnizEjsQiuhqJ/yUULZ8agHL7ZoaJbbo8uuW6mR02sLXDTLxKBoqVppVTlq
         RnuO18HszwQfA+9RDmK1ZeLvUyMxukLiLmJoiA2EYM2gUlMifoOPEnifhTBXpLQphq/f
         pEZg89QF2LAN30LqzOVCvpTjqI7+FkCaVJV+z4VVfZcTItzhQUo7iuV9bRU4J+DDmh9e
         PwyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cdO9CFNu6vQJNd/2WSszJmp2jWHwNCxretKor7RUNos=;
        fh=UuZnbCOrLzg/txFMMB3+FOsXXSF4YVvwPxJR4jo5pXs=;
        b=LWNJbhGQIyBHqIJ5I55eTP8U6mWVQoPlB1HQKqAPqIuOpT1eIUj3waQJL5/rGqjhMg
         WftKjAcyb3sE4eRFGLqajqle4YUhmSj8RdeMduU3/B+laZ4qjPanknm9IQiVquFl1pQR
         Z5YnhsmDLooQYGfR8ga8lfBlIHhka3gBXVNHPUpKMPG8PgisfErbxbaGsiEPTY0RWDUP
         idhc6TY5JRAz5aim6DDogG3hsaYqrH09ftzebJBiSKlW0fMrEfRG2OZdaEwiJ7XvNHPN
         JGgexCOUqQHH1bg66f3hSvdTHfUctDulct1WWAd62tLr+inkH9ff7Ft2Gh11gh5TwFc1
         h+EQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770293180; x=1770897980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cdO9CFNu6vQJNd/2WSszJmp2jWHwNCxretKor7RUNos=;
        b=aairm6CYrP5gbN7adLgwmLaStWmc5LLpMxrDDWJwMASwSVvhYYiAfHD7jyQFa3bIZ6
         1pMdfMb033FVhAMlatLotidw/wGkIrrCEMXp7mSuUxL61cU1pVr5KEuoaKAQvfsH1bHZ
         mntNuXS1UGNs/n01EZTtTNQKoq8/Py67Xvc8jby00DCpLtWFhhbh6F+w79x7kJGV1eR3
         ryJHjBrVuL8qzWlABW3t9VDRH7s1IYMdOkjJdDKKFhKfA24QPLjCwmuKAHCxUv0KqcOK
         6dsZ+lVGfbXAuh8p7MUFfv5wkVX3CECmsVOk7GMyFHltmrMQDiSbY3zozUzoEal1/ch8
         VWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770293180; x=1770897980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cdO9CFNu6vQJNd/2WSszJmp2jWHwNCxretKor7RUNos=;
        b=gIvTkfJXp8JKXwc2USFmRJ/xANwRNAF0E35Tf4tma8//lQ3gqCt/yd7FZT23TjmmPZ
         osmhHux6PgjZUS5Kho3rT9r3B8OzvMQeUZjR7MW99M4DX/6CZzQynb37F9HK9w5TXYUy
         GDYgtUjy7oelpz3hSm2VP1Lbz80Xt8+WVRY6YzSqgFYLvXon3mPT7B56T8SjUssjMJap
         FuLzTtOY9NuPOzWAXrmp4fEm/xmhzWGW7PPZJs3uzEzOz4imv6KyR6G2gkV0wPhFy+5e
         KXk1X37bwAA4TdJ0ObtStiiSUvumoybwqc55q32cE5hI/iraarIeIycNRDU3lcjkO81H
         k8pw==
X-Forwarded-Encrypted: i=1; AJvYcCV7z1rK72+K/3vthHdNY9gy2zUpgNQVZX+mbFV9O4vfkJDAVk2HCyLKNbXP4sPrY8fWC6uPblilCjMi@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj2enRL3dqfvoDWEG5natR9mz8Oh15Y72yRUr+hc371qa5Y19y
	VAocessgwowIZ/xuhSXycsMCKy9qej4U/4RwNlneD16y9OVg2zbUv6ITUac+vO7KQZwjg7/1pxm
	SvY9QjduATTAbTCar/CK+z5zplcAf5FdeiJyh69twhA==
X-Gm-Gg: AZuq6aKc7bpCzHXpu4R38qyHR0A+b7w8YFm58xSUcqGXH/DEoQRiJE21g4SKhPn0T0M
	09qWKeITFgn7y9FcD/w0KgBYkDcX1tKGvonqY4pkk+8ZUR7t/0tLywD7rznZYcRxYLM+k1Kwb7G
	9oVXiPEAwjme4cdfKn0lBcX2QU9VWCnSScCniDQx0IkioXUYiTDfJ5knPYq6yAi1K8kgVrTI9Vm
	QRx8BjZItpedairrVse9odicJChVW+EjvEBqdRHd1US/sOan/pookOfMAobI/a5RmB6G45l
X-Received: by 2002:a05:6512:10ce:b0:59d:ea35:bc8e with SMTP id
 2adb3069b0e04-59e38c2955bmr2270537e87.24.1770293180225; Thu, 05 Feb 2026
 04:06:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-gs101-pd-v4-0-cbe7bd5a4060@linaro.org>
In-Reply-To: <20260128-gs101-pd-v4-0-cbe7bd5a4060@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Feb 2026 13:05:44 +0100
X-Gm-Features: AZwV_Qio0mUxbt1hdbXGSjmWyyPdwpqKntqpt17Vt_Fu987EJSjXGSrypfMmYU0
Message-ID: <CAPDyKFoRXaiZiZw0NmmgnJzfw3sCYi1cNAuLHUU6fyF-4gxDuA@mail.gmail.com>
Subject: Re: [PATCH v4 00/10] pmdomain: samsung: add support for Google GS101
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262996-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim]
X-Rspamd-Queue-Id: 5F44FF23E3
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 at 17:10, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
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
> Bullet points 2 and 3 are new compared to previous versions of this
> series, and related changes are in patches 1, 2, 9, and 10. I can merge
> patch 9 (SMC call) into the gs101 patch (patch 7) if preferred, but for
> now I kept them independent to make it easier to see changes compared
> to previous versions of this series, and because patch 8 actually
> applies to not only gs101, but to many newer Exynos SoCs, and to make
> the two patches themselves easier to review and reason about.
>
> The DT update to add the new required properties on gs101 will be
> posted separately.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
> Changes in v4:
> - drop unneeded or already merged patches
> - drop patch "pmdomain: samsung: convert to regmap_read_poll_timeout()"
>   as Marek reported issues on some platforms
> - rebase
> - DTZPC related changes
> - Link to v3: https://lore.kernel.org/r/20251016-gs101-pd-v3-0-7b30797396=
e7@linaro.org
>
> Changes in v3:
> - use additionalProperties, not unevaluatedProperties in patch 2
> - fix path in $id in patch 2 (Rob)
> - drop comment around 'select' in patch 2 (Rob)
> - collect tags
> - Link to v2: https://lore.kernel.org/r/20251009-gs101-pd-v2-0-3f4a6db2af=
39@linaro.org
>
> Changes in v2:
> - Krzysztof:
>   - move google,gs101-pmu binding into separate file
>   - mark devm_kstrdup_const() patch as fix
>   - use bool for need_early_sync_state
>   - merge patches 8 and 10 from v1 series into one patch
> - collect tags
> - Link to v1: https://lore.kernel.org/r/20251006-gs101-pd-v1-0-f0cb0c01ea=
7b@linaro.org
>
> ---
> Andr=C3=A9 Draszik (10):
>       dt-bindings: soc: google: add google,gs101-dtzpc
>       dt-bindings: power: samsung: add google,gs101-pd
>       dt-bindings: soc: samsung: exynos-pmu: move gs101-pmu into separate=
 binding
>       dt-bindings: soc: google: gs101-pmu: allow power domains as childre=
n
>       pmdomain: samsung: convert to using regmap
>       pmdomain: samsung: don't hard-code offset for registers to 0 and 4
>       pmdomain: samsung: add support for google,gs101-pd
>       pmdomain: samsung: use dev_err() instead of pr_err()
>       pmdomain: samsung: implement SMC to save / restore TZ config
>       pmdomain: samsung: implement domain-supply regulator
>
>  .../devicetree/bindings/power/pd-samsung.yaml      |  29 ++-
>  .../bindings/soc/google/google,gs101-dtzpc.yaml    |  42 ++++
>  .../bindings/soc/google/google,gs101-pmu.yaml      |  97 ++++++++
>  .../bindings/soc/samsung/exynos-pmu.yaml           |  20 --
>  MAINTAINERS                                        |   2 +
>  drivers/pmdomain/samsung/exynos-pm-domains.c       | 254 +++++++++++++++=
+++---
>  6 files changed, 395 insertions(+), 49 deletions(-)
> ---
> base-commit: e3b32dcb9f23e3c3927ef3eec6a5842a988fb574
> change-id: 20251001-gs101-pd-d4dc97d70a84
>
> Best regards,
> --
> Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>

I have looked through the series and it looks good to me. I will be
awaiting a new version and to get the DT patches acked, before I
continue to apply patches.

Kind regards
Uffe

