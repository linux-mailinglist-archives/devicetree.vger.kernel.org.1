Return-Path: <devicetree+bounces-279946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGUPFxa4wmlilAQAu9opvQ
	(envelope-from <devicetree+bounces-279946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:13:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 74921318C5B
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:13:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E93930346EB
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 16:01:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 871793115B8;
	Tue, 24 Mar 2026 16:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LIzX+fYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226461F4615
	for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 16:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774368109; cv=pass; b=JqATywWLUECqIv7YTs2DzkkpGl/S5Uc5AzkodWPrQAIu2laHu/oB/FgHHf7kdWQ8qHvB42f8eL76A6m+oTjNMZVt+o2lde9eCavPCbcwWx0DBHWpqALRfMUSlhaWTZs3lXhoiDu0eXggG29HCDDwzqK9nLcy1ffUoWSP9RmUNbY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774368109; c=relaxed/simple;
	bh=M8kHuhguJ74cPrOZqvGCYt76N+vsROMV095NTcs2gj4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q6AzOfCokNufOX6eLhoLWsbBj+d9OFBQE97cSA/d/AtynWjnuEPap1Hv8rcu3KNdjt8hbyxopQdIKDYQ/iQ1yX1wSxMkLLpGI7FgOqyt+LY+qoo+B/neqlAj8U3qHw/iilNg1OFb7LBqvLzMU/RKxAeBta3G2gZtDIdRF73NHXk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LIzX+fYV; arc=pass smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-38bd15d82bdso30601601fa.2
        for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 09:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774368106; cv=none;
        d=google.com; s=arc-20240605;
        b=Uj4WWtCLJRbDN3u3Zz1iwrSCxu5McNFRByIqKI2KWYePcYOr25wnJ2ppsxHC2q+M5R
         nFDIcRsnLK0ZUYYwDp8Fuqz0/mwfU+ifydXDiRFvITtbEL16fvrwIZTs0NGah79a5OPo
         MBESXjMSCTC9siuz9QFyjGjjPOV22siGVIHQ8Cp2Zvaw6KyWnh33KWyhyRx5zGaf3twc
         Ea58NcM1rE24EfTUIsRKH8+OkPIWamaWhemY2imBivcSpddCgJls/JgZt1yjVpVFPFuY
         qGnzCGxnT3dGoKUWo2ULuOP/PAzGpjU2qp7xUyJzLtDK3HC0CUXeWg6e2SWrjL2EjzRU
         PZAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nrJzMvzeHZjGfPnSDRk69y0I21STEYkJGWfpIwAOFso=;
        fh=yUFgz82cidRlvxFy+VuoAxyZ6lQZ6z8h3w10ReCTv9Y=;
        b=DNqT5vu/8v4qrFGdIAcagtVGWRjMfa8YMf6ivRXxjD5rfk+2Si+85KKoeodEtxD64C
         ODVnVYZ17xcpvWAm6rlu7+UL5/cw+mLwc0ndLG5QlHhopv+L+Ufw9kNZvoHrjYeuL/uU
         pagEGHYUg0jrSJSe+1eLOMVBQe4AvjBnrcBKP0kG9166IMSPhvvB3Ui8zQ7k7QaebWbf
         nk1DVX9n8sTygq6Wx/Yw09ZxuHT75PXTNPUvsK3vDbKEs7Wbk2S/WiqX+sLBCU9GkfDx
         YiCDVVqqqEtU9WhT27buMmVhNZ9jitFVTcO7eph+Lgzf0nneiME9SYmG96AYntLyMsIV
         1NUA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774368106; x=1774972906; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nrJzMvzeHZjGfPnSDRk69y0I21STEYkJGWfpIwAOFso=;
        b=LIzX+fYVF4mX/ctf3vj0ZNFFnGNUR6TlcCwWJ+sBIzcrbJt6O8pLzC1gx66chFLIBS
         myVxuv8gEox44VewvKq4TqVYWNrUom8KBPu8/hnHFYXqMLVilaegYUfLtHtA9klPdp7u
         SKILO48DVn4/sy2BIUuAF+QUBCB4epB3g9rtDblDwbA6/Kaa/n+IzClkxkcDATPTKshW
         43LvjU6yzR8kVf4bKzvsPvE/KI1IV8F4sEQu6rszWFCF6tU/2fdcMUBkPwMgbPfImpwY
         lT+qCMdbC3RUE7Iu5hVZ8nLbQyf4h2ks4Li31bD9RWXpCwqv8V2Ava2Xa5KmRYMCQNZ+
         VGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774368106; x=1774972906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nrJzMvzeHZjGfPnSDRk69y0I21STEYkJGWfpIwAOFso=;
        b=c+NTzZmoNjO70yuD6s8HRIWQk0LSqigz1OXQS68uFz6SdR0UlrL36DIMPsrYyeJNQF
         kWcfQgjBGPqpaeLrtlmaf5rUK3ewp2/hue7CL0PfMoNbKMM2Soa1lZtzKiqbb/ti6xsk
         Ja7vLHR5PlFrld/XF/lQ84m022uZDt5h2c8mfgAzYgzoYCehSG4mOljJiDoHpPYhUMPz
         u+dxIedq32bdjIVjACJVKWII2lUfVqbIgFcMgz8/tf0I77s/sLYQox7sCl2eDcfzIPPk
         bxMI/j+sJ4YmPCpHX/O8QKLGWELu4BhywNWAN/QTijTPtCjfCPK375mMkJ4Ds1xVv9NH
         HKUg==
X-Forwarded-Encrypted: i=1; AJvYcCVZGN7f9IogulrLD/SBKachLInKewtY8rI3d7h6RF9sv6fudKz4xMXywpKM6dnuUpaGs+IEH/6AoXYB@vger.kernel.org
X-Gm-Message-State: AOJu0YwFmZtNZE+CZtWRoVIfzbNDMXRJcqoAy/RsDXpOkvAIh9Zx22gc
	tpoJ3ogmrdHCYb30XvgquOrfTzFibDvSAvZiUDKyP/eTXh95RO96my4SXbQELR6nABtmibti+2h
	ybvvhp5skoZQVInTKaZBHMplX8iGLJsXO9lYj5hQ=
X-Gm-Gg: ATEYQzzGU3h+892Tz99GYNgVtpT0TfHtOMtAu/NaMpgW+yFmJEFqYgrxMsBOdIdjRAa
	HUCRQ1ubLwL7eO4Sox1PoRy886H78pGIKOCprOF5xYAmciC2MewpVpFtObVQm50er+1cv8PCTMc
	3jr5tF4TNxZ0wvDILLL7IQ5C7mU2Wxnv08PP3IDhXaIIkZVY0j1BhzeluxnCB3m/UicfCMbSEHF
	plyenAl8GZYkwvhTx/Fxr05MoZ16apnA6AQgRNd9gpnJmnpNn5aLdLruxZ0JRQRxu6GvoLNiepq
	akChpQxIFi1mTCLwPrCYtVs0qOhWwLR13BzKmbo9DExt0w0u/EzUhjq2RuRxYpu7G0knm7i3PV2
	sJi8=
X-Received: by 2002:a05:6512:39c4:b0:5a2:95c8:ca5e with SMTP id
 2adb3069b0e04-5a29b9a16cemr10428e87.31.1774368105945; Tue, 24 Mar 2026
 09:01:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260323-ch13726a-v3-0-e28b6f97fe80@gmail.com>
 <20260323-ch13726a-v3-1-e28b6f97fe80@gmail.com> <20260324-dexterous-snake-of-progress-ea8783@quoll>
In-Reply-To: <20260324-dexterous-snake-of-progress-ea8783@quoll>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 24 Mar 2026 11:01:33 -0500
X-Gm-Features: AaiRm52QlZgq-pYKdDII5R-UZpE70r1UAWoE9tJ0Dx3Ru2XFLdzKXalMbWfEOAs
Message-ID: <CALHNRZ-TAQmcwYr9iW+j+S5Egh11C0LpPeY1SO=hgDdvG8otqQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279946-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devicetree.org:url,linaro.org:email]
X-Rspamd-Queue-Id: 74921318C5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 4:08=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Mon, Mar 23, 2026 at 12:08:32PM -0500, Aaron Kling wrote:
> > The Chip Wealth Technology CH13726A AMOLED driver is a single chip
> > solution for MIPI-DSI. This is used for the AYN Thor bottom panel.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >  .../display/panel/chipwealth,ch13726a.yaml         | 65 ++++++++++++++=
++++++++
> >  1 file changed, 65 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/chipwealth=
,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipwealth=
,ch13726a.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..5d964900795653401a87199=
4bcf6403cdeaad64f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch1372=
6a.yaml
> > @@ -0,0 +1,65 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a.y=
aml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Chip Wealth Technology CH13726A AMOLED driver
> > +
> > +maintainers:
> > +  - Neil Armstrong <neil.armstrong@linaro.org>
> > +
> > +description:
> > +  Chip Wealth Technology CH13726A is a single-chip solution
> > +  for AMOLED connected using a MIPI-DSI video interface.
>
> Here you describe the hardware, including what I asked last time -
> explain why this is ayntec thor panel, but not chipwealth,ch13726a.
>
> Then also name the file as the compatible. If you do not know the part
> (model?) number, then why do you think filename should be called
> ch13726a?

The vendor source release for the AYN Thor calls the 'panel' ch13726a,
but per the data sheet for said part, it's a chip used in various
panels, not a panel itself. The handling for various panels using this
chip will share a lot of similarities since the chip is what the
kernel driver will talk to. The alternative would be having separate
drivers and bindings for every panel that will be mostly duplicated.
This is the case for multiple things supported in the kernel already,
such as the vtdr6130 which is currently described as a unique panel
but is in fact the part number for a ddic. And I will need to refactor
that for another device I have in the pipeline. In fact, all the
device panels I need to submit in this context reference ddic's and
not unique panel models. I'm waiting to see what gets approved for
this series before sending the rest of those in.

If I add something to the description like 'This chip is not a panel
itself, but is used to control various panels', would that be
sufficient? Or does the kernel need a new way to describe ddic's
separately from panels, since this seems to be common now?

Aaron

