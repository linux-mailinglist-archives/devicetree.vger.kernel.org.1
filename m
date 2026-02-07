Return-Path: <devicetree+bounces-263550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2RzINq3RhmnORAQAu9opvQ
	(envelope-from <devicetree+bounces-263550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 06:46:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9C31050B3
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 06:46:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F31C301B720
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 05:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A5628643C;
	Sat,  7 Feb 2026 05:46:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4652D23EAB7
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 05:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770443178; cv=none; b=dfzY1+B0iO3a7fcyn+5gTFdRsx4q3RGynEkgPgJMbOJk7mfugKSMzmEiw93H516GjKlC9EeUtP3uQdYiZkqDPymdpszDBKfMsSEfYmMvTpHouSkZO60JmDomLhFgAHb93j58rKsX1PoVkyq+XFo6c/pnUshDDSfo3hu3NVcZ9Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770443178; c=relaxed/simple;
	bh=YOQlCZHHbbZyJPUzjKktvVxHrWwacE2uT1p/aLLvyc8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ujaf3qkjx/MGEVY1Jay+wXFJl+aUaDmYSUUCWSajJ6rt4K5Z4dIYqnk2+TD4YLQYYXSsn1i4Cpd0BY60ors+XZkE1xGyXz8ypqROv1u52SJ9m7aGnal0C1xJifbradWg3affE+QqIsbLIgeXU5dQmqPb0zDTCFXYopjEZhULbnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso266487d50.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 21:46:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770443177; x=1771047977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d8l2EHUnJJX9Xx1XHYB+bf7GBC5MQRG6MKCmKfcP4wg=;
        b=RSHBqjGbaJ8YGC6Dr+phAPyMsid6Ty6s2lAGOlmZnpyGLTKJUYYYrFhq76QLbmMZ/D
         hiqYEEzX751V2VzfSPMqkO9UOmyIvy0+F5mc3Ig+hvt/0RvJrwO/XNLk6XoL9tYQgxb7
         uwIPnlZS4Pboo59+Nkl7mB+AMgJZ8ywkW/m/L6WWxSilze8LgQorLJrqprOd/bfO5pjL
         V2Xc9vPUhbLOvLly77EPPmj4dK9SgMbbdT2tNBNz2BgWh+HnQnpLrneChK00i7ModrDF
         K3IjnFaEixWXl2sQphrMRC0SrRVTBY9TyV0tqO8pjDMqyGaYu3HdrdPnBo1Tdv2vIxeJ
         DuSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKu9KuRcPwe542aLbMkUUgwoEp80K1zHqEEWunpdKoIQ8gz1tM1DVK//GNgT7FVmVUEC6w270v47Hx@vger.kernel.org
X-Gm-Message-State: AOJu0YySmoCKp8znjJtprakNlmjPGr/IK+wMB8gLM/akTiWu3Az8FrSe
	z/23E3nH8XWo9XSemFzIVdafwUqQiJ3ldWMegGgJuqSHZvQuTixuyivpjbGQ8A==
X-Gm-Gg: AZuq6aJD0Ywus9IL2fnIWYO+6kmoTZ/m8T462mCImq1HLLz8ovjb4P2faoxIKqF2eR4
	QXuFjqcY3u/oeTgMJvBsoNZ+MmilP0OYkgUUDAUZCCYeRdDR4JELfLe9+nN5F4njeIma+L5tgHU
	pzoNtsx+rMZq2eRn1V1dgNkPsOmECclaSSXiNeD1vCvmp3v5uVFrf9ybDiY3DO0iAWZmBJlwBBW
	V86gMCRnKuwVqPOExZ5LwFBr1+CwDFjI8s9EPPi2CHN64Ws7fSixR8Gy4xt7rv59D91A03XLk5o
	zWCq/5JBXDtkt6uzgV2l0jIQz5KGYAe+Ny9DNUb9E9wjGTYI1uyR5zjhHcmRWeruE/vowtAezM3
	x122w06f4oK4o4uz/4D94MmUbNvG2wESNhBQh/k9GCQVfQS6lmBeBmV0bARrJ1qHXMh/Vu1VHBh
	weFlReDMM7RXXAiYsMwyRvtWo4i7ClcxUwcXU7uWSuBQ==
X-Received: by 2002:a81:b813:0:b0:794:b8c0:5a96 with SMTP id 00721157ae682-7952ab53824mr39551087b3.56.1770443177358;
        Fri, 06 Feb 2026 21:46:17 -0800 (PST)
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com. [74.125.224.47])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a2417d7sm39720227b3.41.2026.02.06.21.46.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 21:46:15 -0800 (PST)
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-649bff225d4so2579976d50.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 21:46:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVLri2E4mwqvaMrO6vDKoVoLNw2vPgzyklsljvCVtuHakECwmYo51w59A9rblAsimAyRslku09qLsX6@vger.kernel.org
X-Received: by 2002:a53:d8cb:0:b0:644:702c:3c02 with SMTP id
 956f58d0204a3-649f217a97bmr3572480d50.70.1770443175479; Fri, 06 Feb 2026
 21:46:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com> <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
 <d398cd57-41b8-4646-834e-ff0c0b7ff749@kernel.org> <CAEQ9gE=kH4Np32xZdp+jzaTo9TMjtLVRD+xaimuKWxdag2Whew@mail.gmail.com>
 <b1d791e3-849e-4d76-bda0-816418f98e39@oss.qualcomm.com>
