Return-Path: <devicetree+bounces-296325-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLP8LiROA2r63gEAu9opvQ
	(envelope-from <devicetree+bounces-296325-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:58:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 305B852436E
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:58:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7982F3209C22
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 15:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4193B83F9;
	Tue, 12 May 2026 15:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q4RH5Bxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E6F3B995B
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 15:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778599285; cv=pass; b=tAwoPTXwnJJqXVKfSO/0pmzVNgibGM6vUJS4N/mg08WH5iEVTfBZN3BpRWXza6zvaWUdsNdJbwsuqQcrODWybjvfWwNVhLcSuH3V4D4HZ4OTcIoO+3kPc4DkHZzi96uYXveqapB5dCuQUepUo8C+e1qr7oPH7POksP1maAsYf94=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778599285; c=relaxed/simple;
	bh=d6Ai2oZGfRKCbsGfMKcyIjj6RolLAPQ0oieRpFAWaes=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PuBDKHtBk4hleL0LAk2XhkuVfeIVP8d4No67p6jBycWWi+u3QbpENrMwa2Z73v0OWSKLCnQlmoABnck9LaCwSeAQ6dMKjm63rB494D0fxHx5vl3zixR7me5aztHmLsJSAl9efxGw5jHOAVt/qmAzlI5cqKddyKd9X6dpNmkCTqM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q4RH5Bxu; arc=pass smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-67e24b8ef55so7969259a12.1
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 08:21:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778599282; cv=none;
        d=google.com; s=arc-20240605;
        b=MnuiuwKheIElq1uorhdFXC42ChD7nMZKFvXZ6eY+XPZYNyUdNfE9HHwUlx0u3TrngS
         M7DDW6xmnmCmDM+tvzFKCnj64zYZpQktdWkDWuVsELNX0vxEnQKTqUB0atG/pDNOWD8q
         pDUPAA/opeYMWj0uoY4bEVInMmeed7r3W8/etZursipXJyxnQ3xbXOFW6C2QAxUhrfeO
         BajHem81Wrnwho2tt2cfr+7444PrF7proxSvkt1n/d8eV6rGpl6lf3dKkEtV2dfdEulo
         YmORmLHIhv0bM7gs7Nzisu1LHNU4DcJ49TNVct2R9XGXtUfl4OhgeTeGkb7RjHxVPOss
         hbxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t0ujevqgQXDHfoEPkvrwGuNuwg0PASas1+bZlJQ1jQU=;
        fh=hqnnzvFzTA4nphg7MZenWzR6O8rpQuHi/UgzIIur53s=;
        b=WpJ0+Qd7KNDZDzwRD5mLfZWIvz4qYUh9/56JY+5PSf9eO57sGsqCZnG0MEYVsx0yvo
         NKAOlzYl+Tkx9BF5TbVSy4dS5FTBDbr77lNuL0gs02mMn8N1kGGc7cWSqkAkYLLCbrMS
         ffIvmZGrcbv8P4XKuWrTwu+Vj0Gthl3TfT0maX4StftzNcmDMaASMwMwGho0/ksdPuW/
         jBDOPPTuqAmqaBem16INeG/kfsOKMQTd+sG2OLTzlxkoNgUH2paKmAYAWJbnxfJM0oD9
         helZK2Q+MRg8CgtEPbBisYAIsshxt5ZNjPUbZ+cBgZwdteRde7CQ+gEDqRNBG8RfuUa4
         Oifw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778599282; x=1779204082; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=t0ujevqgQXDHfoEPkvrwGuNuwg0PASas1+bZlJQ1jQU=;
        b=Q4RH5BxuUtXZ5bNxuocVfhVepTorYWk17UQerZ1sE267yfrWRTVhDcT3u40DBZzyuy
         fju/g9f0gnWEaDM0ruVcJ/bOE4JrWJFIlGWN0Qzoidvp7bOHz70iit+3yNsCnEm2Je3w
         Y30eUW9JZYdgEtpZq1prESK9fOrr06Wczjg+4aRtry3e9JokzBdfzkgfE4lokgE6p7VD
         qZzHoT0FiAgiGar+7st5qVCh0p2LE2T7YMuOpQbJPloStKSO/Q5BrPNZUtdMDtq/7G/C
         +wZhh/7UNRkszwWrLb9UOmnEuppG9f8RnoB+p6piyNhdvOeZl5/WMwijUVRRd/DFYD84
         yUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778599282; x=1779204082;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t0ujevqgQXDHfoEPkvrwGuNuwg0PASas1+bZlJQ1jQU=;
        b=h7+UDnGPlVeM3rwOQdkgS5V24bYY8RJqFr0np3nUJKbXMQOE8qSRSErJ6J85uQHL5l
         LV6wNYOD5Wv9wbKOK13IOeCUjyOqgsRiwlEPgj+8/xbOPcSyIuhxsBErLVxgYwvUOviw
         CUIokjpVEyT1bhi9J1qFqb2kbqfN6AdfxQXRKjW6JAOMPPAcXZ7b1D7Lu9HdRxZ8ACnL
         0Fti7wYJWYCCaUT9jQk3gXrxDkPuGWhojc73Wm/n5TnjAkC9gUFq16Og6tV5MobMt6SO
         ANuXjrHSrTFbBmqSABjk5iNB/JY2vMHbLGSw9/GT6gzSI/HTpcV+9z9TWnjJOkatx6QZ
         8C0g==
X-Forwarded-Encrypted: i=1; AFNElJ9x2Mjwdta9ax4B7I26cka1GYlyPDOb+QK8VnBr+hB2ivK8FBx3Y1xtgZ9rzmE6wPYFYtjOjEDj3eJ1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy41vKYmJFPFpbuKR2r9xNnUQNUcgVlM8AFStZZ/ZIJL7AHxMgp
	S9kQ5DdCVHqkyhEG8yxm6xRRiHNswwlT0fK6WXbE+VZSBc/9Tm9kbCSSP08alV7UUEi30a4h1N6
	HhAV1iLMeQ7sNO/Yhv1H0PpdHS3a0vHABFwUUazv0okyLwae8ellKmzM=
X-Gm-Gg: Acq92OHYNynxIykkIFqM4p2kjjQSmFDaMe0iShwGRZ6xW+6yUE++xa6nTkzjP8b6cnX
	/NgoFYi3cfh5EHczY5rXd0iCpBaiTawC9NFvkXz3pkTZlVr5jmjK+jKWt2KwI7zIvgQLeCu4WaV
	Blf/ltwNJR49bN6uqkknom30uz/PK0E77cJlzvFhSwrR1dgef/6nvwMbzvT1DgSh/rZ8oLKFrJn
	Qa4zxBBDWjKk7zaAoL2zbWDGQ5RQtZcMdumITkU8UWHDluaeU+zyYun7Wm5RnwfGjLqnnSn9KZT
	C9cwyyBf13nO0766XLfqC74jGqOZ83x9pCJbnUi65g==
X-Received: by 2002:a05:6402:4315:b0:66e:8ca6:e79f with SMTP id
 4fb4d7f45d1cf-680cf3642bbmr2086182a12.13.1778599281971; Tue, 12 May 2026
 08:21:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <472f85bd-42c2-40c6-abfd-b76924797069@ti.com> <CANLsYkzt9xUczxSU28u-TfZAAjr0ufZKXAj8Eqfq=45gufXW3w@mail.gmail.com>
 <f7ef3417-eb84-4467-ac72-a9bc8b0c81e8@foss.st.com> <21de8440-adf7-454b-acfc-06e50882e075@ti.com>
 <4c526816-b127-43e7-86e9-eee4dc1152bc@foss.st.com> <c6f68ab5-271a-41ed-b285-75b739f1edd6@amd.com>
 <87850f70-5275-4393-941f-d01146a9cffc@foss.st.com> <da3b79b7-9dad-48cb-b552-cf6df445899f@amd.com>
 <08c815f5-ccbe-404a-95a1-a549aac8a55d@amd.com> <CANLsYkz8HpM_8eS7DjN_jmYs4T7P9xY0jYmdiAx5WO=_1zvFpQ@mail.gmail.com>
 <4ae35920-2539-4b12-8dea-efd407b8aaeb@lunn.ch>
In-Reply-To: <4ae35920-2539-4b12-8dea-efd407b8aaeb@lunn.ch>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 12 May 2026 09:21:09 -0600
X-Gm-Features: AVHnY4LT22IVt808sLwJL3ajF9BoO5QglODlYYWO0TdL8CMLNQDb8uF-T1sOSus
Message-ID: <CANLsYkwBk0KbN-k9ce+5=oT+scdZ3nU5AOr3Fz4zT=0AFzghDA@mail.gmail.com>
Subject: Re: [PATCH v13 3/4] gpio: rpmsg: add generic rpmsg GPIO driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: tanmay.shah@amd.com, Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>, 
	Beleswar Prasad Padhi <b-padhi@ti.com>, Shenwei Wang <shenwei.wang@nxp.com>, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Frank Li <frank.li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shuah Khan <skhan@linuxfoundation.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 305B852436E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296325-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,foss.st.com,ti.com,nxp.com,kernel.org,lwn.net,pengutronix.de,linuxfoundation.org,vger.kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,bgdev.pl];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.poirier@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,lunn.ch:email,linaro.org:dkim,lwn.net:url]
