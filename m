Return-Path: <devicetree+bounces-264155-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFsaCF9oimkHKAAAu9opvQ
	(envelope-from <devicetree+bounces-264155-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 00:06:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6D8115502
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 00:06:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D8AD9300BB97
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 23:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B3B326941;
	Mon,  9 Feb 2026 23:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ujaqc37d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EF73254A7
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 23:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.161.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770678364; cv=pass; b=QSEoB93YbhODsLR2j/IigcrUy+XiVHujOE86blko0p1MKO6fOC5k+gZmYkN9voplggrAPZtjEe8MgYokjUN1LRtiXqF37qcrEPdvvLc/aUYTYWbFgZRHalKqp8MsQs01xU/wykD5EZQyzcRPy7V2PyZv2hAes2GkIiXOHxb0Y18=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770678364; c=relaxed/simple;
	bh=3CMr7co1DRh/RKzmgL+sf0SpJ+u3D9obkDjv8ZFp6L8=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=iW1L/zZ18j6XdRdziY9O57oWdGsig5tBWEL/QxlpiTX2pc1zN/tEcxQSBX9YItEIT8kGSsRUhp02NfCRHVroc7Gim98Qhps+IOHujlFD7aRv0sqKj4A/3UAcOgpOov6/u+Gja7E4mn+qb/Z1DTkEbDntpETfFueZIyzwD55wGpI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ujaqc37d; arc=pass smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-66e3100515dso162296eaf.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 15:06:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770678362; cv=none;
        d=google.com; s=arc-20240605;
        b=YinRJkhucRUnIqcJCGbO1uwWgdtYXuR05/JJbvvA4QOGRtIZ/IThU08jQKhxv4Sx5x
         QevWUCPIOQkcLVchbudFstNlu85bAVVpaN2QsT5XPe2iCRerLkuGFpWvMlP5y4O4AXX5
         ZeTgUEYEhp9xwrxpjhMq1opQnCzBjAzgqnxyPDnvi8Vt3pRbcrIaTNbnmPGKpDuWTblR
         JDyYL/niSiWdGaVFdgNQrfrVteotn0r1VN+J2iffin1ZirGgzyUoYH/o1S16vxnsVfi6
         jNOkwLprkagzdPsize/5IgJGe5kkgF4+YwOvVVTYMcD1n3zpOlEM5m7+XVPpVd3sc1OW
         sBJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3CMr7co1DRh/RKzmgL+sf0SpJ+u3D9obkDjv8ZFp6L8=;
        fh=rwJ5lf8TfdpRoYO/0pjfKymLmc4HLWmO0PGzBcMS4xI=;
        b=Lopgknq8XZ/vIryVTFBO8F2rXxe6IOPQNCFlWx5uZY5/S5O4pvHnFgM0EF3mtOmwWL
         vDR4kh0f6uZRfnnjjz11KikVsJNNZMuenLjkmk4yxa/9YiiCVndlCRTxTZ9AQK56fONP
         hSbtnt02rpfSapB+KJnCsdHXsfDHNjLwWEveChZIdmu4uNuPJLhzgKjSEy3cWXrY06Q+
         sbcqwjqk94nPeI1F7W0raq5AfM3ZdefxxMPHUjSj6VQPOwObpkaVnBbLHEAwfkzKT71I
         b2TsVRxJtj5d7K72bEXh+XRANrkgkQP1HeW3EIGKHyh4MsD6KtAZLCVUXGPwkbCd6amP
         tfiw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770678362; x=1771283162; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3CMr7co1DRh/RKzmgL+sf0SpJ+u3D9obkDjv8ZFp6L8=;
        b=Ujaqc37dnQl2R5Yqj26hFvHbjrkkVtvv3gWCjC5Ecr1+WZO3N7g4EBLvZOP54cVaY6
         6x62DGnZb6lzyxmjWD5HXAEoTSCqmxUR5oQgQ3gSJ4wp+EF1bVoAvPyYYAx6zMwz1ixz
         FVbDiYe4M7VG0vFRbcS2WNe3kIAit/yPe6ANQZPeoUl8kIwt4IduA+Ag+HKUk+uWMHjs
         krKywhijR4qDlElkHf1/eTVzbJsb6wvpQ7p1T8Meb943tOCUUQYmzNd8dl6vWhvluWRH
         tHWbMnSeQvIcZ7Bi3NUTVxF3F0tuyULOROVqr138baNClehGQeHbS1OWvu1RfityBPdu
         LHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770678362; x=1771283162;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3CMr7co1DRh/RKzmgL+sf0SpJ+u3D9obkDjv8ZFp6L8=;
        b=mOIlW4GkHXkd6tEegFnVnAacr+mql/dDXMv/Y9RN7oHPUwmilgRc0ArC8Zvh8ZPT1x
         8ypwHXpQnVOAVsVP7kw+9r/uKyRRSTmY9vNJMr+2rwkvPwwnRvwxLc8DDy9z8T0uOYWc
         ivbDXO5/6j55nJBu989fjRmHDYZKWnQgHJ1sf8RHWgC0bmfow3390yw/tGpTI2wMlZ8K
         XvnNrbfemJMsXGaZJ03SQXYabKjCtHiF+G845RwLQwrxIwYPcQ0lIbhdFPQgzHEjmPQ5
         P3XNgw2+6FoO1KqaYhxxGDXaZ4MKhcQB0obRJz8Sb74rb1KqVuK3U9n4VT511dTVUODW
         JGvA==
X-Forwarded-Encrypted: i=1; AJvYcCWIo5DTLV6wo3fFUnE5aCX7iYI4oXIgdXn/1XceULpwzXP28nu9xWDUwPUDZ2N7BNaSTVoybJ2nTUjb@vger.kernel.org
X-Gm-Message-State: AOJu0YypKujxoK5tkzSkvybxlg/eXsWnYNkAuZBvi9ltl9bDzp2yYv/m
	x0r3WwOXh+b6DlQDLkAb37t/iZSR5mhYYud6NXRrTD6KbNr02GSG0bKEp0dbIuc4AAmSgK3PcB6
	a0IaInG8WTlBZCaDoE+sS1bJ4xlZLT1M=
X-Gm-Gg: AZuq6aIt3UIQqqmuM0rnVAyboDc9Jbh1J5Ki0RgLBQUw1WbPZjOmqkWqzayhqIpjH3u
	e+7ZAyzXc0zURPnF8SU/V+kthxKgQ2eYoVOSkTBy7VxNb0CtPEGox4wxe0EgQ4mwjSIKWbFPrSY
	wsMmGWvCxQ2nAUtCSWR/ieRtLmQSnHxfnyFLPbu0Zfi9BdXUYn96w7nHack2k1k2q9B6rcV6uQJ
	Q8VVPusoPksAJHvsHEo9qTHzS1gdmjunnGD7WdUW03UIse3Yta2DJt3cjkz/IyoQ6gyo9I1gfJR
	CW1FI5K3JLHSVO/s/pdS6ty0lto=
X-Received: by 2002:a05:6820:1514:b0:65f:6994:314b with SMTP id
 006d021491bc7-66d0d2fa708mr4985297eaf.76.1770678361869; Mon, 09 Feb 2026
 15:06:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Yoann Lecuyer <yoann.lecuyer@gmail.com>
Date: Tue, 10 Feb 2026 00:05:49 +0100
X-Gm-Features: AZwV_QjCJogYNxSx58S_93uDe6N0OJjkbPA74xddnic2w5pObERjuWLWGj2ZiXo
Message-ID: <CAPZXbJmpAZfxFK9LKaS=wZXX+pez9j5k3gjF+CRPgP6Ru4DuRA@mail.gmail.com>
Subject: Re: [PATCH v2] remoteproc: qcom_wcnss: Fix handling the lack of PD
 regulators in v3
To: val@packett.cool
Cc: andersson@kernel.org, barnabas.czeman@mainlining.org, 
	devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com, 
	justinstitt@google.com, konrad.dybcio@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux@mainlining.org, llvm@lists.linux.dev, 
	Luca Weiss <luca@lucaweiss.eu>, mathieu.poirier@linaro.org, matti.lehtimaki@gmail.com, 
	morbo@google.com, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, phone-devel@vger.kernel.org, 
	vladimir.lypak@gmail.com, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	FAKE_REPLY(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264155-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yoannlecuyer@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,mainlining.org,vger.kernel.org,oss.qualcomm.com,google.com,lists.linux.dev,lucaweiss.eu,linaro.org,gmail.com,lists.sr.ht];
	TAGGED_RCPT(0.00)[devicetree,lkml];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: BB6D8115502
X-Rspamd-Action: no action

> The changes introduced to handle single power domain platforms have
> swapped the info pointer increment from num_pd_vregs to num_pds, which
> would shift the info pointer past the end of the array for pronto-v3,
> which does not list power domain regulators in vregs.
>
> This showed up as a difference between GCC- and LLVM-compiled kernels
> on SDM632 devices, where only with LLVM one would get the
> "regulator request with no identifier" error, because the out-of-bounds
> memory ended up being zeroed. Fix by skipping the increment when there
> are more power domains than regulators.
>
> Signed-off-by: Val Packett <val@packett.cool>

Tested-by: Yoann Lecuyer <yoann.lecuyer@gmail.com>

Yoann

