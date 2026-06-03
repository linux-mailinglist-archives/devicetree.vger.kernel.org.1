Return-Path: <devicetree+bounces-306432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bBqUB2xlIGqU2gAAu9opvQ
	(envelope-from <devicetree+bounces-306432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 19:33:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB1963A2C6
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 19:33:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=C0ykJXsu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306432-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306432-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3530F301284B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 17:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 986D8426D33;
	Wed,  3 Jun 2026 17:23:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B19337756F
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 17:23:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780507422; cv=none; b=Z6RHW9wnxGXO+Ay6WcOLdbALtoCYUIL52zhSu99js/2ncPkrbXz9teKWOhQ9ybQDmJlPyQauf+dK6mFqqEXLCG/62RMXf1heaGqbAPGq/ZuXFJFJrfRj1HZ8NbeCqMwu6iaOw+3xv41xBqLLpJvdbZZO+04Uv6BiU6ijzx3JVNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780507422; c=relaxed/simple;
	bh=ZHGFNjdms5o72NHG5mqWdI+YKiAUtQqIG0qM2Nu/sBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZVadXrKa8hc5ACY5ajrm6EBO1dx1db/J20cNE9GSVJAlELF9Tm64WUl7sjq0j/TNnSCHXogsQ+nu6+1gAPx5xJmO2yVJhDPCO4I3JeKnuEyOdlaLt0slP8IqTmU6uhqwA7k+aXOkdPD/qrROhGXiO7ZnbHaK4gY9LnRRPNjxgpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=C0ykJXsu; arc=none smtp.client-ip=74.125.82.182
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-304f0039c02so52070eec.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 10:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1780507420; x=1781112220; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SrzBV/CHeC4K43UCwv6a0kN1Tfy/GhWE6NmP1fIYMXI=;
        b=C0ykJXsu5pCDhL4JYW9V3w8b+ODbcDuvR1uaRaQ15dbWtStGSY2mczSaS9yDaW9ANS
         JP9QhtfQkVmMazvuBi6bsvEsVTXoRxnDYsUWq+rTxcfh4paNMa3tFVbZsEh0+PJf+tph
         eMdY0tgDWJmZr20KEVYJ9pxHb9/nXhj5VRgEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780507420; x=1781112220;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SrzBV/CHeC4K43UCwv6a0kN1Tfy/GhWE6NmP1fIYMXI=;
        b=nh5PkVJp5EneAWscE//q7pp8VqSt5BARGJGa0C+ULrkEzD/Xo1XVN1gMm1CAsbhr6d
         BuoglvbN61d9esIeUlVO8J4M3iXUCuOY9V4kVN3GdipiLXqJElVuBhEFJ5nzAju+H8H7
         I9jtry/Z8Lg3ueqQ1JRAl3rnTg119j3MvkC64RpDH4c7eQz79HjIwTVt4mEcdJftPf4b
         tcZiqpO7IKWYsMArxCfa9sX04Z0GqRXaEY+fCROA/WPyq/Ng79s2AIzng5od24U152GX
         Jxulgxy18iUQ/m3fE/oce/W+H4l546vxDL2uRHbjgdjTgPpY9wj3Tvr/36I6xtEn4/JU
         yIsQ==
X-Gm-Message-State: AOJu0YwWnPMoT6hEFlqzr5EFRXTdbgxeMxZ3E9fnznQ+noHl9kvNsfmG
	SBFmMIr4MzcNVyKCBpMJlck+tGoLyJRLankbXECsHAxuV6hoyMyfcTVrZHgTqtpV2w==
X-Gm-Gg: Acq92OHUPGDbnrXnm00qtcMKimFl5lcncY1qTX69VpXSti5PMwa9l5rp05q9lsMXH4f
	JQTfC8HvgnfD3pfnNPz3fHeRHhvYJT9tvKAJlFK9mlCMLjlJVT2hcvTV56dc6fMNopZhUvW4eYF
	OMN6+207A4n47fQP91Q3pRd9tqz9uqDn3MbN3Dchm1/tgFmS5/mw7bQHJMV89C6UCgm/uenZyMo
	209W3H3M7+uH3dS37WmNXMItVEj8VhaBDpvPJ4gOODCPUV6bWPQ0Uf9sR7qzNPK7GM+xCZEVL9m
	IV2On9CEgL7h1pAzVmnFnhhhCxpjVHD7z8PS0G4cA+8jUHKM6kHIEvegynJdRyYtdqyz1nFQND8
	MmHReDKCoK1G/z7vNocvQ0lQUQKqPDI/1VbWhYmdE/xuoxQjNvP2j03OtHQ8+Yn2QCkliPEk9C/
	BeZE6lNrj7Cfl6kjtvGh7J1dqJFtVuOwC5Z0jCxMi/83dc8Nb/jITisLuPob3afSha/M9g88g/
X-Received: by 2002:a05:7301:128b:b0:2ea:b7a9:580d with SMTP id 5a478bee46e88-3074fa80739mr2310951eec.9.1780507420313;
        Wed, 03 Jun 2026 10:23:40 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:c444:80f4:5ace:a65c])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-3074d9fde90sm4323779eec.0.2026.06.03.10.23.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 10:23:39 -0700 (PDT)
