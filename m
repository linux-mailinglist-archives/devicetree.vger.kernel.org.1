Return-Path: <devicetree+bounces-264913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAp6Cbx8jWng3AAAu9opvQ
	(envelope-from <devicetree+bounces-264913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:09:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED4612ADEE
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D7BA300C593
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C0172BE620;
	Thu, 12 Feb 2026 07:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JCV3ejdt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BD52882B2
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 07:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770880184; cv=pass; b=WTZsEUSBk3h1wS/sLYI6K1Y1atuqIOqWI4pTik3tdvOCybSw986qxqKz0GK3C78fkXkcIkHe7Wnckn9+TvFh0oBCxOSmA9GRXkBxZ3YiC5Yph4dQaA1CAXohex9x/WZgd6Qvno81ZKt0F9w1jVrCjCEsGafTLoF9NnR9FzGM5i0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770880184; c=relaxed/simple;
	bh=Z2nqFiMrEK54GkzHQWYfhFXprKLWoPHmJuZaC2Yd5rc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W+0IXscN1+s2JIfuhfJRV/oEPHCJKuEsEfEa7Z0eGDRmT+uqzYQKMaOVvsTOeAehwVOSIpAYcTZC8Y3siVdvf3VVSh7CyLzyNN6Ldgha0/jhVICcKrYKImXE+oMC7gYls3G2lLd/02Q2QcQm86OhX+YPKZUxewfcwR041btMTrE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JCV3ejdt; arc=pass smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-126ea4e9694so2221841c88.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 23:09:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770880182; cv=none;
        d=google.com; s=arc-20240605;
        b=ODQQ/LG2o2T7AW95pCcSPMmO/qGlOYS3PikZ/0m/1eUQGuj8baTgRnv6oyihdJSEUG
         ImCs3aRe7LhQ6DGWMWBqNIDhwMk99Tr4zZ+yEQ2oj5m9iLi8qe2McHNpJvLEHd7QBc6z
         J/Gqi5S8ZkNfgOGdrStnAnfF34MNfF2/IhrDF8zsEyFRfMOtViPK8G6YrQFsnpC8pgJ0
         uRA0GRXRBH33svR4wk/EPCl4wyToLE1iYUgvWY1t3veQK9/ODIaUy12LbvClYQ9xda7C
         qtN2iC2Pfh61zHR4y21Zt6+tSg/yVFPk/nddAn8gKRgTZCkm3JCttxMN9aqNuUH0mTZ9
         Vsrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Fs5C+REHQEO0fnXAJqU+7UtASftmJuMuGkq66Fx7Ru8=;
        fh=ITSTX2GNTdTygLqXxQ4JHlfySe9nUD5w7frDMhir0NQ=;
        b=lOG0slbGNDXqtz4CpIQY/wvAg3mcp19LNiz87kAik6mT1z9vPzOKpEt96uus7KaQ/b
         DVxNBiWdYWVALVhCVcPSJtNAwRuA/h+pSI1TZFc3ldPFdYNfUgdFqslzBy9qWCWMinq/
         l6IGIyHLKzYlo5N0weLrk/2L1L3rg+S24kTJXfqdlY4wzTBAzV5+qg84yF4p6+DlbVmn
         sTgFhd6b+kxLBSPPu+lCk5NBpV7OxBVXVmwkpRyggr2JNpqsy6e1aSvUdMxiQ35PKyYL
         WyO3WtuXwUdhzku3L4WtZiCpzML9dRyrO2sW5H9vFNoSuhJumwZKXtFRnuRxp45qga1T
         2txA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770880182; x=1771484982; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fs5C+REHQEO0fnXAJqU+7UtASftmJuMuGkq66Fx7Ru8=;
        b=JCV3ejdt/+jPJBLeyv/SRb6bklb0gfn0QXDawZszmis1l0MWT2AtUG8V2o/Ix7WutU
         xz7FE5LoZCaj97/pgUI1t9+oXaCOvB10mg293vp9x9Jdh/WOX7JxCc93xmjutqLvAlCl
         HLJ6LqC47tgpTT4gEMJBoVhr5GeeH/Yszvu23RbJIaXv0u1+cj1cLp+n1Jj4j2jlM5Ar
         h8ZsKh40XFrzGWG9WcYjcKmFBN6SXIt7l/Vt5tyezZNQGiWJvdurak9jbS1+xgifwzD3
         Rez+0R+fkf28jOHSGw9sGptUJ/Evg5t7x+mL8YPCqkJr3tpggScfvnNQXb9kZmOyybq/
         YUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770880182; x=1771484982;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Fs5C+REHQEO0fnXAJqU+7UtASftmJuMuGkq66Fx7Ru8=;
        b=eX+h9WwTlBuN17POICH63sp+ghJn4NNLoD5OxwPJjQ9beuK4Z5XvMIN+QOxOWo82y+
         O+r4PRAW5VBfhka/qxesNiMa1cghN0MOf21v4cbTFgOsOMYECYT9eZx0EB7tTUe3pUCs
         Ddf52h+1xAMDFK1BswM6gUGI0gd/2CD/7b7+bbDZZCRxMQVYWmZo9gzCk9ZMSua65spW
         QXwz9FUE8PyDheyFdeLh6em1fmM0smYzR5YTqDnkwjyCQ2lucjcj7yZm9AEoUBkziit6
         UpeUZUKnJfr+5Xegg4eJrvlhN1nEL1xu4ctm/YOcLdTSeW5LFLWfnOzq2tv4zBWrZwAt
         LSdA==
X-Forwarded-Encrypted: i=1; AJvYcCXgjMef/1VL6A/vE53j+9zUBzQXSCKSOrPt7ANVwSp6I3zox7p4itX1T44zTj8nd50lqPHD6y+9pyy8@vger.kernel.org
X-Gm-Message-State: AOJu0YxFmfR39BsXenA/a0SNmdldcJBC5nNEK+LRUL369ffDjXrZAaIS
	Bxu3FFvU5IjR5dpCGi6H/8KI3bCpfkpY6QG5MZU5/qglG9CDoo5iriZ+WEr2HV3PBwe9Bj+qd/2
	N+efiv7oFwsdpUWt/iJ99Cwm76LdcIgw=
X-Gm-Gg: AZuq6aK8I/LWyrmImLt5JnLY9H3F21ZK9I2d5/0YOQzNa2d+WfDl/YOjZnEUMtO+sh/
	ruAy6gxvGSPNABp4AXKGx5hk7feUEEzFoXi27sj3kvPGGOvEhdthIkabrixpU35QYpkmOKAnKhM
	82B3aCHs6tzK8IxH1Q8IjcSmoxK8qo3npeWr47nfUKWp9lC75aoEycF7qEQBEAjg/dEY1bNdicY
	TOdIGCJztcKTL5NjAzOuJ5TaxyPF0kSFckHxCAn9JsJ3YEAEk16NTEoh6GjwmKnlzoDkMLrMa3d
	VpLpqIP1loMcYntnR4+s6IisI+RhZ9//8WV3Hmrxm0LwjBRQt04UJWkWPtY2cc9ndL45YLRmwq7
	YPWjFxIBM1Vci7efl54MRMA==
X-Received: by 2002:a05:7022:61a1:b0:11b:ca88:c4f7 with SMTP id
 a92af1059eb24-1272f796ad2mr846334c88.40.1770880182309; Wed, 11 Feb 2026
 23:09:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212053036.2581083-1-chancel.liu@nxp.com>
In-Reply-To: <20260212053036.2581083-1-chancel.liu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 12 Feb 2026 09:12:24 +0200
X-Gm-Features: AZwV_QherBboHyGiDA8CJURenUrUDzC_HZm3EldthyJ-DQtvEc8-3hgQOSJYk0c
Message-ID: <CAEnQRZBTHt7XjCqDzavdRw+kjSCJ3YyK9rW_Xqg5xUuckOkV5g@mail.gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: imx-card: Add dsp_a DAI format
To: Chancel Liu <chancel.liu@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com, 
	shengjiu.wang@gmail.com, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264913-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nxp.com,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 7ED4612ADEE
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 7:31=E2=80=AFAM Chancel Liu <chancel.liu@nxp.com> w=
rote:
>
> This machine driver can parse DAI format from format property. Add
> "dsp_a" because it's one of the DAI formats this driver can support.

Hi Chancel,

Are there any other supported formats?

Possible variants are:

        - i2s
        - right_j
        - left_j
        - dsp_a
        - dsp_b
        - ac97
        - pdm
        - msb
        - lsb

Can you also add more explanation on the scenario for which this patch
is needed?

Thanks,
Daniel.

