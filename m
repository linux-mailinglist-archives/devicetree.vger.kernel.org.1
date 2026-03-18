Return-Path: <devicetree+bounces-277493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNZiOmUgu2lofQIAu9opvQ
	(envelope-from <devicetree+bounces-277493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 23:00:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 594CF2C334B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 23:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58EEC31A085E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6561B345CC9;
	Wed, 18 Mar 2026 21:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AlhIzBTq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A453590AE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773871117; cv=pass; b=kTL50OxPtTItI/YqkLnoAVjETDtYu3gv0blUDY+u5MQltN5oG6vgYqQL4j78aq9l28WsSVxOk6sLgIwzi6PFz3YoauQ53RX+GzUcWmZlwadr88q2b5IZBRneomdqgrzp79ttxmEUR2zxNyEhfho2E3rD4tGNCLfCFMKa00HuYuE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773871117; c=relaxed/simple;
	bh=Zenm7moC4cMHhzK5K3aV+UpapPf9fWYppd7Np9kpH2E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gUoRhQIhcKQEd2bQwPSSLhmEOHMjzjK1h6O+g8Xnlz6xUyQV8zxcLdM+JD1UT4XBnL6JUU02UNkpgw+hj03lX4DbfazWmKKwuI2kTDpnWgBPzwKslmkIf/0Ipxpg2ryH5vA0Yrm4z4LxlcuPd2Fd4dxlOs0jnCn6rSVh7TJpd4I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AlhIzBTq; arc=pass smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-89c52ef3c2fso4574586d6.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:58:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773871115; cv=none;
        d=google.com; s=arc-20240605;
        b=AR4xdhQg4e4P/BIxRWMNMJy/TgiMgFfb1wmprq1/cjRjOEUjChkNH3T6yThMqR1GBU
         pWdoODi+2f9nxarUwnmd3r0bIP2SrYIFlKv+pZkqw4P1HFTo+wfuq7CKNLbCd1H23lXj
         Obwewg71YZYSCrjBMmow+TF9+lNzvkS4aMDqmX/as74UGNNHdmQ3Lti8TyNeE2T698+B
         Nru75xbMk5CZXRitQ+ut+oe4g5wzO60Ogr5yZdf6KtqxW2c26w/6FiZ5XUfb7LhVwRg8
         gW1A2dzu8uhb/8jU37uv5NlPd7EhrRy5gqca4KPhhmxSNBxknctYchpLTLS9XAGLHAZo
         OMlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Zenm7moC4cMHhzK5K3aV+UpapPf9fWYppd7Np9kpH2E=;
        fh=paUp37Bnx+40eYT2lzKPRqcamDC8EfJW2gnFBmqKrHw=;
        b=eyK2HMuDwCUvzYB+CXly2AsKcgXa4a5edgShKj9fLi7LVQCMy1aPb/1h2Dukpu76TU
         BW/iRGd6BCNBY4ErBJSyMRHlrA8lIY/Y71QtdBCL69eetqZtKCTgWMMK21YPFtSZ/7tw
         6BF/3uMeeZpO3vEKGeaa3aUsaWmm0lQVXmxOpONHmfHBVQ9j3TmhkA2EbbfTvfRDZ20O
         W6c68dWejinepusKhT5t3NgsnpyhBeFgEpghAaUlz2m5UfgL5Ny3UqDUNPUgl7yXTYXd
         QG5c+hY0UqZgntyq6663aGgZe40S7AGNzzNbjFf/atHGDDneDm5JekqCM6wHmiJWXg5V
         6xcQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773871115; x=1774475915; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zenm7moC4cMHhzK5K3aV+UpapPf9fWYppd7Np9kpH2E=;
        b=AlhIzBTqGIHKMA9/cGiGfD5SUIVaAbhr31rOWrbElH1VVkT4oLRscnxvnihlfaIeBi
         vNmkBKovJhjnau5bidMAyhmONp6/EPFfVsrJZ2E/ipRwjXpxOK124uhRb+TUDg8+7KtK
         GKBFNuB2Z8mXhSQvbpLY7tAb31NBKSep19tT8b8HLdBWTwtK+ZUQ1D4ef3SQN2dk6RuG
         AMlpTo7hPkOuhhlpel1Nu3goyxfymGSspVqBsl5fdNxEYFgKb7YzH3k/uRfirV5i3Q7T
         n1A7Fqtj1IB5SVUm9fYunKnotbO55syREOEGV8HwRcrQadj77olPr4mZTFWqHytJaQQo
         Onyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773871115; x=1774475915;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zenm7moC4cMHhzK5K3aV+UpapPf9fWYppd7Np9kpH2E=;
        b=du4x8j2W4p2YA2CwpnZDbfwPvOLIO8xZjWlcwqGlYetIcEK983rKIvLn6BTI28/8OV
         xNFvpsyt4UqKCZq/QcyktSt+yXbSxddcAFYjJpY4xEP3hXEFDido7ibzL3VfmLWmjEYL
         o/EBGP3ghw597HrpEvxAHtvTVo3JNLU10U4SPgmbPDyFaz6oPBSHMCiHVHEBohIlsL7A
         9nGr4Jq0G9PonrKIRk/xQihfa8TD/UcFI7iS1V5zs4WKMaz9cNR0yNmxTf4Yv7f14BGK
         2uBatGfocmJYVKXCvgf167QEudnz5klCRwO3h3fAXyIxcPH8Ss4lV4kUuwDUJPDE5Ouc
         oIlw==
X-Forwarded-Encrypted: i=1; AJvYcCXElnmUbvBXPbBQgDPDvpyVtPq9lgFPwPB2mEKegHgoSimUfdlbLJ1lcH4dCfYYAWXzNyNUFdcg13Yc@vger.kernel.org
X-Gm-Message-State: AOJu0YzZCDW1lsUBnVD3Lftu4K08yCC9AlqZ26CodZCflXrSqmEvXnbV
	AX2bwOrQMEFHN2fg7ysqg7xBLuO+6rZdk1AvKfyiXENKKtoT146hC6qQMhsCf4/Jr4vwEiO8ygp
	CRhMtlGWwhtVOV45x8UE2/Q30yzhaSAw=
X-Gm-Gg: ATEYQzx7+0yWktIgoAlvbPyEp2sVXbF6sXeCwrPwBshIDIC1o3BDWrzSecsGYBlezVe
	4h/lFv3P+P1HNk5JdpYHll7SJdPmGNseHyNfHZNVFJTD7FM+QQ7DOR3FSwxcjob2/JvpmEX2W1H
	UbFo0h3dX8T6+AyjbIxT2Tqx3ifL23haTGpSw4u/tpzQB+tQCtbQgM9mEPhY0ielW3pcLD95Ulb
	BvTXGxfgqagSjjc2ze82hDGEvq2StMTyApgB14HoQMaq1jNJQARw3pNO2TMIXU5IortT+dVGvyB
	38k//mQ8miu74K7GkSWvR++Uz8hC6H17m3y6CqVM
X-Received: by 2002:ad4:5c66:0:b0:899:f6bb:331f with SMTP id
 6a1803df08f44-89c6b58f785mr72497716d6.41.1773871114997; Wed, 18 Mar 2026
 14:58:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260315204454.124544-3-dam.dejean@gmail.com> <20260318021222.1391487-1-kuba@kernel.org>
In-Reply-To: <20260318021222.1391487-1-kuba@kernel.org>
From: Damien Dejean <dam.dejean@gmail.com>
Date: Wed, 18 Mar 2026 22:58:19 +0100
X-Gm-Features: AaiRm51rFbEo2c7d7K3rasLej0EttyagoaVbWOHShXODh8J4kcprNNhbzTO3yDo
Message-ID: <CAErgN1CyV2XuujdrasxZ4anMkuVs_BFab1oAxYxw0MNJhS+jaw@mail.gmail.com>
Subject: Re: [net-next,v8,2/4] net: phy: realtek: add RTL8224 pair order support
To: Jakub Kicinski <kuba@kernel.org>
Cc: pabeni@redhat.com, netdev@vger.kernel.org, davem@davemloft.net, 
	devicetree@vger.kernel.org, robh@kernel.org, hkallweit1@gmail.com, 
	andrew@lunn.ch, edumazet@google.com, maxime.chevallier@bootlin.com, 
	krzk+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277493-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[redhat.com,vger.kernel.org,davemloft.net,kernel.org,gmail.com,lunn.ch,google.com,bootlin.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.553];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 594CF2C334B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Le mer. 18 mars 2026 =C3=A0 03:12, Jakub Kicinski <kuba@kernel.org> a =C3=
=A9crit :
>
> This causes rtl8224_config_init() to return -ENOSYS, which then propagate=
s
> through phy_init_hw(), failing RTL8224 PHY initialization on non-OF kerne=
l
> configurations.
>
> REALTEK_PHY has no 'depends on OF' in its Kconfig, so CONFIG_OF=3Dn is a =
valid
> build configuration. Before this patch, RTL8224 had no config_init callba=
ck,
> so this is a new failure path.
>
> Could the code handle -ENOSYS in addition to -EINVAL, or use
> device_property_read_u32() which is firmware-agnostic?

Thanks for the feedback, I handled ENOSYS next to EINVAL in the v9 series.

Regards,
Damien

