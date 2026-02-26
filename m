Return-Path: <devicetree+bounces-269007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBn7AM28oGkDmQQAu9opvQ
	(envelope-from <devicetree+bounces-269007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:36:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5851A1AFE38
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:36:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC8BA31006C2
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19ABB39447B;
	Thu, 26 Feb 2026 21:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="lX4r4W0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9051303A0A
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 21:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772141528; cv=pass; b=r6Op35q+6P24xy7t7z+wJJI3GBJEy1f7vgOz33qM2LGyeRRXFxFrut7XNASX+jSdtFgGJfoXt8b6EU52cufygtJCaC9mdTt6K0L5BxFX9OFe8TjMz6H9mhFv3kplz+gquyxnFF87kKdXHuyJh4pIjSxlz8ggtx7Mcf9SJZreNvA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772141528; c=relaxed/simple;
	bh=BIXN27cKt5LsI7McWSFCiBFDokrmQWsOHp+I6lUGsTg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=anYvhIGblO8A/upQUdAGe3r523YhkMxE/mo3ZE5gmSzhNW1scSd95xEqSnt+JBz4bSYmydszsDt30nY9DhWNT7FtvoG4D/fRIDZ8heZKUHEqJd4I/FFj2LqAkADdcv+hRREqh7Ayvwi+dC4v0chjHHnDz0ikDU+5U46rmYOmGPU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=lX4r4W0I; arc=pass smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a962230847so12766435ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:32:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772141526; cv=none;
        d=google.com; s=arc-20240605;
        b=TG1Ri2pKR5imLU5rrOMzNz7IZS8Q54MkSEMhRt9h+kSQyB2eZZO8WAetVeY9Olvsyr
         Wc3xSGTg9XJ9LGnxIDdS4Z4BX6mfgjWKfzVYfp787FfpWx7c7qPmOab9LVmge4vVhUK6
         7gppUZ+SaG8GFc6t556jfgtOsmbsfmmJG28+aiCmmzxM91Y3xVUx0YVCA2PHuOwO8g2s
         et88tIlHNtWzT3lgmQRQGSWpQ78Xgj1lmabMg1PPATDnqM3EO4VE67mr0HrzJMMU0l2z
         Kv1V4eOQaS8b+4Mq7alMBX7KDhet1l8cE1+BRquW/V8VNz5upPi2ObHGJ9yqm7jvvm6m
         wAtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BIXN27cKt5LsI7McWSFCiBFDokrmQWsOHp+I6lUGsTg=;
        fh=9oqTIS/tpn9mMOBLiDJ5ihF9V0vXGgUzPUiijWcSnHw=;
        b=URWkSs88FVBpub30K9DuHfYeySq7UrhoxWlrKuaQqmStpU5vHS2QS2/dC0AHPkSMyF
         lwVnVubdVbonCkOMwp8Kr1YeirFm4kuVozbRaE4MHC/2hq30bHJHJU5VnLa++9/+RpiD
         X/Pr3RW62w0z6LZV7vAVyAKUPnnCq/AYeiF5AC0bNsMq9UgZxFz3Y/gsOi6M1KNKntzj
         wtyj3oh2QKxCFWE+N2hPjae23bug+pYn83MwC02ZoEsVYxRLDBFgicrCL6TELam+0+0A
         G0lE8QHmruFfI3Ooq9aQ+sYuYbn/HMLp126BFoJWtKLTBdk19kGI8mHcrFZju09qGncs
         4lbA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772141526; x=1772746326; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BIXN27cKt5LsI7McWSFCiBFDokrmQWsOHp+I6lUGsTg=;
        b=lX4r4W0I+KSSx7CCxxsgldBieo4O6MoekzwN35pz4fsS+X+HzoPvV8rUgEjArPrZJz
         Zc130Z/QDG3M3SVKxF3iVXw7GfCzhxMyT3TTQ1LPYomcONmnGwX5fbEa4+MNyEk33fh+
         v5aSNiCt3e5EiIj6XYyFso0jWoH+KpSrOUb3Cj7afrsLFV2g+9TEKm+z9HWfPHnIoU9w
         dxFPPKwnsjCHoY/r6lKhVWht1vcWZrjdQy5oMbm1yYrinA4sygP/xL1wd7Ysbj+2Lbqh
         YWL4dcDbEXavdT3wI+4eCq89KIVd8ZH2zW6QglhsrucOg3iC/znZgUp/pmcslK4+dMHx
         m3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772141526; x=1772746326;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BIXN27cKt5LsI7McWSFCiBFDokrmQWsOHp+I6lUGsTg=;
        b=FK/oiRprBTrHst9HMLmENs52QncdsaE2tzyWBJxNzEa0H6cLuXl+PECWPF/VyCGfkg
         siLiKjgq22ybSHvFaO0hDRW/tJ31A7w7PCg4JzkmEBqErYXyOUjkPgUSCIAwTEOkZ+wO
         FMCT7vpbLFJ2HO/298TdJZ7M4a/yat6fFjUMCR7KIkq+5pZuRNaX7T+8XlRv2fhu4ud9
         7L3svrr49eGphOF4JVDrmue6y4jF/cUiw/7W+2YYU5ismV1ExCrW2kdmzsyt8SA9UGdl
         T6w2VOCVlr8742PD2ZXPjZ1MzMFRnyscUG3DixJeXJ22CQ7ZcXIh08tiyWCwcCVAmUGn
         /eKg==
X-Forwarded-Encrypted: i=1; AJvYcCXCEliq3U682ZsuGxyKgRp3dytTRKR/grlxFkwchB/J+MzUORZwBYaFWI+zOqy5+d6JXP2u4KkZjWFi@vger.kernel.org
X-Gm-Message-State: AOJu0YxVkimwP9JWSceimUWC6v1Wo0ORYlcpPu86CtWt5ctbC79NzSXv
	mqieajdyIiajqWzkRfgK8B/vjsFOwx4C/nYKZ9sJozigELS3CuWHDCENJCg/NLFfeXd05a95wgJ
	QNH3fOLQSUMjOhqOv5FBq4Rsy/M4x9W4=
X-Gm-Gg: ATEYQzzaeMuggT78AymSPDBdc0cgGSM3WEvnsNn9972yBBaioFv/DgcD4yH+BF0recR
	QPTS0/u8Lfldg0Q2VFbkIvN3FyeFRMRkaJVYSvkpb/uJbKJClguFYOok3xWMpOnF42FuxF8UGOc
	HnA17we+838OCOzPpLGai17TxAxRyckhQ6HiUP0A6+EP09fgwjB0IzkprO4tzmBBV9uNjG3m1Mu
	spQJlUBEI8IGtTzqMRhSQqYmo3gX2wynfjeG/SnKEsa3UTvGkVxW15uUnZn6kMEmWA9hwSgoIor
	htd3CENdX5H32WzvuHjTM9eQulMAskJ209Gmo44E
X-Received: by 2002:a17:903:1250:b0:2aa:e6c8:2c73 with SMTP id
 d9443c01a7336-2ae2e496d5fmr3711735ad.37.1772141526246; Thu, 26 Feb 2026
 13:32:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123022258.136448-1-nick@khadas.com> <20260123022258.136448-4-nick@khadas.com>
In-Reply-To: <20260123022258.136448-4-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Feb 2026 22:31:55 +0100
X-Gm-Features: AaiRm523Bjd_ZXG6sxAvgig3lFIwI8meXXnqGhq1qHMJ6dES05oESwn2i1_PAM0
Message-ID: <CAFBinCAc+gWy7ooUyV8zy5+So7dXF=+x3LAvno-f2Au4a-uDbg@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 add PWM LED support
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269007-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,vger.kernel.org,lists.infradead.org,kernel.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,khadas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,googlemail.com:dkim]
X-Rspamd-Queue-Id: 5851A1AFE38
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 3:23=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
>
> The Khadas VIM1S board features a white LED connected to the PWM_G
> controller (PWM channel 0).
>
> Enable the PWM_G controller and add the pwm-leds node to support
> using this LED as a heartbeat indicator.
>
> Signed-off-by: Nick Xie <nick@khadas.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

