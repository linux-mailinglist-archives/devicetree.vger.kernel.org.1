Return-Path: <devicetree+bounces-274450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFfNLRdgsmlmMAAAu9opvQ
	(envelope-from <devicetree+bounces-274450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 07:41:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 637C026E00E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 07:41:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C4D4301CF9F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 06:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2A43A7593;
	Thu, 12 Mar 2026 06:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eapm8q3E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9A53A5E75
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773297682; cv=pass; b=EldQwZick6md0JTaMzvjPwV8ADh8eLRPxFabswk3Wa99038onTNEEC/QgSux5olN9kvqCcAHbMAw6Ay9qBVumr9NmchdJwDEnOkL2pHU2IfkW+OHrsOdWjeOYGZWkWGwHeYevUIkRA9RSyE6La/5XX7OVqMuMKMp59e4WGvO6Ss=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773297682; c=relaxed/simple;
	bh=ruqRuW5SL/WOPbRDc7f8nNsrXjE37PMZPlSi9lQGPBA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GkUDeXdi6MqFKVJjYr62ceua7kJVQP7LnKRYL0QJcmBaBydoHZbSoyvFHBRZRCWPw/z1NcupUQV0+4LsM6N8QZstkbCl/2sA9SFCIJxNQS6J33rF0/cedFWKYkPPpg9kafXlmaf4cquRhJwfSnIso22XVjRAxKve0rhOl7sM1fw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eapm8q3E; arc=pass smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-94de664b541so175915241.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:41:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773297678; cv=none;
        d=google.com; s=arc-20240605;
        b=bGhh9d451P7sLw6CLVZhE8h7IidOoeN2rfyS3B0APDtpzjZ/gqKy5uso9CMecoRsmg
         U036RdV+7SiSowGVfBqF7DVZZUFiDOUaEkpFoZfVtUDB4mwtMpagne+yEzn0Ne2JQHd1
         eVuVzm0bLkxiAuunsRT1cIDfvwzZii9GsSBEVA211WaCg8A01K4k2fJ0xtnrqcfZZnyR
         LXXH5/HrFE+0RjpjTd4FvmHunL5NWNehPtijYkHRQBvcKTE3pC1mVkqCGsepVWNB8i+3
         1hOtrd9gGR5ZVFfqWxhiv6gdnm/uy+IZyXdnDCmG8+fu/vmjwaXffQpp8k7xasDl0Kwx
         FUKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ruqRuW5SL/WOPbRDc7f8nNsrXjE37PMZPlSi9lQGPBA=;
        fh=EQicRYv4WeMmhQx066Luj0dFdjrlOtkU+WCj1e2+LA4=;
        b=U08UXPM5JPQOStd7HowGpQ32xEcOrDMN2VWpPI2xXSV2FVSK1tCNHCm2cp+8LUwt1L
         ja0CDKyr9zpTSfcp6IsesiTMMtr5V31zXEMjbJ8iUCmfWHG8TstVLdV2CPbyemxfKtgD
         q2u0UrwMZoMvVrPHjhk99HGZ2PTRZg4m02VIdy3cugFrQK8L+MIPK0eO8HhAQD6yZLqp
         s73BvNBhm+dOlGW01D1jvRRRn6oEwa35TpdhK9S1aBAFtESd8h8mCYGE9EFm0yGmvSXk
         uGsbhDuCD6mIlUEnTSu+MjJmQ3VAKh16eGAX57S9wNYPNFm4yNO6fm/XGMZpa14hAIzj
         MgFg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773297678; x=1773902478; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ruqRuW5SL/WOPbRDc7f8nNsrXjE37PMZPlSi9lQGPBA=;
        b=eapm8q3EK1SFDMUx6sCVYTTiHPWhq1cZUUR9TVZ2sglxTNXndvaz3TIWtFczNCaJSz
         yWkAcPSypiKssA/7J7C2wk9ep1D4D4IFKl0qasLHySpk4hFor0X9o/FLC92NmbvyZKB3
         HrGu3kO/meF3+hF7n7hjWnyaUFkIEjEz3S3PuOviCMvAavVatmuqK008wzWo6q/P9tfP
         xGPa6eNn6UNKizJAAxW+KxqYxrAZygXvPJRUjx0RrHHOPH2VeoL85TE0dBeX+N7+NyE2
         9lrIOEAAERQaDHgJWnL9C1E/xNN7hKFsdwkwWnH7aIzAirZdJFH0Hzpu0h12qsaceTOg
         nq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773297678; x=1773902478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ruqRuW5SL/WOPbRDc7f8nNsrXjE37PMZPlSi9lQGPBA=;
        b=h2BC7h+yz3vQzwOn+UHIGH8uqy/720cC7RJxe3tIVb21JKu7TZ2iqVHemnLUn0dq/i
         17byYi3A2zAESX7Qv4GfaYyqW7mz1H4Wyp88KlYB4Hvy79R4Bt+OjTbHkZPdDHfiwYa+
         VWHn3QbvuBjhEPZhkhttkmke/m67AUoloD4+2+IKx2lrpa/3wcGz6EgQOo1xzDd9XzTM
         LAEYBuhA9ZzoN4qnmpumpDzJWzpXt403EjeV762zJMU1TP+3IG40QLsPjx4NOtzyR1Ff
         REsSgciQ+kdCF20p7cQz7tdXFAhZjtOP1I0nd/mPgTWUN+VZef6TapAKV+vuzXaDcvLS
         5sxg==
X-Forwarded-Encrypted: i=1; AJvYcCW3AHolgyGGo3iu2fJPMhjJ7bWqsZF6j99jnQ+GuTb3hiFPrnl8FcNfyxpAWZlPe1VxdLKs8iFzDTNS@vger.kernel.org
X-Gm-Message-State: AOJu0YwO1seQf3Ob0iR2yXlVNJm5V1ULN9OzIhegpXZ1JY4eCfBPkSRx
	5wdw5YU030LQoh7I2ZskQuLCbuzzUcncSYmZcIbugJoJKNSnbtGBG51/PtVK7elo71P9QwdSqi+
	D0ZAlQiUaY4UUZ/xDVYail93ymkzytZWynmaJRhZxKQ==
X-Gm-Gg: ATEYQzy1VB73vr+y4AIbTv5ureA3fXSIsOW/93ynNC6gBP+C/hNC8DWJZ7KDX9EWVzB
	qtVJ85OQNNe7JYm5cWiOS1V8Ho+0DNKdEmWosmdEkj/w3htGRak5L81RsidPVQP474UfriwblfY
	s1I9Gs7WTeNbdqslEJMZqFkmB6F72eKMgWm064Wy14JyOFImlmWJK9ksPDFiG5rUjAaX8dy0H/a
	z1ZRV/LSyUg6ZuYQdDoo51g6kBTHg5qRCPWUc2gzNsfiy+pYWcGy2Cu5iGqe8cE0MY7DdRRWY1W
	Td9jDpt5
X-Received: by 2002:a05:6102:c0b:b0:5ff:dd9f:3ea1 with SMTP id
 ada2fe7eead31-601df08a60amr1728016137.39.1773297678151; Wed, 11 Mar 2026
 23:41:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAH2e8h4R-nF+eV+OnkSySKSY5_H-V8Ndyfhac3=VNQ-bMaBeFg@mail.gmail.com>
 <af606d6c-3ce3-4342-bd5c-ce3ea28c6923@oss.qualcomm.com>
In-Reply-To: <af606d6c-3ce3-4342-bd5c-ce3ea28c6923@oss.qualcomm.com>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Thu, 12 Mar 2026 14:40:54 +0800
X-Gm-Features: AaiRm52ANSGIe5raH-Y5MaxjaPKZX8myZRmP4R9pHNsa95fTfc0HNUXVKy8RQA0
Message-ID: <CAH2e8h4Vp9fJYAUUbOmoHSKB25wakPBvmpwa62BTRqgRQbMWuw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: taniya.das@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, 
	ajit.pandey@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	imran.shaik@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com, 
	Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274450-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lkml.org:url,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 637C026E00E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 9:32=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 3/9/26 11:27 AM, Pengyu Luo wrote:
> > On Thu, Mar 5, 2026 6:40 PM Taniya Das <taniya.das@oss.qualcomm.com> wr=
ote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
> >> is simply a separate block housing the GX GDSC) nodes, required to
> >> power up the graphics-related hardware.
> >>
> >> Make use of it by enabling the associated IOMMU as well. The GPU itsel=
f
> >> needs some more work and will be enabled later.
> >>
> >> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >> ---
> >>
> >
> > Hi Taniya and Konrad, GX GDSC stuck at 'on' on my device
> > the raw register values are
> >
> > 0x3d68024: 0x00000000
> > 0x3d68028: 0x00000000
>
> These likely indicate that some clock or voltage rail is not accessible
> at the very moment you're reading them back
>

It seems to be harmless. In the downstream, they are always zero too.
TB322FC:/ # devmem 0x3d68024
0x00000000
TB322FC:/ # devmem 0x3d68028
0x00000000

In [1], the commit log mentioned
The GX GDSC is modelled to aid the GMU in powering down the GPU in the
event that the GPU crashes.

> GPU support for 8750 is not yet upstream (and A830 is somewhat different
> vs the supported A840) - there may be something wrong in that sequence.
>

Indeed. Chances are that I can't enable gpu. I must reboot again and again =
to
match the sequence by luck, then I can enable it[2], and I must
disable register protection.(I just noticed the hack from here[3])

> I heard it's in the works though, so you may be better off waiting a bit.
>

Glad to hear that. I am looking forward to it.

Slightly off-topic, do you know if anyone is working on wcn786x/wcn7880,
sm8750 QRD SKU2 V8 Power Grid uses this.

[1]: https://lkml.org/lkml/2024/1/23/1408
[2]: https://postimg.cc/xJr11DK5
[3]: https://github.com/gio3k/linux/commit/f96512ab05a1bcc6b7e82b27f44d9072=
38fc64fb

Best wishes,
Pengyu

