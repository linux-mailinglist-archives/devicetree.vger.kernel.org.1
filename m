Return-Path: <devicetree+bounces-273073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJwsIm4Ur2nJNQIAu9opvQ
	(envelope-from <devicetree+bounces-273073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:41:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A50D23EBA5
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:41:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 494843002D24
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 18:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20E683E8C78;
	Mon,  9 Mar 2026 18:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GNw4R6bY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DF63CD8C9
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 18:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773081705; cv=pass; b=togRYp4hbMnhXrz758LiCLMbWP6KWH8ub/kfXV9+xxufMDzgTQzx+WZ+gliZ2Rk5NdcH/X+E7wl+VOx5yGQQECXPTX3PazyGIKsZtnB0Id4Grrb/86hUKnZZ1ax9T4Fk6GKjFhokvMPTZqnKHccH/cv9lPhztBtDIDuwsUzdLPY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773081705; c=relaxed/simple;
	bh=PJfZbulraOO59O/eR/pHIsZdb8/5q9XObxeBXoWSK88=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kJl+uD9xcCflKZHwJWufI2qcjeilJt+iSeY9okNxDgNoxDQYvzoubvZsiB/Wq2oqBGd9xgn+SmppOFLyxEjLVXVeTkE5NuMDBTfQi1+GivJhW1S/5UoEoV/At3DBZ+svAPW+OsfpsS6z3K02WYNz2i+Q471j4Dp9uYDLmiLoI/A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GNw4R6bY; arc=pass smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so6917806a91.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:41:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773081703; cv=none;
        d=google.com; s=arc-20240605;
        b=AYWFYCVNA+v28VDXp9xQa9X4OnReWPC2bs9W9i+zH5g6MM6QaJZqyHJHhtG1qo7NHx
         QceAr4N9QZ63PEHbBNIgFQq8IHEfg/OCwxIRJu7U1FM9iPOMxRABkUjX0cOgfAnZgXWO
         2RxfWk52L7T5zDaof6ccbzJFFh5GK3X0jhq3tmVudYB8xPnlx0oE6kSO9CzubBASn7SG
         M71sBKIghCONH+RKhLjO5T/qFCz9aBhdO5aApWG5Arx3jdxFt3HYVNnAL4TTuJF3ROpK
         Be6EdPgF6D9aaIETOuMDOHptdfHzQU6JRbtyiifU95tA7poVgIm+ImzKqzeXWfuJ8NSc
         1QLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PJfZbulraOO59O/eR/pHIsZdb8/5q9XObxeBXoWSK88=;
        fh=P9S2vRfbPwbXm0f5Hy4Cv1rKYs6bo2gA3jNyVJWsLh4=;
        b=llYxw/ooCPWum5LJUUjoBivJVNzPsqcNNaYm2CoChmvk7xLokj9Zaahi5zxLRhZmgc
         yH1adltnPUw2ZWzlx1zL5zZwmL41woUKUye0QAOqAl5J6atngn5ma9LRhLo1Hm9z4cEl
         Ij1lcoxOs7cs8EsvYvFGat+zAUZlTWNJHmdzYX5U3BRqz/oZHln/yTb1kOcAupUCzIqA
         kbpDmM9/roFcErAG3NFFm8NIg7eiBIW9p0/N6vlj+jxAAZ6POwRt01g/ryHEorNwQM8F
         Rhi7Qm+ruazgQc19Eo2SdsDXW5XuW4CuzFfJ7BrWwZfWubQujvv0NlhU/JZxm+seP1e3
         HoFg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773081703; x=1773686503; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PJfZbulraOO59O/eR/pHIsZdb8/5q9XObxeBXoWSK88=;
        b=GNw4R6bYBbYPEeWowofgmJzMc1cFVstZ2W+mINod5hAO0UXlHlAYOD/2vw5BYCeoNz
         xDV0eT/QEkkUPocwoxQ7dCRHX1s+mnWR+RT1m3AK5f55jNZHUvR/VOjzdVf+JdDpMRP0
         jado6vgVLD5jMCdWthwc32CEFUl5wep6a/tKhNKNk2DaaKeoGtY2A67VRBBm1S0iNapp
         DpoJi67r7xjtyEvu9aGZ8/VGXXsKr6rUBrruWonjEgPXfe5Fc5hi8sHN0UYT2fLExtoA
         wG6ypXP6vFRsmWNB08ZKwBF7JypBsJFlSKrsYJFlw1gzMMbv+UPKeFsCAfYlsPhFCOd/
         p5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773081703; x=1773686503;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PJfZbulraOO59O/eR/pHIsZdb8/5q9XObxeBXoWSK88=;
        b=S5Ms+CHNVOk4vEE0SCeaPOPal3Ol54brfPbd5svMSBDIkP/AvVVuYx5eRwy1oQ2jxg
         O2z7kxX4nrmijhDQGf+BfSARAfcZ/5zklq+IhqCbDZNw8bvDjeXRNTwjxNMNKNHS8n9L
         hzWhbmBgfJKun1RN24Yk6vvBuJiwgRtuKvO3BEd9Y1+O5CRBdqhB5kTNZj8n0q2BgcWO
         0C2ZYvcaSrFkY0Xe6pE46dMDtmibLEunUX57leTi3Ecz560BXC5qaMX1PqDy01Y9JcKG
         zdsngS614M0HoL+fY6PXwTRTelpkALO2xIVg3i2Ez/6Xpq2WyijXrEDf1s3ov+usGJig
         w3Nw==
X-Forwarded-Encrypted: i=1; AJvYcCXpqbeqUuYHXsP2p/yIsv1AHtRJq5uH3VS1Stlbz6vz7WHFVnyXpar3pqIdR0FL8V47EE3FZOx9Futr@vger.kernel.org
X-Gm-Message-State: AOJu0YzzoGKi46lHBirDPlcAVhntb/ME/o+shPQYwP3CXKaJ30XQg3Cs
	jKNwHvhznyuygmadkqjOQKMaJFLkXCqBVCbLK9deQnkbroS08GADlLEOpkS5Oh1NolAc5fI71gS
	BUEtpHtVW1+dUzYVcUbDYuFNUWABjpGM=
X-Gm-Gg: ATEYQzzCxl5PQOqL4w/imIUGRK7M/58t3fz2YP0i/PsGu1gDuX60Wbs1UMDGfj+n8w8
	b8rvt1+2j1vMaXDdwSa9vnKnJVCDqH856KQLTfQmb89C0wezgqxUosvN/6xeDOHnDM661kZ1Kxi
	l/FMp6oB0P3Le0whw/ZoIFBeu5NP9pwx3SCSq702GUd49NpCS2m6i8SG6XDZDJn2qbVIfIn4QJh
	vI4tOLuLSelsDDxdvvSGnZQXyD9y7Yx4IGfdCIUag5ZHtF/TrL8vPo4Lxkvb8vHcohESThyE8vB
	vrJz
X-Received: by 2002:a17:90b:164a:b0:356:2fc5:30f5 with SMTP id
 98e67ed59e1d1-359be2b927cmr11377904a91.13.1773081703130; Mon, 09 Mar 2026
 11:41:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
 <20260223-yv5_revise_dts-v5-2-fc913e902488@gmail.com> <73ea41bf341df0e3215c58a029c9ea2386c4ef8a.camel@codeconstruct.com.au>
In-Reply-To: <73ea41bf341df0e3215c58a029c9ea2386c4ef8a.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 9 Mar 2026 11:41:25 -0700
X-Gm-Features: AaiRm52uT5JRZlFgMZjCJC1DCOwOGUav3xI3jvI4TX-E-U-Zc80rWPyZ4TjKbeU
Message-ID: <CABh9gBd3b9TB1-s=Gq1q-M8bX+4UioXePUF0DPVrU2N3N8S9yw@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] ARM: dts: aspeed: yosemite5: Remove ambiguous
 power monitor DTS nodes
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Amithash Prasasd <amithash@meta.com>, 
	Kevin Tung <Kevin.Tung@quantatw.com>, Ken Chen <Ken.Chen@quantatw.com>, 
	Leo Yang <Leo-Yang@quantatw.com>, Jackson Liu <Jackson.Liu@quantatw.com>, 
	Daniel Hsu <Daniel-Hsu@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 8A50D23EBA5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273073-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mail.gmail.com:mid,codeconstruct.com.au:email]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 6:41=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Kevin,
>
> Sorry for the patchy replies so far, but this series bothers me and
> other priorities keep bumping it down the list.
>
> On Mon, 2026-02-23 at 19:17 +0800, Kevin Tung wrote:
> > Two different power monitor devices, using different drivers, reuse
> > I2C addresses 0x40 and 0x45 on bus 10 across Yosemite5 board variants.
> > Defining these devices statically in the DTS can lead to incorrect
> > driver binding on newer boards when the wrong device is instantiated.
>
> There are effective methods of maintaining devicetrees for variants.
> Why are we choosing to remove information about the platform rather
> than use existing techniques to properly describe them?
>
Hi Andrew,

This is due to hardware design changes during earlier development
stages, and the fix is expected to remain stable as the design has
matured.
Could you guide me on the best way to maintain devicetrees for
variants? Thank you :)
> >
> > Therefore, remove 10-0040 and 10-0045 device nodes, and let the driver
> > selection is instead handled in user space by the OpenBMC Entity
> > Manager based on the actual board configuration.
>
> As a separate problem to the one above, while you may run OpenBMC on
> this platform, I'd rather keep the description abstract. We can finish
> the sentence at "... is instead handled in user space" and remove the
> rest.
>
Noted. Thanks.

Kevin,
BR

