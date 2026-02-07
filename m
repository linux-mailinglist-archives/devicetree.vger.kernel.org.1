Return-Path: <devicetree+bounces-263545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMl6OF67hmkEQgQAu9opvQ
	(envelope-from <devicetree+bounces-263545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 05:11:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D6E104D5B
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 05:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CC3353014F52
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 04:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649382C21DF;
	Sat,  7 Feb 2026 04:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="NTRygHsl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C5B340264
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 04:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770437435; cv=pass; b=LFatOMh7m+dI9+9k9FGqDa6reT+n+CPni5zRRXYUV8ptfljQq/V9y/9XcBGrUwFt+1I1QvG0XiPj5rrzd2ptnrkAJVisMY9G1YQsTYrNQ86ob3eQGkjKtpkFysgB8RHaUMeRZ4OmENSvATmKjVKpsrh98+6vYK4psJEoxxcbgg0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770437435; c=relaxed/simple;
	bh=/olLHK58Ree37pd5x+aRR4nUmZI2TIMK1khE0n4fVcA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hqsrbpcEy1sEA1sjByZgzCj2A8gQDWX1noYHbQMt+99xs0fBsoWF//ukOPeLW9evW3wzImuIMOW0FaOi03glSnTF3bFOCmfnPhaq8NamPkinn3P6IGdoTbST2FrFr1KxpGJKn3bSRc1OVK3zUPtURj7yZvl5omTPM2sYeRNZC1w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=NTRygHsl; arc=pass smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64ad019bbd4so1043913d50.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 20:10:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770437432; cv=none;
        d=google.com; s=arc-20240605;
        b=JnfA4gEBy+HTiA7imWKXkdQz5satH5yFWJ27+cx81NsClmstAS8YRweK1tPhQl7iLn
         Vfx9eL/o3WsWmxYesZxWfqCFuv9dUpOxuYQmyTfhLgpU71F/64r+bo5288LiVWzm+zSW
         iEoHLRgWH+oq6LKMPz8Hc74yIQCe0b0uMMfEQQZH+imi5vpNvQ+01jqSabAmQXYG3rOd
         gfGcw+jhScp2yKjiC5lAjVUOnisuFVBh8ddbNufruPNziDkeykxE+oCwbqIaBzOZ867D
         XYNVzfpG/OOE4OKU5NuR+BZTSRByJScCLmBcHzWtay8Q0Tgi7NWpUYaGcnxtE+K1EuuN
         0F6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HQK2vIOwkG2ALyK6WHU0SCQALHfOl9ftPcggyCW9CDQ=;
        fh=61oEcdipjOtWXou5l2PrJFG4wcz3VWgyE6BEjCbyQ5o=;
        b=H8KryDkymEvU4pOX3e7Op/GMV4tKXi0TeVhLt7MQFJlEpT56Vr1eF9+UmupCvmSzMB
         IhzABoPidbVYxTMIXkeY9Go0Vn/BjjT6t5T9wPCK07h46zj9EvMO+VPPl/sKGlQRwY6q
         TDT1CuAJnDArJ5Wk0DZf4IggatxApBTRo3OVsLGlXD3urvmVYfFf0WtXDq0VodenySq2
         d6XOPnYmoc5lwNCdn+HQyr7OXb2LXuPzxg9r72edbeRftVStAsAei1s/FMQYSue0D/OJ
         mQ0kT9YTAROoqd67qT+sg7s35PuHLmkwOjlKhs2GdCN3scB841mNdckQrfnXTM6NAzR1
         FiEg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1770437432; x=1771042232; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HQK2vIOwkG2ALyK6WHU0SCQALHfOl9ftPcggyCW9CDQ=;
        b=NTRygHslQR8w5Cn2pI0AfM+p4GLQkOqsczjs+yD/t5I2I14CigTX+uYhzP7RxGyoRb
         tB0S9amA9+vsAysECxRSnQRL7Skq2rTYITnxoqamLyKJqvAuFu31NDMgZoTXl/IaMrYB
         gOH9G/82yvYLW8uptVCnd0ynvXyph2X9UqTM24Fzy7Qp9USkzzyKnHlH4fPBLTstZEJc
         qzKfNWdcYBrzfOzARCnLOxyrcsSDgEXizkqw9pKriqUopbg1RACsln98Rb2q8nPLGb3z
         LIesPMjcQWDnoXQU1cEQ9oksvictfhigAirSZEVul1Rq5DCKGYtDfoGe3wwsz4kdYtPB
         EIOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770437432; x=1771042232;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HQK2vIOwkG2ALyK6WHU0SCQALHfOl9ftPcggyCW9CDQ=;
        b=gtse+gQEC5fYv0JsV8lxQq7UQC2lz8ih+tOPSEmMrX72wrXce8+OT2d9JobVRoMrrv
         /QwuXy5Jvm2Lkn9L81f7sEMLmQfjhdWXEnC2xBp4qruv4XY1dORro0Q4pY5ZdUxAcKYs
         AXPgbVG4tHvLf3W0pU0N+GPE2fqF/2LnTsW5QLS8spMsrjpRTMHfRWQQ426AhmVqGSq6
         OhwO15MSoAuRFfQjPaTsOPHRpCqcrY2mDrRHbgzglYN4P9QtxLVXuA35pYru6alQxp1N
         hUgfoLpNiUZ4pbVzMRZDcR9HK72CrUjqu4kkZ/YqwVJ5j9V9fFM9mNCLFbIU/hbeHAND
         vRVQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2vi/amaajuZakKdaetB8UIEJ4BddlLO4gdnJGlkW9dgDfmYC5zOX+EDF5lxYASrXSSKE4ip5ihNvJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyhnHCgFKwsMorOTZ+Sx7UFyvuLNjjYP76HbqcG5+yAU5ghccD4
	iOYO3zBmYL25jPqRSg2cvqA/uXbRvhQb3h//7uKfc5dI/Nj1zBg931aPlbUpjWBnYxiVHvqXAUw
	S4Ol3gIgz7wVcthdPfX5r6+hyZMk2wC+VTgS2GWjyZw==
X-Gm-Gg: AZuq6aKTtZ8eeF+jjoVBjncIotW+HLzHUxJW31w6sZ0UqDv0jSEOkhRABjMYpSoCiAF
	iu/rB/b1Zrp+tIbBsIxdprxe4g+5W6du+YxG+plhqk/zAcCfhxvtFrSqErQ17M8zY4Gh+HByZDJ
	Ak/Hbj1cU/5otSEHGdhgyt/ivzhDkHLQAzQ2oSnXOk1vfBQaOMsFmBRpQB9tMJAlLmD+c82MqT8
	8cFJva1PVQXbBq6TSK8PcouemvAfBoUDa1Tz0/fGEY6Xx+ztHtAs2O4ceeCsaZ2fB28uWQQj8hL
	W7G2c/4csYIfBxXMIAa0vrGJFnHBFFlTw94A1KUU1XU7Jab7GFJ4LjD5krB9
X-Received: by 2002:a53:c5d1:0:b0:649:c36a:a9bb with SMTP id
 956f58d0204a3-649f1f42967mr3431006d50.61.1770437431753; Fri, 06 Feb 2026
 20:10:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202-atlantis-clocks-v5-0-0922e43acaba@oss.tenstorrent.com>
 <20260202-atlantis-clocks-v5-2-0922e43acaba@oss.tenstorrent.com>
 <20260205-spiffy-bizarre-doberman-184d2b@quoll> <CAEev2e_S9LYV609VmrHCqNneuTro=hbAjzgHFLAO6RD0_fErwA@mail.gmail.com>
 <cb18f760-500b-4417-b706-cdc7448441a4@kernel.org>
In-Reply-To: <cb18f760-500b-4417-b706-cdc7448441a4@kernel.org>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 6 Feb 2026 22:10:20 -0600
X-Gm-Features: AZwV_QiWVk70UuqcqOk0z1X8KAuxupWx6vboVsxCRDDE3guQwzCiVTZlUA0eLqY
Message-ID: <CAEev2e9SqrHu5HdXzpCf1wuFNakEa=p8N-CMEZY-=DwS45E80w@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] reset: tenstorrent: Add reset controller for Atlantis
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263545-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-0.962];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 14D6E104D5B
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 12:47=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 05/02/2026 15:18, Anirudh Srinivasan wrote:
> > Hello Krzysztof,
> >
> > On Thu, Feb 5, 2026 at 3:27=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On Mon, Feb 02, 2026 at 01:46:50PM -0600, Anirudh Srinivasan wrote:
> >>> diff --git a/include/soc/tenstorrent/atlantis-prcm.h b/include/soc/te=
nstorrent/atlantis-prcm.h
> >>> new file mode 100644
> >>> index 000000000000..841516cbefd9
> >>> --- /dev/null
> >>> +++ b/include/soc/tenstorrent/atlantis-prcm.h
> >>> @@ -0,0 +1,31 @@
> >>> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> >>> +/*
> >>> + * Shared definitions for Atlantis PRCM Clock and Reset Drivers
> >>> + *
> >>> + * Copyright (c) 2026 Tenstorrent
> >>> + */
> >>> +#ifndef __SOC_ATLANTIS_PRCM_H__
> >>> +#define __SOC_ATLANTIS_PRCM_H__
> >>> +
> >>> +#include <linux/bits.h>
> >>> +#include <linux/types.h>
> >>> +
> >>> +struct atlantis_prcm_adev {
> >>> +     struct auxiliary_device adev;
> >>> +     struct regmap *regmap;
> >>> +};
> >>
> >> Drop, there is no driver-wide user of this.
> >
> >>
> >>> +
> >>> +static inline struct atlantis_prcm_adev *
> >>> +to_atlantis_prcm_adev(struct auxiliary_device *adev)
> >>
> >> Same here.
> >>
> >> Do not add symbols to headers which nothing uses. These are private to
> >> the driver so they must stay ONLY in the driver.
> >
> > The definitions in these files are shared between the clock and reset
> > driver (which are in drivers/clk/tenstorrent/ and drivers/reset/),
> > hence they have been put here.
>
>
> Ah, but then I wonder why your clock driver needs to access reset driver
> structures. Or vice versa. You are only expected to get regmap from the
> parent, no?

Yes, it seems to be doable without these structs. I will remove them,
and move the register definitions into the specific drivers.

>
>
> Best regards,
> Krzysztof

