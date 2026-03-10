Return-Path: <devicetree+bounces-273376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uH6WCg/jr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:23:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F882484AC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09ED7321BF99
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8737843E9CE;
	Tue, 10 Mar 2026 09:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ccJlXAYA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713743C043
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.217.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133632; cv=pass; b=nyTUDbAc07Ecmpch+KA2r4yPECBC+i8OciEvumtK7rGqISlLDg1qnzT3GTA9gpWKcXWmq9XM4CE5bguXKv7YahO5srkoSop9m/L5yGvh2tNRUmEKeuOVzh6HVFTzqLWqE3USDVa8pPnPVOWWuIoRSumlDUBJzjU7OLhLtxKUrN4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133632; c=relaxed/simple;
	bh=F7N+99r0SCezg7Bm3lA8mLx9teml5UN1QcJGGaUYlac=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RRnUQBcrbxh6YCAZJipNVRzrSJjVZgk63FV2Hh1b2IY4iCXmI5dX7jaNBRG3li3nb4BnYMo1OLXjz0EiGKZ2UYMqIYvk1NLRHUMz/2+c2VOLwshbeZBBmN2/u/sHOoDVS3EB2eq/tmF7A+iMvQjoFmpD2I9DYnz2HrpR9hdmIDo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ccJlXAYA; arc=pass smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ffc6a96602so1199572137.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:07:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773133630; cv=none;
        d=google.com; s=arc-20240605;
        b=KNmjtSOHNZwhQer+wPACf+gGDkkXEkuzTR769KBvW9BCN2gY6PZsmPiWgbHauYsRBh
         njjcbmpC0Ht/YHWfzLYreqb0NEmACzKKG3JVGn9txnI3k9wnX5+qoStGYTwtR6GsMQoK
         Toz2KEx+tsYnagU24FPRvt4V7C8U6oxLwRzW9pfVL7l9r5QGcWz3CErNwhjydJp8WbnL
         kIJINaMj0d2Oyts/pOj6lCs6/mS4ayekWhH3QoisBJk8mSEiQRpDy47ILL4Mo4mo5I1g
         cYsV0v4wLL9yvQKiGp5OYlnmik0fGvri0HNTWF9bhsHVG2IFkBYgRGuHAgGPYq+GQlqd
         LYpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=B+nNz1AInMAO3E2JjYDfzpBLfMNk8UG5uq7SrYEhfjI=;
        fh=AEGRLGPXfH99jk758SNOtu+3Usqi9wkzMqGlSiUFHZ0=;
        b=Immz6aA67Yyo7pEOkEksmpaqCpBQ0geJxSwYGv8gajAYAfc69mWtzUiN6wf868fQOc
         h800MUntONaACdcdwuBTIj0/D9ZSjVucv4wlZ06JqDeywUmMG8uCWdx8NGSvLUcXbG+i
         PB7siUmh1ewp23LItyuCJhzPcUGnVatz8ar8RqeVhkp6JXS2ozs0suDRetKj9tEgoYtg
         z5yor0irg+kcL8egigM0HFJGxhOYZ8Rsc7h8iMdzUwdIrPQ/u1CHUYcZ/C7Y3QwcTR92
         87n9eDaCCwPlvNjCQEjZ79qCzGpphhqqIIRxKxHOP4GcwC+F9ak8/EHscCP86KDwFWyS
         +ovg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773133630; x=1773738430; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B+nNz1AInMAO3E2JjYDfzpBLfMNk8UG5uq7SrYEhfjI=;
        b=ccJlXAYATgYsL+ij3ldWn9bikG2KVFo369XJPgrYRImCw/TTgYb/FjudVWxxFAb7QM
         sn1e5D/6vwcZS6u1CK2xAupfeymNgc51cMY2fY1GCb9R0Ve5Nr6ri1IOHfEOpChkVfAP
         MqEWoErvZEVKS95rJfwCbSy+VUZ3Vd/5TLoy6m4YiGVrgM+vNNedChYxqRwyyzLXSVzN
         3WheL4LdNiiAJKu0cU7Mi6yydIT+jJziSAKeyNeazEpXkAzEK43xX/AcqeRMS0Jlh02J
         eEHh0zrkTdHnRL10ajejHazfyWS0C+YLuwFMN0aUqizclM6DrqySnC02qA+7mtQ9lqRR
         QD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773133630; x=1773738430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B+nNz1AInMAO3E2JjYDfzpBLfMNk8UG5uq7SrYEhfjI=;
        b=wPgRlG65XZcJgLFsP4IlJDPxIz5WUqdQgcmMq5G+g+qZ3AYlH/vBCo8wqs/AqX49yk
         YGRlfbLsAsjbve/ucmlYrErn5vXxRNIPE1CxWiu0tcEoVlxPUY3lcoSjDj72ytTIpDx+
         v7UWBcdcwFwFqzsRUxP4lkXzQBAf834HrCNnoqajHcvUocJ9yIO76oEm5ZKGM0wB4NEW
         n36KoJmXrk7I+BzjtCSdglAUoZmJ03N/Tf4N7fIjLsDveqEmioreQceAbQ4eUYOhjyK3
         9um2IfB3KHaQ55Esfc5mbwi8y5VVMtOwD3NUmRu6uJj8HqXcvAVRieBrYgcTUanemUw+
         O0Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWG/R+zrvJfJR3/SbzGXbnsCsu7zbLISziGE2tNwWM3ao5ZI3H/0wtOxjTBY4u5Bw+HSAuGxfcJfG1M@vger.kernel.org
