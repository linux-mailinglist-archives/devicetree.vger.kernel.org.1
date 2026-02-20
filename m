Return-Path: <devicetree+bounces-266787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wji/OjzOl2kk8wIAu9opvQ
	(envelope-from <devicetree+bounces-266787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 04:00:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5950C164533
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 04:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D8B33012CE5
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6CA52D876F;
	Fri, 20 Feb 2026 03:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DVuzS3A/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B65027FB37
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 03:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771556409; cv=pass; b=cdATFmpHzgemC62BPo570BuopNzZE5R/BW7PPU64yB+kDzhMKzKD0N7g/em41Dnwx7cy16kZa0+VDYN6J+1qP8obUzkJ2gnQo4xX/VBGUCDbXxVPtBvle2PFO/BkSL8t1S9fgPhLvuGn3qOqshDE7s5Jj5RTYaWUNMZbZ9WaFEA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771556409; c=relaxed/simple;
	bh=jL5V55t1rEBj27+VWKWTlqwdAuocpvOVvYTKQbJZVCg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CaSWizQkMqKPUZCr0R0MOEc8Oobamlih5oGgOPi53eH2hSHW4EnVAxUuRRvQsWVMBxCfxfUmvA5IkgnMcpQvhPs4ZlPnBYKNoDBfQCZjmQmOoGDwmOH+9iHd4UPEZxN0PDPFRNwkpY79aoBTfCYt8XCC31/RL2wW7FJ1shQFJFQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DVuzS3A/; arc=pass smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3878de20527so13745031fa.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 19:00:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771556406; cv=none;
        d=google.com; s=arc-20240605;
        b=CrwrhIPe/96gXg+NA9Isw21c3AqaCijNoy4c9nnKFP/MiNx3RckIxQqTbWs0U/Rgci
         OGf78LrS4i3u4PPsmawD3/B9TCPZtqcufDpVFqvvP2YFpma4jjF8m/RVrFBpXh024fBt
         Y4bigOpIEa/psT5uz6PqhMELCo9KODCzSv3Bi6YNCp3lYG6ExEDO9WbbnA8CNIdXddVi
         FKVN+C6F/HkeTfTuF/1mMQagyS3eimI4cPdHiHfJcAxVGP4ZG8bd1Zc8hB67Hdmr9jpK
         4e81UI8cCADcSGvB7BRp3W2BTyHO1WCBAikwLUmV9M9wlmuxBXngFg/GQeZkab88e204
         XBvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hKJq4SbZvV5Qnlwxk5U0/GVmtjJHH6p7BfIFLrvgzoY=;
        fh=t98Cyby+tR7tAKGWhmvhlfjmt3XGkFw276zrcIlqA84=;
        b=dNwvwXzTShD0Rf4OOu2oZ9EgkdmaF4nHCg+bx0BdGUCsEQ7VRkHBZax4Hh3b8nszOM
         owVeFR8QNY/MmkN4GRwbE6PnJxAHw7Gnv87LfcYfpXCbjHbLlykda4o7Iv4pz9z5CR3K
         9Kbuo34oZ8yh1msUpuYYiNBGe2SZmOs6Z6x+ZMtWwFVSo7vipyOyoIeqxjIOf+8uik23
         HBQ2N0J5HVaM8GobxJVZG/H/XsUu6zqFGfp+TPYxNmfy3e212b/CfK1VJgaSbe8qY/5c
         nG30gRS0oQv4dl9fIcYQob9RK62ydXGhGneIf84biXAtq6V4OiwONLRR3qadg78lpYA8
         IMRQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771556406; x=1772161206; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hKJq4SbZvV5Qnlwxk5U0/GVmtjJHH6p7BfIFLrvgzoY=;
        b=DVuzS3A/taTGcwIrGFQp4IvIGh54AP88eAYOeQQib5mI0EigAvW9D1roeyn0ChNFC6
         EbCzZNwRhDhIsoeJHZh22bNg5WC9a3JDhz54Dl0ad0Ki2QPoYSarbbU/9KRSB3uiJzPF
         ffnqWE7WdbIJvGJSud3eUga85j9fNXg0a4BJ127AuhJLM9YOK2OhuO/lwLubvufSyZI0
         csGqfPfzTWeGpPE8JahLe7XvgvlG42qw441GE/XoTCPNVnRzvuFCgAMO5nO51aMeXKDX
         8mXaOG2fjp3T0JVzY8oyVtkRW98EC+nFtQ/XU9/YXIzLT171POcGZOTjZf8wjQr9L2An
         Gb9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771556406; x=1772161206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hKJq4SbZvV5Qnlwxk5U0/GVmtjJHH6p7BfIFLrvgzoY=;
        b=nHCfBxSErnPfnwuYOR98WJVs0qdLTEpy97s56oBH1AknvjEgW1lc7Csing2ffwOn/O
         HloTb7iNmUGuuHCL/zGNpnb1ztfL9Pem7cU4tdlWWGugpfMGEnINYJpNtofAtQIZSR9Z
         F8oKhK1zw2lJ1qnXT+4tV5O3T82DxL3JJ8mXXI7DdldPvuNWKEixPZF5enJBufTMzCdr
         ruZwCqMIftvk1osF5F8v0ZnZHGhyAXwdgXlwccCoPyxAp0pVWXbW7oGDUXLM8y1GOyCd
         w7RRJ+siBzl0dd39aXp8/AtQThlixpi+Miq8pLcqulOj9qEO/L6tO/gd9w3WNG4MeqLq
         STsA==
X-Forwarded-Encrypted: i=1; AJvYcCWd7MBoj9l/r3d2NBTvcXD8dJ3+tQwxAcdaryaqg6mCMNmM9MmikhcgmM8aGUlW4NSr3RAIm788lvQu@vger.kernel.org
X-Gm-Message-State: AOJu0YxLKrWm2NRMMnZiDDbiVtxrVWnopJp0rj+qczRVm4x/1HOdnilK
	idCHhjxfI5F4Et3B6As58y8ir3+JMjwd9XntPYB9LicONfKeIjnavdj+otonbJXaRRT2ZGifVaQ
	GY2rdSeM6AQAfAlWFpjgnddm/4nYD190=
X-Gm-Gg: AZuq6aI/WGChv/7eKX6AqVK0SHBa4Sr+PrTfvftqrUiwP4aoTJ8tXFjto+NWA2JeIrh
	YH2torouNI9pWUtURXf0JTtPFzNDH5gaXQ4LN2CYrEP2pdV4kyWiaOQx0LOa8OwSe+bkAXxo7pb
	4FZqjJStN1LQ1p7pCK7T6BZodQP9d0srUS+WOurgzB9dzz19YyRkPnFyhfTdXpkvrebrxXzsRIk
	l7SO1KbaSoHujD+Ew8lfQx0dAtsQFy3JJ108wfD4P0niGCiPvJBwnIGfQUyuvRzYTqp9cIztqev
	KL3Vxw8X32jqaz4J9bqqhYkRSWYEWsKxovPbqDPpxwI4nyStetG1bnNumXlb2RfFgd9t
X-Received: by 2002:a2e:bc02:0:b0:387:14c6:53df with SMTP id
 38308e7fff4ca-3881b997fc2mr53665881fa.42.1771556406012; Thu, 19 Feb 2026
 19:00:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260218-sm8550-ddr-bw-scaling-v2-0-43a2b6d47e70@gmail.com>
 <20260218-sm8550-ddr-bw-scaling-v2-1-43a2b6d47e70@gmail.com> <20260219-cordial-robin-of-performance-5fb88c@quoll>
In-Reply-To: <20260219-cordial-robin-of-performance-5fb88c@quoll>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Thu, 19 Feb 2026 20:59:54 -0600
X-Gm-Features: AaiRm50qTrqt8BSzzi0gs_vnlSMTOnmf8SWXzlWyfspsagrgKunuBjfwtusY52U
Message-ID: <CALHNRZ8qEJc8OSsrvCQC76_LjxA7KunrOonvSfq8bsFdYnKE+Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: interconnect: OSM L3: Document sm8550
 OSM L3 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Georgi Djakov <djakov@kernel.org>, Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266787-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 5950C164533
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 1:52=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Wed, Feb 18, 2026 at 12:16:18PM -0600, Aaron Kling wrote:
> > Document the OSM L3 found in the Qualcomm SM8550 platform.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
>
> Your changelog does not mention this patch, so I assume it is just a new
> one?

Yes, I forgot about this when making the changelog. I had used the
wrong compatible in v1 and setting the correct one required adding
this to bindings.

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
> Best regards,
> Krzysztof
>

