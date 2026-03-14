Return-Path: <devicetree+bounces-275725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Bo2ChR+tWl71AAAu9opvQ
	(envelope-from <devicetree+bounces-275725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:26:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A62AF28DABA
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1713302C347
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 15:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A20D2EB860;
	Sat, 14 Mar 2026 15:26:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5875F267B07
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 15:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773501960; cv=none; b=C2v0G5arIjPzaHsJH/3/dc6qNDTcfD2LS4Wn7ipnzmiM9gl6F1N+n7ICGlThCtHMjphVBXXV7p5ylBMb/wdRe2b2NFEQdqrbIA9GQquh1IgQ8v+oT+P2Q+sPHkVL+YeaBXvuglbRoPwD+IEL8rGSOrEKTX7Rh/+NbDPq9tNpsCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773501960; c=relaxed/simple;
	bh=MtmnzLG5Bo63WRQMbvVrVIj5k9GpRoRJaxMkFlxTeV0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yfc62512nNlpdGWOqS5N1cWjvYoBR1jsk32v9z0wVBJUwzloKWHolR3UfOdtzYmmxShCrsO42xrXI05da6/yWqPVMWiAMNIfcE9ia0PI5cNNVOlJTqbtdRFKnAewLni8GJm2Q55LBZ5JV5kEW+HbU+CYNyeRzT94188Dx56SFQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64c9a6d68e5so2715515d50.3
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 08:25:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773501958; x=1774106758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uPLN6zlYiIXlkEI//PrNAmzZ4tY8iJf1tdCwKSeMOdg=;
        b=M3EmynPOvcznVmqnG2eIkjlxRZcB5fzQNfsazzgzzn8NU9ydFFMgENjuzurLWOFp1a
         VeDnR+d4wmnAnlUAwX5k1PbO6wSrxKhmQF9TdmbszdMc7VySlFX5NUDdSTm6ot9jxVAv
         k0zYK3rPHH94bbJOwgcwt+Zefd6Lk6fihbmJ04DTK4baaA/dchSiiuqEzCBPr4GQjLW4
         djnR2dbxK28lihDvURJp0FZRezlzUCd5bX0n0khBjC5JHiMf+fN07io2Xtks4LXq0f5d
         3/f207PtyY+aeD1zcKSyhDYOd1Sl9OvmcfJb2j8IJU99tWl1DA4KF3tnPmWuSw9FNkCN
         TOig==
X-Forwarded-Encrypted: i=1; AJvYcCXqPFFEuH5AJjeAApjX1y30BzWBPHJw1Hdsva3GX+9fowFVMpQq6Cekd+d+iSiIC4LrSCcLGxtHJ8Q4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0eTrOhlT/1RuL3C/ImHLqItCzKpi8YoTQg2UfY4Rc9KtmLluz
	VKvaOYAKoXeUKhBdSy2FBoTeGi/fTkkAT5Ohn8nX/zlABTjGY80TTmz5EQ8I9c3gO40=
X-Gm-Gg: ATEYQzxxrlqfN+YNXO2b81nFatntobOzazK9+ohWMWnR3CYnlcVdEetI3jtU5YKEHfK
	Mge/H4+a6rXSSIqosL3+ISd2c/hIj1c481y7Pv4dWIyz0cZ6rAm3OiO/WZ+DnxKddSTn+46y2ye
	5Pe0dLJfWbYJU4HsKkLshj59w00RlMT2guapmKtXNCOYX7YHrRdAbysrjYX/3tIpIIS2QBayCZs
	t4An3mOQXnsFQwy64+RQmMwXA3taufr6FxzwIBidZRbTkdSWRPMnWxEMBjaY++rEir1hyV+94M9
	zAHzNf7YEb3rnS1ZWlnIK/fnrhIm6bZRS23k7cKLYW98yA1kAwSFQ212O4RVG8anv+2V0yl4B/u
	moqTO8eDTsqEkvtaS6BHL32VnLOLVgmRRzGvHfBdGHBkx0nHPETcCeFMdl1xhcBFx8tla9SzVjp
	+dmHpBV8LS2tC8b6JnQxbKsMknKsxFIwv5QirRtdygt24yAuLN+mPC3i3ofdsnmZRFBFv3dfSMQ
	qd64NDgwLq7A1oGxZ9ZGrak4i+CqaO+2bTlixibRho0DwDvCe6A2tY8
X-Received: by 2002:a53:eccf:0:b0:64c:f7d0:5bfe with SMTP id 956f58d0204a3-64e62eeb404mr6010620d50.13.1773501958085;
        Sat, 14 Mar 2026 08:25:58 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64e65a3bedcsm2827863d50.1.2026.03.14.08.25.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 08:25:56 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7987531082aso33237837b3.3
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 08:25:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVO/vlcLh49ly2sqQJ9TeBMXJTIo4r7jWbe3JO5V7ODYE/kC0mRFJMMQ3QCXyjmMhdXgoPGfFcfCc1j@vger.kernel.org
X-Received: by 2002:a05:690c:c50e:b0:798:1f8:3152 with SMTP id
 00721157ae682-79a1c085de0mr77708347b3.13.1773501956280; Sat, 14 Mar 2026
 08:25:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311224044.21480-1-email@sirat.me> <abLNbGUmaA7K0s68@ashevche-desk.local>
 <CANn+LW+F2bVMAGwoF8q9yBpF3x5r_hWDqvE3_JYjcLd16A_cEA@mail.gmail.com> <a2486bc7-13be-4567-a53c-b37921df7bcd@baylibre.com>
In-Reply-To: <a2486bc7-13be-4567-a53c-b37921df7bcd@baylibre.com>
From: Sirat <email@sirat.me>
Date: Sat, 14 Mar 2026 21:25:44 +0600
X-Gmail-Original-Message-ID: <CANn+LWK2OZ1dm0TAstM2hr6O6h2nEPRrNfje0mC3a2uc0HEwVQ@mail.gmail.com>
X-Gm-Features: AaiRm50a0WB7oPrNpIM1ZzaRDqKuyHnT9tTRHdmvsogCGE-cmB_9gK4JmsK425k
Message-ID: <CANn+LWK2OZ1dm0TAstM2hr6O6h2nEPRrNfje0mC3a2uc0HEwVQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] iio: proximity: add driver for ST VL53L1X ToF sensor
To: David Lechner <dlechner@baylibre.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com, 
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-275725-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A62AF28DABA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 14, 2026 at 8:39=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> On 3/12/26 10:12 AM, Sirat wrote:
> > On Thu, Mar 12, 2026 at 8:28=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@intel.com> wrote:
> >>
> >> On Thu, Mar 12, 2026 at 04:40:35AM +0600, Siratul Islam wrote:
> > ...
> >>> ---
> >>> Changes in v3:
> >>> - Merge DT binding into existing st,vl53l0x.yaml (per Krzysztof).
> >>> - Use "reset-gpios" in the binding but xshut_gpio in the driver since=
 that's the actual pin name.
> >>
>
> We can modify the existing binding to make the supply required based
> on the compatible.
>
> allOf:
>   # Technically supply is required to power device, but we keep it
>   # optional for "st,vl53l0x" for backwards compatibility.
>   - if:
>       not:
>         properties:
>           compatible:
>             const: "st,vl53l0x"
>     then:
>       required:
>         vdd-supply
>
>
> And we can add a description to reset-gpios to explain that it is actuall=
y the
> XSHUT pin.
>
This will solve the problem, but I'm concerned about someone not
following the commit history looking at the code.
Logically, it doesn't make sense as both the devices require the
supply. In fact it may give the impression that
the vl53l0x explicitly doesn't need power. We are having to deal with
too much just to save us from writing a new file.

That said, I can still implement this if it's still the prefered way
to solve our problem. Or leave it optional as it is.
>

