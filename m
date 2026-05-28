Return-Path: <devicetree+bounces-303859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEHlNaJJGGpoiggAu9opvQ
	(envelope-from <devicetree+bounces-303859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:56:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 751A75F32F2
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A00F032EB28E
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 13:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03471277C81;
	Thu, 28 May 2026 13:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8YcOipu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F75A246774;
	Thu, 28 May 2026 13:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779976143; cv=none; b=c/AzXU2f8UeTC91waBE5j2l/7bQfFO6McQijHdTMlylV0YKrNrFOVQF7JCnV9C7F5S7a66+yrkbHEqI/vrA5mNqxnetTWF/zCoKdvWROBEM90NLPaiBWUC53H62x4cye6ZjTGPAmqarePhfXug1hDidCKw6JjOsOFHJ1a7TnS1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779976143; c=relaxed/simple;
	bh=nVNozDGu+Ic7UXeRJGBNG+sC8TNpp5s6fCRnuM0XBfM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lNzUNLWPf2I67scXroOqoJeR1LP4a8D851PThiOFY2xkUHO/f7SwcV1a8IIBNKR5lbSG9hWbOCLubpjgksDOWm9Ba8t9e6wxBaZDdpdrXh+NdE/w0VoHSSsu+cINX4GHQmGe5c2tFjfSSGlfDJuazWQzEKJV0kwoTGO3XM4R8Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8YcOipu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 596181F000E9;
	Thu, 28 May 2026 13:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779976142;
	bh=TQTeLG7rjvOKaMyonlPT84liZ0ukm0y4g11eMMIItMg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=A8YcOipun0RLiGzoRV29pgQHbWe6LjwBwN3YTH0RdPZNgMnS++dVY9DhrtHNIreLM
	 v37UKRfhNqqZn/4tEf8sTrjDwpQsXpnmm1UYYwOh4qSlS10EUazF7VM0U6ukObscZK
	 fibTiizMH6XIkl27eFQ7ZikGxNznnZ9CLVBNUYXMXdJbws2GiFZDrmPQNrPvL61Kvl
	 tYgm3F6V/QAXyNdTb2f/L97PIs8IKS18u0Vb69XXcEPVrqwlCBWGwbn4MwvhnYhd4O
	 8J8V9XE//t2mTiYOHCXhsfmfSIhC3yU3WxXEhZPyPWmJXE0BfuzM7G/MZ8NB7tYdLA
	 RVb/S4SeUL4qA==
Date: Thu, 28 May 2026 14:48:53 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jinseob Kim <kimjinseob88@gmail.com>
Cc: linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v2 3/7] iio: osf: add protocol v0 decoding
Message-ID: <20260528144853.354a71e7@jic23-huawei>
In-Reply-To: <20260524085312.15369-4-kimjinseob88@gmail.com>
References: <20260524085312.15369-1-kimjinseob88@gmail.com>
	<20260524085312.15369-4-kimjinseob88@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303859-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 751A75F32F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 24 May 2026 17:53:08 +0900
Jinseob Kim <kimjinseob88@gmail.com> wrote:

> Add OSF0 frame and payload decoders for device-to-host messages.

https://sashiko.dev/#/patchset/20260524085312.15369-1-kimjinseob88%40gmail.com
Has some perhaps useful feedback. Please make sure to either exclude
them as false positives or address for next version.

Quite a bit of the feedback in here is about which checks are actually
useful. Normal kernel practice is assume we didn't shoot outselves in the
foot but hardware and userspace may have done. So we defend only against
things in their control.

Jonathan

