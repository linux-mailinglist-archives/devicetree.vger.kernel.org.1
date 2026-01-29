Return-Path: <devicetree+bounces-260886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPuoNmZae2nXEAIAu9opvQ
	(envelope-from <devicetree+bounces-260886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:02:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21085B03A4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:02:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA502301014F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721CB38759E;
	Thu, 29 Jan 2026 13:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iippdaG1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B7533F8CF
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769691745; cv=pass; b=gUCdNdm0K+USzjMTU8NgTv/oyxX1s1KncuyC2oOlVDT+Ko4g0zp2JhdkvCzT4WZbSIMPjAJG8zRYwfXP4fyJ5btNQ8/gyYZw2h8ebH3ijZWw21CmFKwdwrmwwfIgDmoBy+OqQDhfcireU0FINc748UqoNmmzX8ErqtI1tF1xSoI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769691745; c=relaxed/simple;
	bh=zWi6BdjEruZKfQY5kJrDlYRRB/tcW9tTziCrmlMA5Xo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OSZTHPiWA2Ugv4IiYgoWc437SyoB1LGtQ3T22LVtEBOE1w8Qvv+GRSQ9yFxFF9buqVMhhhlE6g0nUemKccszB4yaM69ofWZAqX/gHOl7PWVjcSzeRsy0ZfwLUnjBIjmSYeTIejsDBkczWlXOGrsf9PKAnMg5tYFc8+hNY/EBoho=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iippdaG1; arc=pass smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65807298140so1568236a12.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:02:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769691742; cv=none;
        d=google.com; s=arc-20240605;
        b=OVzobOkQZzl0K2Vr+8zxM/pzr199A5voS6WMq314+SlTCeLrMrUusYwKUVlakrVAdQ
         oGEGKnkSuHtOeG5dxiKy4lH+52bf6kHAnUzt3mOMMrNsOUz7puqpUZjSEx/CK/9me34C
         Y/C+KaIf1MRbG2DL+C5LT63yis40ur/Ky8yQ8q8t2QriLVJyMho1qnK7ty2L5wsCGCAs
         xlbyBAg6D+gZD7weU0+NQYUaBIUqFzjmFRFMxNJCz020QdLEkp8kBbX+Qrkbi8NfNHqX
         DeKlMtVt3YdSz4dBuv+MCVnrrVsLnScRc4eOYb06+Yc3Ix2DEMFKPP7FpWvqs4RRkCng
         Vyqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o5jH8Rxdp+tEZoB9l9fTv6AucC1v6C8I9T+8Tw0hHlg=;
        fh=2wPQpXDhtIyiKheBjG3m7qnJ9tynzi9+IucA7Rw5VTU=;
        b=H5ohG3NVZRlDghu+/OkmkCUyR6bIYoBaVYWvV1k1G7uKtoD2acsRL66DgOrc6GpjT5
         WvKI8TJtV6jcegRzBCKgArrjbToio0CgaftY+0yq4iFFY1C8xCdNsxAKKjatHZoLYVs2
         QXvjybNTLs5zztXkrexQdxk2fY04NpXy9in5cCKJwvha5q4TW4G8st/3/M+nt1gc6pHF
         QsToFy1L8a909nUJW3Afxv6uYBQSxz5BtOe0R0Gepw7JkQywUDtFjVkBtbazDhuoTFVg
         S8mk3HiPIyzt9AmY6jXePkIhC2+Ne4V0x6dfb24CBSome+w93+8F1Vhbg6d67SiECmny
         P3xA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769691742; x=1770296542; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o5jH8Rxdp+tEZoB9l9fTv6AucC1v6C8I9T+8Tw0hHlg=;
        b=iippdaG1iImj0qxZcZ88l2Ln2PUC89WfsMOXtiEiyw0D0ILD6J+pzaqPlXZ5SivEY0
         kLibW2T2Nfr0cgTl0Asn+jLN8S9fzrIEGq6V0wZo6+qr4Z2yGjQZKOebOHs4icgqdtq+
         m1UCXDSEZDSZMnqtL4jfwoLIkCr1/7GfXq3r+vMfOWakLfZ5jNXJMg/Z0v4H1jCuABrM
         JkfMGAnefl8I5xJOpAkGTwPisOS7cj0PqrADfCne/cKvcNDEm/KM37Ttv0wBH7KpRKug
         OIjBrhnsC3JvVzgL0tncZ8MHRH8rtuYetzjFceX17xCrQ+P1IrsM2WLCb7Dt//GeOmcB
         8xwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769691742; x=1770296542;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5jH8Rxdp+tEZoB9l9fTv6AucC1v6C8I9T+8Tw0hHlg=;
        b=joY5kalIckzPAP+3EVeXl/ga0yRE2cgbcq0Bo/Zz/XXJWr1awZf93OHnsxlaGrdWE3
         1Pc4HcVWq0gpjRzcbxPFriORhb/sKpVuoZORylOvkE4iuQNrB9++C51XrajvyYDpWDSt
         kLwS0NCcpttERjBlokdBDj66wgn50sqGyEBaZkNPn301k/PG5xWgLyynL//RkhwwM7yW
         I1Thnn/DEcH02RtNMITswZ6QKHcdpwBElQ9drqBVEBaRRF+n39RE92+twOvDUXeL0tBp
         oitQiVUwQIWjVxM09rjE8NGdoI8tdT1WUtxim1l6GYzosuk3j9K0wQ1XCNCgG+aluxZd
         Kz1A==
X-Forwarded-Encrypted: i=1; AJvYcCXa1vApO9ON4v9Usba2a5q++GE8+fhMqkFR66qW72omRmI8eggSj2E4XerG8okO7uw5bCKoChiAXDKW@vger.kernel.org
X-Gm-Message-State: AOJu0YyAbk7NxxcS8QvClye3jr966reqjS0f8fTr4aWtorQE1luhk0Cj
	Oh5c+i8pMmgba7sEpe5L1FhA2UKoDzi/F2BL9jLsCL+go7llhRJ4nCGD2EMbqtxfhBz1/C+W+WJ
	rAXkFR8ZDLgWjuPYoXStFrN3TNOVc0+yqVoDJjDl6QX3YEH6/MKdI
X-Gm-Gg: AZuq6aLr39oBFbrzPGueK0YbDOR6sbGLA2GSN0xl4uHvYTwf4pMi0LhDIsbWJkW+EZW
	9UnsBDBikVKg+sFQ9mrgRJaL1mifRYJ6uWiDvwCFapO3XDCUrVa+4S7Kqy2lBqnbish+ATYb/kE
	mhnYYce4qeJ4IMOmOTu+VmTCZf8ASRDrPE/DkyQTAjaAkA1ppBtZSOL8SXV5AZuGfNH2xqTCimx
	t/ZH4kslfMHRbUduy1fuJ+GzY3uNq63UGLdJA2sybcgLTOb2smfq8teAu8PCUq+9vwrf5yFUI6V
	LWx2Aef4Ivs05OgiB1oOB6Ab
X-Received: by 2002:a05:6402:40d6:b0:64d:e1c:4c0a with SMTP id
 4fb4d7f45d1cf-658a5f8cfdamr6437778a12.0.1769691742347; Thu, 29 Jan 2026
 05:02:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org> <aXtB0QcVOkE_hhny@shell.armlinux.org.uk>
In-Reply-To: <aXtB0QcVOkE_hhny@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:02:09 +0100
X-Gm-Features: AZwV_QgTBsEbqAq2XkLUgo22OQOD7HpGZIhc6Tp00c8M0BIdl_pPusc1NHtuBUU
Message-ID: <CAKfTPtAg201wXU_LuO-Y0M8k6ew8-vhKsjoHzJ1sxqp3Pn=wVQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, Ionut.Vicovan@nxp.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	netdev@vger.kernel.org, Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260886-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,armlinux.org.uk:url,armlinux.org.uk:email]
X-Rspamd-Queue-Id: 21085B03A4
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 at 12:17, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:57AM +0100, Vincent Guittot wrote:
> > +/*
> > + * Until now, there is no generic way to describe and set PCIe clock mode.
> > + * PCIe controller uses the default CRNS = 0 mode.
> > + */
> > +enum pcie_phy_mode {
> > +     CRNS = 0, /* Common Reference Clock, No Spread Spectrum */
> > +     CRSS = 1, /* Common Reference Clock, Spread Spectrum */
> > +     SRNS = 2, /* Separate Reference Clock, No Spread Spectrum */
> > +     SRIS = 3  /* Separate Reference Clock, Spread Spectrum */
> > +};
>
> So this is a PCIe thing. If it's part of the driver's API, then it
> should be common and not driver-private.
>
> > +static inline bool is_pcie_phy_mode_valid(int mode)
> > +{
> > +     switch (mode) {
> > +     case CRNS:
> > +     case CRSS:
> > +     case SRNS:
> > +     case SRIS:
> > +             return true;
> > +     default:
> > +             return false;
> > +     }
> > +}
>
> This checks that the submode is one of the PCIe private modes that this
> driver wants to see.
>
> > +
> > +static int s32g_serdes_phy_set_mode_ext(struct phy *p,
> > +                                     enum phy_mode mode, int submode)
> > +{
> > +     struct s32g_serdes *serdes = phy_get_drvdata(p);
> > +
> > +     if (mode == PHY_MODE_PCIE)
> > +             return -EINVAL;
> > +
> > +     if (!is_pcie_phy_mode_valid(submode))
> > +             return -EINVAL;
>
> This checks for the PCIe submode, but notice the test immediately
> above. PCIE mode is being rejected. So, this driver supports
> everything else but PCIe.
>
> That doesn't seem right.

It's a mistake

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