X-Rspamd-Action: no action

On Mon, 11 May 2026 at 12:18, Andrew Lunn <andrew@lunn.ch> wrote:
>
> > Arnaud, Beleswar, Andrew and I are all advocating for one endpoint per
> > GPIO controller.  The remaining issue it about the best way to work
> > out source and destination addresses between Linux and the remote
> > processor.  I'm running out of time for today but I'll return to this
> > thread with a final analysis by the end of the week.
>
> How many of the participants here will be in Minneapolis next week for
> the Embedded Linux Conference? There is even a talk about this:
>
> https://osselcna2026.sched.com/event/2JQpx/building-virtual-drivers-with-rpmsg-key-design-principles-challenges-trade-offs-beleswar-prasad-padhi-texas-instruments?iframe=yes&w=100%&sidebar=yes&bg=no
>
> Maybe we can get together and decide on the final design after the
> session.
>

I will not be in Minneapolis next week.  At this point I think things
are converging into 2 main takeaways:

1) A serious refactoring of the protocol to include only what is
available in the virtio-gpio specification [1].
2) The specification of GPIO controller number in an extension of the
namespace announcement [2].

Shenwei proposed embedding the GPIO controller number in the
endpoint's source address [3], something I'm ambivalent about and
still have to look into.  I also have to read Tanmay's latest
comments.  I'm hoping to be done with all that by the end of the week.
With the above (1) and (2), a new patchset will be required to reset
this thread.

Thanks,
Mathieu

[1]. https://lwn.net/ml/all/afjyH5JT0JS2j0L5@p14s/
[2]. https://lwn.net/ml/all/afzIABSh1xtMEGbf%40p14s/
[3]. https://lwn.net/ml/all/PAXPR04MB9185BFA6E7375FAD0B15B021893C2@PAXPR04MB9185.eurprd04.prod.outlook.com/

>         Andrew

