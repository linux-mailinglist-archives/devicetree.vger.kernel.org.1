Return-Path: <devicetree+bounces-322669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Eu07KGYdTmr/DQIAu9opvQ
	(envelope-from <devicetree+bounces-322669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:50:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BBA723E2E
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:50:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OMkURhD0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322669-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322669-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A36D6300DDD6
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 09:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 420F03264FC;
	Wed,  8 Jul 2026 09:50:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA866292B54
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 09:50:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783504227; cv=none; b=KilwQRFlLcSnW86L8AfQEniEEQuRPd8qDypUtm6u9bc4RR7LXKSdISoSj0VmK7CjOik/mToeNGkPkVwfxWW0bGIsxEQyWt3v1l0A6hUDNOUudjG+Pf3ISqq+NfWfrspJ+peB0rv/3e1q9Gj4+jtKaz+AxjD3JWtTmuSATXQf+y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783504227; c=relaxed/simple;
	bh=TpdSoNerB30F9aRs9bvfPBouB3bZKvq2EEHU2LfzN4A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cJ7oz0RSaIiDDpqYWkZNg/gxMLjs2QWk4QL/jOF4gCKjyux/DBDrj31/flJ0DkWxg8hPV8pD6kGrTkq0SJ/m217okomm7GtpdxXd89g/HrLXwcS9DaHLe9L17AlNahCVolxkO4jtwRRBVhywdUJuGS844zADIpUbSskAZAhiJ+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMkURhD0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53A781F000E9;
	Wed,  8 Jul 2026 09:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783504225;
	bh=EzgJBy5IXQd4k8taZFy5NeONzV05LFVWNFOOuh1bgec=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OMkURhD0Lf6Bs/G9GTgBjZBWjgHIZl4vn022D2F9FmHGlst63V5eL9s1sdhapL0+Q
	 ciofPYJG+cj0Lf0jZy4564XBf45FU+cF3TW9mR4M1Iqi4l9M0ImtM0rRtCWLW3pMWt
	 cQhh2eZs+wN7Bcn0D2MHBxYqIpgpWG02qXpd9O8s4XROm2UAHTKTWQsyTnozmywPrl
	 IvAgSWG4fQsh2AX0UDhhe00YCtodHcavsMMZnG8SVi0pDaU6Hc6+m24o5MnzaYisU2
	 YggJEba287QlwbQbyluxjpYTDnj1nP7zNsea6kqYUqmG/gXFZLXV53of/atd8NTzSu
	 lq/5RrmhhTVqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/2] ASoC: codecs: nau8360: Add support for NAU83G60
 amplifier
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neo Chang" <YLCHANG2@nuvoton.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708093506.895481-3-YLCHANG2@nuvoton.com>
References: <20260708093506.895481-1-YLCHANG2@nuvoton.com>
 <20260708093506.895481-3-YLCHANG2@nuvoton.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 09:50:24 +0000
Message-Id: <20260708095025.53A781F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322669-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:YLCHANG2@nuvoton.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,nuvoton.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D9BBA723E2E

Thank you for your contribution! Sashiko AI review found 10 potential issue=
(s) to consider:
- [High] Unsynchronized asynchronous firmware loading during repeated suspe=
nd/resume cycles or component unbinding leads to a Use-After-Free of the de=
vice struct.
- [High] TDM TX channels are incorrectly enabled using function indices ins=
tead of slot indices, breaking TDM routing.
- [High] `nau8360_read_data_payload()` reads an extra fragment, consuming t=
he trailing fragment and causing protocol desynchronization.
- [High] Failure to check the return value of `regmap_read` leads to the us=
e of uninitialized stack variables.
- [High] 32-bit payload writes to DSP registers are silently rejected by th=
e regmap core because the driver configures `val_bits =3D 16`.
- [High] The custom `nau8360_reg_read` function uses a single 6-byte `i2c_r=
ead_buf` for both the TX and RX phases of an I2C transfer, causing an unsaf=
e DMA cacheline sharing violation.
- [Medium] Missing bounds check on TDM slot indices read from Device Tree l=
eads to undefined behavior via out-of-bounds shift.
- [Medium] `nau8360_set_tdm_slot` lacks mutex protection on the fast path, =
causing race conditions in concurrent TDM configurations.
- [Medium] TOCTOU race in `nau8360_dac_mux_put_enum` allows changing the DA=
C path during active playback.
- [Low] Passing `int *` to `device_property_read_u32_array` causes an incom=
patible pointer type warning.
--

