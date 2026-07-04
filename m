Return-Path: <devicetree+bounces-320505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0670OpJfSWps0wAAu9opvQ
	(envelope-from <devicetree+bounces-320505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 21:31:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F987083F9
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 21:31:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WWNbUg50;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320505-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320505-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C1A9300E719
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 19:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F4DB264614;
	Sat,  4 Jul 2026 19:31:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEE01DDC35
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 19:31:26 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783193488; cv=pass; b=EB9BznbF00deg8/bqqvEpG9le8iF8zhfA7HsZt0ZJeYnGpM/BocnGph5D3ia/keBYcPWVc0hrDCtpf2bSA/hy/70wZ2GsTxKJbiyOCBfJShB5GFvldyVa/v+TuAIgYWXp7yUZ+x0aNFz3axRLUElTyWjSkB7yXGeD7Vr1lYvdlE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783193488; c=relaxed/simple;
	bh=8G4EPkT3eAJkamJxrC6wiszSymxPHgPHa3qEVuPfuyE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qYOhSYGo0kTVulLtT8PQ/R4SGfHKeqzMXUE+1TZJnpzESpo0HICAIrl0lCt9dIDHgFTN1as5NS/jI74bKm5CzAJm1SF1z7i5XxbuXxfJelkvSZJYNIhMrSPuu7T5g54CsKOFaB50TazlFfHOZKUSqOtIiDyWc0pv2fgDHWYGlkM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WWNbUg50; arc=pass smtp.client-ip=209.85.208.47
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-698b6c87884so2842665a12.2
        for <devicetree@vger.kernel.org>; Sat, 04 Jul 2026 12:31:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783193485; cv=none;
        d=google.com; s=arc-20260327;
        b=NLRb5BSzuYnqnESQVDsd6d4VeUYJK28Ss0Y00likxS97NnVqjaN5sJRVryiHDqCfQs
         n6UOOVyJe8GjKzpV5IwIOtFHkZTBbLUgZXupIH45E6I7Y7YnXalKATxkxj6vjukgpYCN
         XdIwL4oS2olRvaCQeD6Tvn893xhjU0hL4NsFsDgEdaEezQq+ovmw8vet9B8IIGhQ2XPZ
         ua0Oc1q85oIamHNUHNm7ww7r51UezpNBIREhjGBMGoCP2+/IyZdSRrdteqeRcFKcaCc6
         5cWDcwPrkwvkdC3beVmKnhUYR9c3P2+63uATv4UNvoNXFKTf3xOYaLJ+gIowIVQ/s3rQ
         cs6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8G4EPkT3eAJkamJxrC6wiszSymxPHgPHa3qEVuPfuyE=;
        fh=K8vYG3mQajyzoc9K9PTXJhcwFu6RUEFAqoloCCNu2XA=;
        b=MaYcUokZIN9eQqUfKblY9zlTdL4wvvO/n9FIXFE2B5PCWXwuBzlYVsnpkCyv7ZfVZ6
         nqP0uGfovCtXE1CAs1y7rv6shTHP2IE3d2l8ITKe675FW/mJtC4G93Z37H0ebt1bZa8F
         Oy+M6hYaMMJ237JZwyQiVKVTMWIqREPBOM5H3XPJI9Iu/DKZWT9b/u8OHiZnDMiYVR9o
         tpqIlLviiSu8X2aD5stwBH0Q9KnhVIJU/2n6FDzuItqbcJwwCVPb042+LfYPiWDPNom0
         kCplSouZgMrFvtY/sRaLMpSHH4BWkd2sTmQR7uYY6OGqbvt5tpH8opQFrze8Wgw8TxbH
         Az3w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783193485; x=1783798285; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8G4EPkT3eAJkamJxrC6wiszSymxPHgPHa3qEVuPfuyE=;
        b=WWNbUg50UMrvpJlenJqHyll4tvDJwqrzWbi+t3I6761ZEyMkU4PAx5gZhh2dqav5Q9
         6SuwOOvZvAkjrLHQkSJFhjZt5dvp7bz3XOgRxGXwhcKJCOJ8Z7bbPcL5rwW5yHuJc0Gt
         LyRSzqNTMnDZ4ItQvHy52n5K3aP8iuAebyayDqgsT8tio52HetC1QtnKb1fcrHHK96+Q
         ruzUJtRIgIO/rs9vsLxu7ktU54tWM9jhNuPOe6jPSyE6zsp+GO5A1/Z4arCYxQiWjicn
         olKkmEhmzE1ZZovam2EJ4sRDowiIZHHjnUyo7uSLAlWgzF1wRQnY/gVzw/DG8cECndAD
         yI/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783193485; x=1783798285;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8G4EPkT3eAJkamJxrC6wiszSymxPHgPHa3qEVuPfuyE=;
        b=MBixkX6+XNTmSCKkirvJFC+s17SJLMoJB4/ie6OMpbeIXxOQ66gLEFyN24trtBVtdz
         QZT7RX5X8eGejU3f0exHsssDKA5JpbODdflpov8kMeMlwVlAW5XH0ECq/iDvbaOpmTQy
         uj/yuTMaQnAymkEWbA5iY7ilTpWn1pcX+36j/pm20cQ3a5zKQbbncDtaoelXZ9SKnlz/
         QQr9UbdfpnoTbNcpd7kHWAZa8zxLVnQC4nVyf1UIdCE16XDdV3Cdw2yWYqoV62ic7rbj
         uKXGc3vEyzfU0DmZtB327P35lGrCmHbneIvmdaP0VokWIDqBGP1dJp5Rw7Z8e97PP2ny
         RR7A==
X-Forwarded-Encrypted: i=1; AHgh+RoGRV4Z0fvuKkAf2OkNul6mqpnuIhYyje4YsMGkm8hFXHlPP5clUj/+hS3Wzb7tRipLyd9oWdzafb7Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzXmnqic/q8OZo4AnGhInZFU982JPLh6adXMjm39rm1PnW15yCZ
	CDTqvT/HWh1aFdLPsAdjYi+ZGmlZUvCYEthS45enV4SaTM57kV4TPaf4GPmv57CA3raHE6EUPqC
	DyNQjW+ltWN2w+MKkagHMXUwlS0HLqOU=
X-Gm-Gg: AfdE7cnXYagM8R4JtnUALDNhlhCVsXa6KsmcDKdj6+Ryc2e/IUHGcLtUyUdJIy6XGjm
	qKOSUACmaOijjxsdWQbSL9x5wuH+Bj0Nwal45jE85xnFOoPZzBrJrXV4buht8IqywjzwZ7YGoEi
	fPm0bKPyh0pXZfKRNI+aHzcacJF9OuxGyHtxBKIJITAZ6+WjhplrAJnhhR76Txabuc8vYn+paaI
	qzn2K9/tYnv1HWcNyzW8HDywUvK4Ez/vtG1kPZtoqFp1KZne/1jXDWHYt8184YOfHiYjwgIlxAN
	9bN5ZUFFaQe5I1c3ejVGZXnMCQO6jvTpu730+crMF4UpnNxOs8OyTV/DIBNJh5Y=
X-Received: by 2002:a05:6402:43c6:b0:699:ed7e:3574 with SMTP id
 4fb4d7f45d1cf-69a1a3a96a4mr1280353a12.20.1783193484827; Sat, 04 Jul 2026
 12:31:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260702-hm1092-driver-v3-0-85faa7ff4fec@gmail.com>
 <20260702-hm1092-driver-v3-2-85faa7ff4fec@gmail.com> <akkRRCaZMRyoWDt7@kekkonen.localdomain>
In-Reply-To: <akkRRCaZMRyoWDt7@kekkonen.localdomain>
From: Ramshouriesh R <rshouriesh@gmail.com>
Date: Sun, 5 Jul 2026 01:01:13 +0530
X-Gm-Features: AVVi8CdWv2JAgTV3G_0dGXxhg8qGn0uOvvqxZ0YpRlHZfbYpTrCeb0JnfmFpVgQ
Message-ID: <CAJTcUFQ3CJQhEv_N7L22FmQSJsGpfMvKO1F5wiEarNca5VmV5g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] media: i2c: hm1092: add Himax HM1092 mono NIR
 sensor driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hans Verkuil <hverkuil+cisco@kernel.org>, "Bryan O'Donoghue" <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	INTRODUCTION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320505-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sakari.ailus@linux.intel.com,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hverkuil+cisco@kernel.org,m:bod@kernel.org,m:vladimir.zapolskiy@linaro.org,m:linux-media@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:hverkuil@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[rshouriesh@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rshouriesh@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46F987083F9

Hi Sakari,

Small correction: my name is Ramshouriesh. You can address me as Ram.

Thanks for the review. I=E2=80=99ll address the comments in the next revisi=
on.

However regarding the mode names, there is no proper datasheet for
this sensor released publicly.
I will add the proper mode names based on what the camera does in each mode=
.

And regarding the driver supporting single data lane, I will make
data-lanes optional and
will initialize the endpoint parser with a default of one data lane
and configurations
explicitly specifying anything other than one lane will be rejected.
The binding will retain an optional constraint permitting only <1>, so
an explicit invalid
value will be caught by schema validation, but data-lanes will be
omitted from the example.

Regards,
Ramshouriesh R

