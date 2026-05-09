Return-Path: <devicetree+bounces-294797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KD6xAcWX/ml5tAAAu9opvQ
	(envelope-from <devicetree+bounces-294797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:11:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F213C4FD902
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E02DF300B28A
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 02:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D1E29D27D;
	Sat,  9 May 2026 02:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VrKKYBld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B68027E07E
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 02:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778292669; cv=none; b=WqOe0fAToeY1vZn5XaXHfzX3lMSBmElHHoobitc7VLpeasBNDPp9wvHo++h2G42tt4hQwhV7mkp8GtV8dHbBiXlGrdqUX7Knl2gxEYa99e73qJ3AZf0SvcfqBNUGgePxbqqBiZCXXMUDHx15+t6BQzzn0IkTwflLDHd4eu8DI6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778292669; c=relaxed/simple;
	bh=CtyBJIHEMXeTx+OQ89mGTJi1wKWp98iLsNOdUkH0gMA=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=sgYGJE+0mQjSyXfBMGds0yXzRuEZ8GeTMBEumQalD+HvXK8TIQCu9I4jy/Tf4HtTVxEe4ulndVJYjBTgwIDb5WNJliWtP7qnLj9uMUwrBjIQwsQkJCQDV1VX+JYPipPboALwowUAHonf0DPtojRCqfS7h9z0IqFzg126bjF4CAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VrKKYBld; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2ad4d639db3so13775825ad.0
        for <devicetree@vger.kernel.org>; Fri, 08 May 2026 19:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778292668; x=1778897468; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RjCKRbJRSQKr1LfgQvzKMjrsHO6zupespXjoGUDqQfo=;
        b=VrKKYBldRHNCsnF2pv8lykVP7HRUYkmaL8qkkrpxDnuL353CRjmgHlD8gNAOhBZxr9
         l/4k3YF2CYwylWUWinYbPlZYp4W4wMeveKRnDaA3RFJUtPs5ZJKXVxYewP/nLM9OoiYX
         hHHeYeGDCfFmOVOwi+q4/lYI+YmvJlvWS8T1bn4eki7MSLIRpC1/P6WTX5nFUYSiaXgJ
         s8Xm/XDPVumqJmyDDjEDSkXRNTU1pxLWjtQXsh1BkIKe8vV4DxX0S9J85gPun95OVdnE
         dBwisT+0Gv04v+XTJvhQDdOlmYLcm8wmi86ls+zMlsvg2QTdEsuMbjFqELZIq5s/v6Sx
         BmTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778292668; x=1778897468;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RjCKRbJRSQKr1LfgQvzKMjrsHO6zupespXjoGUDqQfo=;
        b=MdvGXq+iwLsMe1otLEFkp2QOh6Se0uOva+n08hHh5Xm38R1quVPTzFu/9LafpIeDlW
         aN99qY197alHC7QHMmm2xirqvUSn7ncWk5htzCISL8VkF4IPP1B39fqDTWpxtgQgx2rY
         nbOMWnnUU3uw/BVTx6/d0CLwhpfURIboLYDjfPnlhQtV/+kdR9nthJlYsNLDarTMP3fb
         xtwgzB8uhdSy10eCKhCQeY1+tgYmZZRMpRYmWQUJFlpd8WncUyMVY3catWnkte5lEPE5
         t9f4MxkdAbuUerzG+WMqY2nEM7BXoiwp03NyBbtY6qwQHMgGzYmqzbtT+57u8T86jVLd
         Gwhw==
X-Forwarded-Encrypted: i=1; AFNElJ9seHPEVVnKB0PrWl3Kd4VCir6tNcMK/iMEkEEHyI9WYwfGd6YQXNhx+j+nc/dS/7cDn1DircI8w58P@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9HFdekUs9ed10X0zjwd3sC/KgLxHu4tc0E4uJusM70QitpG/e
	3hkNNtAHdp0WJzewniKIlVxEaJT6x0PCxPAnfZ3h8Cj/5TA4SwlRttUWmchTyA==
X-Gm-Gg: Acq92OFdr7zCcbvnhowp1NlVNsacKn6S1/xQyeFkdc52TrPQkWAofesHKIr8kbDXdpe
	rmVk1f67FaBFmvWRN48gvIvBGRpxKU1s95V31z0605WqEG9qZZqEMVLTLuCKihlnEMQMnBhltor
	sBW2024wxEuHT81g3+VxqwA60a8ujjUe1sQ3N9ZuU/hM6D8g1bcaokmMF1h459SxwTSAZxMDV8h
	X1cX5KS8kfKRMXhMjarhmZ6W7fcFsuJ2QotfZ7aVSnSii6BzS1b6F5+pwRypbPWonu195KxTLw8
	neYmmbQxolmTWHebSR89wtMYwY5o61nBOaoFyOvPnrR4Xc4Y+DdYvRwaR9o4g/A09k6DdGAbZPH
	s4+2D5r5ybrRjVLjwtJ1F08Esr/9sqCeVGcz7tnkr1qQLyyeOjGlheYQIbHKZQRr5rlVIj/Ag1Y
	Pq9p1Sbm7qfvO2JvF4FF1LJuexTwMb4dxf2zCupCpbuwQi5do=
X-Received: by 2002:a17:903:390f:b0:2b0:5ae9:ee4 with SMTP id d9443c01a7336-2ba79285966mr148109665ad.5.1778292667755;
        Fri, 08 May 2026 19:11:07 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2401:4900:791b:cfa1:9b60:879e:786b:b8d8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d52f1bsm36602935ad.37.2026.05.08.19.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2026 19:11:07 -0700 (PDT)
Date: Sat, 09 May 2026 07:40:55 +0530
From: Sanjay Chitroda <sanjayembeddedse@gmail.com>
To: Hungyu Lin <dennylin0707@gmail.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
CC: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/1] dt-bindings: iio: dds: Add AD9832/AD9835 binding
User-Agent: Thunderbird for Android
In-Reply-To: <20260509013745.80478-1-dennylin0707@gmail.com>
References: <20260509013745.80478-1-dennylin0707@gmail.com>
Message-ID: <F55DA41F-BF95-401B-BF6C-0FAF93EB2704@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: F213C4FD902
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.85 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294797-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20251104];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,metafoo.de,analog.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	NEURAL_HAM(-0.00)[-0.701];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[sanjayembeddedse@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c15:e001:75::/64:c];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action



