Return-Path: <devicetree+bounces-258946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MndBEN4c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:31:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D6E76462
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:31:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4113F3020D43
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 173582DC321;
	Fri, 23 Jan 2026 13:31:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23B7296BA4
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175105; cv=none; b=UeLB3oYc5HzX5RFTg3wo4158fCFOMg0JsmhooO/yItQAd3SOSIwDlYwWbaYamIE/np6bw8m2oZc+7sOqPCZiCp8+xBWM+MGNcxKWeCAhh1qvO47zI5AfmjMV3MY84d6tG5bXbJZamvenscGedAkOg1w1xfWiLmFyzCGHrumhARc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175105; c=relaxed/simple;
	bh=5NurO0R2/OhT6VhbIKg6bkeoRSQoLzY5e3peAIZO8zE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uCK3erOkNAYkvjuZ4L6lJ/EF2o/X7xk4gD33ccQhzVP9IojUrf6q2WPKJ0psH60CE3aZc8gg2uxEZG5LFnl1jOGvPZ3vkXdlH9jB4g4QJ84sYgKoj7GZNXc+T4TaYBK7DLgJM/vHpnnccCi16gXxsyF4npyh8jix3yE5n5HOoyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5f5423b0980so492275137.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:31:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175103; x=1769779903;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uRZVas5P6xxkBpdwTHJQR+xs1A0EdTWP84ona+zohk=;
        b=WCwkh1VfB/Mkj47HcytFzfzuOPSBUDwK5ZHahctEeeWXka37mVPFxyz4CYyhTJa7u4
         A94Hlx3uAbd8MO0Dj5onDGnNfHcaxvuDiezXfWUieb97/tp7Djda9IwWtR4jTRpi0f/B
         MLk7Q5zFCNVJDRxi87YOFO53fLC4SJfxt1YsBYBK/aAJo0cRGxTYpFaL3AUTnF1SdYdu
         zGqmDuMKmBBvyoFNoGYEPsBqy9cwsfOxXotdXWsurERk4Jd3K1FZlWP7KiyeSjnyQ6tH
         lEC6NUHfDlR/OfCtU1inPQA9oj+4VLeViICQjOPqHPySL4YSQEjCZjsZ/CWR0sF8dbUs
         WNtQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8gDVwB+CVERtDbyRYkBZhkRgZUo5nwMFHyZdokCL/UBeOLX8h5phvs+LKkRpqJedTOp0XIjRpEheB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+4wAiHyoe8k0pRyWNoDEpilS3lBYYNSlImqa4EMPhaTOjHSa3
	CAtGpjM+q9HU7fSyBgfeQ+aipx3JUwnb+/Z/3dqu+8Sv3/FPMtJe51zKJuZ+7T8e
X-Gm-Gg: AZuq6aL2CnICheMmdg5I5X64tOjigZB5tWjO/WZ4hGsvXROxv2ws+5xkzt7wZkY/qje
	Gw5dwPew9vnvn+O2zR52tuV6kyBsYSkCjQ2NHd13Fo9+UbSq+uLYuvLbljRfXlhRcw18dsuV8Wr
	NrO0+gnGvgpROnCXsvJnyh7fswHaw/RowbDgVogvCEnbUboT+KF34Sgw/2f1hqpSHfPhBFmyzDQ
	iouLKyG+NzdeOVPl/ON3C1ClMsp7Yt8VGU2WbqiZ1R8HVI1WwQhqet2AoqpXbbjhOm5uVyxcgwa
	ubtyywxJZWsu+WVvmbObt76xuQKMrMcN/fWu8s86/glXq6k4vFDUFB+lWix3qAZOka8ss/pCBRp
	SBbPagYuIc4a5Qulg5ot0JyC2WiAZC+ZI8ushXXvjdvJ5Pr6j+nYX2c+5apcVJkaM9lhDfDwZIH
	y7+8TpiMoDL9cUOQHOVgLzksACxrSUL9b7XkWZuvMHbG5kVooB
X-Received: by 2002:a05:6102:cd0:b0:5ea:67f4:c1ad with SMTP id ada2fe7eead31-5f5586773e5mr313947137.21.1769175102650;
        Fri, 23 Jan 2026 05:31:42 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d3d27d2sm501513137.1.2026.01.23.05.31.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:31:32 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9481cdd7665so603814241.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:31:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV44cmfUnSePfFrBo+/rSUkuUa8+jlCQiNZvm39s6IFfiL5mpMAh97jObQZ9XG8j/TrwEaRtJ9lc3Wd@vger.kernel.org
X-Received: by 2002:a05:6102:41a9:b0:5e5:5ed7:60b6 with SMTP id
 ada2fe7eead31-5f5587483e4mr261455137.39.1769175088847; Fri, 23 Jan 2026
 05:31:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-5-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-5-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:31:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWZoJX6P9VEMoFRaPfwQUEtr65f0dE4djfP-SGp3MGEfA@mail.gmail.com>
X-Gm-Features: AZwV_QgVgI8LRuqulRD9turw-2cvtSAPBn2muYug1d2m7BRf781VDBF4OGiC5Ms
Message-ID: <CAMuHMdWZoJX6P9VEMoFRaPfwQUEtr65f0dE4djfP-SGp3MGEfA@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] arm64: dts: renesas: r8a77965: Describe PCIe root ports
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258946-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,glider.be:email,mailbox.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A6D6E76462
X-Rspamd-Action: no action

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add nodes which describe the root ports in the PCIe controller DT nodes.
> This can be used together with the pwrctrl driver to control clock and
> power supply to a PCIe slot.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

