Return-Path: <devicetree+bounces-266433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH7UF4C+lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:28:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0E6156A43
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED6F730053AD
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 386CE2D77FF;
	Wed, 18 Feb 2026 13:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ltzkSItT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041C22D3A6A
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421256; cv=pass; b=Qil/G7IaB072yC/motOALL+gtVIdlSpzvDB1cylQ3iSXPzIQQ80Uog/9hxa9OIb77PrPVvZA36iqg3PJL5oe8oqZxLFLZ3OcCczGkHc+s/DVW/aOMWhRkLlckyVerSyzoqz2BEGipwVcZ29bjMXO6j2NwxvGJ0jhqJWFmvwpTr0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421256; c=relaxed/simple;
	bh=6uKgX+FTM0Qddb34IIko45XF60fCsP88ocn5fLnGK6Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i+LzeRLKkYrCkhQ0/PQLLDYaaVszL8LjG605zdKe8OzKA8bdby8TbhiuVKbbNXZ3VD20UNc1sPU32ScPyYoqQgkAIBZWnhZfu3Noymu3jU3Fk1UZn3ZUU9OrqGvVM2tPLX8gFbn10S9AjQNcYiqZPsvFwsRDVrJLfKDXLw6JyTg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ltzkSItT; arc=pass smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2baa098ffc6so4550091eec.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 05:27:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771421254; cv=none;
        d=google.com; s=arc-20240605;
        b=c8gOlSJPJ7u1/czPocSqHqV+oP1EO5rag0ZY70s3WPC9W35vPk7/tWSReYGfxxyWpo
         WNzNHjGFv3J0Pm7p3nNNYlBuMnqjphDkc5uzeD6gBQXzWH1YBbT+rmGEK7pG1vRFcbAX
         p2bznX5ElYdv7bPdybgMtSqC0ZfxQN1EbGloDcN6DNf8iiz8MrLczpe4xlGHCq6EcSsg
         wDwx+mOWcCXnsELawhm73nN0HAnJ3SuuTvgIOKj3l5CTCbQ5zVDmjsn9kX7jrBCrbkr0
         DfuAA8X/W3hJlO2/1Y+jwxZNjUPpG2ugDuZjSFDqfluZ+zLvauLTPKDztXU+kQxJfWxZ
         w28w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VDwK81uO6Grpntsjm+/j+2ujVIp4zE8opmsr/kEY3iU=;
        fh=ZSzbbM+gW7x5aH8sfEOIwNeWIJL8LdKVfy9qT7TUU/8=;
        b=Ez1m2ez43FqHWpzDy3PpeqPy5u1q/+FOTS4ODmK9eeDXyiFa7Z+hnnLQD0kS9mBBlb
         reDF44ql7ruRd4cQWwZ41UoC0+5e0zQEcwa6kWnKUY5jq01h7Ar4Rg0QqXQFKv0pq0H4
         jd5pAtKsw5DXTY6yFmyZ3ou0uQWI4DDseOzVTy01pCM9gcjSilupFZCXshMyiroTzk6A
         Uv74/7AQ36a+U4Ak0vN0aRE+S5okn2/xIAVlwuVwcbjTuEYNPCe6+F7fN/98bI96G1uU
         RZhmN+k6N00vsKmTzg3WVeDiihYVLGEbnRov68gujR1oUgwDQSLKf80ECz7FF5yiVnP8
         0LQw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771421254; x=1772026054; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VDwK81uO6Grpntsjm+/j+2ujVIp4zE8opmsr/kEY3iU=;
        b=ltzkSItT7wAmsf0b7r/yLVheQw+py8oHM8yGNywbF3/OKslGCTRxKg40Kv9Ads58AK
         ASTxvguu9gvupJGRlrJ/NJvX3FP8fI4moOab7E1iS4OOamS0MulmrdfniZhyHfTGGJiQ
         AU/00fa60cAg/keg5Jv49AOfQ2tQoLNq6bLv8Jkv0LqCxwnhWiD8dUCiLpKoj+zndtyq
         hcoNp3nWlOmpjS+fhm8Pv1p9sXtI4yJtRG2IFr5uUKSpHAY2tAO4lDTw0nqquu6LTxc7
         PriY1vQqIfHK+bUse/DNGztxuEBogiS/844rGetZwUwXlcMFzA/jrJ3Ntef/hr4xEDFb
         /sZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771421254; x=1772026054;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VDwK81uO6Grpntsjm+/j+2ujVIp4zE8opmsr/kEY3iU=;
        b=F4GNI1tuuGLCCAuzPxK1mTCNlf/O4bbUXE5P4ayezTfUXgl3YJ2MZgtNOWpF5Q7xA2
         1fTONwhU3SlZFjOgvLJ8ilBthKP8JulXyPhZZW5yQmlf1PwajVMwg+7Irf08Wl/8xm/F
         ol6IpobZgnKTt5MMGcZWK6WnmkeDlykpx6oX66VtO9wc5qPmz+Xd4LivL35nOFJgE95k
         hnihnZccJ8kY3xFt7IvXqFP9s5cqWuEhWZ85MRROLJqOAYteDJTjl48hqXFHmQqt+xu3
         4Rgeh+MALyFU1etPWMSXhxVDdQKlrh4ksXqfaujsCAYHGYBLw+Ub70dMSgDlDxAYJ9st
         s9Eg==