On 9 May 2026 7:07:44=E2=80=AFam IST, Hungyu Lin <dennylin0707@gmail=2Ecom=
> wrote:
>This series adds devicetree binding documentation for the
>Analog Devices AD9832 and AD9835 DDS devices=2E
>
>v3:
>  - Require spi-cpol in binding and example
>  - Use generic node name (dds@0) in example
>

Hi,

Thank you for the change=2E

Ideally, multiple logical changes should be split into series=2E For a sin=
gle patch you can include changelog like this:

Signed-off-by: =2E=2E=2E=2E
---
Changes in v2:
- Add SPI peripheral schema reference
---
 =2E=2E=2E/bindings=2E=2E
         | 94 +++++++++++++++++++

If reviewer specifically asked to update, you can mention in the changelog=
 as well=2E for examle:

- Add SPI peripheral schema reference based on review comment from <Review=
er Name>

Replace <Reviewer Name> with the actual reviewer=2E

Thanks,
Sanjay

>v2:
>  - Add SPI peripheral schema reference
>  - Fix example by adding clock and regulator providers
>  - Fix SPDX license format
>
>Hungyu Lin (1):
>  dt-bindings: iio: dds: Add AD9832/AD9835 binding
>
> =2E=2E=2E/bindings/iio/dds/adi,ad9832=2Eyaml          | 91 +++++++++++++=
++++++
> 1 file changed, 91 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/iio/dds/adi,ad9832=
=2Eyaml
>

