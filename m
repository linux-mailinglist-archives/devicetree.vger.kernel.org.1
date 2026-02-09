Return-Path: <devicetree+bounces-264152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KExsGrFdimkWJwAAu9opvQ
	(envelope-from <devicetree+bounces-264152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 23:20:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C66115068
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 23:20:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C93CE30265B4
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 22:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266703101DB;
	Mon,  9 Feb 2026 22:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="A8P2dDqr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F69A3081D2
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 22:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770675559; cv=pass; b=NLHsrvHQ5DJ2NrUQ/7rWN1coGsbD9tDGoHtORRr8EglRxi9deJzq6QIB5x3mEnZjCSLpuo9mMJSK0qpsBbDtXnf1s228kF9j4dCzjIlTZ1vof3D0nG7AZtwi/s6Y/zPR47JZSNlPvbSDTr3r8q5JRgZEygAyMqm3pvjpAC6kSDk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770675559; c=relaxed/simple;
	bh=3s9hN8LyRGBx1FfOtf5UfBxGuMC/eYfq9GbdDtMCxFM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zw7/QHWraYcMmx2+ra9yLU285wClvM+8a3ipOWKYPMCfoZwb7oX1SsuIJgY2vG/6gcvHjqiEEo3bxmbQWV+GWDtxqwdGVtMQHwWr6BGbaBTR1lMoS0kkfAvMy1yT4u8OTtPajBbbJMa0rqcruP/O/czRdu2ZkgeRBuynZkhOrZw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=A8P2dDqr; arc=pass smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c61343f82d7so1202725a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 14:19:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770675557; cv=none;
        d=google.com; s=arc-20240605;
        b=VXHcABYeLnGPDurHGHMX6bWtS4jEtLUiZdsvHaUl7YOHjaxEjontU77nCjz3XsFu3t
         wjogEzCgjMsQCIFSP7km8zyU26b9PYSiLesDuAwjsh+AqWq+d5SfP/Q98VA9lpVRl3vv
         kfHNKOmEC6BepGVPOUws4bbdkJ53R1y6HIr89K+mTDSpLgTeuNdwRaMKaoN97ilb8M6T
         M73WPbuZyXLdOF8AP7dDUJAhEwznz7XnKioaGK7ul09xAmB8rrtGr04TX1UbW8kxn1Od
         NGn4OMcr07ABljyJcHctjWIyhZP52L7SiF6DYHyPAZU1QKaHwk8xAhfioyLxNk8AkCbF
         dJ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VggFDnvvtT1KJN/nuKTxye7oCcrAlUOoRXA6xSFetf8=;
        fh=WihYftPZC32Y2yMWz4RPjlMdOZQ0RAM7a/Uf4eDLeOU=;
        b=MAK2pmS+HRi/UiCf7ndbq4kCs/+tUBKf+fh4IL+/xdFdPFjM43Vpo1eoGtXtsEePbn
         jBOcgNzp9zUVXFF2oNX/dKfTSwp1DtKD8aq3p6zmOrG61qlbN7Vog1uPHC7xQGU3VpC1
         +XYyImjyoVYUUCfe+KaEu7CbXMR8h6cEk8LAbTmooBFgbDKCpxY9qxE4IrpYTjArst9x
         G4bb1GzQkTVc3oU1A3xe3hkhencxWkFU65LVdXl68O2KlQwMqvFLq/mh/+N/uwFdZJXq
         ScLz8zXpccG/Jp4v0cPqshRApiU6iKneq29OPUnGp/nyDUGd1pB77Y6WqeLi1Kz4pb0W
         zOew==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1770675557; x=1771280357; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VggFDnvvtT1KJN/nuKTxye7oCcrAlUOoRXA6xSFetf8=;
        b=A8P2dDqrMxgWON+B+MtpPKpzHNMhcsmf2tzGPnNy9a7QJ+6hCn1srbfz/BoE/yfVW9
         9WnYxDw7uuRv4xFzESQG1aMviF4cilcaEXj06Ql3ImexcFeAm/63usmt0xz1X7XmaFa/
         d6DD9s1bVq1dG/CxZD76453XQovaQym6sJV4Wa2ZqybY15z5/sc9EDjmc7buwPz5LjIu
         +m07VUSjyDXqkKAdMHxAZwO5F62+zMX1BeMWbQgJJyl4wIS6qYLEQHOk5lybfbYIEYb+
         vuZGRsiYEBliWlq7usSmJ8IvnZdTK3UZIWxdbNKGEiDPoDXRIYtWSP9YZRlhNS8hNHPy
         Vaag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770675557; x=1771280357;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VggFDnvvtT1KJN/nuKTxye7oCcrAlUOoRXA6xSFetf8=;
        b=IxniKq6wj1qH1NVlw+qF3i/41ZoLipAYZeJaRaULPUwpMEvFrOgSDj+stqo6RQ4iS4
         GfyfZYxGJFpdkaLkESB81TV05omS/UYpx98AIJk6mPnE+yQBLvkOSQQn+ClMgi2uN+rV
         9TXeouShJW+ef7gBiU+bZwSNl+QFxOd0y1UfafzUWJnG+e/tDiuA3eygSqX9dX8iD2fC
         1cN3QMNAP+nLhMbkcqYw91crzTlVZzHJFxbitoj/d5ytZ4BgVRp3k1KZIOwx5xDokJqL
         I8DVZi2TF0sxZMrNC5RvoK3SSIeqPVadHVvYiIhFAdkC/9b2p0Nggzdy4jm9MGPgpTRg
         852Q==
X-Forwarded-Encrypted: i=1; AJvYcCXMkhjA2Tblym9MeYttf4/NVQlZVFcfGJoTA1yuqb7uFYMTdbyTyAmpyOoWZuUUtuPoMte2LjFDb744@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2kWNiva5x7+Rnbv2z+nV+pJvFlIAo0Ir9eZxRsqRhlrA6+Gft
	Iyeg+U/SfWqaGZNfy55pGpUFGAtW1iw2qFQOvNVJoQv+qlD1pDZRxr4bz6t/ScpcsxPgyZp12yD
	w5ApGH661iF5YAt0CvBXTa3Fyki08rHs=
X-Gm-Gg: AZuq6aIaaZ85mXED03iQfaHjVbOeu5T7utEIUv1maFZfhHnuUj0gleCLPxXQGVRFe2p
	0cNzHJTyjU+aOS+m8y8atS/DsrRPcv/4cBW4JvKi3oc1+TNPRLcKT+qvXP90X41gDNaCzc4v9A9
	JpxSEdOdXpHYmOmcpgiOPHPriljrtSdifCxwDY0uYLpH3b7mCxNiStWOQ09zOvtO/0/TD1d7XV6
	1OMN6AC6W95d2oSfK3+3n0HBFxNDacyGcrdHFNMnQinSRl4Qxl8FB/D0fJFZu9Zy92eROpKHuhv
	8Oq7f9xt7EbpVa62gjNemK/WpFLp
X-Received: by 2002:a17:903:2d1:b0:2a2:acc5:7a42 with SMTP id
 d9443c01a7336-2a95191c8e2mr124339365ad.48.1770675557411; Mon, 09 Feb 2026
 14:19:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260205-a9-baisc-dts-v1-0-1212b46f95a7@amlogic.com> <20260205-a9-baisc-dts-v1-3-1212b46f95a7@amlogic.com>
In-Reply-To: <20260205-a9-baisc-dts-v1-3-1212b46f95a7@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 9 Feb 2026 23:19:06 +0100
X-Gm-Features: AZwV_Qg9LUz_u7q2Di_xKsLO42NKK9yJOVult9PsUi5OKRe5xJqGAGGc88gzm-A
Message-ID: <CAFBinCDmOG74HMTo7AtYPUhWCJu3_e0XjE=CKuDWOdwfq21ygA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: add support for A9 based Amlogic BY401
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
	TAGGED_FROM(0.00)[bounces-264152-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[googlemail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,googlemail.com:dkim]
X-Rspamd-Queue-Id: C6C66115068
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 7:04=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
[...]
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-a9-a311y3-by401.dts b/ar=
ch/arm64/boot/dts/amlogic/amlogic-a9-a311y3-by401.dts
> new file mode 100644
> index 000000000000..ad35a3292d49
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-a9-a311y3-by401.dts
> @@ -0,0 +1,41 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2026 Amlogic, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "amlogic-a9.dtsi"
> +/ {
> +       model =3D "Amlogic A311DY3 BY401 Development Board";
> +       compatible =3D "amlogic,by401", "amlogic,a9";
> +       interrupt-parent =3D <&gic>;
Shouldn't this go into amlogic-a9.dtsi (I can't see why different
boards may choose a different default interrupt-parent)?