> 
> Signed-off-by: Jinseob Kim <kimjinseob88@gmail.com>
> ---
>  drivers/iio/opensensorfusion/osf_protocol.c | 220 ++++++++++++++++++++
>  drivers/iio/opensensorfusion/osf_protocol.h | 100 +++++++++
>  2 files changed, 320 insertions(+)
>  create mode 100644 drivers/iio/opensensorfusion/osf_protocol.c
>  create mode 100644 drivers/iio/opensensorfusion/osf_protocol.h
> 
> diff --git a/drivers/iio/opensensorfusion/osf_protocol.c b/drivers/iio/opensensorfusion/osf_protocol.c
> new file mode 100644
> index 000000000..ac3c37ae2
> --- /dev/null
> +++ b/drivers/iio/opensensorfusion/osf_protocol.c
> @@ -0,0 +1,220 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/crc32.h>
> +#include <linux/errno.h>
> +#include <linux/bits.h>
> +#include <linux/types.h>
> +#include <linux/unaligned.h>
> +
> +#include "osf_protocol.h"
> +
> +#define OSF_CRC32_INIT		GENMASK(31, 0)
> +#define OSF_CRC32_XOROUT	GENMASK(31, 0)
> +
> +static bool osf_sensor_type_valid(u16 sensor_type)
> +{
> +	return sensor_type >= OSF_SENSOR_ACCELEROMETER &&
> +	       sensor_type <= OSF_SENSOR_PROXIMITY;

ah. I talk about sanity checking this below for purposes of ensuring
we can use the ennum type.  Looks like you have it all done already :)

> +}
> +
> +static u32 osf_crc32_ieee(const u8 *buf, size_t len)
> +{
> +	return crc32_le(OSF_CRC32_INIT, buf, len) ^ OSF_CRC32_XOROUT;
> +}
> +
> +int osf_protocol_decode_frame(const u8 *buf, size_t len,
> +			      struct osf_frame *frame, size_t *frame_len)
> +{
> +	u32 expected_crc;
> +	u32 actual_crc;
> +	u32 payload_len;
> +	size_t total_len;
> +	u8 major;
> +
> +	if (!buf || !frame || !frame_len)
> +		return -EINVAL;
> +
> +	if (len < OSF_FRAME_MIN_LEN)
> +		return -EMSGSIZE;
> +
> +	if (buf[0] != 'O' || buf[1] != 'S' || buf[2] != 'F' || buf[3] != '0')
> +		return -EPROTO;
> +
> +	major = buf[4];
> +	if (major != OSF_PROTOCOL_MAJOR)
> +		return -EPROTO;
> +
> +	if (get_unaligned_le16(buf + 6) != OSF_FRAME_HEADER_LEN)
> +		return -EPROTO;
> +
> +	payload_len = get_unaligned_le32(buf + 10);
> +	if (payload_len > len - OSF_FRAME_MIN_LEN)
> +		return -EMSGSIZE;
> +
> +	total_len = OSF_FRAME_HEADER_LEN + payload_len + OSF_FRAME_CRC_LEN;
> +	expected_crc = osf_crc32_ieee(buf, OSF_FRAME_HEADER_LEN + payload_len);
> +	actual_crc = get_unaligned_le32(buf + OSF_FRAME_HEADER_LEN + payload_len);
> +
> +	if (actual_crc != expected_crc)
> +		return -EBADMSG;
> +
> +	frame->protocol_minor = buf[5];
> +	frame->message_type = get_unaligned_le16(buf + 8);
> +	frame->payload_len = payload_len;
> +	frame->sequence = get_unaligned_le64(buf + 14);
> +	frame->timestamp_us = get_unaligned_le64(buf + 22);
> +	frame->flags = get_unaligned_le32(buf + 30);
> +	frame->reserved = get_unaligned_le32(buf + 34);

Seems little point in storing reserved.  If you want to check it is spec
compliant do it here.

> +	frame->payload = buf + OSF_FRAME_HEADER_LEN;
> +	frame->crc = actual_crc;
> +	*frame_len = total_len;
> +
> +	return 0;
> +}

