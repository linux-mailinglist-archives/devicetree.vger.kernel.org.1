Return-Path: <devicetree+bounces-273771-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Aw+Hv61sGlvmQIAu9opvQ
	(envelope-from <devicetree+bounces-273771-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:23:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB4F259B9A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:23:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1C46D30C3A82
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E60E831E827;
	Wed, 11 Mar 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AjnXN0XB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A91631E821
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773188433; cv=pass; b=OyisNs4C4B5QS24wHOqUxVvMiYLD3ftZb6HMvb7SYa3Wzqrbv0ptxraIPK6Fbky9uig6Ofg+rdYhCiUMgl63bk59103QprQTzGERXdOM3uReufAmE9RPzZWcry5avkptHccGm+dNsAYVrP0A3VPHfiSFVKCqtuSLfzfq5P+1Vbc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773188433; c=relaxed/simple;
	bh=97egFoIdWstqSIgr4T/Fz2kyDcZ3Q3piKaoGnbbekVU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qhpXZFzYD7DJGfBuSWH8jMf60UGlTopgtLsYqpaQAhyS4CvN+ux35rDMi3rQUyebOnC4LIoizMTk6Pz0JA7ueLC8OFDF0ZVAsE++CyQmlcImc/XPf3WrLE2tbLAyIlaJraxyziuwlHPWyOIWqqC0QQ28VlKsgeTfhAKANXJAY1w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AjnXN0XB; arc=pass smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439a89b6fd0so10036997f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:20:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773188430; cv=none;
        d=google.com; s=arc-20240605;
        b=Z6omsrtFlQxvpYy+F2RlZepYyH9RiKyFZUGA+JJ1ZODrepuZRbsFkOFYXbnOaw5O9T
         3ZmkgX/F3/6z0bzeCWEUFeahF39ICte45RJ8tjAud6x6KJnh3onVtbBpWgn2QiGShVTA
         CDAAeHMqjYEWIUk72g+V6+mhUKaFi+5Mp6w99jZozv+Ft/9qKNpkLhO08Jz2tj8sr/Ap
         QyZ5cB7pPcKvs8kvbTT7WXzjZ6z81jagoxVlCulB1ZO1IPGqp6OfgjQJw+AfW6l+iLv7
         OSk+tBIDHhIYBYhymkkH+woWav9mF+h/N37QboXTSFbPkXmIK6yLgq2C8XWcsQ8VcObt
         aSAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JEWsH70LiQTCzWY9XNlcF1ykIavavEQbO1LmIg1XHbc=;
        fh=YCfEx9KaA/6+epRP7+FRmpeI+Ces6E50PqUQqRzJDdU=;
        b=juAr4AUdem5Dvpwc0lSSgU4KwAPAbKZxFHL43V4tbEs2jN/yAeLmkIfS71vhXiuNu8
         QRKQAOKf29lwvHfRNvZ3MKIKXxFLruPaJJR9EhUqL5YkZDlLgoGgTlz3ho3tY662EJzq
         yrXbcVKdL0s2P6QU07/z7BPoKRiql41VwNAW0g6fPcqZa9umcCuzxoNEJcy+nQmd61w+
         eS5i8X5iRnvIMEi+8ho4qykkjvV2MpVAUjwC6bZFlT3vg+F/U/z4Kn/1OHIBmQuKSDjp
         WvpaKqewfKNdxWOFQ/qN8kHhGyuiWm/3P1UXc/fVCh1d7u/aLKlfG6AXmOUvom8PmrcS
         CzBg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773188430; x=1773793230; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JEWsH70LiQTCzWY9XNlcF1ykIavavEQbO1LmIg1XHbc=;
        b=AjnXN0XBZiVDkxeGrdHCfoa+elMyhUlrYj97Jjn6yIauCXNR9ZLTS56vZWCyBP3NNG
         bXA0Vb47eo9VCfeLsheVJXAoS1MkiOvLKCmNewIJ4XWEVeDwdOCxHg6hUpHBY7Pcumu7
         LBUI6zCRA26Z6dXoRjSSMMk+nnFONHU0pEVP5+lr+EACfu250V5fs3EuktUqKxoKNsO9
         b7Y2E1276VWcIdZgwOpC1pn6NH44YUsdT8QZIGg4e7eZthtwtHGz4nDrcL/AlJ2MPdVQ
         KWq8ZMruPtsvZu01upQ55Qlk/RlytFdY9HAI1uVTrDdpgNFxN21L21AdTtJNK59dI90Y
         xh8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773188430; x=1773793230;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JEWsH70LiQTCzWY9XNlcF1ykIavavEQbO1LmIg1XHbc=;
        b=A06NsyuedIw/6c8DVqF/ueK6u4D7pzJAoaBObnhRQJAKKJenbHt11aIn+9jNsurXe7
         2w3m9qLQ/ZHuE3B/cZh/EE8xsRLAREnLB4AnFtaaEP1nqGIYg6RlYBKoOQsQ1IeGjDCG
         CRzjeWGHE8vt9sVynbY/xEBP2iu3TLxxRdfxtRblaoQFfPOBVdJvHFw97E8eAmHjp3km
         0XiQcqbm7tfLkwkEtORfLSPt2ziP+tGZDql5eAlW19jFSZjshD/EPe4UeRjCEU4u51YN
         G+YMcG8nxVoYNi3eUipmeoUUd84cbnOUY7/wQRXDAFcptCXPFtDcV/eSiodGVnveAsIg
         niZg==
X-Forwarded-Encrypted: i=1; AJvYcCUOeIGRk+4mZaiYASjRHDWSZxsPGFfhioTznS2ZgtIzIt3vBBg6pCPa2EuragPLv1gpMQx37LmFBDTX@vger.kernel.org
X-Gm-Message-State: AOJu0YwJsrMxtuQ2aa33sJZh5u57wzmXk/OJnIHYCv0PIIyUpieJIVWA
	9WLobxgDr6ym1McXGuqrwkWgyEQ4jQ29+X/2JyCwGSqvKf6+jC6qn3PkmlrcbfH2TkM9wD3GIC8
	gd3IpOM4UUN+KGw2EPnD2emwjyA2z+yU=
X-Gm-Gg: ATEYQzwiPVfaoPxDt3dZ+364u1re3HmC/2gGh1ysEATp78wg6goIYpDVqsND0meuD7x
	Ovw1yQkuyM54hwlsLsrx9uRemODZVy7RI59VgAMOA4NeQsmVxzrOk7kjRD36jrVHWsX4k0TC02m
	i8vsjwscSLeTCJtZmoIHJI3grqQSJ5SO7wMaXuqE9RD3QO/sx7JA4Q1FE19hpAGrJYh2LflYUXI
	dH9JmRprjx4M/8M7CsDnfLXfMw8e/2wZaoAAyhPkb5POQgHJSWNn8Lnrd2wehOO2+6cA0D3gMwG
	TO5pmVbUhF5OoIuToy0NEm/QJW/Np5vrgWPCkWA=
X-Received: by 2002:a05:6000:26c9:b0:439:be4e:6e58 with SMTP id
 ffacd0b85a97d-439f821fe85mr1356532f8f.47.1773188430081; Tue, 10 Mar 2026
 17:20:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310031002.3921234-1-dennis@ausil.us> <20260310031002.3921234-4-dennis@ausil.us>
In-Reply-To: <20260310031002.3921234-4-dennis@ausil.us>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 10 Mar 2026 19:20:17 -0500
X-Gm-Features: AaiRm51PAI7L0-07ByzfYcAg2ZuI_NxhNytjlEljQJmd9vtbdXeFbAGFh3Mn-oU
Message-ID: <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Michael Riesch <michael.riesch@collabora.com>, 
	Mykola Kvach <xakep.amatop@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: EDB4F259B9A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273771-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,jmu.edu.cn,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[honyuenkwun@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

<snip>
> +
> +       vcc5v0_otg: regulator-vcc5v0-otg {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vcc5v0_otg_en>;
> +               regulator-always-on;
> +               regulator-boot-on;
regulator-always-on and regulator-boot-on does not seem right.

Why were these added? The vendor did not have them.
https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2b7b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts#L216-L226

Was this mistakenly taken from the regulator usb 20 which is powering
the onboard usb2.0 hub?
https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2b7b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts#L111-L119

> +               regulator-max-microvolt = <5000000>;
> +               regulator-min-microvolt = <5000000>;
> +               regulator-name = "vcc5v0_otg";
> +               vin-supply = <&vcc5v0_sys>;
> +       };

<snip>


Jimmy

