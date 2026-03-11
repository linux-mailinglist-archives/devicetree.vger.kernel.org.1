Return-Path: <devicetree+bounces-274239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAV4D4KbsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:42:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 960842677ED
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:42:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3916302F391
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA143E1CE3;
	Wed, 11 Mar 2026 16:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P187cT+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2A13E0C5E
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773247306; cv=pass; b=SYrnkycHLI/zUP/cH7KVnQ0MUfzOMG4WsA16W7OToTrJSyPJjUqo/ojZDrlFm42HMbBTA8nRTl0pFMSnQG/tj8wdx4z1siGQqp+3wPkClJcdlSJK9hAnqvzdHWCGMY2/OHXsSD9CGxztiC4cD+G90rqlF5rw952rIblMkQOlRUs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773247306; c=relaxed/simple;
	bh=m0G/sD4v1ogCGWlbxFqi1VwA3Rmg33FNecLzp+BqRxU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gXwOh7xcS18OpTqdVqItkTFg3r+X+vRmTIIUe0eLMQ3BAxbaWKgqkevK7dDb1JACq7S7+zI0+EAbCQ25lDAkL+ek+bHBpDiYdxNYf43d5lDGinuDTO4KRBc9lun/0d1n3EQedc+CwMpr5tBOOYDNpogdhvvQMyHfhfDlMLd8PaQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P187cT+0; arc=pass smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-38a2e62b893so1109911fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:41:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773247303; cv=none;
        d=google.com; s=arc-20240605;
        b=iCx5VLlJfFjqsF+gdI42cfv9gvT95WbMTJHxCmQ4QKnJk6LWTcoCr4VD71IWT4FPfV
         O9XJuJWhwwNImopqTTUXXaygDPIMy5MRXx1ZRHiUpRiyZbfVt53NmGjhqP1UxrFTRouV
         pgmwAIS/HLSxytCBMu3Shcb1chXnXPKCgaXH9tuUzj5AF10AYRWRE0amOPOAPT1mgvW4
         oqrFpK6nXgF1VIt0zivkFTOuObo9nlHMGT70TSSeA3hKZLJE9EJxU2Cvxs61kxXKPQXk
         SQd/S3fHPBB5BfV3ezFjeIEEi3GcvCQ7TamSPiq7fKqlyLy2D+VjBZU139BArALEFtJ4
         3tZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m0G/sD4v1ogCGWlbxFqi1VwA3Rmg33FNecLzp+BqRxU=;
        fh=ma6ACqrpBF3zwIOXr9eFWy0J8xx8P7XASX4wHlGrXXQ=;
        b=ggriVqCfL95m/If4bVMhpACQrucfW5PtXtgX6sCSa9NXxApfb88QXlwIQc/TLbWbmY
         RhHNKo0kbvZsrdtSvOU23DGbIooR8IqZ90UghKgaCWeuz+tVEnv/2Pdqc/Khel4nkwEc
         jt1sgX2Tp1Lxwm43cUxCybaSB1mUrGQ1VJuDu1FLtDteAK+SchItSpAPWivvPyDzLuwg
         2RrVEzzXvxud9+sns6TCIwuBdJcDtgomXWnoWFny9UVr63gBkfa/PAAs2irODdNCGf71
         HzjNds6fPjOREC4RhDDHocKw4V95KtZbZBsH0sS50Nyz2esdxRYVO0gHcy+ImeheTGa9
         2Z1Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773247303; x=1773852103; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m0G/sD4v1ogCGWlbxFqi1VwA3Rmg33FNecLzp+BqRxU=;
        b=P187cT+0ZL6chGMM30YheSeyRyUbwnw/TryXEKlusA1ZcmtBcTyhsW1kqvVMz8rNXr
         qPMESoAkND+D51Rj5zk/Hcn59owrSeROvZgul36U52p3GbZyrG3V3r+5LeoyDOb88PPT
         8rkEsz6cGHMhGNcHnFShPKNwwjup0JlFx0YPyZnHVSNC3Tie6XpSQFGT7bY3sUhAX3Pu
         oQRu+0xEx7/dqADmQx7RKd6NRBGlflkU1GBdb4382bI+LyvAQAeLOlxxK9lN9DJxS+p4
         jzg2f34R+qpDSj6Ilhy0n+b/yJGqM+WEkZ8uUxzWCf5RF3vG4/cjnssFhSr1j7M9BJo9
         U97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773247303; x=1773852103;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m0G/sD4v1ogCGWlbxFqi1VwA3Rmg33FNecLzp+BqRxU=;
        b=DHdWKnAklw+I3SxrAFIOg4tYiXHPNsjGDlvdlDQt4MKkB/4LMGNFe1nFBHPJejI9hw
         5rGxQsnJ7RhzEyFj4wJaP3GKznUBykldUPGix72de7TF6WnW9E8wobGLTjDNoif9808M
         PdcP2R1P5B+PInQZCrCzlJgGmkLxI3oUkVw3j03XsOXHtAcanx1h/h+7HM8/ZDuUaryu
         PCVmGn4xw0jooZ3rimsTuB3PSMvQaKUz2XY7M7fFpWX/qPMuL8hQ3vFbAGGTyBr1esGm
         IAIFjtyUZLxG9zwprItT0AS3zd8ZfuLj2Pc2R8My7jOwsKYT8aXwCTZmbnflo7ptlaj2
         hakA==