X-Forwarded-Encrypted: i=1; AJvYcCUD/NPjPGBOSH65h3kl1xNsG0/ZMwgLDTscv7uij+L5JtpCouhzLPfkWi1xyEaHpE77CvfEE3+ABP26@vger.kernel.org
X-Gm-Message-State: AOJu0YzrjsffA+7vdxbBdsGZaI0L0FLSe2neNpfJdxWkw05Grr9qrzQY
	AKWT5xWMeuAlUcLkp2x5XCe205P8UmxgtPIgEYhK4udQX3iLRIsNGcUMCsp+DVDGDyQ15bqKtIM
	W7JXGNMS7iljNnM5A9kiCB1KVn+PunHI=
X-Gm-Gg: AZuq6aK96jf0xc6tn3kwh6U2VMGe89mDaxHc65d4tT06LNPpBxwMs9zw6znm4g2O09n
	tmY5jaGkXIyrcjlylm9GNVh4FS+ub32puz7RpeBZzTwQcgOoDa52/zPppPAMengOxtoGw4DFIeL
	ebRhf4c+t6mclUObkUAG9RS1ohMeJpNdM+1gLzgYg2Os0HxCzZzBKiYpfIdorCommKMpXpW+4/7
	2xiQ+PGxRhSObpFz0cwUC9ekPyHdOTHHDq0kQMDH+1f4KxVBn3xc0B/EablCF5JN0A1MxvbC2ke
	U3Dj5Q==
X-Received: by 2002:a05:7301:d19:b0:2ba:6d87:cf68 with SMTP id
 5a478bee46e88-2baba05b5c2mr8036941eec.16.1771421254003; Wed, 18 Feb 2026
 05:27:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHuF_ZqWTb5Z7J10WQaBR2adVi1rU-ZFFTCBkHh6nNtuuCdJDQ@mail.gmail.com>
 <975930a0-1ad6-4b3f-ba3f-13f6f79322e6@kernel.org>
In-Reply-To: <975930a0-1ad6-4b3f-ba3f-13f6f79322e6@kernel.org>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Wed, 18 Feb 2026 15:27:22 +0200
X-Gm-Features: AaiRm506tq3L5Z3tHq7u7PFOBpp3iK-Ike8T0d94DU02cYJ-d0FeBWZ88LSnJGc
Message-ID: <CAHuF_Zr7r-x_ov=PMf7KmKEuApis5+eQamxGkcKSh7Y=onr=gA@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: clock: qcom,dispcc-sm6125: Define MDSS resets
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: val@packett.cool, andersson@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	marijn.suijten@somainline.org, martin.botka@somainline.org, 
	mturquette@baylibre.com, phone-devel@vger.kernel.org, robh@kernel.org, 
	sboyd@kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266433-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,packett.cool:email]
X-Rspamd-Queue-Id: CC0E6156A43
X-Rspamd-Action: no action

On Tue, 17 Feb 2026 at 21:13, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 17/02/2026 19:51, Yedaya Katsman wrote:
> > On Mon, Feb 16, 2026 at 08:25:20PM -0300, Val Packett wrote:
> >> Add the missing defines for MDSS resets.
> >> While here, align comment style with other SoCs.
> >>
> >> Fixes: 8397c9c0c26b ("dt-bindings: clock: add QCOM SM6125 display clock bindings")
> >> Signed-off-by: Val Packett <val@packett.cool>
> >> ---
> >>  include/dt-bindings/clock/qcom,dispcc-sm6125.h | 6 +++++-
> >>  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > Tested-By: Yedaya Katsman <yedaya.ka@gmail.com>
>
> Thanks for the efforts, but unfortunately you cannot test a header. It
> is not possible. Testing means you try given code on a REAL device and
> you cannot do that for the header or bindings.
>
> Please do not add tags which are not representing actual action.

OK, yeah that makes sense. I will send a tag for the last patch, which
only with it applied actually fixed my issue (although presumably it
depends on some of the previous ones in the series).

> Best regards,
> Krzysztof

Thanks, Yedaya

