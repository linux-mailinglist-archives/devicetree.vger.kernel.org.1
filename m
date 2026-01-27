Return-Path: <devicetree+bounces-260073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLZZB48DeWkuugEAu9opvQ
	(envelope-from <devicetree+bounces-260073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:27:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F22B99029
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21595300DE0E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0909326D62;
	Tue, 27 Jan 2026 18:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bfa+0xTe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240213164C3
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769538444; cv=pass; b=ZZIVtcCeM4Ke7aZe8BMB8sLIJzpUkq8v983oJ5gBUi/PYB2Kk6ZJAFstB62ZyU6uZ7Szf1YHhbVK3rLMAnZJRhg/iU3a8J9UqA5sg5RIXhsTI+C6TO7PJAFfYF+cU+e/G6J64txMA8XLA0n1n1O5HgjAK2TbCsh2UYPpso+m9no=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769538444; c=relaxed/simple;
	bh=z4CGyKcCnMa/ZHAIbj4nSTz1dbC/e5JXE8bFaVOZ6yE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DPclQGyZVadK3MCM4qvwm4M0z+DgZtIp++BOSyQS0TlKkCTz5+F4iYhSePXXdPRjJgGL1LEhlq3YDEdlVY9Q18Pvo9N4Hn+qPXxsvRAxFP4XS0HtGkk93iBMXTFIqx1fS0tR/0vCQNFGjgkJEFGomP4VQbiW3Tbhwdz6NewV740=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bfa+0xTe; arc=pass smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59b6c89d302so5867207e87.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769538441; cv=none;
        d=google.com; s=arc-20240605;
        b=Incln+By+lqc8h8lM1yY98Lvi41Bt/1O0qua05TClTVJ8fpwqOKIy05H4jQ9sip2lF
         F/xgLY745ngkPrsVmbbrPXYxCPP0xh8hoB3+esQ98CKPJ1qfHYvwwfkpo1nAljkZZjgx
         whApr4wz9s+gkV80QDNnEoNXNBblRZLq4H/CYyRiQpkLNVWJJgVKUidAZfc9H/6iraLd
         mtY5PNA4gD5+CmiGqkLdI0JmClr9iobNMVvKL7RGT76QCwOYL670lZywatdOGQnVB5KB
         rrfIfze2uWrDW+UF8kAoXeMNoBJYhTLN7A2HG1xfMJ/iMu8phYI1Ut+VfaOlqdJLPxqN
         51yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=z4CGyKcCnMa/ZHAIbj4nSTz1dbC/e5JXE8bFaVOZ6yE=;
        fh=IpwoJ0ohQbD+bQYfgb07vK67ebhPq3JAgtxqoo4Yf10=;
        b=E4pPjFmQ32Fv+APpHAi5Peerl16Ii2EB/XItwNHiTkrqdr9wJ6+eZm6pJjh8Rso1nG
         mFv7Kdpv87hNgPuczHV2gc+1T6fNUC0UIDhtEbB96HiaGwk8zJVe8yge2Q3hWc67bLva
         ipFn3Oh2m5tGhregWlODYxU5kHu8cQ+UiE7dED2eThOlmb0qCuKpLCQjANsYXCjG6L3x
         Eb2Cfrf5HXGq5sX/Za+odyNqlb7c2JbuOr+GEByBtsYNC6U2VrfNtoP7WCr2dcEm2lFV
         I6eNLjqJfus6zZs+MFM35JaqC2L8axSD6mt4jmEh5OyVgXNDbAgqeNorraY6X+qrWG+3
         +VEw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769538441; x=1770143241; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z4CGyKcCnMa/ZHAIbj4nSTz1dbC/e5JXE8bFaVOZ6yE=;
        b=Bfa+0xTeuI+9GH6923tBueQ3iQW5e3Pno2tMj/guZ1kcRROf6HSJshnuUhq6+0YB/W
         1teKvfIPR+N5hV4OlN7V49uEfTpW426ef49Aq5N7QRdsCqQcSAHbFSf4q1cPrfrtDXfc
         b5hLR+rbpQ53HWsh8V96P6VmVSZaA0UNZVsDCAF3mhE3XLk4yZ3ZUCZX2RyqpRlv/xnD
         5U4q4f+idQL4qQ3/t/uFHEkAiCOfp4VLVoSt5KJYlppyhgs4FTqqAqItC46fTRlpjnZn
         yqo17lqI4Ccey44/3B0t1p4Dk2/Y5SdYJx9h0ZvRfBePhaLHavwdzNYISDbguavqCVnj
         aPuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769538441; x=1770143241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z4CGyKcCnMa/ZHAIbj4nSTz1dbC/e5JXE8bFaVOZ6yE=;
        b=MXAOZGc/LhBJBMjTDGAqctiqmQZaIot9J716O1UkUe4JjfUZSHzSCUE5AKB1XAHPvx
         JKNrALUQ6kP5B9PsdxJx1RnIglsCkKv3orycmJGUbz3gMpS8DfkvZbWDi21kUF38nuIZ
         Rag/K36ftSTHys73hmH4qjh3ziEs8V8OyqmnwkhFeLxiAk2tT1DEkWeCbDKgC14KJzm1
         Pod1ypVcgVeQutcb4vOX8tNI8Ihgmm0Ka8olNPQO2TsIRxDqpBFWiyC34R2ToigYxPr8
         eCk+X3qWuz/0G/to86aeuiwSWcKaoXesTXnIK5Hg6ftOCRRPwldamnygPSSDb7y1zN1S
         swAA==
X-Forwarded-Encrypted: i=1; AJvYcCV9YfOKzFVrLIjgAj+y/UKJto2wICUFMmyrrOP/o5wjXthkp3RaBEm8R+/7PRS0/4xz8pxV6vbtavT1@vger.kernel.org
X-Gm-Message-State: AOJu0YyM4vBED0l1sqW7mdVl38A2ALm0vwIK4cYbOBZWaqWSf3s9c56y
	z83HU1LssrmTIyHd9JhV1Qe2oAvbj6IXLrRhcL/MgknVe9QXTnIts79aRDLKFKM/fTX84AK5Pki
	EFlVI0rEeOSmbM8knKJO90p4BpD01GZw=
X-Gm-Gg: AZuq6aLYav/LEwU4M3FK0mPQrHoqr13eARDLR2PRn3fH6Vbklwzp+yC3w3/2ldj3ifp
	iTvuSZfXPWoH4Uom5b+ct/EkK8PeSm0yxPMs7NhZ3oAZG9Qf2AdZV0Z9vCsBhAhxJwQwp0BOITv
	3PnLjR31Z2HfdGdSJQZJO61jP8Di6kmncSxvaJBII4cdau6ZLah/9wiKCtQei4yyBlCjScR8izq
	OEH9qVSSo5wnJKQAsbBzDD5Tdh2UJBZOeIVq4j2vugGLhrJqscPtEhkH19nTVul/Yv294i0PtSh
	xGtdmhkmJEI+w+sb55wEPUFWqMU=
X-Received: by 2002:a05:6512:612:20b0:59e:417:2805 with SMTP id
 2adb3069b0e04-59e041728eemr897795e87.16.1769538441058; Tue, 27 Jan 2026
 10:27:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124-imx8mq-gpu-ahb-clock-v1-1-11c2e7c857b7@puri.sm>
In-Reply-To: <20260124-imx8mq-gpu-ahb-clock-v1-1-11c2e7c857b7@puri.sm>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 27 Jan 2026 15:27:09 -0300
X-Gm-Features: AZwV_QhK3eFl5bcR1K336qjRBbT8hoZ1p4zrhgHgCXGLTwM9-xA5aPP55CBui9s
Message-ID: <CAOMZO5DAk3oZcQyqUEBiGhZPaX846q-zypyz3=chSNY1o_kBpA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: Set the correct gpu_ahb clock frequency
To: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@puri.sm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-260073-lists,devicetree=lfdr.de];
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
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,i.mx:url,puri.sm:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6F22B99029
X-Rspamd-Action: no action

On Sat, Jan 24, 2026 at 10:56=E2=80=AFAM Sebastian Krzyszkowiak
<sebastian.krzyszkowiak@puri.sm> wrote:
>
> According to i.MX 8M Quad Reference Manual, GPU_AHB_CLK_ROOT's maximum
> frequency is 400MHz.
>
> Signed-off-by: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>

Shouldn't this have a Fixes tag?

