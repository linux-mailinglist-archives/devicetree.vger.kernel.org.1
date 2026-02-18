Return-Path: <devicetree+bounces-266504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDiNLhsFlmm4YQIAu9opvQ
	(envelope-from <devicetree+bounces-266504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:29:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 223B5158B73
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB30830238F7
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B87B346ADA;
	Wed, 18 Feb 2026 18:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CTnKods6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8DC15C14F
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771439372; cv=none; b=sFBQ93HdraiVRg8+1rb5YC42fPYMqnSsavYJuDAs00PaHxT/iKl/KQ6fFEZjvr4eyBGgUWV6Ynp9nPObjhhpNEWBwJPhufZnzjxUZ+zYWAX0z4W6ZPRPLuHGNkxkaqtH6sdIq+MfFqQTBLrFVjrlaVHp5U5phYYFZCWeZJRM4/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771439372; c=relaxed/simple;
	bh=eZnBqrWtQXg6JjfPWHTRiksi0baJe5tMKs5q38C8B/8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=dFhhRZdE/oAmFDv42JWqqw3UxayEqoRbfK3vPkPATicsmXiYU+T+jBFa21r0rTXCgPycs2TMeGMltdB2YfQzsULax+gC88uk3SwUXhtZwrMJdoVHzUnu8PzOZLSIN8fdXYdrET0TC9KkaPf9CO0K8WlCJlpJoboFPPJUSYGuKCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CTnKods6; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48379a42f76so1237425e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771439368; x=1772044168; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P2HG7dMgFbjsQ2a9OaL1N2Qu53e+VsL6dqqrCn2unbo=;
        b=CTnKods68RFkYQ+DXwha5Qz1xJXqCTgoi53KBg6U+pJVI+PjOEHWwkDR5nprqpNob2
         +L8ReFYcSknBNYMswj0DfzKMCmjliOW6gW52EM/5/Ch4C2Q0UTG3mwn0hQPVi/AYeZ96
         sYTXzswQ2PNRtkYKpqBTG+9DP1o3clh5H8c0stxyBkQ6A3fxe+/h5FuC0CLOrDhxjFqy
         bxmvL9wUcTbUNkJYTMkgQ7pFnCLEa4OkqucF/kh5c2zpnuAZSfED83P5vQbup27KgV7A
         2h8dgyAQtMWYc0HtgrzLuO1a3sdEBNxVN0aUSp4mMMJc+WRSL2lv5bIutzybd/Juc7MH
         FFoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771439368; x=1772044168;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P2HG7dMgFbjsQ2a9OaL1N2Qu53e+VsL6dqqrCn2unbo=;
        b=eOcYiiuyNLVEekqBE7+hC4b35jrJbroNS76VwIW6Ab/N97BUGDJDDI219kKORBVv0s
         p8wrpMToXNRrHbHFPO/HBXWpUHDPrQCJWkiiAnaDvTtyIKLAvbZeww4fZCMeDbGpzaCp
         /PKCJik+NRzKPRl3H5U7PlyIUFG5InMufhAZGuGuIq6h5TNjfr/rGOtU1tiZQc/PK4KP
         RDgQteKhJ3mNN2UxaWtEQN3mQWBJOAldKV8F8WMThk1TqsEo1EtaU816ZZUYHkQ1IZAh
         mYlUKOtqAgnX3ClQEZb0+j4oNyG1cDuNF92/g/fQ+iXkj1qEXO+No2wxS0cNosKNrLFS
         FJKA==
X-Forwarded-Encrypted: i=1; AJvYcCUA3zwv3MpQ57/5A+BNojaS0xw0FrvC4ACVOds5GwJ7PbQjwdpkNi6XgBZ87yWGst9XuHELF9BCzE3c@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj3skCyOeX12dquFTOmk9nsZh2tz4ESh8lgKhmBmAHrgvRlFnR
	jgQp6Clp+lXoZVbka4oVzCnmBC5GHrMMk6wjBUnWHfML2VMqmoHa1cx7n/3VfWe/pEM=
X-Gm-Gg: AZuq6aKthQWqANld7aLyVpERXMXlHZV3DnbgNafkEtFXq1hYAdqw6rlWqe1itsROTY8
	9fio7doq/PMyVICd/fVdPa1j1uShNJ5ZmzCtxOJR0IK3IydrjBRnwkUu3j9g891Pvc9KN4qDSA4
	d9DafgitDnBgHh4Q2jbkQuNFTvzUcTwSvjDc9XG6GzMmFXINU/osTH20Z0DaAAS89gvzMFCg1Nz
	wqOZnSv6zTixG3zffoHG8uT7HCmsGIe35k3gRiL/ESHlf90wBxh8tTtwf8dyaBtR0VStpN70KtX
	VqPmBxLefhEBmF5rzhtTs+BYL5uvXuzd+wEB4gqZmihPgd8mnH4O9ty8PayHp3VHxJd6EvO1S7L
	z2TNFPwVaZE+U1J/qab2hgLdthiKXkLUlsqP8OdZkIcUcKFkSl90uBKw9oYsT3gaDD5/dF0y1cm
	kvVi8jsQDgGLhgvrG0hQ7xwNuhxS6pPEfzIKunxuf7r4v+KNG2WpFznTaeh2iE/P1RPWqyviM90
	8J0hLlHHyVn74mngQ==
X-Received: by 2002:a05:600c:46c9:b0:46e:4a13:e6c6 with SMTP id 5b1f17b1804b1-48379bfd71cmr230436375e9.19.1771439367849;
        Wed, 18 Feb 2026 10:29:27 -0800 (PST)
Received: from localhost ([2a02:c7c:5e34:8000:17bf:52bc:6ef0:a984])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4837e565f5esm439288555e9.10.2026.02.18.10.29.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 10:29:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 18 Feb 2026 18:29:26 +0000
Message-Id: <DGIAUIFPUHN8.35B5MNEUK1JW5@linaro.org>
Cc: <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Bartlomiej Zolnierkiewicz" <bzolnier@gmail.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, "Daniel
 Lezcano" <daniel.lezcano@linaro.org>, "Zhang Rui" <rui.zhang@intel.com>,
 "Lukasz Luba" <lukasz.luba@arm.com>, "Rob Herring" <robh@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>, "Sam Protsenko" <semen.protsenko@linaro.org>,
 "Anand Moon" <linux.amoon@gmail.com>, "Marek Szyprowski"
 <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 0/7] Add initial Exynos850 support to the thermal
 driver
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Mateusz Majewski" <m.majewski2@samsung.com>,
 <linux-samsung-soc@vger.kernel.org>