X-Gm-Message-State: AOJu0YyFQI+/92w0x5PGoHvSIy1y3vGGbY3y5eau0AerXzJsRgg9qF5n
	o7DCdoMccSqxRfr6eA+Fy9b3iS40Oa+83kNq8Ms4/WwcSaFuEJFXQmXIGRA2Mlg3Rdq3XoTtUvC
	LUov4h5SUUQHErM1D7/Fd+F8OwR0kurU=
X-Gm-Gg: ATEYQzwZvbGiRvSNLdmHG7lPIFSAwp3H4AWJCGt2rHaj+KGff58gcknr2vYGY3HqD0U
	qSjXBHoTt16ri40HNhH1GaOMzdVBRLFudZ1xN86JJN0otRvPj/+c7wZJaJgUNglbmQtI/CYSoZu
	YWp7dVgs/Hc4EvFv17rB4802SDLJ6Gtmkb5JvovmHPX0ds9R9QE8dgvxf5b9T5mxc5DZBr/O9Of
	jsiCgq/iRwr1TeCy9npGtBomzmYYMzhDGTYsIH33BkWA/nO2bBRSbmKS5caF+zGGYYmUr9HYfcJ
	n0vzfA==
X-Received: by 2002:a05:6102:dce:b0:5f5:4eac:cd2e with SMTP id
 ada2fe7eead31-5ffe61bf0c7mr5730209137.32.1773133630078; Tue, 10 Mar 2026
 02:07:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226-anacapa-dts-sgpio-v2-1-fd76828616b8@gmail.com> <3e9d0b356ad2871de0b3a47194726d3503ef136e.camel@codeconstruct.com.au>
In-Reply-To: <3e9d0b356ad2871de0b3a47194726d3503ef136e.camel@codeconstruct.com.au>
From: Colin Huang <u8813345@gmail.com>
Date: Tue, 10 Mar 2026 17:06:59 +0800
X-Gm-Features: AaiRm52146tZ5iflavx_AsTSdrRXnGzrXSl7eTyC_eatkyvt9sjGedxW7uv8FZY
Message-ID: <CAPBH0A-x6Mve=9C_4OFRCCQBfEr8e1mnjstG=EaRKc1wKdhuQQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: aspeed: anacapa: update SGPIO and PCA9555
 settings for DFT
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Colin.Huang2@amd.com, Carl.Lee@amd.com, 
	Peter.Shen@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 84F882484AC
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-273376-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,codeconstruct.com.au:email]
X-Rspamd-Action: no action

Hi Andrew,
 Thanks for your feedback.
 I will separate more patches and remove the document name from comment.
BR,
Colin Huang

Andrew Jeffery <andrew@codeconstruct.com.au> =E6=96=BC 2026=E5=B9=B43=E6=9C=
=885=E6=97=A5=E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=887:57=E5=AF=AB=E9=81=93=EF=
=BC=9A

>
> Hi Colin,
>
> On Thu, 2026-02-26 at 22:08 +0800, Colin Huang wrote:
> > This update adjusts SGPIO mappings and enables interrupt support for th=
e
> > PCA9555 GPIO expanders. These changes are required as part of the DFT
> > (Design For Tooling) integration and are aligned with the SGPIO signal
> > definitions provided in Helios_SGPIO_BIT_MAP.xlsx (rev: 2026-02-16).
>
> Where can I access Helios_SGPIO_IT_MAP.xslx?
>
> My suspicion is I can't, in which case this doesn't have any business
> being the commit message.
>
> >
> > Updates include:
> > - Add interrupt-parent and interrupts properties to PCA9555 nodes to
> >   enable proper interrupt handling required by phosphor-gpio-monitor.
> > - Correct placement of LEAK_DETECT_RMC_N.
> > - Update SGPIO line-name mappings per the latest Helios SGPIO bit map t=
o
> >   reflect leakage channels, presence pins, module power-good, and other
> >   DFT-related monitoring signals.
>
> Please take some time to read through the documentation on separating
> your changes:
>
> https://docs.kernel.org/process/submitting-patches.html#separate-your-cha=
nges
>
> If you haven't already, please also take the time to read the rest of
> the document.
>
> Andrew