In-Reply-To: <b1d791e3-849e-4d76-bda0-816418f98e39@oss.qualcomm.com>
From: Roger Shimizu <rosh@debian.org>
Date: Fri, 6 Feb 2026 21:46:04 -0800
X-Gmail-Original-Message-ID: <CAEQ9gEkA-Gw=96LJe3vf3S6ada5o-mDqjY9B6NNpSaO8saSfvg@mail.gmail.com>
X-Gm-Features: AZwV_QihtJp0QSpnV28G3pEcBRo5BUt4aTaxPVtga7w2YcS8hqXq7wTYtfmaWv4
Message-ID: <CAEQ9gEkA-Gw=96LJe3vf3S6ada5o-mDqjY9B6NNpSaO8saSfvg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1 IoT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263550-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.912];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 2D9C31050B3
X-Rspamd-Action: no action

On Fri, Feb 6, 2026 at 2:20=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/6/26 10:55 AM, Roger Shimizu wrote:
> > On Fri, Feb 6, 2026 at 1:41=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On 04/02/2026 10:20, Konrad Dybcio wrote:
> >>> On 1/31/26 11:31 AM, Roger Shimizu wrote:
> >>>> ---
> >>>
> >>> [...]
> >>>
> >>>> +/ {
> >>>> +    model =3D "Thundercomm AI Mini PC G1 IoT";
> >>>> +    compatible =3D "qcom,sc7280", "qcom,qcm6490";
> >>>
> >>> You need to add a board-specific compatible here, see:
> >>>
> >>> Documentation/devicetree/bindings/arm/qcom.yaml
> >>
> >> The true problem is that this would probably fail validation, so I
> >> suspect this was never tested/checked.
> >
> > Thanks for the review!
> > I did test this device-tree with the board.
> > If you mean some other test, please let me know in detail.
>
> make ... CHECK_DTBS=3D1 qcom/qcs6490-thundercomm-minipc-g1iot.dtb

Thanks for the guide!
I tested above command, it was passed for my v1.
Sure, it also passes after I add the board-specific compatible. (not send y=
et)

> make ... dt_binding_check

Sorry, I never can run this check command. It reports many python syntax er=
ror.
I guess the script has issue, or it needs patch to run on my Debian system.
I'll report the issue to upstream separately.

-Roger

