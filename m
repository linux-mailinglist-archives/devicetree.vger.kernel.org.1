Return-Path: <devicetree+bounces-317566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L5MULvyQQ2rqcAoAu9opvQ
	(envelope-from <devicetree+bounces-317566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:48:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A60346E26ED
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:48:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PfEQ3nwF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317566-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317566-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF9793018DB6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F056637F01B;
	Tue, 30 Jun 2026 09:30:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E48C36A02F
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:30:25 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811826; cv=pass; b=BKsTk7ma0NMJ/iLZgwwzjo8X4nK/hS5RuFr7HJUHOD4+2Tw0nQTk6eXjzF20TSnrwLivio1w1YA0rmFJaYQfP0xx/jWSrfCZzAwcnOMP8+0X6eaNxFDFNkBRALsE2s+m9e631EzdBpxrMvtmV9XFPFZ3VLG69nBNfmZQ7XSzoB0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811826; c=relaxed/simple;
	bh=deamdc7e4XH52p7AGWF+ABVuNfU7iVgUE1OisqnuQV4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GsOu7OIMagbmtHKmy9vAawx+S8w8YOY5dIX2c8wZnpu8lJw6t6ItdrnvPGg3pMAwbmHHEEwKqvIldvXaY3KVC09dGZ29gEIMF3BWAsFpH7uaCR7dD5JM+zKu163IuflxU5pl2tIlbth5S6C1tvV2AT5ytmy7xj4qmoOor5TYacI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PfEQ3nwF; arc=pass smtp.client-ip=209.85.128.53
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-493b77b150aso8399785e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:30:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782811824; cv=none;
        d=google.com; s=arc-20260327;
        b=idFUtIKBXxBHwtGEgjQ3t0TM3gWAR1mnmOHsqi1g1FuI3mIbk5XZDt+VUYPRBVeJHr
         aGq/N31S1+Z5+J2PXpKgaBowF62WvvM3/fGNqjbweppk9ROLg7dir7nwDVoc9XeNZlzk
         BSQF1GXMCuWQl43nfqczGerNT8932YjCc3tXZ9875K8NJwz7S+KbtvmAcctKFSU4ZIhn
         fHtyUV224NXLG+Bv9hHxKf0VJzdpUifiJb2D83dFUcJemUE4rEox32IQvIscnLE9vZEz
         cCfxpoS8LsN1M4zT3J4wRRqED3lHDrjt6QOjVLGVC80g5eqYetIVMRltBYemzv2iLFWE
         9THA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CPlKKbRiy9vlf7EFixIkTpfQ8EHfHiHbdE+44m76mF0=;
        fh=oft4zztOxXmTTOdsCRjqrzaw2IgyGDAKeKtiqHLYh7M=;
        b=Scc8NUoP+oVCi+x3cTnZSAI5ZNUGBLrpzDVV93+zIDK4S8l7+JeTYPt84Py6dFmFX+
         XcVM1Sbiqq2//Xj3/NJoRmkGbZ/Wao5/hEENu0Kpku+IZMvujMYUXhodULOtjaBOmfsQ
         7LEaivzGL946kLSdWkQ055kLlO+PX4waHgIF7B/j0AqPDw+aLJtXEl9IfWLTK+ouPMjP
         BmkB3Dgc4kZa+ndCidJxqE9pOej0dsM9xXkDD7N6pnp5e8AALp7LmG6Sah1I7a5dl+JG
         +2kqqjeAa8fOUDXHV/o7pTpLZ1TR0R6yFv4c5SfvU9bzr+wXp1+AWXbCIturL2HdOuBL
         ckxA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782811824; x=1783416624; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CPlKKbRiy9vlf7EFixIkTpfQ8EHfHiHbdE+44m76mF0=;
        b=PfEQ3nwFLe/cKjBGrFZsgT3Db3wUGpZ7w0D1aXrYyp5xgLMIr8BDDGtg/DUHCt3Gf1
         GLoXOpCoYgq74wkV715cYVA7lc0H0ntke9OP+Cjlhm7oQPLpfDykZhjfwmRfDqnWmFki
         EsXJDkvmypBvmlb02wFszwbRM0ajZCTbgugdJOE/Db1YAMSl48CS72aJQXhfyjW+Gesu
         EuiexcIVDbz8xPztWebE6tzdDeHJcAFENt2DSUHLuT39lluodt4EcUfRnZLOmdq3XMno
         L1YF6Nbu4USxUl1ZqtpYyGGN114PC82Kr1uVtCyrtuyt22bzlro0eWaSdJNtQ50/P3gI
         g2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782811824; x=1783416624;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CPlKKbRiy9vlf7EFixIkTpfQ8EHfHiHbdE+44m76mF0=;
        b=pd1aRRWZp8Og2D8ou6lqMVUprHqSo1w+KB8LRFrd05wXeuQibBNIO5PQjBaLqKggRR
         YdZZIreW2QRyEqhbr134whx8Rx1hMmEHRJ0aHUm3pvShC0tKmnGUfvcQBAGECxdNLfIP
         R1AqCK1MQRSyF6QluDJgNK8nQnT8VvxkSHn+vOvtjbqhZLWDL01NGdLjmkaPz4HtcLYN
         osiFIPkiiRtojVV69n9Z7H59HuS+ZKmjgcupBSQbWJOHrf5lLElq4IAzBwrGu29Q3gro
         QXjB8ImNbEYrQJUJAZmg7+5vNwPRsB9ExUKt8J/v94rLocbXg9EpVQQ/Rf7GSkEhIwG4
         s23Q==
X-Forwarded-Encrypted: i=1; AFNElJ8cMFyxfvHakgJGOJ2EF0Y8KBTNIGdCR+3YYY+Jxq+n+MIvhqmXk2Y53to4WWSn84BchCimD7XnK0Pk@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh36phTYN4oyEcUc2hSavYcWZnFBDK7TFeyHSuv+5cXrxLoZHq
	8mjcLfXG51UEkY27wdRTmVfHzaJcCSIjwMggBm3KqB22Xw808oWN/2wu9CFXQnjWpjQOk8rUCgc
	jN1AH8ch+XEaT5QmmXfYbqtUn99FRsZQ=
X-Gm-Gg: AfdE7clLdXyI6ZX/p852sjEf4Il/0F66GDTjvBscs0SG1EZo8cI8v/M80m8O0Sb6/R9
	i+emj4u4BIMim26EByPxJn3NhMEm1d6WfjO46uD5NIFybDb/6AZgEZL1MGCwXT3Yi9UueAOxbUn
	c6YKPjdxOKPL5n6lCC+qAwmb2srJ2SGdJBlm0wIfLYzWZT9Cp3wO7p+3/GdZZEtPAZqwYmE9BxO
	9uVFxBpVX96t0hB3qVYDtodOZW7pgEajNffqaoTDC9igTEJP5WxGbrsNj3aw9SVF5UpG7CG5HL6
	9dIkwS8VHQNI9vSfYDbh4+yXxU8o
X-Received: by 2002:a05:600c:4594:b0:493:92c9:1e6d with SMTP id
 5b1f17b1804b1-493b82c306bmr46490285e9.33.1782811823717; Tue, 30 Jun 2026
 02:30:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260630042229.277799-1-mitltlatltl@gmail.com> <35f13ab2-cdba-426f-bf4b-36f53ce1d4bb@oss.qualcomm.com>
In-Reply-To: <35f13ab2-cdba-426f-bf4b-36f53ce1d4bb@oss.qualcomm.com>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Tue, 30 Jun 2026 17:28:53 +0800
X-Gm-Features: AVVi8Cf3qOWvzX8MNyg95s0g9VJ8p_Q9_tzCOemIotJY0CphIFp4XDgn5p20_Mg
Message-ID: <CAH2e8h7p-i3epbxD6Ks-ru2OP+qY6nYXA+Fm+Luexo3cZ2Eucw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-huawei-gaokun3: Add dsi panel
 DT node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317566-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A60346E26ED

On Tue, Jun 30, 2026 at 5:18=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 6/30/26 6:22 AM, Pengyu Luo wrote:
> > DSI panel driver have been added for a while, so add the DT node to
> > enable it. vdd{a,s}-supply for dsi, dsi_phy are blank since the DSDT
> > describes the wrong, no impact after manual disabling these wrong
> > supplies.
> >
> > Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> > ---
>
> [...]
>
> > +&mdss0_dsi0 {
> > +     /* real vdda is unknown */
> > +
>
> L3B: DSI core 1.2 V (both?)
> L6B: DSI0/1 PLL and core 0.9 V
>

Yes, that is what I saw in the DSDT, however, I can disable them
safely (hack the regulator driver to add a sysfs to handle these
regulators), the panel works well.

Best wishes,
Pengyu

> Konrad

