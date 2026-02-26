Return-Path: <devicetree+bounces-269009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QADYCjjAoGk1mQQAu9opvQ
	(envelope-from <devicetree+bounces-269009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:50:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E181B013F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:50:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5B0B3028EF4
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D0D24677A;
	Thu, 26 Feb 2026 21:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="F+jfzdsV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE4E371069
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 21:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772142604; cv=pass; b=Bknh2KMUQmIA5sMLxauPapi4ul8/iI2E8dR5gpkbb+lj09cbHtSlt5+f4gqD7aVkZCfIt+ecteukr9ywOe+5xCmVdTYCuUr6BPKgzsiCBPBjzQxK4ir5U5mMLJDHPuUm3o+dxuZO8OkCzfORjBDnoEvWZ1/67ngka1MWGC9CDG0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772142604; c=relaxed/simple;
	bh=wj/4DB9qRwtGKr8BlnjI4PSvD6/+ZneFkWe1t6KieqU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NNUwwM9zkXJW23o0W3eCilZ4kWp6HAtAWV0OPDZS4GfYR2jkAdvck7ePAQXlS8KtJrF8skJ2GTVRHZwUGR0YqQRhjpyMqJ//yrJJtfcnoqBtxwQQPqcuFPnBV6Kz8EAH8FRulSWf+za/gbH558MYrwF/YIX1UtDR2UibT5QniVM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=F+jfzdsV; arc=pass smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2ad9516a653so6192945ad.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:50:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772142602; cv=none;
        d=google.com; s=arc-20240605;
        b=Gsmp8x1MgdU2Q3uEPqF6Ps50axtpm9rExkYSIomJekT7PBqHf+nNw6QxAY9haN9scH
         7Bh0h3wUl9mDVatijGgewTh7XeIT94eiiLSZyiQbzvSORnxgVwaH2lUI5JQJVST67pVC
         uC0ssOfphn85EP5wgBpQuM9OwktabZqlPnW6uWr9bCyzudo+AKZqYw9rgWPFP0f0PlIF
         gFdL7H9NEZw/LOvr7IheXQhmf4fSx22/V/HpEsAmpkj51YYmbGfGNtsdfY9yHWGlTXtA
         r2HNaRvB8/8S52hBmebor/R18Hs0NnWpfg14HPJ9sYRX8+36bHD1kvS3r/cvlqoMFOGO
         STjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dsCRG0iMNmW9L8aiB7Z8unJe03vgR5EOjM6cSyXzpw8=;
        fh=oC6dLHvp/0/tvk7PgHzsU77s9Xzc8+4//V7BaYQXqFQ=;
        b=j6AeV2wTL6BB7JAm23utvv/x+VK939XR1G4FzLynojsTYfJ2nGISei2hnEUOsw0xgy
         9pAXz13zqp4KN/2HEmjjUlj1IeoLq7YTtz0QY3srMC0m5+h9K0l6XQP2OjPqefGA5X+F
         4kBh9doYJInphbv6wvIlFeXRW8PRqxVfobz8p9odgTWdI/ttz3fHCK+t9pC0naiqoPu5
         EhP8gKilySo6uj74CgIK4uuWrRsKjaQRgtTEK6lsJ3lxtpOkTVb1AIoTAmNvqy/ysQ0D
         G4BiCd2MkkYH06+ul+Y8MhEn4nTbXdI9Y40pzXKdvjfFMvqHmp7X+GE23CZE25izwRRG
         9JzQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772142602; x=1772747402; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dsCRG0iMNmW9L8aiB7Z8unJe03vgR5EOjM6cSyXzpw8=;
        b=F+jfzdsV/T4iV0n5skYipOs+dCd6UpnVeIRjXLMRVUEekZ208AUUJy/l63elSG3tFI
         j7zRGHfIhB5fWNuvkynA7d0Nr3Y/YTZi2oWkM/Tqjrf84YHaCF4N+QMoBNMUx0MocuHX
         Y3xcHxthtT76vq/ExEfU2uMevaiHuSb7eyLT3pQXC7i0YIvJKTveCinlNUyy3Mfkp5Nv
         t9nrWUm07g3vopWxtoKm7l/w2Wa18UUQTpFeowkm4aSAVFvRRzvBC9VeodHEh2Mzw0/d
         Wq/FSnQpJP6RtTqUOce3YkF71842DQz7N0u5xYRtkSE1gP4g0jacDMWHqUdckuHM/jv6
         JXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772142602; x=1772747402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dsCRG0iMNmW9L8aiB7Z8unJe03vgR5EOjM6cSyXzpw8=;
        b=pdF9dm4Kfoq/ZDjt6K5AgmK3AdduZ40VeHpP2678uH96gs3oZ9tFygXsJvq/Pg5kQh
         xNVSwnfY3IDGxP8dYssiplcukUFl1CUiuCNg2KsliKG2Y6wH1IzlI6OFxBpnp9Kfc3gv
         y3f/E8VYDAB1H3T6SokNfw9vvF4DCMe6xk6P6LwtlB7VyuiKFEqRqoGc/0mZsziE17sG
         m83yr/lkt4KMEVKI9owcoz0ouKKBX+s2YNZhEf6hk5W6RTaqmaJDHex2gbFfyLnWP7Nw
         oYGR13YSCv1KyUh0c6BtBNFmDBO+/bItNy8PfOPDstNhrAa0JHNnD7On72jIBoy3O4CS
         4m3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXpyJdoAxMpwjKSlNEzIK/nhNnzd2ZiuLNstzV8xjkZm7qn8yGW2R4Z+n/J9NHF45J/IHosWI2m+5Xk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz038E7xaU345gIf3yGg35Oq7rxMxgZC3E+KBVlsCkmlTBnupbZ
	J3WNJd0EbI8t5WP98Xt7fY4PyubhSe7H6X/5Ow6mayLO7NggZEtWqbVNak6TUqB/joGnRFNhOsB
	uiioHIYPU2S3+TfWfzDxeJAazbqRgdG8=
X-Gm-Gg: ATEYQzxzqzPoAx9cEid+7xlR+pqKbfle1xj+6E1n/Vp0z4eop06X1ut54A5/LoKCUzK
	fr3bOo9ZABB2WGadHWTyHnRhiAweNB1wnhnR++vYBBRV1PxHqNL4B99tcN76dwnHW4dgeBU9Uuy
	iqOcVtCdAOaIWzrOojOg3EcD+nYSBxPBhoBERTe/xaR0Ddc0NAVG5M/+lOjAIRi8rpwp5trBCLd
	B4kOwp0NGH/+dpJ/hvhgsaED8MC7pGP+nnDuud09/ZE2Y9EPGCpYxWMhUSf8bis2spvLVmA8v+U
	gR7Fmo7ndKV6DUyOLvfFsmWzXaiKZt+EfnFwBeF/
X-Received: by 2002:a17:902:e849:b0:2aa:de68:98c1 with SMTP id
 d9443c01a7336-2ae2e47df0cmr4513215ad.26.1772142602187; Thu, 26 Feb 2026
 13:50:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123022258.136448-1-nick@khadas.com> <20260123022258.136448-6-nick@khadas.com>
In-Reply-To: <20260123022258.136448-6-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Feb 2026 22:49:51 +0100
X-Gm-Features: AaiRm52EfSMFA2O8jNHHtEJKIVvMNtNK2XUKbtJkKO0CR4bhD1JcrnoKD6-Fiww
Message-ID: <CAFBinCB0MhXUb635Pe8mth74H7wkpHZbEFoFqbgFLw_yRQ_A=g@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: amlogic: meson-s4: add internal SARADC controller
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269009-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,vger.kernel.org,lists.infradead.org,kernel.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,googlemail.com:dkim,khadas.com:email,fe026000:email]
X-Rspamd-Queue-Id: 70E181B013F
X-Rspamd-Action: no action

Hi Nick,

On Fri, Jan 23, 2026 at 3:23=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
[...]
> +       saradc: adc@fe026000 {
> +               compatible =3D "amlogic,meson-g12a-saradc",
> +                            "amlogic,meson-saradc";
It seems that the engineers at Amlogic are constantly updating the SARADC c=
ore.
To avoid any problems in the future, can you please add a new
compatible string for the s4-saradc?
For reference you can take a look at:
- commit e415a1659ec9 ("iio: adc: meson-saradc: add support for Meson
G12A") which added the g12a compatible string to the driver (note that
meson_sar_adc_gxl_param since then has been replaced by
meson_sar_adc_g12a_param - you can re-use the latter)
- commit b2729cdf2bc0 ("dt-bindings: iio: adc: amlogic,meson-saradc:
Add GXLX SoC compatible") which documented a new compatible string in
the dt-bindings

I think it is best to do this in a separate series.

In case we discover anything that needs changing in the SARADC driver in fu=
ture:
Having a dedicated compatible string means we can just update the
driver and be done with it.
One example where this has happened for G12A is commit 48dc1abde015
("iio: adc: meson-saradc: Disable BL30 integration on G12A and newer
SoCs").


Thank you!
Martin

