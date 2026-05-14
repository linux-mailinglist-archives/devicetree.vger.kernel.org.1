Return-Path: <devicetree+bounces-297740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADrcNKsJBmpOeQIAu9opvQ
	(envelope-from <devicetree+bounces-297740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:43:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A0A5457F5
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:43:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4ABC309C126
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4773238734A;
	Thu, 14 May 2026 17:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SM05bH4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D045733120E
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 17:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778780459; cv=none; b=BTsmQtWyo4Cjrfq51ch3nGqR906sk7ITcK7/1aps5UHmWbNpCWZrO+YEMooS24Hu4CQHz2KIw3d326KEY9AnX4rGl31y1VCwkXo7WnavgmGfLCUK2fTsKNvqNCtSrmnflxumctiV0m19HkdLdWJMclFHzDFkjQjRmnA9NLJQvIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778780459; c=relaxed/simple;
	bh=bUk6wQCDd9ah1u0HEJUYgtSABsnlHnupmtQG0m0QYw8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L/MSpJaduY87iOzS0ji04mYGVdiAO5GYiGpj6Yi0lSH92Swaz3Z7nPp+iyGoyGlaGy9Uh4yo0r5GHxJwhoVvc/RbEatFt60ooqc+abNcBm7s68W+2jpbLF2PiLpUttCtmHI+Wzz9RTpRHGpL9Mm2WbLrHArvcD+ZYpOmR/E9VXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SM05bH4P; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2b4520f6b32so13664452eec.0
        for <devicetree@vger.kernel.org>; Thu, 14 May 2026 10:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1778780457; x=1779385257; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RKrRot5gIr76mgKocDkm5Xwu4HQ9Oh71X81iLFyre/w=;
        b=SM05bH4PA6i1YzrvQkWNGW+/tfc8EuD4PurvaBMWaT27G50OPUJvij/5uumOTcAdNQ
         eSH1hn3dNo4OheyW7tKTg5WJ1N68NYl/DGQ/tImVWV3qfkKIBXn3KwYNOdadcvMR+PHk
         spwxty88FplGr1KpYAeAPHcP2RA6Vpyno/L5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778780457; x=1779385257;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RKrRot5gIr76mgKocDkm5Xwu4HQ9Oh71X81iLFyre/w=;
        b=In7/OZ34fqmljnUbg7xJJoLfRjSteHnbAYpzbpE5vMpUXZndYDXhO0O8ro/BvuOxtN
         MIZMKiOinE3DqzLyALReNTLC+0efP4qzPO1dtmzMtqR/A/TKnby77acFsQTTrmoh4XEf
         qmg/GaAZdbxmd9O4qQdGA/fRFzDSItDqCnFzPZWBGVYYpkHb5EyxEIXUD4Tn+SCxtx41
         uNhgDSvAekzLR2jZZZcjRYlADJbuJ65hfmuVQpEWBmxESuIJu9cstWUF7tUNa9PAy+25
         K1i3r40mxraKPmOwxjFztFHooGIKaAWB92++YyE/BzUeC/4n0O0IEzm1IGX75dTbidTV
         rF6g==
X-Forwarded-Encrypted: i=1; AFNElJ+zdyZeiO3KottBlBC59qEedaj/BclggtiWt+ZVj9jglgAACaQ8lTHfJ8GRu4lxTNFj1fM9VpVCfn/F@vger.kernel.org
X-Gm-Message-State: AOJu0Yy33RBCN0vM8V83xpDnQ0iRTzmDWOTz5A7Pw3WGpNr5kKvKlh+2
	hNcSw6IgXhDBD3r/mPY3x2PMyfKsBFiW+KgmoE+x6VdH50UAR79Yt4YcinqkORFDKw==
X-Gm-Gg: Acq92OFjuPBNa6zxYViE0Fu7VrBd6/OJVd2qktslakCZABUJuzb8/v6PCtpgYfUztAR
	QTDWoRwpsFqJ8MsKTpzjgTfCgREwXLsnvlUYR3LsvmiOzqiLqVZhafCsPzuGFwncQoBbkW2hcks
	gyLSVi0MUozjsp3vooXjBXJqkYEP9otoS/dZJ5NIGqPj7cQnVhssdAcRltdzHQClv12nz3+A3oy
	4N0sfWdfuZZMU1UFdKS1UAuAamTYLC+bHTUWAcn+IIiVIEtXiS3hc5R3yy4GreGLQGY1qXqo7py
	JtygLqbTNYThfURMfYpcmGwHzetr3SXd8BYTB5eC6+vBrmT2Y6jIbNR/UbzzMHKpRBttgKALrWH
	WgnMiVmb14hY/Jxc1f3bOPyqNKGGwZiz5Y9VRl/b7UynkpSs2lUDjfSD91kAQmMx49hlc1b7hS9
	YQeu9QJx5LvBPRRnCpWRitErhJe+C6J5GJrioCU6diwxMQxoinnvjj5Cdapwao+w==
X-Received: by 2002:a05:693c:2c0a:b0:2d8:8c38:8cec with SMTP id 5a478bee46e88-3039813caf3mr248463eec.2.1778780456912;
        Thu, 14 May 2026 10:40:56 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:1b07:5300:eafb:7524])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-30293e2ea78sm3847275eec.6.2026.05.14.10.40.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2026 10:40:55 -0700 (PDT)
