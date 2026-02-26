Return-Path: <devicetree+bounces-269008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGTOMhm8oGnrmAQAu9opvQ
	(envelope-from <devicetree+bounces-269008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:33:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 489CB1AFD9C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:33:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B4E5D3009F10
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36F8147887E;
	Thu, 26 Feb 2026 21:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="cEQ+Ls0y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3975539E178
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 21:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772141591; cv=pass; b=ne/EyxQ1YTkIN35ovLRc4b9EFwYfwqD70hVenC6aUbNBfxwPAukBqlaH6fafEJKgKvhJZ4A4w0L0IJ5IvBBuvnMidUUyKZ4Te6llxaJ3Q3+ojAcutl3VskYxD765VXuhv/bhDDWBPUt5ujy7PzbuSs/Ki3k5aUDF/e0YgdYbH/8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772141591; c=relaxed/simple;
	bh=P3KSzDZH5WcI3naCdA20D7hQPLm9fLJpZnjg0HtC5mU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X2FNbkI3+E0BBLy+l25cYT2pWp/ww8JXhq7kT6o1u5jSaIqLwnFGt4eKmrQp13B/nAG4aFmwuRlgH4yN70lEf/mANo8XI2OdMYCrpXB38VMavigXDoA0vLRqmo+xoC4D39pjXickLhwogrJwPX4Wrg0e5YJhVgeAzolStqFy5uk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=cEQ+Ls0y; arc=pass smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2ab46931cf1so17749395ad.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:33:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772141587; cv=none;
        d=google.com; s=arc-20240605;
        b=LAGweRrFAYeUZLYKZGNbTBoDJYaJrtNOiuSmMw8vpyf2RR2qlbhXSGvn/dUqvv3wBn
         Lc93vnQHulvDdSGg19mhheads3YxHGfkk5c4F1sXvPYl9LyEOSOm9E1Eqw1iQuDVg2Gl
         xgunNHPEXOl4HwXyXBbTjK8MA1ZYdrvf+v7zDccwS26PxIBTWODXgqtn7/PTs+QI7MmO
         4Xxa3UuwxAf1zqECkx5g5NLw9th1D+n5ne/16EN5HKnwMmztlQ4d04zaMzsgzR+4oOOO
         U/yu1R/blsytS8kHVAIHArZjvwhvkN/d2BcK7ccz2vXB/acZdOKYbG6CV2BeSeBcifTN
         IpBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=P3KSzDZH5WcI3naCdA20D7hQPLm9fLJpZnjg0HtC5mU=;
        fh=/F9FR9PLuASeofLvEQaiMMs7fVltCRVtwLfu22KevbU=;
        b=j6h0N00702jB3rp0xNlkLU754UGs2ljwegjDwRwbte5ZHPdISQS4oSwbHlgmye1jQL
         CT9oq7hkIux/q8C46ql/iyA2C8IqGQ73KK/DUJ3hI0cxrQxf1aYKv+1XUMSxkq/fgkCD
         +4AU+EE5VxTECxU1wT2lFquSh5autPNYcP9tsOFLBDekUTib+5D2E7n4B2L/8/rsYcJE
         YoWn8DgmDrdVEzG/U6lAGVkrCfob03LjE7Uwa1iyr45GM9jCeZdr/u/sDXDSa4XbHhUZ
         qK7O/RmTZ71/0BjemThD/hggS1/od896QAeEWpEekSPebBtJlVtjHWt6JimSjvJHQaae
         Pzdw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772141587; x=1772746387; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P3KSzDZH5WcI3naCdA20D7hQPLm9fLJpZnjg0HtC5mU=;
        b=cEQ+Ls0yYMex8nGK1oFUn7T1X6y7hliYLQjea7PPi799mOMnUy6rVybBuO1NfJmKte
         J3Bm1c13f2ZfuD7/grFd3eHyvO5CdELwS9Zty0Sb66y/BErygqXE3KFbSNHASr6FioMS
         S4TG8DxHnAxCeHpeV0PdOhgTJoFistC4UhF/TFz/oK+Afkggp/eITTFjt59Ep6uu8NJT
         btur68ePe0ezmVDu69Kr1NAR41lr/63cfn8iN3cJrCKr+TABcrNQG5ikqVpJTJcHWtIr
         1qP64qaNM4n6vJx819vuueJGSQUsPMiaKypSFtyJT0oVL4GlbIxaK1az/74kqKwVNq6l
         QMmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772141587; x=1772746387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P3KSzDZH5WcI3naCdA20D7hQPLm9fLJpZnjg0HtC5mU=;
        b=WmV/BAmzWhiHhShDRobwDMg1rjgWFswrYe+cS/OOF8O6hT9ERjVYeByuwHXoUyyJNj
         rUE+MCXODl8tzTEnrioD9IZ4T/UxfzRlI4bE3c4NPn/r2oHXnkUdAPqKtKBB+2auo/xk
         QlCsZBfnNbynHcQOt0E9Y2Z89mMU9w4Ggx2ZVvoFpVG3LWwPuheLztOI7Zbmog9OlghE
         jz/V/LMXDBvpaxDRlaNOlEhx9HmkD7Z0wZZ5M99IJGD3fibx0mGKaBDLY7jJ+Tsb1hFl
         yBWqMZN/LreqXSPSiDS05ar4VzzZNJkmBaKHF8OvU14gAJ+ekhOt87cS222Z5FOck/nA
         JnrA==
X-Forwarded-Encrypted: i=1; AJvYcCVAjlpztZtAbopBktcpCj2Qh9DOwJy5A8olvOJT2sRsQ1g3Y0L14WjaeNB5XS+OHorwxDGI+83ia4zc@vger.kernel.org
X-Gm-Message-State: AOJu0YyZSX6c6Cu8GOO5b4Hbjrs4TjerNCjSwiGW5cDm9uEdHnPHT/Kx
	KobqYkdH7PhUjTnbI7NTF8vM1aURXClptQiBTVFG1U5IFwcanr11tML9fxdG0S3OpfeV1y1ThbZ
	uw+KnI8tedAPavxPvfZLikXCFzsT21S8=
X-Gm-Gg: ATEYQzz8PMz0jpSglnY4Vz1eQde0q9WMLU6OTo3SUVn8b+H809ekisrH+ZQprJLKU4w
	vbTTcy8g7yusLyhz4hqC6XwlLOulDfT18CMw2mWWKYwJYZEv2fuyNQ6AzwnDwSKKQFhEw+nEJgE
	mhh06lxD8eEU5OOvcul4YUtX0CAMdniAdto7UNCJgcIdA2fwF01tPnEF1kYYE0ZuLONTYU8+8fx
	nLt2mmLt9QiL6ponSk4+reHzgt6u8qdQw07Ht3l1sP3f2jdxldV0cUEap4vtF5zhxizB2by9NL6
	sMDob+ZQUt+sas+tOT4ljSqbNsrq4lBox+20wuLVKVU3i63Hwbw=
X-Received: by 2002:a17:903:4b07:b0:2a7:8c6f:939b with SMTP id
 d9443c01a7336-2ae2bce58eemr4336975ad.27.1772141587391; Thu, 26 Feb 2026
 13:33:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123022258.136448-1-nick@khadas.com> <20260123022258.136448-5-nick@khadas.com>
In-Reply-To: <20260123022258.136448-5-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Feb 2026 22:32:56 +0100
X-Gm-Features: AaiRm51PyRfiLatDzwSiR5eluGOKGQK9uyO4t3-kfB8JjH98-aVUutjpr9phvHI
Message-ID: <CAFBinCABMXTGZ8A6LPN3N-4TcJH5DrxWcnVAoCzE954KgnEpeA@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 add POWER key support
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269008-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,vger.kernel.org,lists.infradead.org,kernel.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,khadas.com:email,mail.gmail.com:mid,googlemail.com:dkim]
X-Rspamd-Queue-Id: 489CB1AFD9C
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 3:23=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
>
> Add the gpio-keys-polled node to support the Power button found on the
> Khadas VIM1S board. The button is connected to the GPIOD_8 pin.
>
> Use polled mode instead of gpio-keys because the GPIO interrupt
> controller support for Meson S4 SoC is not yet available upstream.
>
> Signed-off-by: Nick Xie <nick@khadas.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

