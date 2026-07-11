Return-Path: <devicetree+bounces-324782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0MN9MqsrUmpyMwMAu9opvQ
	(envelope-from <devicetree+bounces-324782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 13:40:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD73274165F
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 13:40:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=k5p8X0q7;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324782-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324782-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AEB1930060AB
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 11:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AC4353A61;
	Sat, 11 Jul 2026 11:40:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0626E3BB9EF
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 11:40:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783770022; cv=none; b=WDKh5fJmNZekPQv/SALPgPT5aOTmaVV7xeNImECJV+yXND1SsqUq0iQ54eZAPw7ZScv00TETfPAogEFHnLO4e4ptj4E957S5LB9KRPj6dnDH2IUd5r77R7ILbaYQY9DLuYbtADjB4I/tctw2Sl4EdFNf3AxnFwcJhmjzmgf1cqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783770022; c=relaxed/simple;
	bh=Fpes7pcL0dT5QgBd51qJa9xR8lBSeUN8H6ipD4qzk3U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DQtc9ktnm1xIw6zDlt+Bbqd698buldn7jq+9wunWuyepXbWMBN3dmydnzf5nHJVZJRtTFllVhlMAq3uJd3tQHpo2pAUigeTXxhBg/adrKu5HIKOuYkHEbGbTfDBUPxlsIteNRS4LPbPVWchkWh6x5gE7Ya6x/B+3Ftr/Kwpn978=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k5p8X0q7; arc=none smtp.client-ip=209.85.128.51
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-493ae59eca6so8386375e9.1
        for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 04:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783770019; x=1784374819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rvR4npbXyTtpSmH5FcrD0ZeaPU7ANDDEoSH1ljf/gl4=;
        b=k5p8X0q7GWSKpGJbEYM3gnGqpwSZVYnOciQw8WCKF8uDkGQ6YvyvoBj3/Mr3/AEUx/
         Xigq91MfGuXu1SLQXZSonNWiEPM8gVFgi0f0IGK29+eEnL20Iyf2qBwrEJ6p9447FqML
         F0R4ySxjb94Fi+0qv4StRuQO1mDjAIJ6rfcwx92TJEXS3oikces+B+wcx38bXXoq493s
         0/pMFtHRDPwKgJDIly/V5r897ilrUDDSoCrOyLoIpvTqV2GHoVN06XI7iqVGD0pl1vM3
         NnjtJvNOvZjFYsxKtBc2Np9MY5j+3kOj1hE19HeshXQ/58cbIB5TzxQa72vFgfBDKCuC
         RfVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783770019; x=1784374819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rvR4npbXyTtpSmH5FcrD0ZeaPU7ANDDEoSH1ljf/gl4=;
        b=bin0IK8FyIejZtUew+42ktgfQmrv3hO7L8ZasN+nCVOazGd7eFyYDNqh2h2flTqeVM
         pIzOacESdxtPa0cG4tkMv3AuIX8OitvRAM38BA9fcsUZ8NvjMZb3jQW8G/ljUBJ5VYud
         vQIAF5dgDulcsJAqR8/d3YETYCBGFyt0Tblu06IOTXMN75Fosnklm3gnGCyNrDET7uOb
         fKbOzbO1XRZjQo48qDVN2qc0fjdMDBKp4q9o+ct2TBQFUzeASPBj03JzOA3kcjZi0wV3
         FI41h4avj4r+sSHALVkqyuIOzN3GjGtIUQHKgR/XztBonmH1SYAZOVvXroAOSpqFzNFZ
         h1oQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq95K+AorxH1Rx6LIgqEOJX1MRqjfGV0lv+0HGoyrPuJqW92L7Vq8+VQChqb0R5jYK6eCRovvnfwF8H@vger.kernel.org
X-Gm-Message-State: AOJu0YyrKEdY01xOcLqXEA3kMUInzBiBie1zrl1UY0yjAL74WiaiGCU6
	Xw23hRQCfTBGBhcqQP8tQc0d2U/mrh7NoT3NPjk9i+/dQnUDJtM0sqj4
X-Gm-Gg: AfdE7ckWyqxi7kpsmiXU6w+oUiw0TH/KkY8m2HUGEuvCDBpMipQSadAuy8thYb0Iy2z
	YV8JZpMSHsZsTZ+gK4kwuv+ojH+8P+3L0sUlk+ctwpCBiJtxYYG9ic0qBMTg6TvjXCfMwCDZ4i8
	Wr5R5Pg9ucDUefh0fhMnihLsbbYqocrj9x1JPPSwJpPSJWZYQi0PZS7HaN1bMnce0krvTzLQwsX
	3fzZ9k/2T5v6aWp3wg8bHEI+zSYJwGl9v85wSSNXNxQv75iI/+ToUTFGAfQVJ8YhZwyEcWy+7RE
	UjU7KxlXW5FuL1mhk7vLthYJ4iJC9hAaHYveviJLH3FWFcljOMPpPv3UtEcBmaekhM4OkqzxXrl
	YmLa63rnAcY5Ln7YsovE3epcYzQ14NBdZaRlYwPj+4/Od3ySmChE5bbs2dPXUrr3LDnn9dCvcdD
	2GyEWWJ1G5o6vdB0kqpjT4E/NfONyD
X-Received: by 2002:a05:600c:4e48:b0:490:bbc4:76a6 with SMTP id 5b1f17b1804b1-493f881ddedmr24187235e9.21.1783770019401;
        Sat, 11 Jul 2026 04:40:19 -0700 (PDT)
Received: from unknown.tail46804.ts.net ([2a02:b027:11:e106:f973:a70:bd1e:4000])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493f49755f9sm120859915e9.8.2026.07.11.04.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 04:40:17 -0700 (PDT)
From: Gianluca Boiano <morf3089@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Gianluca Boiano <morf3089@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Shenghao Ding <shenghao-ding@ti.com>,
	Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] ASoC: codecs: add TAS2557 mono smart amplifier driver
