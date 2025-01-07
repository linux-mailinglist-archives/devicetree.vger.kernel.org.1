Return-Path: <devicetree+bounces-136103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACC1A03D58
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A519618809C8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59ABC1E5721;
	Tue,  7 Jan 2025 11:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m1Od+lea"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17181E492D
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 11:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736248343; cv=none; b=dRYuMEoYmp9ypti4VAvVChVGsyCvJA4+wJfnlBURRw4h8oW3hGN5tF38qigoaDe6wLUPAs7waRm5hwg1e/CMlNzX/JoB9bN7uKVEa4laW85rqxXsGw4lPWJBQPg6sc6zRAOvm6F62MaHMibxrLrhQcp699CdxxTijDpGMHhlMyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736248343; c=relaxed/simple;
	bh=joH8dqPFxMW8rMz1XO77xmtl/YHd4CcIpAtUzKZocZE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=W9lIjcP777O/7Fw2zA9wSSmWZiAR03BML0CZXv+jicQl+Zg8kESpCLerI8Z9fBhtssfEaQcsq44PfxhviXg6QuZn5l1CoOztJ/STng0QNDstIJ1RzOIpuJ5BVF9SvmovWPKZUQ2NTYWETOUr0dvMkVV3nq2wv0qqWRGUYBILkw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m1Od+lea; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso111157355e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 03:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736248338; x=1736853138; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=joH8dqPFxMW8rMz1XO77xmtl/YHd4CcIpAtUzKZocZE=;
        b=m1Od+leakSH+9UPe0na25nBiqlRcB80xbGTSr3s+cK1aLe+SH26x0S/HyEs3zL3PY1
         HSg5qPR7zKnJ3BMGxdKSZ5YD7LpZAuqWt7boKrn5xv+85VpfJFVauJQ7KvDfC9vBYKVy
         kcFC3mkI1s5kO97yFWLc1eNITLfuC+BQfFiN10KOgJ7xxGOuwrF6GggwqNWrbqC/hsn1
         a5xbDwMhmpvWUCUIBDu3tbNeQeyJMyvPYRV69w9WKCTh+KNyJJlLTVYcj+EKBUX4IDd1
         t6kwnIGm+Tongc4pRoOG6oqOKaBpdtNfLNoNNHTYyK7SpmrIWnOCw6m8JkjFXghhjEiC
         SZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736248338; x=1736853138;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=joH8dqPFxMW8rMz1XO77xmtl/YHd4CcIpAtUzKZocZE=;
        b=Qi8bTDgz5ugwCMQ6VsM/x6B5y6ONHUw2PiZm7ZA0FyetYbaQPKxzqNid/lDbYUFMyd
         5W6GVfiufbT+krpLh9RZQuGMc2EtJJ6GihmTrq57c1/MbCLgdweRQq2mA+yxweYyM47F
         gsMa2NhoK4RYh1tX7fY/KP2e9pdux5Ax6d3MmqpfHYDTfKr/z7sNJqqoRZE7hHCZbhyB
         /E+Q/LpNVA3vy+fo5ek81uzMRXwKTzQ12WKs5hz3jnuat5rGgiy4yVqR4D/7YwEqHm5C
         xztiWuXlgpE+t2oe9Gk6TtnKkpYjrRwhRGzy2Od7QLhvFjOgGpXngIr22s461xhBcGQ+
         uVpA==
X-Forwarded-Encrypted: i=1; AJvYcCVY0q2FzpmagYh0DjTRXkWg1OKBvunfpNEy3TxemZetrmh1d+uIJ+/bHid3q7xU2WP4RKAAkHw4leQ8@vger.kernel.org
X-Gm-Message-State: AOJu0YxtBg1VK46bynewKBevlrnZ8alCN36giS9wigHMbnzTG8LyR7J9
	DMly/y9l8MCKy2cZvqVu+aW7jiQSEVbFpHao5/8rqo4P1TvWQUkWKi41QgHDDak=
X-Gm-Gg: ASbGncvRNiZsmDwZ2fggPYv2RF7AWVrxGi6WGb7HpQLBpCM52yQl3DDrG+2tLOYiO/L
	+iSbr4IGoOb1OJOu7qvxN36OB9u9fKELstUM2w/oBiDQcJFD8uBrYvEVkLH9Pcr4v8lCqTUEg4f
	RB3iQf8TxXmeHn9LpzPtCVLQDgb7BDRMrDIP+/MaVp5pqMsqQd34K838ZTr2HQYTXsh8asP0zuc
	jKphJNdJ/e75i7NCezRihuhYL7CMIPKCxSDBl40WC27mU095PPq9XyLFmpf
X-Google-Smtp-Source: AGHT+IFpD683L/Xnq8uxEeqg9tsz3tz8lKlVXMa5R3Jx59Gslqaq2nNppeiA2Jql4f+qmKUXncptVw==
X-Received: by 2002:a05:600c:474d:b0:434:f623:9ff3 with SMTP id 5b1f17b1804b1-4366864616amr567908985e9.15.1736248338172;
        Tue, 07 Jan 2025 03:12:18 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c847dabsm49540541f8f.59.2025.01.07.03.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 03:12:17 -0800 (PST)
Message-ID: <9bc7e48b51d056acbba83bb40dfe133b16decc44.camel@linaro.org>
Subject: Re: [PATCH v2 3/4] arm64: defconfig: enable Maxim max1720x driver
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: t.antoine@uclouvain.be, Sebastian Reichel <sre@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dimitri Fedrau <dima.fedrau@gmail.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Peter
 Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Date: Tue, 07 Jan 2025 11:12:16 +0000
In-Reply-To: <20250102-b4-gs101_max77759_fg-v2-3-87959abeb7ff@uclouvain.be>
References: <20250102-b4-gs101_max77759_fg-v2-0-87959abeb7ff@uclouvain.be>
	 <20250102-b4-gs101_max77759_fg-v2-3-87959abeb7ff@uclouvain.be>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-01-02 at 12:15 +0100, Thomas Antoine via B4 Relay wrote:
> From: Thomas Antoine <t.antoine@uclouvain.be>
>=20
> Enable the Maxim max1720x as it is used by the gs101-oriole
> (Google Pixel 6) board.
>=20
> Signed-off-by: Thomas Antoine <t.antoine@uclouvain.be>

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>