--- Patch [2]: [PATCH v6 2/2] ASoC: codecs: nau8360: Add support for NAU83G=
60 amplifier ---
commit 5916928bdb6ee80342d7a909cc9a889626d92df0
Author: Neo Chang <YLCHANG2@nuvoton.com>

ASoC: codecs: nau8360: Add support for NAU83G60 amplifier

This commit adds support for the Nuvoton NAU83G60 audio codec. It features a
stereo 30W+30W smart amplifier with an integrated low-latency Advanced Audio
DSP.

> diff --git a/sound/soc/codecs/nau8360-dsp.c b/sound/soc/codecs/nau8360-ds=
p.c
> --- a/sound/soc/codecs/nau8360-dsp.c
> +++ b/sound/soc/codecs/nau8360-dsp.c

[ ... ]

> @@ -198,6 +198,8 @@ static int nau8360_message_to_dsp(struct snd_soc_comp=
onent *cp,
>  		return ret;
> =20
>  	/* sending preamble fragment */
> +	payload =3D nau8360_pack_preamble(cmd_info->cmd_id, frag_len);
> +	snd_soc_component_write(cp, dsp_addr, payload);

[Severity: High]
The regmap configuration sets val_bits =3D 16, which caps the maximum allow=
ed
write value to 0xFFFF. In nau8360_message_to_dsp(), 32-bit payloads are
written without checking the return value. Will the regmap framework silent=
ly
reject these 32-bit writes, preventing any DSP communication?

[ ... ]

> @@ -308,6 +308,18 @@ static int nau8360_read_data_payload(struct snd_soc_=
component *cp,
>  		if (*data_count >=3D NAU8360_DSP_DATA_BYTE) {
>  			*data_buf++ =3D payload;
>  			*data_count -=3D NAU8360_DSP_DATA_BYTE;
> +		} else if (*data_count > 0) {
> +			for (j =3D 0; j < *data_count; j++)
> +				((u8 *)data_buf)[j] =3D (payload >> (j * 8)) & 0xff;
> +
> +			*data_count =3D 0;
> +			break;
> +		}
> +	}

[Severity: High]
The loop executes frag_len - 1 times. When msg_param is true and data_size =
is
fully consumed, *data_count becomes 0 via the *data_count -=3D
NAU8360_DSP_DATA_BYTE path, but the loop does not break. Will this execute
the remaining iterations and mistakenly consume the trailing fragment,
causing a protocol error when nau8360_validate_trailing() subsequently
attempts to read it?

[ ... ]

> @@ -628,6 +628,15 @@ static int nau8360_dsp_chan_kcs_setup(struct snd_soc=
_component *cp,
> =20
>  	reinit_completion(&nau8360->fw_done[core_id]);
> =20
> +	ret =3D request_firmware_nowait(THIS_MODULE, true,
> +		fw_name, dev, GFP_KERNEL, ctx, nau8360_dsp_fw_cb);

[Severity: High]
The function request_firmware_nowait() executes asynchronously and lacks a
component remove callback to cancel it. In nau8360_i2c_remove(), we wait for
the completion only once per core. If multiple callbacks were queued during
repeated suspend and resume cycles, could the later callbacks execute after
devres frees the device context, causing a use-after-free on the nau8360
struct?

> diff --git a/sound/soc/codecs/nau8360.c b/sound/soc/codecs/nau8360.c
> --- a/sound/soc/codecs/nau8360.c
> +++ b/sound/soc/codecs/nau8360.c

[ ... ]

> @@ -321,6 +321,11 @@ static int nau8360_get_tdm_chan_len(struct nau8360 *=
nau8360)
>  {
>  	int val;
> =20
> +	regmap_read(nau8360->regmap, NAU8360_R0C_I2S_PCM_CTRL2, &val);
> +	val =3D (val & NAU8360_TDM_CLEN_MASK) >> NAU8360_TDM_CLEN_SFT;

[Severity: High]
The return value of regmap_read() is not checked before val is used. If the
I2C transfer fails, could this result in operating on uninitialized stack
memory and configuring corrupted channel lengths?

[ ... ]

> @@ -557,6 +557,17 @@ static int nau8360_validate_tdm_slots(struct device =
*dev, unsigned int mask,
>  			continue;
>  		}
> =20
> +		if (!(mask & BIT(func_slot))) {
> +			dev_warn(dev, "%s %s mapped to slot %d, but disabled by mask!",
> +				dir, func_names[i], func_slot);
> +			continue;
> +		}
> +
> +		if (*slot_used & BIT(func_slot)) {
> +			dev_err(dev, "%s %s slot %d collision!",
> +				dir, func_names[i], func_slot);
> +			return -EINVAL;
> +		}

[Severity: Medium]
The func_slot values are read from the device tree and directly passed to t=
he
BIT(func_slot) macro. If a device tree specifies a slot index of 32 or
greater, does this lead to an out-of-bounds shift and undefined behavior?

[ ... ]

> @@ -587,6 +587,14 @@ static void nau8360_enable_tdm_channels(struct snd_s=
oc_component *cp,
>  	int i;
>  	unsigned int val =3D 0;
> =20
> +	for (i =3D 0; i < NAU8360_TDM_TXN; i++)
> +		nau8360_set_tdm_tx_func(cp, i, tx_slot_used & BIT(i));

[Severity: High]
The tx_slot_used variable represents a bitmask of active slot IDs. Here, the
loop iterates over the function index i. Is it intentional to perform a
bitwise AND against the function index instead of the slot ID? This appears
to enable a function only if its assigned slot ID happens to match its
function ID.

[ ... ]

> @@ -614,6 +614,10 @@ static int nau8360_set_tdm_slot(struct snd_soc_dai *=
dai, unsigned int tx_mask,
>  	unsigned int tx_slot_used =3D 0, rx_slot_used =3D 0;
>  	int ret =3D 0;
> =20
> +	if (!slots || !slot_width) {
> +		nau8360_enable_tdm_channels(cp, 0, 0);
> +		return 0;
> +	}

[Severity: Medium]
The fast path for empty slots or slot_width bypasses the internal lock. If a
concurrent thread configures TDM from another audio stream, could this
lockless path interleave hardware updates and corrupt the shared hardware
state?

[ ... ]

> @@ -865,6 +865,11 @@ static int nau8360_dac_mux_put_enum(struct snd_kcont=
rol *kcontrol,
>  	unsigned int *item =3D ucontrol->value.enumerated.item;
>  	int ret =3D 0;
> =20
> +	if (snd_soc_dapm_get_bias_level(dapm) > SND_SOC_BIAS_STANDBY) {
> +		dev_warn(nau8360->dev, "changing path is not allowed during playback");
> +		return ret;
> +	}
> +
> +	ret =3D snd_soc_dapm_put_enum_double(kcontrol, ucontrol);

[Severity: Medium]
The snd_soc_dapm_get_bias_level() check is performed before calling
snd_soc_dapm_put_enum_double(), which acquires the DAPM mutex. Could a
concurrent playback stream acquire the lock and start playback in between
these calls, resulting in the hardware path being changed during active
playback?

[ ... ]

> @@ -1659,6 +1659,10 @@ static int nau8360_read_device_properties(struct n=
au8360 *nau8360)
>  	const char *firmware_names[NAU8360_DSP_FW_NUM];
>  	int i, ret;
> =20
> +	ret =3D device_property_read_u32_array(dev, "nuvoton,dsp-tx-slot-mappin=
g",
> +		nau8360->tdm_tx_func_slot, NAU8360_TDM_TXN);

[Severity: Low]
The arrays nau8360->tdm_tx_func_slot and tdm_rx_func_slot are declared as
arrays of int. Does passing them to device_property_read_u32_array(), which
expects a u32 pointer, cause a compiler warning about incompatible pointer
types?

[ ... ]

> @@ -1987,6 +1987,14 @@ static int nau8360_reg_read(void *context, unsigne=
d int reg, unsigned int *value
>  	struct i2c_msg xfer[2];
>  	int ret;
> =20
> +	nau8360->i2c_read_buf[0] =3D (reg >> 8) & 0xff;
> +	nau8360->i2c_read_buf[1] =3D reg & 0xff;
> +	xfer[0].addr =3D client->addr;
> +	xfer[0].len =3D 2;
> +	xfer[0].buf =3D nau8360->i2c_read_buf;
> +	xfer[0].flags =3D 0;
> +
> +	xfer[1].addr =3D client->addr;
> +	xfer[1].len =3D (NAU8360_IS_DSP_REG(reg)) ? 4 : 2;
> +	xfer[1].buf =3D nau8360->i2c_read_buf + 2;
> +	xfer[1].flags =3D I2C_M_RD;
> +
> +	ret =3D i2c_transfer(client->adapter, xfer, ARRAY_SIZE(xfer));

[Severity: High]
The buffer i2c_read_buf is used for both the transmit and receive phases of
the I2C transfer within the same i2c_transfer() call. Since the buffer is
only 6 bytes, both point into the exact same cache line. On architectures
with non-coherent DMA, could concurrent cache invalidations for the receive
buffer destroy the transmit data?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708093506.8954=
81-1-YLCHANG2@nuvoton.com?part=3D2