X-Forwarded-Encrypted: i=1; AJvYcCXTYSzBHTQCflw+SHRqztZzRKGz+AUcy5Ptbr1ent+pOEDyyTZprlmqXlP/h2jpuOecZBCFQe3wD61R@vger.kernel.org
X-Gm-Message-State: AOJu0YzGBOEAx0xMzV78e+0ShTQa2gWmrS8Fx5dbXPLbbbK2Vr5Nyo38
	XaehQ6t0w4sBunNgIc8rgqmMuHue9jq55mi/NeJf0CasxH2fO+WdIxSOmJP2ZjRCuslkQX02QQC
	tJGL6hrykhhia/Nc3UosoZkYaBENOJdg=
X-Gm-Gg: ATEYQzxpOkqqkg0yDlSVLwdCYMFETntkFoF/RXdyDys+npVY1EWj/2idC1qluMHpAMJ
	lOArd9hqR+TpqOIEJxyFvVd1yxb1AgSg4aAJ/FpYx1WMbuWTFDLl9+4DU/X1DLq/pHfN7FhvHG7
	PrcyQmq4H/N04X3YHbQUOxwKSqr10uuR+lUEN0thpg/+Mvt7AKCcMvJ15I950Q1fDzRE6cT4SHK
	/AaI+dAxKKF2nI2xeY76vkO9BkIk0psJ6LhDMSJI/uZ3LI6JADF6mfpuscUbP1/QqkWRwMsBI0Y
	gtTKbH+OP79Opuc8VJNUoCneKCqP9eGQ+qa7zDkDnS0DEFrAJ7OepEXrSFhGLsl7KeOc
X-Received: by 2002:a05:651c:324f:b0:38a:4dd3:6a58 with SMTP id
 38308e7fff4ca-38a67e5452emr12085921fa.21.1773247302963; Wed, 11 Mar 2026
 09:41:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310-aw88166-fw-v1-0-2777563bb673@gmail.com>
 <20260310-aw88166-fw-v1-2-2777563bb673@gmail.com> <20260311-glittering-elastic-deer-a2fa58@quoll>
 <CALHNRZ-KxT0B1zpPD1N7ba6185cqh6q-z-WMxbpU68FRuGJXEA@mail.gmail.com> <1c068ae5-66aa-4892-879b-875c9209dee9@sirena.org.uk>
In-Reply-To: <1c068ae5-66aa-4892-879b-875c9209dee9@sirena.org.uk>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 11 Mar 2026 11:41:30 -0500
X-Gm-Features: AaiRm52kl08XiJjCIYuZXgszd4TGRjK8P9abGkjPMl1OYNUBCpHJm9xcVnUSqWc
Message-ID: <CALHNRZ_ZHmA3M6mooq6+NMf=Fmd84SxveMEQnucLAC-uwJqp-g@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: codecs: aw88166: Support device specific firmware
To: Mark Brown <broonie@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Weidong Wang <wangweidong.a@awinic.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-274239-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,awinic.com,perex.cz,suse.com,vger.kernel.org,sobir.in];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sobir.in:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 960842677ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 11:33=E2=80=AFAM Mark Brown <broonie@kernel.org> wr=
ote:
>
> On Wed, Mar 11, 2026 at 11:30:34AM -0500, Aaron Kling wrote:
> > On Wed, Mar 11, 2026 at 8:15=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
>
> > > > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > > > Co-authored-by: Aaron Kling <webgeek1234@gmail.com>
>
> > > There is no such tag.
>
> > What do you mean? This tag is used all [0] over [1] the kernel [2].
> > How else is one supposed to indicate that that notable changes have
> > been made since the original author touched it?
>
> Co-developed-by is more standard and is what's in submitting-patches.rst.

Alright, thank you for giving the correct tag. I will update and send
a new revision.

Aaron