Date: Wed, 3 Jun 2026 10:23:37 -0700
From: Brian Norris <briannorris@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bjorn Andersson <andersson@kernel.org>
Cc: devicetree@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev,
	Julius Werner <jwerner@chromium.org>,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 0/7] dts: Add /firmware/#{address,size}-cells to
 Chromium-based DTs
Message-ID: <aiBjGekXkr2nIf-w@google.com>
References: <20260428200712.2660635-1-briannorris@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:andersson@kernel.org,m:devicetree@vger.kernel.org,m:dianders@chromium.org,m:linux-arm-kernel@lists.infradead.org,m:tzungbi@kernel.org,m:chrome-platform@lists.linux.dev,m:jwerner@chromium.org,m:cros-qcom-dts-watchers@chromium.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:konradybcio@kernel.org,m:wens@kernel.org,m:matthiasbgg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306432-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[briannorris@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[briannorris@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,chromium.org:from_mime,chromium.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AB1963A2C6

(Trim address list)

Hi Bjorn, AngeloGioacchino,

On Tue, Apr 28, 2026 at 01:06:52PM -0700, Brian Norris wrote:
...
> The /firmware node has an empty 'ranges', but does not have
> address/size-cells.
> 
> Commit 6e5773d52f4a ("of/address: Fix WARN when attempting translating
> non-translatable addresses") started requiring #address-cells for a
> device's parent if we want to use the reg resource in a device node.
> This leads to errors like the following:
> 
> [    7.763870] coreboot_table firmware:coreboot: probe with driver coreboot_table failed with error -22
> 
> This series adds appropriate #{address,size}-cells to the device trees
> used on Arm Chromebooks to work around the problem.
...

> Brian Norris (7):
>   arm64: dts: rockchip: Add #{address,size}-cells to Chromium-based
>     /firmware
>   ARM: dts: rockchip: Add #{address,size}-cells to Chromium-based
>     /firmware
>   ARM: dts: nvidia: Add #{address,size}-cells to Chromium-based
>     /firmware
>   ARM: dts: samsung: Add #{address,size}-cells to Chromium-based
>     /firmware
>   arm64: dts: mediatek: Add #{address,size}-cells to Chromium-based
>     /firmware
>   arm64: dts: nvidia: Add #{address,size}-cells to Chromium-based
>     /firmware
>   arm64: dts: qcom: Add #{address,size}-cells to Chromium-based
>     /firmware

Patch 1 and 2 (Rockchip) and 3 and 6 (Nvidia) are applied to linux-next.
Patch 4 is obsolete / unnecessary. That leaves patch 5 (Mediatek) and 7
(Qualcomm).

Bjorn (Qualcomm) and AngeloGioacchino (Mediatek), any thoughts? I can
resend them separately if that helps somehow.

Regards,
Brian