> +
> +int osf_protocol_sensor_sample_value(const struct osf_sensor_sample *sample,
> +				     unsigned int index, s32 *value)
> +{
> +	if (!sample || !sample->samples || !value)
> +		return -EINVAL;
Similar on whether this defensive code makes sense (see below and note I review
upwards in drivers as they make sense to me better that way!)


> +
> +	if (index >= sample->channel_count)
> +		return -ERANGE;
> +
> +	*value = (s32)get_unaligned_le32(sample->samples + index * sizeof(s32));

I guess it might change in future, but for now why not make samples an s32 *

> +
> +	return 0;
> +}

> +int osf_protocol_decode_capability_report(const struct osf_frame *frame,
> +					  struct osf_capability_report *report)
> +{
> +	u16 capability_count;
> +	u32 expected_len;
> +	const u8 *payload;
> +
> +	if (!frame || !report || !frame->payload)
> +		return -EINVAL;

Similar sanity check questions.

> +
> +	if (frame->message_type != OSF_MSG_CAPABILITY_REPORT)
> +		return -EPROTO;

If that happens seems like something went very wrong elsewhere so
seems unlikely defense makes sense here.


> +
> +	if (frame->payload_len < OSF_CAP_REPORT_BASE_LEN)
> +		return -EMSGSIZE;
This one does belong in here.
> +
> +	payload = frame->payload;
> +	capability_count = get_unaligned_le16(payload);
> +	expected_len = OSF_CAP_REPORT_BASE_LEN +
> +		       capability_count * OSF_CAP_SENSOR_ENTRY_LEN;
> +
> +	if (frame->payload_len != expected_len)
> +		return -EMSGSIZE;
> +
> +	report->capability_count = capability_count;
> +	report->reserved = get_unaligned_le16(payload + 2);
> +	if (report->reserved)
> +		return -EPROTO;
This check is fine as picks up on bad hardware, but why keep
the value of reserved?
> +
> +	report->entries = payload + OSF_CAP_REPORT_BASE_LEN;
> +
> +	return 0;
> +}
> +
> +int osf_protocol_decode_capability_entry(const struct osf_capability_report *report,
> +					 unsigned int index,
> +					 struct osf_capability_entry *entry)
> +{
> +	const u8 *payload;
> +
> +	if (!report || !report->entries || !entry)
> +		return -EINVAL;

I'm not sure if there is a way to get here with any of those failing.
Generally for kernel code we defend against this sort of thing at higher levels.

Same applies to all this parser. 
> +
> +	if (index >= report->capability_count)

Likewise, I'd expect this to only be called on one that exists. This
defensive stuff costs us in complexity so only do it if needed. Do however
defend against values that are coming from the device where possible to 
ensure they are consistent.

> +		return -ERANGE;
> +
> +	payload = report->entries + index * OSF_CAP_SENSOR_ENTRY_LEN;

As below - if entries had the right type this would be a simple + index
I think.

> +	entry->sensor_type = get_unaligned_le16(payload);

I mention this below - nicer to use the enum type if possible.

> +	entry->sensor_index = get_unaligned_le16(payload + 2);
> +	entry->channel_count = get_unaligned_le16(payload + 4);
> +	entry->sample_format = get_unaligned_le16(payload + 6);
> +	entry->scale_nano = get_unaligned_le32(payload + 8);
> +	entry->flags = get_unaligned_le32(payload + 12);
> +	entry->reserved = get_unaligned_le32(payload + 16);
Why keep it?

I think you are setting them all, so would be neater as a designated
inializer:
	*entry = (struct osf_capbility_entry) {
		.sensor_type = get_unaligned_le16(payload),
		.sensor_index = get_unaligned_le16(payload + 2),
	};

Same applies to some of the other structures filled in here.

> +
> +	if (!osf_sensor_type_valid(entry->sensor_type))
> +		return -EPROTO;
> +
> +	if (entry->sample_format != OSF_SAMPLE_FORMAT_S32)
> +		return -EPROTO;
> +
> +	if (entry->flags & ~OSF_CAPABILITY_FLAGS_MASK)
> +		return -EPROTO;
> +
> +	if (entry->reserved)
> +		return -EPROTO;
> +
> +	return 0;
> +}
> diff --git a/drivers/iio/opensensorfusion/osf_protocol.h b/drivers/iio/opensensorfusion/osf_protocol.h
> new file mode 100644
> index 000000000..fd6e9581f
> --- /dev/null
> +++ b/drivers/iio/opensensorfusion/osf_protocol.h
> @@ -0,0 +1,100 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef _OSF_PROTOCOL_H
> +#define _OSF_PROTOCOL_H
> +
> +#include <linux/types.h>
> +
> +#define OSF_PROTOCOL_MAJOR		0
> +#define OSF_PROTOCOL_MINOR		0
> +#define OSF_FRAME_HEADER_LEN		38
> +#define OSF_FRAME_CRC_LEN		4
> +#define OSF_FRAME_MIN_LEN		(OSF_FRAME_HEADER_LEN + OSF_FRAME_CRC_LEN)
> +
> +#define OSF_SENSOR_SAMPLE_BASE_LEN	16
> +#define OSF_DEVICE_STATUS_LEN		20
> +#define OSF_CAP_REPORT_BASE_LEN		4
> +#define OSF_CAP_SENSOR_ENTRY_LEN		20
> +#define OSF_CAPABILITY_FLAGS_MASK	0x00000003U
> +
> +enum osf_message_type {
> +	OSF_MSG_SENSOR_SAMPLE		= 0x0001,
> +	OSF_MSG_DEVICE_STATUS		= 0x0002,
> +	OSF_MSG_CAPABILITY_REPORT	= 0x0003,
> +};
> +
> +enum osf_sensor_type {
> +	OSF_SENSOR_ACCELEROMETER		= 0x0001,
> +	OSF_SENSOR_GYROSCOPE		= 0x0002,
> +	OSF_SENSOR_MAGNETOMETER		= 0x0003,
> +	OSF_SENSOR_BAROMETER		= 0x0004,
> +	OSF_SENSOR_TEMPERATURE		= 0x0005,
> +	OSF_SENSOR_HUMIDITY		= 0x0006,
> +	OSF_SENSOR_AMBIENT_LIGHT		= 0x0007,
> +	OSF_SENSOR_PROXIMITY		= 0x0008,
> +};
> +
> +enum osf_sample_format {
> +	OSF_SAMPLE_FORMAT_S32		= 0x0001,
> +};
> +
> +struct osf_frame {
> +	u8 protocol_minor;
> +	u16 message_type;
> +	u32 payload_len;
> +	u64 sequence;
> +	u64 timestamp_us;
> +	u32 flags;
> +	u32 reserved;
Not obvious why to keep this.

> +	const u8 *payload;
> +	u32 crc;
> +};
> +
> +struct osf_sensor_sample {
> +	u16 sensor_type;
> +	u16 sensor_index;
> +	u16 channel_count;
> +	u16 sample_format;

We don't need to match types with original data so
nice to use the named enums if possible.  Will need
to check limits though when decoding.

> +	u32 scale_nano;
> +	u32 reserved;
why store reserved in these?
> +	const u8 *samples;

Compared to capabilities this one seems trickier for
types given it's variable size. Still nice to use something
that indicates the type if we can.

> +};
> +
> +struct osf_device_status {
> +	u32 uptime_s;
> +	u32 status_flags;
> +	u32 error_flags;
> +	u32 dropped_frames;
> +	u32 reserved;
> +};
> +
> +struct osf_capability_report {
> +	u16 capability_count;
> +	u16 reserved;
> +	const u8 *entries;
Are these not struct osf_capability_entry?
If they are then use that not a u8.

I'd not bother with a const marking.
With that type fixed you should be able to use
__counted_by_ptr(capability_count)  to make that relationship
clear.

> +};
> +
> +struct osf_capability_entry {
> +	u16 sensor_type;
> +	u16 sensor_index;
> +	u16 channel_count;
> +	u16 sample_format;
> +	u32 scale_nano;
> +	u32 flags;
> +	u32 reserved;
> +};