Date: Thu, 14 May 2026 10:40:53 -0700
From: Brian Norris <briannorris@chromium.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yingying Tang <yingying.tang@oss.qualcomm.com>
Subject: Re: [PATCH] checkpatch: Don't emit warnings for USB & PCI device DT
 compatible prefixes
Message-ID: <agYJJVfMBVL0KB05@google.com>
References: <20260514105151.2771474-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260514105151.2771474-1-wenst@chromium.org>
X-Rspamd-Queue-Id: 38A0A5457F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,canonical.com,perches.com,gmail.com,vger.kernel.org,oss.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297740-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[briannorris@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi Chen-Yu,

On Thu, May 14, 2026 at 06:51:50PM +0800, Chen-Yu Tsai wrote:
> The USB and PCI device bindings define some compatible patterns based
> on device IDs that use the comma to separate vendor and product IDs.
> 
> These patterns include:
> 
>   - usb[0-9a-f]{1,4},[0-9a-f]{1,4}
>   - pci[0-9a-f]{2,4},[0-9a-f]{1,4}
>   - pciclass,[01][0-9a-f]{3}([0-9a-f]{2})?
> 
> These are not real vendor prefixes. Don't emit warnings for them.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> This is a simplified version of what Brian Norris previously posted [1],

Wow, almost forgot about that one. Thanks for the blast from the past.

> but more comprehensive and more perl-y than what Yingying Tang posted

Is "perl-y" a good thing? :)

> [2], which only covered the second pattern.
> 
> Hopefully everyone likes this version.

I like any version that eliminates obvious false positives!

But one thing that can be improved: your version still requires that the
full ID string be documented explicitly. For example, this still gives a
false warning:

$ git format-patch -1 --stdout 24af105962c8004edb9f5bf84bc587cbb30e52de | scripts/checkpatch.pl
[...]
WARNING: DT compatible string "pci0014,7a24.0" appears un-documented -- check ./Documentation/devicetree/bindings/
#234: FILE: arch/mips/boot/dts/loongson/ls7a-pch.dtsi:37:
+				compatible = "pci0014,7a24.0",

WARNING: DT compatible string "pci0014,7a14.0" appears un-documented -- check ./Documentation/devicetree/bindings/
#245: FILE: arch/mips/boot/dts/loongson/ls7a-pch.dtsi:48:
+				compatible = "pci0014,7a14.0",
[...]

The dtschema is clear that anything matching the pci pattern is OK, and
we don't need to list every possible variation in a yaml file.

> This is based on next-20260508.
> 
> [1] https://lore.kernel.org/all/20190223022440.146915-1-briannorris@chromium.org/
> [2] https://lore.kernel.org/all/20251210073812.1380803-1-yingying.tang@oss.qualcomm.com/
> 
>  scripts/checkpatch.pl | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 3727156e4cca..ccedf152acfd 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -3795,6 +3795,9 @@ sub process {
>  
>  				next if $compat !~ /^([a-zA-Z0-9\-]+)\,/;
>  				my $vendor = $1;
> +				next if $vendor eq "pciclass";
> +				next if $vendor =~ /^pci[a-f0-9]{2,4}$/;
> +				next if $vendor =~ /^usb(if)?[a-f0-9]{1,4}$/;

Maybe we can move this "skip pciclass/pci/usb" stuff up a few lines?

Brian

>  				`grep -Eq "\\"\\^\Q$vendor\E,\\.\\*\\":" $vp_file`;
>  				if ( $? >> 8 ) {
>  					WARN("UNDOCUMENTED_DT_STRING",
> -- 
> 2.54.0.563.g4f69b47b94-goog
> 