X-Mailer: aerc 0.20.0
References: <CGME20240911121149eucas1p29b9ccf99a545cfaa924b122cd8dd3183@eucas1p2.samsung.com> <20240911121136.1120026-1-m.majewski2@samsung.com>
In-Reply-To: <20240911121136.1120026-1-m.majewski2@samsung.com>
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
	TAGGED_FROM(0.00)[bounces-266504-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,kernel.org,linaro.org,intel.com,arm.com,samsung.com];
	RCPT_COUNT_TWELVE(0.00)[18];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.153.167.240:email,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 223B5158B73
X-Rspamd-Action: no action

Hi Mateusz,

On Wed Sep 11, 2024 at 1:11 PM BST, Mateusz Majewski wrote:
> This series adds initial Exynos850 support to the thermal driver
> together with its requirements (sanitize_temp_error fix, adding the new
> string to dt-bindings), while also cleaning up a bit (improving power
> management support and removing some outdated information from
> dt-bindings).
>
> Changelog:
>  v4:
>    - Cleaned up sanitize_temp_error a bit more
>    - Modified exynos_tmu_update_temp to match sanitize_temp_error
>  v3:
>    - Reworded the commit message of the dt-binding information removal
>      change
>  v2:
>    - Reimplemented to use the Exynos850 TMU clock: removed the patch to
>      make the clock optional and changed dt-bindings change accordingly
>    - Improved the Exynos850 implementation itself (style and one correct
>      register offset)
>    - Removed conditional compilation in favor of pm_sleep_ptr
>    - Shortened dt-bindings description
>
>
> Mateusz Majewski (7):
>   drivers/thermal/exynos: use DEFINE_SIMPLE_DEV_PM_OPS
>   drivers/thermal/exynos: use pm_sleep_ptr instead of conditional
>     compilation
>   drivers/thermal/exynos: improve sanitize_temp_error
>   drivers/thermal/exynos: reuse data->temp_mask in
>     exynos_tmu_update_temp
>   dt-bindings: thermal: samsung,exynos: add exynos850-tmu string
>   drivers/thermal/exynos: add initial Exynos850 support
>   dt-bindings: thermal: samsung,exynos: remove driver-specific
>     information
>
>  .../thermal/samsung,exynos-thermal.yaml       |   8 +-
>  drivers/thermal/samsung/exynos_tmu.c          | 237 +++++++++++++++---

I applied the whole series locally, it applies fine on 6.19 but I didn't
check linux-next; and tested it on Exynos850 E850-96 board with the
following DT node:

tmuctrl_0: tmu@10070000 {
	compatible =3D "samsung,exynos850-tmu";
	reg =3D <0x10070000 0x800>;
	interrupts =3D <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
	clocks =3D <&cmu_peri CLK_GOUT_BUSIF_TMU_PCLK>;
	clock-names =3D "tmu_apbif";
	#thermal-sensor-cells =3D <0>;
};

and thermal zones as you mentioned way back. It works just fine.
Temp goes up to 48 C with a loaded CPUs and settles at 36-37C when idle.

So for the whole series:
Tested-by: Alexey Klimov <alexey.klimov@linaro.org>

However, do you have plans to update it or re-submit?
Or any other plans working on it?

Thank you!
Best regards,
Alexey

