Return-Path: <devicetree+bounces-278340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIxHF3povWnL9gIAu9opvQ
	(envelope-from <devicetree+bounces-278340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:32:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B6B2DCB34
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:32:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E7BAD3052703
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C933C7DE0;
	Fri, 20 Mar 2026 15:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jQuHNc6k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A89138F957
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 15:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774020296; cv=none; b=LFHabVKnja6yA5JOP2FyimsG/udU6De1eF1MbDFiD7gRkLQmggoAkdFhCO8Aot5LrdsBLWe2p45e1Btax9FuLO3uhxpAW+xBqAr+Kh3H2nUaR3EcXdCNQno0paQU29EyPfxZuH6i47Z/3BzN28tX33IiSPNMhrOYmxtjsZjitac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774020296; c=relaxed/simple;
	bh=wvM1Mb8L3lXrPVGeB7qlgN2B9gXnD+an+/HNQrLfJLk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m+0Qx0pKlV1XHrE50+SIuqNSVZugvov/9m8/d3QQsnSTdSttlGC64vgw7x0k3HwObrZssP30kXpz+FMc3gvAmIZJ0BEX90MrSkbOkep7BVx6tst6V+nT3P2eWv/ptPL1aK3C7vcqfVhWlYcz9Veq/tzpeIBxD7OA/I57huaZz+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jQuHNc6k; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-56b890d1687so1671070e0c.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1774020294; x=1774625094; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLXcqIVzc+TE7/RYP3TxhjZkuh5oaQY94C3LjN7BMto=;
        b=jQuHNc6kdVYCTEtffpoRB/qr8bP14vYCXg6flg+oJhj61kJbqBtAJe1vxXODSHkLqU
         kYtiDgoLUkeFGq09fPKe0LYvZmiFmZ8eexd0UfCXnutA7/MZxmvdlj4EJrQcApmkKpOk
         6ECtllI30Npj3EY0tgW8KSns60WxCAsV8SFek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774020294; x=1774625094;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XLXcqIVzc+TE7/RYP3TxhjZkuh5oaQY94C3LjN7BMto=;
        b=VG9cQ40xEDVelDKcHWIMahCNpvxtdxk4RU3zAvTHvEjRVDCWrx7iritR9BvHot+AA3
         dD66BhyIhs0ojmWaazSZiq0gjGWFbpIw8lRK8tEwlzNyGsJsaCbPbP3AtLFQT98bSmHN
         snpW3Zc1uiZpO0YKqteng9L8uS6WSpGRSLRn3HsMFpW3J84oLleHUvtpLs5it/F4UxVO
         6Kk4/rAEAQnQAG2bwbJkAwcRnIWf8olnFxFtz2Ywo3wOKZ4AozwV2M0aZ3g7/QQgw/tU
         74DQ54/FhTWfv3Kyc4pu9pxvLcOKDtXyflNUuu8eCz0qr7iFOAYXvtG6m2eKp6F5iphe
         jfKw==
X-Forwarded-Encrypted: i=1; AJvYcCWdVqoNxtEJ10wFElnE+/ynnjBtBi77OZnbeWfTX93ZwGsvsV74bfxqBtQ/WrYjT8e5hUqhAjGwVDVe@vger.kernel.org
X-Gm-Message-State: AOJu0YwV1UIEoOD6OZYxHeA3lGotTz68AH0nuu/Pvbnoj0n6qNnNuA7+
	KkFr1SZXGYLXKnsyniFB4XUT98Vvrf8Y+aWSzcRqBTWi2L2cFJg8enbkvNRs4BHcls3drVIMeaQ
	bP+w=
X-Gm-Gg: ATEYQzwA3le9I/4YveQB4aoVnr+Ta/6U5K7UnLKSDB/HaT1anxtmuWUWSQZ6bAZDoM8
	9HhCV4UGc0B4qC4IY+xmd5AdFzHIe2Sn+WsKRd+GAzJUvkMyJkqYgvE+txVcXhtObefRsxcQPxG
	UXW/eJ+f10CzNTRHMYPLONua1J0VKR1tv3qCpmJDfbRFUvFFKwWXdlyTFpO412pGvxUGwNtke+C
	bXARrxyp/dRJ6msL8MUliajO/LDQuSaa5doH+urL+1Ab44enW/1KjOQW/HzPSAAkZ05yqNTAAIT
	CAgXN/XLA3CVe8pQQGZHCtEF4PtOT5VgdPybwKj0/oRKjTC5wErUBXmngDOE864FXWe3mRpi++n
	0YkuNaQGPi//4rQxaglGZ6ZW8Ch30Gv4NTANuHCuFcuMZ3ssGWjUhBmvGhkR4DYr0QwVmjgCpbv
	EjsUyDeEmfC8EpqDpdiVSfeX9eiDK10/j8D37yfq8wO9fh4S5oKFwH+rckfv63WlBv9leM+njf
X-Received: by 2002:a05:6122:4f93:b0:56c:1508:ed68 with SMTP id 71dfb90a1353d-56cde496dafmr1705629e0c.10.1774020293719;
        Fri, 20 Mar 2026 08:24:53 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56cddcb1179sm1677920e0c.14.2026.03.20.08.24.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 08:24:53 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56ce1384618so470384e0c.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:24:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWnKhn7E1K+2nunyYr8s/BYjd/qd9Teml5EUIk34NmXofhiiGrFguBqybbbCJYuwU35e82s5F7KfLR0@vger.kernel.org
X-Received: by 2002:a05:6102:2927:b0:5ef:a8da:8b26 with SMTP id
 ada2fe7eead31-602aed346fbmr1801022137.27.1774020292428; Fri, 20 Mar 2026
 08:24:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260320084351.2461060-1-wenst@chromium.org> <20260320084351.2461060-5-wenst@chromium.org>
In-Reply-To: <20260320084351.2461060-5-wenst@chromium.org>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 20 Mar 2026 23:24:16 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhBnhE2XJRaGfSOSutZGJXfHQujOd1rMbhOfAwGQa0ZrA@mail.gmail.com>
X-Gm-Features: AaiRm52mZwCR4AEeTV_75B0alA5w3n6BBFefcUDCvgduPyrlTgwEFUngOeWKn9E
Message-ID: <CAC=S1nhBnhE2XJRaGfSOSutZGJXfHQujOd1rMbhOfAwGQa0ZrA@mail.gmail.com>
Subject: Re: [PATCH 04/13] arm64: dts: mediatek: mt8192-asurada: Add MT6315
 PMIC supplies
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,lists.infradead.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TAGGED_FROM(0.00)[bounces-278340-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fshao@chromium.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.946];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C6B6B2DCB34
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 4:44=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> There are two MT6315 PMICs in the MT8192 Asurada design. One has two
> outputs ganged together and two outputs unused. The other has three
> outputs ganged together, and one left independent.
>
> Add supplies for all the used regulators. In the case of ganged outputs,
> add the supply for just the first output.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm6=
4/boot/dts/mediatek/mt8192-asurada.dtsi
> index d16634e9f342..318903b112a3 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> @@ -175,6 +175,17 @@ pp3300_wlan: regulator-3v3-wlan {
>                 gpio =3D <&pio 143 GPIO_ACTIVE_HIGH>;
>         };
>
> +       /* system wide switching 4.2V power rail */
> +       pp4200_g: regulator-4v2-g {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pp5000_a";

This should be pp4200_g.

Regards,
Fei

> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <4200000>;
> +               regulator-max-microvolt =3D <4200000>;
> +               vin-supply =3D <&ppvar_sys>;
> +       };
> +
>         /* system wide switching 5.0V power rail */
>         pp5000_a: regulator-5v0-a {
>                 compatible =3D "regulator-fixed";

