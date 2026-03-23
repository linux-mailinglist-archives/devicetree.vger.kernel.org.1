Return-Path: <devicetree+bounces-279301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2D7XEep5wWnyTQQAu9opvQ
	(envelope-from <devicetree+bounces-279301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 18:35:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 073F82FA0D9
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 18:35:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F2B8D3050938
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 17:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E29A63C063F;
	Mon, 23 Mar 2026 17:05:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788242C11CA
	for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 17:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774285517; cv=none; b=l5Wv4you+kDDTDtDp6gjZ8073rSmKoAT4gXykkge6YzJ3xkoPO/PhnMZREQ+YQaTdZgAQ09dMYFizAGrqQjg8H69EslgvYeFVxKD88VVzzCGod7hxc2aayEOssnCq4KdDeLHJcGtir/V9iTZEeiCt8NO+lPYL18pgDb1LEh4XB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774285517; c=relaxed/simple;
	bh=Nm5v7JcVlDEukV8P80SZM5X9wYhOXPQwO9PL60/LKYs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iJ9sgXi5D3+d79eYzzyyqOgbpFrPyuMAG8KEjNJeSYYPIrgvMTn+rxHQCQAEgL2CHT6tmNvHX9k9aQlonwMxVla5NR+y5ZyZg4KXb/omPL5Uaqj2k81JIA5EHAHyQy0knAV2ZrW1ZPSx8GK/jEv4CJVyMx5ZshsSTMWCl+PSzuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5a13a06fc85so3234047e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 10:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774285512; x=1774890312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nm5v7JcVlDEukV8P80SZM5X9wYhOXPQwO9PL60/LKYs=;
        b=ghnJMK836zFRSFsn5ICxzs+/0zxX4rGRHYm5vdDHmlpnsF13NMSZ9sW+mACqwR5cRg
         IDSVZLK4tmVdLNncAFWFmWe0fQ75065VoDivpv6bGYFNTiGhZ91XKw4ExKNU9a/xCsSe
         35ispjn01Iqw/u8C8HFmvsTP9p5VDiIwQSPpDq9BDr2NGO+CveLvq9N9UxHWnmExhZH0
         pPPBpX7/fda3abeHPr+6vWb2z2ftqkwoE5YDtf6m0pAWE1yKwpTWixEpVwUMOWU8ZpQ9
         AGEf405IgmD31WJw3rzwoRMEr9npV+I2nGxy8BWGbnvR+etV8h8xDjZvoDsuj+iEOfc/
         TeoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUefNJeMr2iu5LaWGgMFpnSYEfV08risWe/3VwlkuKBJO4QlTO2mzc8zPsYsDlNeYXDQh2h6FVQ4rru@vger.kernel.org
X-Gm-Message-State: AOJu0YzJnw/f6XYlVlSsXBxnNFMISKLXYFRRII4HZi75h+Ah0wwhEq9d
	UZNd09RZsYUEkZvX4b2E+qMSf0TgpOV//j8gzdMhbJJSKxWcIcdlCVxx934nNE7a
X-Gm-Gg: ATEYQzxwD7oW6vwvJPUf9GWk/uUfeaQ3/BWxeHyUILlk3yD0Kggkt/scerZopRyNFmI
	489O06enD8wIGBVzjrCTU/IWTYWDEKagMr5j4btvy8GNVUAmX98D+nwp3S9ScOFKBJii9649eBq
	/YrbAE+dxjiJBoX7IwFQ6/NtlCmRD6uoj02zYpTRVhJ3WEvBZUPSD/5XGUUCLwJVaGnbpCesVSS
	12LAKg9eXuiwvZVZYJA+3LNupE1u6OYODcy4nxrTcQdSL1lVEae23JTDK+7X7QDbf7uXe1ZyKyu
	FPPm9faHlVFd20goPwdcMtOMWAk4G4QaVCXhBSDRpb+DfzRM/jo0JNyIdFrgg07Kn5ZTbuFZ6NL
	v0X7QUyhKDEF2/270JXZLSNUBLIeYfxOjv95fWDL6K7PGa2gu8aWM5NUKKk6fIfl/FYsgkZXaMh
	NMVinMMh14h614dGTFHrUY0K77FzEC6ZsifluZmWFzp45YYvnL8f4Qclc=
X-Received: by 2002:ac2:424a:0:b0:5a2:8636:6150 with SMTP id 2adb3069b0e04-5a2863661a7mr2507786e87.10.1774285511945;
        Mon, 23 Mar 2026 10:05:11 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com. [209.85.208.181])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285206f5dsm2612922e87.43.2026.03.23.10.05.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2026 10:05:10 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-38ad4677830so28551831fa.2
        for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 10:05:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU23ZcJTabDEoZ3bVT4puDMFwitkh4pm/ohQMQVCTai9csFSD068pCJLpJ4vJ7qRF2PVJCq998UyFt9@vger.kernel.org
X-Received: by 2002:a05:651c:25c1:20b0:38a:6acb:eab3 with SMTP id
 38308e7fff4ca-38bf96f3a52mr28930191fa.35.1774285510390; Mon, 23 Mar 2026
 10:05:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260323110151.2352832-1-andre.przywara@arm.com> <20260323110151.2352832-2-andre.przywara@arm.com>
In-Reply-To: <20260323110151.2352832-2-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 24 Mar 2026 01:04:58 +0800
X-Gmail-Original-Message-ID: <CAGb2v6564QBo1CHDo4jkdz1PXKHLXAiS_Q5-1QGrh6fEt909ig@mail.gmail.com>
X-Gm-Features: AQROBzDR4iqzNYZJkcCgL6IuYb3DzuKFkSg6JxARTu410NRvFve59a3elCP1SSw
Message-ID: <CAGb2v6564QBo1CHDo4jkdz1PXKHLXAiS_Q5-1QGrh6fEt909ig@mail.gmail.com>
Subject: Re: [PATCH 1/5] pinctrl: sunxi: Rework IRQ remuxing to avoid fixed
 mux value
To: Andre Przywara <andre.przywara@arm.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Michal Piekos <michal.piekos@mmpsystems.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[csie.org : SPF not aligned (relaxed), No valid DKIM,quarantine,sampled_out];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,mmpsystems.pl,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-279301-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[wens@csie.org];
	RCVD_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@csie.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,csie.org:replyto,mail.gmail.com:mid,arm.com:email]
X-Rspamd-Queue-Id: 073F82FA0D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 7:02=E2=80=AFPM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> Some Allwinner SoCs cannot read the state of a GPIO line when the pin is
> muxed to the IRQ function. To access that state anyway, we temporarily
> mux that pin back to GPIO input, then return it to the IRQ mux
> afterwards. This code assumes that the IRQ mux value is 0x6, even though
> newer SoCs (D1/T113/A523/...) encode the IRQ mux with 0xe.
>
> Avoid hardcoding the different IRQ mux values by saving the programmed
> value before switching to GPIO input, then restoring the saved value
> afterwards. This makes the code robust against future changes of the IRQ
> mux value. This also avoids calling the sunxi_pmx_set() function twice,
> each of which does a read/modify/write operation, fenced in by the pctl
> lock. The new code takes the lock around the whole operation, which is
> also safer since it avoids (probably theoretical) races against other
> code touching the mux register meanwhile.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Chen-Yu Tsai <wens@kernel.org>

