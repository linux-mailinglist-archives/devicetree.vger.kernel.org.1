Return-Path: <devicetree+bounces-277267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHJ7KdGwumkVawIAu9opvQ
	(envelope-from <devicetree+bounces-277267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:04:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7212BC913
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F04343014698
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626EE3DA5A7;
	Wed, 18 Mar 2026 14:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CC4+o3mm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E7B3D9DDE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773842636; cv=pass; b=QFPxq4sA9w2IDUCL6W94zFkciqzTpCd3I+8QIe2tdUrl0x6drN8/tuWqiZHssfALbnuW1t0BD41SqpycFa+E8/5qxtuWtjH/Pp+K1/4SXK8Tn3S547fVUnDFidHYkMrIPyxolki4iYLAktp6uWwJz5ccTtRQUExRvquDquU2kco=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773842636; c=relaxed/simple;
	bh=8lG98xPJIcfrsLjn2HnQDuTsz4pEXOePmgQ8BC0wVhU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V326cuGs2cgtx7SloIJ2y9OIWwPIo7FsopCAVT5BQdiRCl4k37m5l0P3IlbP+KpNbn0o+2rT2QNT2OyhZX9QaNUmSpZx1fOShTMHHrGOB4eK1tJplmXqleayfA9G5hHtxb4ID5O7rGdQWadJyFBwzkaD9idsr/H7LanSLaGVAF0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CC4+o3mm; arc=pass smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-439b2965d4bso4917056f8f.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:03:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773842633; cv=none;
        d=google.com; s=arc-20240605;
        b=aK9WeAWxkWB9d/9UkvfGTwD0u9hZgBGVzw6WDfGGLURnkGNSssR6O2DTuTToJbPs9Y
         wm9lFrTnLgNopCmCvuP3W9f2BxHWDAZgzcZhzMJhAqba2D8kV+vGkgDErKdrzBldTzzB
         HzVBflN0zBQeB67GWkITN/m22ZwEsS3rVGlNk3NVBZBG14IkRX6n4RmJCRVzm1/O/Zk8
         RVxvOMBM/qBS8F+gc2qgXIXn1Stht/0vWMuy+Hf71CmQYCzcPMq4cSroehZESKCplHfF
         GGw+CFJCnlR5YQeSizWsy7kdIESe3d+ZwzGC3RPvyWEo7N6rtAKyrsAxxKWxfjNzplzw
         FQAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8lG98xPJIcfrsLjn2HnQDuTsz4pEXOePmgQ8BC0wVhU=;
        fh=4Iycmxm8kbEQuS1/OMFkJpONhR9KTkThMlANtTcneZw=;
        b=HFbwZDT/aMLTN5U68xBThQMOP0rxOwXVEmEfwl+w4j3JZe7/UZEv2IBZxiExpqGtUI
         buSUtGtMRJu9VPx3PnjqhuE2Q32niRW6E6PMHwQXOqYYoO7uR8uSBCT5jFSNwv60IN1Y
         jHpDEs+1i0gAruj2cmStfmFFPLT+l8BvS5XW0cj598AdY8i6oSD2edjVhy7OXKo5XnCv
         KiWtWScUdOSPUNkJnTVhY+n8/iaZvEQyAPIGnUyPPRokLHxn/MjHDhVW0bsklBTgatCP
         XvkIhVz9xya87RCGaJ3H4MlcWMQBDboStJ5HnkxmeWg1DlpELK90rOLGfyrThOeaW00n
         sliQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773842633; x=1774447433; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8lG98xPJIcfrsLjn2HnQDuTsz4pEXOePmgQ8BC0wVhU=;
        b=CC4+o3mmp39nHQAVnTNFZq0soxOfM3NqRny07iVX63s/z6RzNOMoYwbz6FkkpOm0xu
         P9ZLoIs5N9CzBUnCsm3NJQZiYkngjTFZ33+371sYwSowyK4jM+lYEicNLSzOat97G88n
         isIsdkCaK+f/M4ghMLnwLRfV6plQqdrGGFo+8hK5AKIqOCJUbHnvTYL7ljSQfdIsnNBK
         9sfYY16yKio17rypnYP+DdRWKgYY/YtjKfRxiFiDt2xGSIR8TSe5XsHUJCnoBojJZxLs
         JxnvN2uokctG8EVCiDAAmezrRBIQjX+L0joAKCPSJT/N8jZg7lIcNhURKQer5NkGXVZk
         TIXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773842633; x=1774447433;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8lG98xPJIcfrsLjn2HnQDuTsz4pEXOePmgQ8BC0wVhU=;
        b=O46O4kWDIIb1hvG0Y1rOUrTWA4NMLseaOQSuJw6NroAwWunKZH0xUhM5k0w64x9vMG
         zbjEkwcXcVQP0Zxsm42P1CTL0AGb4PNSuqbuQlzop3ffZi/IvR77CLnlEItMZYeWCEpn
         Y8gSF6PIIcHJFfhixsouorqu34ZbrS7fTBvD3HkVu/MHLVnIjEG73TLBRGAIg0hUiuMm
         Du4gKniXyP2Nxv4zbFpFqTHGri69cSnOSfj5S5uZVaUrVYPzOol3k38egnkkhmBi85Ci
         dXaOuQRDmEReIlkI0Bg3B2RW3MqSLCUNs+1ndLKLBKXcGxK3N9ecGxty1J1I9YsIHPj6
         kSbw==
X-Forwarded-Encrypted: i=1; AJvYcCUAr+offZWQVtLqEqc7pTDAQDxXGzKwaAV61qY6DJkNA1YkUGM01tAd1LDB5ob1O+c1/527dalpNyyP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw87Yg8of7fk7aljCmmFwJ42FUL8feCfJT58tJSXm9CqGoZLwZr
	gr/bLdxUX1n5q77WlGEOebXNRLABzsn4DcXpL/n9tqP0lietoHWaZD94nGDtWQQCuYOzM0N6J3v
	lfutXbdBn9QtlBM2StXrKs0g+UmupAa0=
X-Gm-Gg: ATEYQzzTeO68YSY1FLh0ZTphTXknw//qLO4LCg1ADaXy3X/+xSZMCJimUwgdd9QC9VL
	dmzyJZwrkZQ37q8PGFNz7QHaG8xycI7cn/d+O57WMI8L1/AgSOZ+39LxgJwhsnzaokDnRrlSbx8
	HJ/hyA+NKv4MDYHy8avuAR0uURYbZkJZtkHXO8cFJCghyh/NIz0WkFl5M4sPzaJn2b0x1qSqQxQ
	c1cd/c7M8KGSdmBFIZwqNYst78TURGk2UuGbtyL4ecG8htFENimOukLt+Udz90s6X+33ta2MtDb
	DjbIHVCGlTQMVzgor+vvXhrKmG6KJJsKd9MC0GHUUP86kIKQJs+gkA6RvWXMh1htky/WULE=
X-Received: by 2002:a05:6000:2209:b0:43b:4aba:8f44 with SMTP id
 ffacd0b85a97d-43b527c9f8amr6003824f8f.45.1773842631993; Wed, 18 Mar 2026
 07:03:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310212927.3372410-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260310212927.3372410-4-prabhakar.mahadev-lad.rj@bp.renesas.com> <abgQpsArW3VrCAns@shikoro>
In-Reply-To: <abgQpsArW3VrCAns@shikoro>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 18 Mar 2026 14:03:25 +0000
X-Gm-Features: AaiRm52XH_Yoj9A8pfiDuADL_vXlzcgQ_KeyAjJd28V1LoalRa-7OAaByy5sLzg
Message-ID: <CA+V-a8us8MiyRtAy9ySShY9XKepY6-Cwy3MpVgMCVK47adAV8g@mail.gmail.com>
Subject: Re: [PATCH 3/3] memory: renesas-rpc-if: Add support for RZ/T2H SoC
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277267-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,bp.renesas.com,vger.kernel.org,renesas.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,renesas.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1B7212BC913
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Wolfram,

Thank you for the review.

On Mon, Mar 16, 2026 at 2:16=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
>
> > Add a new compatible string "renesas,r9a09g077-xspi" for RZ/T2H while
> > reusing the existing xspi_info_r9a09g047 OF data. This allows the drive=
r
> > to bind correctly on RZ/T2H while the register differences can be handl=
ed
> > in future updates as the affected configuration registers are not curre=
ntly
> > accessed by the driver.
>
> This sounds fragile to me. Can you add a comment somewhere in the driver
> or headers so people wanting to use these registers will find out that
> the SoCs are not compatible anymore?
>
I could but they would stay unused.

For example, consider the COMCFG register.
On RZ/G3E, bits 0-1 are used to control the `Channel arbitration mode`
On RZ/T2H, bits 0-1 are marked as reserved and the write value should be 0.

Currently the COMCFG register is not handled in the driver. Similarly
it's the same for other differences.

Can you please suggest how to handle this case.

RZ/G3E HW manual,
https://www.renesas.com/en/document/mah/rzg3e-group-users-manual-hardware
RZ/T2H HW manual,
https://www.renesas.com/en/document/mah/rzt2h-and-rzn2h-groups-users-manual=
-hardware

Cheers,
Prabhakar

