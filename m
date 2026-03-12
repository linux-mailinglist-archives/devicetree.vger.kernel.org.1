Return-Path: <devicetree+bounces-274649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHXwOTLYsmlDQAAAu9opvQ
	(envelope-from <devicetree+bounces-274649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:13:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B43127408B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0130C303C4E2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C25E397E94;
	Thu, 12 Mar 2026 15:12:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00CD34EEFC
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328365; cv=none; b=A49UCKmYmQVJbAXwgtHGBInVQ+OS/hqCUiCjaiqaAoabIK+DUBpRUkRstFbgbqJ2gQQNR6V1W4y5g+S7edd+pgs8NydNNDyv/NHew/q9600g2Q8wJSpk6xKbnu31nc4cl8tb37lO94luaj6YoigFgsBuq2cxYBXxEJI/y8hU4I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328365; c=relaxed/simple;
	bh=xL8m87uKS9y7aocchYesBcn3/kaLnfg9HDUZiyM5xYA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GWi070AhiJRmk+3AoTCnhTJa6AvYlj53f15BOX7CwiCoMn4Ligg4+jT4/8GkPPHFNjjq7u4f5SyXCDen24RFc6gW3Mh4mMI6zUNWwgvSEr2lgQ19FJ8rwHsE7yX44+mqJr4duOJ+DTk/lzKGBrl6Mwgmi+CPhC1+QbVfvYVjl9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-79885f4a8ffso10530587b3.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328363; x=1773933163;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xL8m87uKS9y7aocchYesBcn3/kaLnfg9HDUZiyM5xYA=;
        b=N/lB1Jfvm6H8QhQ3/nE0wBFqtpOneFDO+Ke82zoDTAMlOcHPhidZ5OLOp3TmjCvBPk
         8cf56owV9Hilt6A/q0JKa35Mki6l2JHsYtbCCR28LYwhJaESHg4/SZxxW7wuN5BvBwqR
         bOl1nGXXf/yzeN2Ka+F415FJII/pYXAEmsbRO4cq77C18Of2gv54ajKA1OKCfqshkrwg
         77ArOE3MZXGXOl+1+bEF8rTDlZeLbamGwloUChyuAeX4NT35FymPOc5baqjVl9neV5vW
         hVPUHcEU8YeZ/aVf1GFNEh98Blw5iDyZayUe0NqPgWxejkiVNeA6V9sT1gLS5+NmgN/9
         QGaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVopwV4jIdc/bgfqErLIjm85EUydVh+Y6hWr36vBvfcO/s7kKu3AP3aInksiDIa7WtF0vNtTC1UeeO2@vger.kernel.org
X-Gm-Message-State: AOJu0YxCDBNSnKbfKIz6Vg8mM8xLuSEfo3Uu/bjMSU/PBNv3cIi1T+3q
	pLG+oyMrkxm/+K/cwOHC3VpBbPetpICEQ9i0fvg+jMj3uplfXzjRgfP1djCPrra9nmu88Q==
X-Gm-Gg: ATEYQzxTkKE+Hu6oDAlBM/rcWeLdezKShMGJouxFLhD0fJSuDtnuOqvW+uRSfh/FkOm
	9BefXLdP0KgF71roDIFOwpLblSYp4lqYq4OSu7KxuRoFQZH7UgYBbNlZF+uZ2skJZMS5iikVXzQ
	Aa7s+Owsvsyd5LtnkIurYqE+T7wjtQMr1mYVXUOQ3JR1pufZS4OfaNPBh0KJa9UknhhOq4e7wxo
	8+Dbw2V6bk81NmTN5nUtPEnazjCg84YxKRRY08YEB3IWELHsGzkc5LMtc+GyNpqpTw4J96WIXUe
	mZKvRRenXJ/UugIuPthxZ/kXx88RmLST+xICq9f1wgXBAFuAmDn9Pr62X328AwdOW1neV3Xr3B1
	ihXfW8ICQp3Ka9Smz6sAjKcPlUk8Qcu9MYriRjDlP8kI7VHvYU/akVTHsN7aAAXxeJG9V7RMUYe
	X8C+XtGn6sy74l1IC2C04SgoVRyv/DqaBnHAHYMBSc6NcsUws6VK6eyeyRh3Tm
X-Received: by 2002:a05:690c:6:b0:798:2723:ab40 with SMTP id 00721157ae682-79917ecc38fmr64268477b3.22.1773328362580;
        Thu, 12 Mar 2026 08:12:42 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79917f0846csm33499417b3.39.2026.03.12.08.12.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 08:12:41 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-7986fb839f5so11184067b3.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:12:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUmlB1QCamzHjcJ+T5Cz6R/OTL5RFWLV5muyJ2Foe3beRxdTo+iT7rqrdzJ5LsapMuMSWASFZnRKxcE@vger.kernel.org
X-Received: by 2002:a05:690c:498e:b0:794:cd8e:3616 with SMTP id
 00721157ae682-79917ecc0ecmr62120677b3.21.1773328361720; Thu, 12 Mar 2026
 08:12:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311224044.21480-1-email@sirat.me> <abLNbGUmaA7K0s68@ashevche-desk.local>
In-Reply-To: <abLNbGUmaA7K0s68@ashevche-desk.local>
From: Sirat <email@sirat.me>
Date: Thu, 12 Mar 2026 21:12:30 +0600
X-Gmail-Original-Message-ID: <CANn+LW+F2bVMAGwoF8q9yBpF3x5r_hWDqvE3_JYjcLd16A_cEA@mail.gmail.com>
X-Gm-Features: AaiRm52FISbjek1ffTmmZvvhnepNiWW88rSSPxALXAFJ0Q2YHDic6R6kDrORw6w
Message-ID: <CANn+LW+F2bVMAGwoF8q9yBpF3x5r_hWDqvE3_JYjcLd16A_cEA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] iio: proximity: add driver for ST VL53L1X ToF sensor
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-274649-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 8B43127408B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 8:28=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Thu, Mar 12, 2026 at 04:40:35AM +0600, Siratul Islam wrote:
...
> > ---
> > Changes in v3:
> > - Merge DT binding into existing st,vl53l0x.yaml (per Krzysztof).
> > - Use "reset-gpios" in the binding but xshut_gpio in the driver since t=
hat's the actual pin name.
>
> But why is it "reset" in the bindings? If it's a power rail or enable pin=
, why
> not call it as a such in the bindings? The connection on PCB level is dif=
ferent story.
>
In v2, I actually used a separate st,vl53l1x.yaml binding with
`xshut-gpios` and a required `vdd-supply`.
But Krzysztof pointed out that they share the same pins so the
existing st,vl53l0x.yaml should suffice,
using reset as the xshut pin.

I think a choice has to be made here:
1. Either I use the st,vl53l0x.yaml binding with wrong pin name and
optional vdd-supply to not break existing code.
2. Or use a separate binding st,vl53l1x.yaml with 1. correct pin name,
and 2. require vdd-supply

Krzysztof, do you have a preference on how we should handle this?
>
>

