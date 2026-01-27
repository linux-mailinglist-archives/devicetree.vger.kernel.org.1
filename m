Return-Path: <devicetree+bounces-260083-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BXrNbIKeWnyugEAu9opvQ
	(envelope-from <devicetree+bounces-260083-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:57:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFAF997CF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4AE32301D04D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B8B329E5D;
	Tue, 27 Jan 2026 18:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zyp7u0sO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0794227FD76
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540271; cv=none; b=sgVl6lud9JF8C5jR2XyStAcOhVNtZYZd7EOXe8WI41mJyXBXu8UZUGJtJlEs9YPD9Otb9QkkGjF471n/KmuuPRUm8lzgWUVFXxzVxRKBJBOZorlqqCX+C2LLwdxYUP/NZ/FR3OZ9yQhy3WsE2hm57NpDQMtxvTDTULrgEqi+61Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540271; c=relaxed/simple;
	bh=uYbromIJd1qoItwR5l+155XDps2hGe/0NlPufen/DR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rkI40BWjwxyEoFO70BvJGqlZjajQe2q6eVkjCh0O5A5Fz58laqZckzxg/NqzcdCtp1/gy0aUUaopwKF0d8sv0UvP/KSuUiD2lGw00P9M6Se6X3us2TVnCE0nolL9U7AONTYCVn+Ufoez0itEx6/xbCQSeVZHhpTQma1zEa8hnjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zyp7u0sO; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-43284ed32a0so3621714f8f.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769540268; x=1770145068; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TdwQ2scCPfsVRQpzQa7WUXDRNsFh0xJvA20rZizqUQI=;
        b=Zyp7u0sOmb5m8caQ7j9StZBcAWA2xXWYmc9YD21UApqx4a5ERc8yU2mzlQ/PXq+O0C
         VTX30D3NF7q+jvwSGGhM0mtOUm3GmfVJPX67NaXiQZ+6hAFowkw6SB96AUtGctcC6B3Z
         tpw9ftLjRzLtJtLR61wKG1rvKwdiJn7Y9VttqgfNjkhdma5rQqN8/C9qQHpifE5HJsaO
         1Mqo3Ih2JCxtRUv8SHnZjKFAPxQpz8QMNBrG/D5nTrWEtdOhE5VyF/TH60y4+Wdi9aiB
         FXXxZ5a8zDIYmyU17JqnfI4IvLDtG3CIYcKCzJN6ayYPLrZBe3fTf+v7av3PmnxuC3sX
         HuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769540268; x=1770145068;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TdwQ2scCPfsVRQpzQa7WUXDRNsFh0xJvA20rZizqUQI=;
        b=tBvDkg8Uf2cNYnc1He79lDohMZu0RKEqKPLuIBN15YnEqbunBahKzPKrvTejUqoOR+
         cEqH6CMqPG0WV7KOsZOc6lG0DekfHkT1wgsY4oBuvwHy+xyquKd+PBAPYS4pWhGrm5Z0
         2EZB0kTDxekHGAhbjgdaQsASB2hhWNd5YWZgsbYmTxmol6XmsIaoADzn6ryooqjAkNN3
         bO9885lSCwcTQOWAPRKsbUexu3UEM1EadX97XsdHIb+Xk1bxrLwwj9+VhyMnPBdgvSj7
         PwM/36a1/q7VJSmtZN9qZPg1wMwyV7bl5i5YiVRvL1+3rLq1Z/A06CEEQqRabbh/AU9R
         rv3A==
X-Forwarded-Encrypted: i=1; AJvYcCVWocfXyFF77Me+7ohrjL1HrsvHUjv7PYAinPp9hthAXP3cMDJzVdwf5yRwQDmiQQPq4ocyEoERXmoQ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn9S8HJrt2buURxcqPnlCNUN9LhmcFxlXnuP6Yi3du5OYLRyHV
	lpSp3hLYB1+2Tf+xsdS0IFaUx8/4r2jOiTXQ3Hv3dABtcoboGicRN6jB
X-Gm-Gg: AZuq6aIaYJuAz71RHxd33aSTGvE6uZ0Yog+bzfjc2fjoA1CB8JJtdIHFehkH6R7wlX/
	Z2mm8N/FulUpCdoH4jtG9zyclO5+BDyO3zj849t8TMZOPzANdOqVbuWlWx2nqaWWAf5V01R9ce1
	QfuUazj3fJ2QH6oIuScdzeOdaVlaPflrc4KYN4yjR8RHW/4obT0akd+OQ1Nkwe6dtPUf7rSY5qk
	O9xO3rsSLK2kmOUC4lU0TeKfUplE2GnE9wGG+rrS4ecZgi1597ewTDcvYtd6mzDny4kEaao8W7o
	2dgjjMkVzOaGpdLxrFLEsi7aa4qOuq+uDdNm4DPcr3WmNCLNFS24PgB8cNfYKsziVEdIUakwMQc
	8OwmKeh4jvPeOujMGsbHW3Eau2Xm5I8pD2rkzQ1a17lEtEq6GhkItqtqUlptIQl/Eh/IjhcneD+
	Qz5V7AoJfyrqHLfNV4iI8Krtvfu5YqnTN19VoY9HkMfR0SB6C2q5ymhP0=
X-Received: by 2002:a05:6000:2885:b0:432:86e1:bd34 with SMTP id ffacd0b85a97d-435dd1c0c54mr4243073f8f.39.1769540268233;
        Tue, 27 Jan 2026 10:57:48 -0800 (PST)
Received: from anton.local (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1353ac2sm785036f8f.38.2026.01.27.10.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 10:57:47 -0800 (PST)
Date: Tue, 27 Jan 2026 22:57:43 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, linux-sound@vger.kernel.org, sophgo@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/2] ASoC: sophgo: cv1800b: document DAC overwrite
 handling
Message-ID: <aXkKfZDyG1uxDsD0@anton.local>
Mail-Followup-To: Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, linux-sound@vger.kernel.org, sophgo@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com>
 <20260127-incremental-for-i2s-dvier-v1-1-431b809c632d@gmail.com>
 <6f1d8478-c2b6-4966-b339-47c4d55fe7c8@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f1d8478-c2b6-4966-b339-47c4d55fe7c8@sirena.org.uk>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260083-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3FFAF997CF
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 06:49:14PM +0400, Mark Brown wrote:
> On Tue, Jan 27, 2026 at 10:48:07PM +0400, Anton D. Stavinskii wrote:
> > Add comments to cv1800b_dac_mute() and its caller to explain how the
> > overwrite mechanism works and why we force it off before playback.
> > ---
> >  sound/soc/sophgo/cv1800b-sound-dac.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> You've not provided a Signed-off-by for this so I can't do anything with
> it, please see Documentation/process/submitting-patches.rst for details
> on what this is and why it's important.

Sorry. I was relying on b4 prep --check. Looks like it was wrong. Should
I resend as v1? 

