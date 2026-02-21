Return-Path: <devicetree+bounces-267118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7VCKH9bwmWnmXQMAu9opvQ
	(envelope-from <devicetree+bounces-267118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 18:52:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C64BF16D6CA
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 18:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EC30303BB16
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 17:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2773330D2A;
	Sat, 21 Feb 2026 17:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DxtZyPeA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC47330B3F
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 17:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771696339; cv=pass; b=AMXVRZImoIVjyAosUcqrfVlBJ7tjXUrFmR2i+ZMAkLgslPzM9XHLtcDBTD8ThZ2VtarxU1+JScWCkFY7uV0wts30oKpmj7iEy18xPJlcNL0HaBEmSBU2146ubYDQ67ouYAc0u5iIhA6/pRrTWeRRD3ftf76H7YIm/YbyHctp8RE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771696339; c=relaxed/simple;
	bh=Tzo7ZNJfQBxoJt9cZySJTmR9nXcZNiJ3cBcDGsr6CBg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S3GgXU8sxB+bObbB6nIbWXFrGjSdMkw32UnzAHa0P3/UbQ77n+yK2ZR4c5SnKRuyo68Q1yTr0AaLAW/Ic180gUL4KvevAW8C5XZ1NOkufYusHsQ70bUv0OY06blV8MpEG7ST4m08ce6WaZ3WfPTUHayW6mY/OZT3wfpfZQ4hLDk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DxtZyPeA; arc=pass smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59dd4bec4ecso3217583e87.0
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 09:52:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771696336; cv=none;
        d=google.com; s=arc-20240605;
        b=CbHwcUZ2LMuE87NTWwG9wYd4/rpJ2BPlJCh5MmlXCsrEJHwmSzGkwc1Z0OGnFW0RR5
         oJ/HuxtR7hLm2qZkURgEy2uKAPJVDK1lq2uHUmjYtBmHrIRqZZ97bdO4mCzMowff6RGG
         fDDTsDl0DvPXIR37hUaXdcxr16lAw9HUg7Q2lub/HyMgxQev7bTivxsaF2XdHDYZ7Fq8
         KHIgmI+ysee8ynkIP1KScagAXFfsuQGJt7CudIBs4YnRW/p3HHI6pLtbSgHspqTCMDa8
         Gl0rrNVSpxwhMy15jL0P14ORNgFmrfvRLeZ5BQB3hKQ4T1m7Yq0hGDv/9B/jZKX+OZF+
         /Vqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FMn9qAuINZnFS0In/pDpgcVE4Hl46cXlZoF6dfqeEsY=;
        fh=vQybzVDNS2oQ05UGrIGPo14vRiASmom5IMclYp5swR4=;
        b=UbISO5666Et+R7EBOZDDF1A2yiNxMPqUdrNNCcvLxePBiZW2K/b/zPzQmGkv2Jt6sY
         W1VP8QarGmnA37fTTjAoIvHnnanodfACZatMYDqZTRC7nm4JSurdNHHGyc+T6fi9vn30
         uj8B+Ev/7wnMcV2ngy7YuUmGlcx3RhNkF29kz9UTEN/O5k+okKTO0VOunYAFve3o7Rd3
         802r7A11tNtdpVUUTk9m1ege2X5beX5C13CCGvm64R+M2ItQEoB1S/y84AKpRl8H5fkk
         BZpfWuxm1zud71RrCn+WC5/szffXTBjtzIC8ZZAA3VTO7luOk4AmQeaRFbrI3WTStiPi
         kTng==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771696336; x=1772301136; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FMn9qAuINZnFS0In/pDpgcVE4Hl46cXlZoF6dfqeEsY=;
        b=DxtZyPeAgOo0i2FuwCVbZqKvIQqyrJgwPMa9BW6j5gI9ysHG5AOyFXK0nrZuQs1Fqg
         XoW7USdkuV50iTo9b8JPcfGAxP4jgVpvIUSgprHiKTjLpvIv3q4dcSRjcSYyyQjziA14
         zeIFSnb6Jgi3yPUY1T2qy6ytdHL0oJSbEcaH+ICPW+9ZFxnDxWmV1vHwMpDK/ZZZSNgy
         NyX3kErT0BvWgEejoZiUwIWw80P1Rr0G3ImzGLztrizPEshTNNnVW/A+U68LIXuHRJ3V
         3plb/7a8gE6/31oq77+JZSqTxgtDvMbWmBbK4q3SW87Dl0nthMqXIB9akFHTsDp659O6
         NQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771696336; x=1772301136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FMn9qAuINZnFS0In/pDpgcVE4Hl46cXlZoF6dfqeEsY=;
        b=ICbup/7vd/TsImJdhjnMY8k1ROb5ZAU47KWuFAVYzoSzpVV2DMIMQ1puGKnZdfiGj1
         SMlRFm6RoVMc6/P6Uoyp3Lc7BAxCMTTfnDEqQ2XbUXYA9IgqhLIMDJuvsPPXnoBX6vPd
         wxiJKf6Zbtl5njuiAl+SvFPH9aEJp0yYpgQXi/qp0HSzgWy/VkErqRW3ckVxpx9QdW60
         m3ClA+/Y6W8j4S2pB1lL7d45DCnsevNgZID9Ggih/GfTrKlo0b5UQE+RfdGioLBk2psu
         52TQx1Q0h6KEGiwS7TwPJSpCdJOHiJUQ/IHEqHENFsP3lcZyfhH68rnR3XpWCAInZvGq
         78mA==
X-Forwarded-Encrypted: i=1; AJvYcCUqYrUlj97ZGC+3lhXYak4G3RoehNs710gtfwx6gRMS8HCQnWGrzIGfdXycs1QiYFWbc7KzZRzS+bki@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7/EFxYUv7kOASGE25ZOFbfPD/JsvoQrti+UoDS42mwfbu8fMJ
	oNNqkMrJBkLnEwUp15U5tyeiz6PT6JNLMuiMU73Ahl3xQQNGdID/u/N7dAvptO/5xQj18u0xt8L
	Fw4/TRLAEsWE5si36qUKVQnGQnKkGs6f1Sw==
X-Gm-Gg: AZuq6aJOInE6rzKpHPGvc42AXw9LUsg355KzEcohxNrp8i1Z1mUZMHKKYh2HC0Q/iOV
	t69A10ERJ5kQ/oZv2WUIAHd7E62z8h/BGvUPOw8Jij8cdE4ikyJLYnf5us9sMTN5bZIlpzYXgQV
	0VaBPkjA3dqTny/5rxB5bp3AZgRBlkA+ra6ntRYhfCIh+y0Mmx35cxuoZsKHzsbIWMpxP+YiDSQ
	vk59NUsi7DtkA8htIu9JtPWe9wEIOSYjj3bXyFu2nHR8zH/KyO33XcIdWWc3K98C+RBMRmtSiY/
	HtNZbJgv5c4/EYnYng6oKDv3V8jhRdhjsCQdShNpXJatXKqBb0Aa0ZlcF1BxjUBZVSGGI0M=
X-Received: by 2002:a05:6512:32d6:b0:5a0:4cb7:d53d with SMTP id
 2adb3069b0e04-5a0ed9b3c62mr1119236e87.38.1771696336186; Sat, 21 Feb 2026
 09:52:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260221-l5-voltages-v1-0-daa8aeedc86c@puri.sm>
In-Reply-To: <20260221-l5-voltages-v1-0-daa8aeedc86c@puri.sm>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 21 Feb 2026 14:52:05 -0300
X-Gm-Features: AaiRm535UxyOOW-KZMHW3TwP7IFUnVHAX3jFIxy0RPK6vWVRSydsJOFop73bf4c
Message-ID: <CAOMZO5A_Uvq4nTWwR2fXpcT7b6bAHmqf+qS-8FCSJqhkwwKdvQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: imx8mq-librem5: PMIC voltage changes
To: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, kernel@puri.sm, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267118-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C64BF16D6CA
X-Rspamd-Action: no action

On Sat, Feb 21, 2026 at 9:02=E2=80=AFAM Sebastian Krzyszkowiak
<sebastian.krzyszkowiak@puri.sm> wrote:
>
> Simple changes to bump the voltages up to their nominal values to ensure
> stable operation across all units.
>
> Signed-off-by: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
> ---
> Sebastian Krzyszkowiak (2):
>       Revert "arm64: dts: imx8mq-librem5: Set the DVS voltages lower"
>       arm64: dts: imx8mq-librem5: Bump BUCK1 suspend voltage up to 0.85V

Both patches should have a Fixes tag and Cc stable.

