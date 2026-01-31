Return-Path: <devicetree+bounces-261424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGjOLtn0fWmBUgIAu9opvQ
	(envelope-from <devicetree+bounces-261424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 13:26:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 161E1C1C77
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 13:26:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C82543005D3E
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 12:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC253168EF;
	Sat, 31 Jan 2026 12:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Rcl0V2x3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87D63019DC
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 12:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769862359; cv=pass; b=rz6K+6ypRaf17rvhGLnTNFl754dW0Ztru64Sa1rVJ6OMb14m1Gz/SiY6NEs8ejuxVYJeDJT/Q28U6HJen1n5LDxDlUNHww6SCB4Vg8PnLaTfP0uiMMGYhpJ91PuZK0TnJkn/qwB6VutGwbJ/s3Falxw4Xpa1o6gdQVPeSrSI9VI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769862359; c=relaxed/simple;
	bh=MiichsdSezlnnWGRAl5mtvZSoLSKQHQU9PbROyrd6Dw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ClB3Q+vUsbIHdiZ8konQ02YdGB1uweSj3I4gegGojYu8C2hr9xvotgJyLm4LjflrSk9XiI080p/vlRGz19RYeEhoWbBWvbrh2M0b3ixPI3zaLMf70/J98W7+IYKLITlFWjoDXE4NYF2/YAeh0mWojx0re248ISIqeTWK6RPAmS4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Rcl0V2x3; arc=pass smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-6446c1a7a1cso2363686d50.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 04:25:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769862356; cv=none;
        d=google.com; s=arc-20240605;
        b=NRuXlp5YbuC2BC4kjZT4kM3oJtToXOggOR9kHJj52IHABrseoFfpIsaSDlEvbAVoZ9
         4SBJ7qwU5sjeDMFJHzcUaj2lF1i7wSNWBjh07EZJHFE2trPkFweJWmWSUhq79el35f68
         dIdtaT103/a19prwcoONoko3DnfqOq2ziw45wAd6LRYejFL/DW5gimbCy6+gjN63ZPmD
         Ui7BFO6UptAhYwdovFCExyedoGyquQC6yErMs2+vvdb78api5jqqDFQrAOpDJhXjGFEm
         ZV95913d+1Wa5TnYMChKM+D5jSjkkard65bBBwppx2s1Yjvhm3uOfNyGNZj0GcT40zSY
         Tc4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=h7Cbjeq7Awq/O7OYp4EoKC8ia2Rbiud6u+LNrpADDGA=;
        fh=yYR+04cJnuc8v2Hg2AjfBOUsOHNYPFxpe9PPw+1Yf9s=;
        b=N6Cij5Bn8Bsg4Iua0CpvAeMz23hb9ue1p0aypnil2HbkCfRAmqJR41Zqeu7LpkG3EG
         s2H1QmrSt7Ir5eC8i3WLDr3FgEg3/kRukNHaV0J2haDLrGrmSZYmj8KglxVz93pXB0ub
         WACCnVxq7CIET4JNetNKWyLgcOeU/By6leYX7JM2zdQRTDojv+yt4F1Kyblj1NQIAOr/
         HYXgCnfod864Yz9GwtXdxwMg9pBwO1+z4XV4hP4COpNXwj+4EwIOl4cXsfJc8P0eVGOK
         e84+wm1rt1ibyMWcZ/CB0w+cusdWvhrZuBpO6q4e6/FKBy5oplEtsydrQfjE6dr0fYIC
         lA0Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769862356; x=1770467156; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h7Cbjeq7Awq/O7OYp4EoKC8ia2Rbiud6u+LNrpADDGA=;
        b=Rcl0V2x3zCS2EsJMD3Jp8Zm7ItqcmZ+GUWLeaXopT2ryeAilXub/BuUoxz2DQ3TJ63
         O4icnwfmkZ7byTHmWPJfVEcAeve+BOv0b90xJRCXBKOIQkP9XnMH1H08obDlGcG1s/4E
         DmZpeqe3I1daakQSmg00ti7gx/DqNVtv/1diQwB8HatnQe205t3xpnHaZBx3KyyU+a82
         clAtTi9ZgE7swbY+Vs5G4N3e7AlkB8UAjutseh3sFhQfzVCYIy7bRPMWp7O62FCdtIPM
         uPdAXrfqXP3JxTr17tj/dzDDk8c2ql9qJhnpKFNjW/M/NfVWtbtLh0sMswIr/ZPIh3+y
         W9pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769862356; x=1770467156;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h7Cbjeq7Awq/O7OYp4EoKC8ia2Rbiud6u+LNrpADDGA=;
        b=ZM0MIjpt+6I5LsxK6AxNpOjsPyGLkf43Toe4LDBZMMdnNWRgAIp95lc3ohFzsjqMNe
         85+IKu+c8pC5kZgaS8HTeVO9WAX9QyzYa1z3RgVsDnMGR+C7tDKqPEmwlO49He6aGBV+
         JQj8JOfdt6AOZp8s8zbLXhdeXScyP7gEMNjuV22ueVIxwc2DlO5qVLNlzk67RsBnwzrk
         cmY2osib/BcNMnbdJ3A7FrwDAseya+JL+V5GKBJW5vG/yEqd6/xe4Tg1UukqX8wY1u0H
         A0DavvL/RPdDADlnWYfE1iOAJNhp/sbsmYHnEiRzeC20Hu3x0xDubTsvhxfcarnS1ypM
         C2Kg==
X-Forwarded-Encrypted: i=1; AJvYcCVyINx01aAecfxVxZzqYD4v2qeWWrX8MW5GriCQxmVRYB944gwJOaM9QYmSU3DrufLLqtfZbZRB9NVM@vger.kernel.org
X-Gm-Message-State: AOJu0YxMoFrZuyzMDsusjr1wJ2071I4r0+FFzANO0mwJ3sVahTUswJcK
	CmAdkKicrQzH1GUoCT2CQ39+9ojb1Zra2eollNYkQdKsjRzRlGbS0UZdVlN/tocYIquPlS6Nos9
	w+0tKgnOX06pD/Utm78LR2F6Y620fOB3nG2XDKKmphQ==
X-Gm-Gg: AZuq6aIkChWcFlMuyCTSeY5r0VYKJ+dK8roiBWAxh0TUgtDYHMOk91YOoNc7DFD7Ya1
	DftTl1+fkNtY9jwmhby5NzYA+T0vYRImwJdEYTFT0hpqTd7aDGYmn82RKggUkbOzA2b/cUnrym9
	MDEkLN9Jh55wYpEtEIXXRdOUythBzEfa4Q68EVd5fsA5QSuGLOC/kdffrMq8OVHJ5SmbHWHy2TL
	ZVMDhY7r3eYBpqdVcOLzo2xYcY3RjVj1qXyoElOh7g/1AAJ9g5M5SEfaXsyOte+U3xaGUnVl55T
	ZW2uO+OyFAWlSKc64SpULgbxkj2lSmD0ApCjXHMxUApU
X-Received: by 2002:a05:690c:6:b0:794:b829:a972 with SMTP id
 00721157ae682-794b829b51emr9689697b3.54.1769862356527; Sat, 31 Jan 2026
 04:25:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-2-2c86b06694ba@riscstar.com> <20260129181604.GA1398997-robh@kernel.org>
In-Reply-To: <20260129181604.GA1398997-robh@kernel.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 31 Jan 2026 20:25:44 +0800
X-Gm-Features: AZwV_Qjm8BHNJs0GMJn5ivWOUQubalnC8bF3mZnT2zWfuDpse3TJU_08t2ThoRs
Message-ID: <CAH1PCMYmK=cenJAvhGdZuh68fwNu-c_JJFpyztZUXvcOTv0YSg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
To: Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-261424-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 161E1C1C77
X-Rspamd-Action: no action

Hi, Rob

On Fri, Jan 30, 2026 at 2:16=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Sat, Jan 24, 2026 at 08:20:17AM +0800, Guodong Xu wrote:
> > Add supply properties that match the P1 PMIC's actual hardware topology
> > where each buck converter has its own VIN pin and LDO groups share
> > common input pins. Supply names are defined according to the pinout
> > names in the P1 datasheet.
> >
> > This allows different boards to describe their actual power tree
> > connections in devicetree rather than hardcoding supply relationships
> > in the driver.
>
> You are breaking both forward and backwards compatibility changing both
> the dts and the driver. If that is fine to do, then explicitly say so.

The breakage is acceptable, so far as discussed and agreed with Yixun Lan
and Vivian. I will update the commit message to state this explicitly in v3=
.

>
> A secondary issue is the binding and dts go via differ trees and we end
> up with intermittent warnings.

I will add "vin-supply" back to the binding with "deprecated: true" in v3.
This should solve the binding and dts warnings during the merge window.

Thank you for the review.

Best regards,
Guodong Xu



>
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v2: Remove providers from the dts example.
> >     Pass the 'make dt_binding_check' test.
> > ---
> >  .../devicetree/bindings/mfd/spacemit,p1.yaml       | 49 ++++++++++++++=
+++++++-
> >  1 file changed, 47 insertions(+), 2 deletions(-)

