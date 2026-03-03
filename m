Return-Path: <devicetree+bounces-270381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCQ3E7alpmkTSQAAu9opvQ
	(envelope-from <devicetree+bounces-270381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:11:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3D81EBABE
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:11:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9B1A3056168
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497F9388E7C;
	Tue,  3 Mar 2026 09:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kEDM+6nt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D836375AC3
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772529061; cv=none; b=dOZWZPMOZSNaBWpXC9+bcaZ5Q1ES/+6zBUt22pYiz9L8mmzayASQD2BI8hwml4HLPdZgRFzA/Gm1w3lsWd/wW4SlxdMyiTQwIykvOU1syVkXRqSGXfdbUNXw4PV/DxAYinjoY7L3+NpTAkqAWbi0/BPFNL4+aQ/GFhKXnpeSAyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772529061; c=relaxed/simple;
	bh=w8Kx1qlt4D62VcByjefxrRx2gnqxk8TlOdvwp54Diog=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gM2MnfO3rHmg4CP6McwktNeCq330wtwnNSdHX+QFldg2eKV7vNHJxrdssv3NvxLih9lJdzJYbq7ismj227kUAgFvi5YKdwnr3s3IDo04UNmmZn6qQxdeb7NQp1Vmq6U4Vhsxic+xBTG45DPSrO1GwfOuhH74JlYa6ah0e5kSvLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kEDM+6nt; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-827307b12dfso2931216b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772529059; x=1773133859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ieqeIgWXtsJGqN9iYbh1K+fW5zi5u0kpmcIzoP8Jzk=;
        b=kEDM+6ntM9yXf82/Pl5V1bxXXUkGZskBg96YLCjFQJHINTh/T5iumYkLkzUgsnZyml
         aumbsRO+xRW9Wm3uMQAd07b54yfAsghyfNPRENQpDqCinVhpGUJqb+g3BsrZK40SWhoM
         qRwyOTUSzwpeT3lgrJT0p01xXXQzMLOslX/4vnzioPgHxB+4EIQEEo8AfKtvlNionTpB
         FmNV2WhKhSUdckbkYp4+lIyaE9vYYfn98Gwyp4siijvqjpVaEUCwPMHgATIBz/K8vUA+
         k3QVJUh71S9PjnPfZ+My8fkZQRJFSXoXHsjjsRgzgVsnwicUZNgI/yWNIWaTs6r3KAFv
         HiPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772529059; x=1773133859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5ieqeIgWXtsJGqN9iYbh1K+fW5zi5u0kpmcIzoP8Jzk=;
        b=RHDpaWbnOnYxhz0/aR+VSjpOIqzuiqog7HdCxGbNT70YxT9sjcvKVKI0WdxA1Qvq6p
         dRRvxjKWxKe3TqQZRIcQwpPxiugT3SD9Uh6PJaQWHYLva7lo/5y3kpDk2sjRxF0UY7AZ
         xEdAeD87ru++DpfvuwUU9orHRca8wbs75ZFjKDa00UO9ZezD4C9ZhS5xWGCplhg4A8Gw
         0dYwRu7jiZdvnp6LgIUfeeMUhpqg1aK1FdX3RVDnXZLuCmeoQ9+Ho/+L/t9oXypAVpi+
         tUmeYboQFZHcB+AJSN7dZljUoFUAaBiHbNWpOA2aIM1MNLZg24j0ZIL/OBlKeWm5ZmuX
         sOww==
X-Forwarded-Encrypted: i=1; AJvYcCX92ABuI0dDv/gXXMXgA6CijhScRcBME34sv25xBLfE6pgpz4idK6UAmh/KJO9ZtWyvp6FD/Uf13MXS@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx+v7YjQZJDPs9vqbIX7PQU/rl1RTtxVc0NXIq/bIa+ua+jK7T
	r66RVrRGuBcu1aYrFfvSJA+4PsIveH+pEo3ChrXev8AcTXIF4HMyZCa4
X-Gm-Gg: ATEYQzw/wOe7xtfMfmGUAYeKd45xnNHQdk2+W8fNwI76hMEXxiUsRCkKvzm+G20lLRI
	s+k5gq/kVWpLsAL1nAjE63VA0i5wp2TBdeavdI7Gi3eI1nDXN8RDry8sfytqcbcebFi/OiTL4UP
	ClDnrbNHE5ttaA/p3exvX20sYZ6xjImYaM7fqcmDRFhAkxnELJhRbB41lJz7o/niOtXchLoOuhC
	S5Ld0+1/MzV2vsNSNetrAnS2S6iUZddfigLsEo43YVRJu7fpalt7e+ZzGp9+unaDD1+l/+kHYyI
	lK8TDszRcuBz9chdwC0gB866A3bbTUhlr4epv1P911yCLHUwrJ24S0E9coazG60elJCHrb51uF7
	t2M8fX+YIcsdzOxHva9fexo+pmSvYfJ1ru2QnsQU3JDWGEFkTfSP5l+GN1BO9/HmQqnQPZK6500
	/L4KEE/12W/E9vNSmwLgjBsxlRKT5IObp0mVIKQwYwMf0QCHWWAWZg21h3kML38BjJXcX61EKG2
	RAbow9gWLJCjsWziIHD3+4HWKVON3Suoe+/OzPh8hKhf2MHGV/p1TElih4Lbb6WoURqMN4S6gHx
	HB4=
X-Received: by 2002:a05:6a00:1ad4:b0:825:2927:3aa6 with SMTP id d2e1a72fcca58-8295d82a9abmr1551612b3a.14.1772529059400;
        Tue, 03 Mar 2026 01:10:59 -0800 (PST)
Received: from setsuna.localnet ([2403:581e:d87e:0:fc2d:ed31:e80e:412d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739db4955sm16000114b3a.29.2026.03.03.01.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 01:10:59 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@nxp.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>,
 Baojun Xu <baojun.xu@ti.com>, Frank Li <Frank.Li@nxp.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 asahi@lists.linux.dev
Subject:
 Re: [PATCH v3 5/7] ASoC: soc-dai: add common operation to set TDM idle mode
Date: Tue, 03 Mar 2026 19:10:49 +1000
Message-ID: <4716405.LvFx2qVVIh@setsuna>
In-Reply-To: <877brtacgp.wl-kuninori.morimoto.gx@renesas.com>
References:
 <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
 <20260301-tdm-idle-slots-v3-5-c6ac5351489a@gmail.com>
 <877brtacgp.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: BA3D81EBABE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270381-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com,perex.cz,suse.com,ti.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Kuniori,

On Tuesday, 3 March 2026 12:11:50=E2=80=AFpm Australian Eastern Standard Ti=
me Kuninori=20
Morimoto wrote:
> > +int snd_soc_dai_set_tdm_idle(struct snd_soc_dai *dai,
> > +			     unsigned int tx_mask, unsigned int rx_mask,
> > +			     int tx_mode, int rx_mode);
>=20
> Do we need "rx_mode" ?
> Only "tx_mode" is enough if my understanding was correct.

=46or our (Asahi) purposes yes, we only require TX. However, TAS2770 also
has a bus keeper on SDIN, and I suspect other hardware may too. Rather than
break the API later on should the need to configure this arise,
I decided to add the capability now. I am happy to get rid of it if
we think it is superfluous at this time though.

> This patch-set adds new snd_soc_dai_set_tdm_idle(), but no one is calling
> it. Who use it ??

Currently no one in tree consumes this API, and it is likely that no one wi=
ll
until we submit our platform driver. See the linked resources in the cover
letter for more details.

In the interests of transparency, I don't expect to have the
platform driver ready for submission any time soon; it is a bit of a mess
and given that I did not write most of it I still need to wrap my head
around why certain decisions were made during its design. However, we
are 100% committed to getting it merged at some point.

If you would prefer I can resubmit this series along with the driver
once it is ready, so that there is an example consumer for the API.

Regards,

James Calligeros



