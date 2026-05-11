Return-Path: <devicetree+bounces-295783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDkSFlM4AmrmpAEAu9opvQ
	(envelope-from <devicetree+bounces-295783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:13:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B16515918
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:13:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 994693040010
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01AA37F8AF;
	Mon, 11 May 2026 20:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5F/JnQH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD3537F739
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 20:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778530384; cv=none; b=ajSNHS3sWKypqnlHZdjRjr926ciY6HqWLCIuzJPsXYOnOK2/7mUEQRn/r/tzVGFDceMbNkz9Z7/8JiRu9EHCWn/huKkGELyC5xtlGam7tJxTIEmtJGSDKUXFhh21EzOXCRdi2+vtB6xKWvp8fB71Fkqymv+eDh5EAR0gKOzRJ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778530384; c=relaxed/simple;
	bh=Jye6GvFlEjzThLUvmLkambJ/dmm3iU6zf37i3X16hC4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YhoL7UFVrVfeP+oJtbMPOtwVmq1CId5gzs1GUAvpdqSukWEmCISz963zYWprSPj8ZclmLcmhNng5h5TZmDUp2BfYf0ecQmA3vO9K7vTW2ChIGb9XcY5ATvptZYd2eK4iPo/5xPis5h3qTXJ84f34gXOgOH03TEb4iy3S+Z/ZwE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5F/JnQH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D5D3C2BCFB
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 20:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778530384;
	bh=Jye6GvFlEjzThLUvmLkambJ/dmm3iU6zf37i3X16hC4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=f5F/JnQHSKYkh1ZDoeWc0yFbkA3ZlVxuZe1RZYlXXFqzidoA5HlbOcLTxiK3W7N6C
	 SBpq8Ql8L5DzkKbCGSTqXYwN8cjP5vHAiAXIJaLDObBnWKjXhUHL1Yeub6z2c9Tgis
	 gYLFbF/JWJP2ymiBrR+9eq5aiYO0n83rc5H7/pzeDmvC9vCSypoMZJW7J7/5aKguCx
	 pARHjI2mFhaxJbYy/hUzCjyYMB2ulCHjCDd131nTytK4p/ov3GJ3tQClaeGEgqMhhE
	 Xv1CYUsTHPdRPMzGpwuFW5d7ToUpMGLGnwpv+ch6F4r0t52PMdMs95TAZS0ys4WAq4
	 uIHvAQ1yaUUyw==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5a8dc2606a0so626390e87.2
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 13:13:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9N3jF2iEAbDCSF8776vtcjAYk8NZfoHpdHiSZPQdAcOGght3ouEELkcvL6ZZP71abgbz//2b4sfLst@vger.kernel.org
X-Gm-Message-State: AOJu0YxYabuuAcURtau3xZYfF6T0Et+KU+/hSoA3ykp9BYcrMoY8BoLb
	52mpVPafSvW7Vmu2SJGHUmt7CAAZhqhA81gbqpHy6OjJG/zIp798+92GmltspZ9h49Nf7Hpux/C
	H+HRvKMkhS4J0nXuO9H19SJxvhDsDwhQ=
X-Received: by 2002:a05:6512:3a88:b0:5a8:9aae:3c99 with SMTP id
 2adb3069b0e04-5a8b6e8f606mr4490300e87.16.1778530383250; Mon, 11 May 2026
 13:13:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260420213529.1645560-1-l.scorcia@gmail.com> <20260420213529.1645560-5-l.scorcia@gmail.com>
In-Reply-To: <20260420213529.1645560-5-l.scorcia@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 11 May 2026 22:12:51 +0200
X-Gmail-Original-Message-ID: <CAD++jLnypYKUmKjnPX811m5Gc0guUwYeN=cQuxpAT3_gS9JWWg@mail.gmail.com>
X-Gm-Features: AVHnY4LX3rah_STGf3_slNDMEwQfgJHe21tHW014S60VT0tshZIqHNAjHJXvWcE
Message-ID: <CAD++jLnypYKUmKjnPX811m5Gc0guUwYeN=cQuxpAT3_gS9JWWg@mail.gmail.com>
Subject: Re: [PATCH v5 4/9] dt-bindings: pinctrl: mediatek,mt65xx: Add MT6392 pinctrl
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sen Chu <sen.chu@mediatek.com>, 
	Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, 
	Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, Gary Bisson <bisson.gary@gmail.com>, 
	Val Packett <val@packett.cool>, Julien Massot <julien.massot@collabora.com>, 
	Fabien Parent <parent.f@gmail.com>, Akari Tsuyukusa <akkun11.open@gmail.com>, 
	Chen Zhong <chen.zhong@mediatek.com>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: C1B16515918
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,collabora.com,gmail.com,kernel.org,mediatek.com,packett.cool,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-295783-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Mon, Apr 20, 2026 at 11:37=E2=80=AFPM Luca Leonardo Scorcia
<l.scorcia@gmail.com> wrote:

> Add a compatible for the pinctrl device of the MT6392 PMIC, a variant of
> the already supported MT6397.
>
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

This patch 4/9 applied to the pinctrl tree.

Yours,
Linus Walleij