Date: Sat, 11 Jul 2026 13:40:08 +0200
Message-ID: <20260711114009.73094-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <e1471661-cf25-4db4-9a77-48d726811a51@sirena.org.uk>
References: <e1471661-cf25-4db4-9a77-48d726811a51@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324782-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,ti.com,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:morf3089@gmail.com,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:shenghao-ding@ti.com,m:kevin-lu@ti.com,m:baojun.xu@ti.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD73274165F

> +	TAS2557_GPIO6_PIN_REG,            0x01,	/* GPIO6 = ASI2 WCLK input */
> +	TAS2557_GPIO8_PIN_REG,            0x02,	/* GPIO8 = ASI2 DIN */
> +	TAS2557_GPIO5_PIN_REG,            0x01,	/* GPIO5 = ASI2 BCLK input */
>
> This looks suspicously board specific, it should probably come from
> device tree.

It's board specific, and it's not even a TI reference sequence -
checked their Android driver, it never touches ASI2/GPIO5-8 at all,
only ASI1/GPIO1-2. All four boards on this branch happen to share the
same wiring, which is how it ended up hardcoded. Will add DT
properties for the ASI2 pin assignment in a follow-up, defaulting to
today's values.

> +	TAS2557_ASI2_DAC_FORMAT_REG,      0x18,	/* ASI2: 32-bit I2S */
>
> This should be set_dai_fmt().

Fixed in v2: the format is cached in set_dai_fmt() and reapplied in
tas2557_enable() after the reset, so the startup_data write no longer
wins.

> +	TAS2557_ASI2_BDIV_CLK_SEL_REG,   0x01,
> +	TAS2557_ASI2_BDIV_CLK_RATIO_REG, 0x01,
> +	TAS2557_ASI2_BDIV_CLK_RATIO_REG, 0x81,	/* power up BDIV */
> +	TAS2557_ASI2_WDIV_CLK_RATIO_REG, 0x40,
> +	TAS2557_ASI2_WDIV_CLK_RATIO_REG, 0xc0,	/* power up WDIV */
>
> Can't these be worked out dynamically?

No, not from anything the driver has. TI's own driver never writes
these two registers on any board, and unlike every other multi-bit
register in their header, there's no bitfield documentation for them.
GPIO5/6 are wired as ASI2 BCLK/WCLK inputs here, so the chip is a
clock slave on this interface; BDIV/WDIV sit next to the CLKOUT mux
registers in the map, which points to them being master-mode
clock-generation taps, not something a slave needs. Leaving them as
fixed constants.

> +	TAS2557_POWER_CTRL2_REG, 0xA3,		/* Class-D, Boost, IV-sense power up */
>
> tas2557_isense_put() also writes to this register, there's a
> disconnect with blind writing.

Fixed in v2: enable() now reasserts ISENSE/VSENSE from the cached
switch state right after startup_data, so the mixer controls and the
hardcoded 0xA3 don't fight anymore.

> Is there any overlap with other TI firmware parsers?

Checked tas2781-fmwlib.c. Same magic (0x35353532) but the formats
diverge immediately after: tas2557's header has DDC-name/description
fields tas2781's doesn't, tas2557 needs a PLL block loaded before
power-up which none of tas2781's parser variants have, and tas2781's
parser is built around its multi-amplifier device-index model that
tas2557 doesn't use. Not sharing code between them.

> +	if (!tas2557->fw || !tas2557->powered) {
> +		mutex_unlock(&tas2557->lock);
> +		return IRQ_HANDLED;
> +	}
>
> We definitely didn't handle an IRQ in this case - this will break
> sharing and debug features in the interrupt core.

Fixed in v2, returns IRQ_NONE there.

> +	tas2557_dev_write(tas2557, TAS2557_GPIO4_PIN_REG, 0x00);
>
> Is GPIO4 the only line that can be an interrupt source?

No, any GPIO can be assigned INT via its own PIN_REG. Same situation
as the ASI2 pins above - hardcoded because all four current boards
use GPIO4, rolling it into the same DT-properties follow-up.

Gianluca

