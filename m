Return-Path: <devicetree+bounces-259204-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHILMr83dWkqCQEAu9opvQ
	(envelope-from <devicetree+bounces-259204-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 22:21:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4557F07D
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 22:21:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64F56300DE33
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 21:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6DF527A927;
	Sat, 24 Jan 2026 21:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VkXAD7c9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ED1217722
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 21:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769289657; cv=pass; b=BHKNvwWKqm6lzgueZUwLfUGWy9qng7dHq5h/xWsNRkw6inhkL8tnu3Ik920kz6w5WqoXFP4Ocoe+Xy9/KvlKTiFT3nIEswCmdZKjezGb8U31ja+9gUIh9wTthskgT46Y4M8hGsJ4ImZQVTa5aaUZJM1PTTtNLozWaIin8y4CV+U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769289657; c=relaxed/simple;
	bh=eUW+Nn1xQDwW+fDL2+2weYSRCbL1Ugg4lN7x4qKedq0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n/m+cocNmwJTdpxB7rGN9O8kA6Uq8zHlwG/KglkklR1MVDjkkzfzsTWwGlY+b1g4U7shG848nQ+cA7H9g/Te5Bgq/6ZdjFIr/f41KgOrL20cC2+ic4RuyZ+cJ5NMmGFucB0bOi/eA05XviwvPR+eRpi12M5WGnpzigzvENSdaAI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VkXAD7c9; arc=pass smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-385c6c727fcso28899681fa.3
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 13:20:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769289654; cv=none;
        d=google.com; s=arc-20240605;
        b=UtnENU5vp07b4RWCZAUlq5ca1XbDr/7h18eSttz7Uio9L7ca3/uQzO9snjayJlXqFO
         djDewxnY+YTkHDlotVFnPcblkjU1NN4ivuEP9a8ywwRoRt4x0oVKfu1ekCwvkNA2moFL
         BIAxwIYMfTA+Scm0UHbiiRYciVjl0her3zxCPW30MiEgE0GDe9TPSpsostMYBeUBwsDt
         YSuV4zea1YGBIbClhJuvii1YDyJ4vdXPvBPGTOsLL1usv32nMu7xUcJPNIn1tDZ3/1RH
         cINve15G2DzDl2irKK+9LqlLpiFpRgVOP94A7ZCFpvxVbyeHNK4nkPWeGe02yq6jOWzM
         aD/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eUW+Nn1xQDwW+fDL2+2weYSRCbL1Ugg4lN7x4qKedq0=;
        fh=j7POV3a3pb9lUw96iqGYIMazBXVNF3DcCd1xAq4tWbE=;
        b=VWQRG1/fEJPrTYz45RPtjwYDpEQsPrYUWCn0lgwfkkqk+48kb+ILULLMGCu7MTPuNF
         ItExHBGkyrHpLzWhy0xEbyXrwD/LTRCAGusRGtD3bZ+2lqKNeZVkfNyhZAbaHMCaYBFY
         inCqkq6nV3YLK7k21IOIv5GcnY6BeFwTNKkunVjVDh1r8Z4UM4mm19ItfnchEEHstDV6
         VVtHW9cQ5MNNZI9Kps9hfmk8B+OqzRgKOCCXwRV2ri5aDYHQlO7RtBGBeIiVqcdPLNJJ
         hzOVJuPnTctcDyjZ//CZ3zU9Bu7u93XQHYlNeVb3e1ZPWbBf0uLMjhbveroVX+UsN0Ko
         MCjw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769289654; x=1769894454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eUW+Nn1xQDwW+fDL2+2weYSRCbL1Ugg4lN7x4qKedq0=;
        b=VkXAD7c9WaQrGIGDTD56RlZKGR5RX/IoMJ3u1OT+kNGWRTuhkHfoVBYQuNRlhmOwmH
         FBYt0YhU9GVYMDVBfe59XWQvhlieZyg39t+zChFMPkue0U8KSIu0XFroqMPygGOWwrZl
         P2xBrRFbB2thceRV4xGFjx30bkZjni2O+3tqx7+HhFuxrWwfBr/d8WmDaZwNnRE+1dXl
         gS3Lp8xcurgETBRfroUYKJ5q2dtpKko/7VXMiQxXGx69FLkE6Y0UPtVBMyarxCz6ri3J
         AnWkj7eECsv1UaAJkc+rbkLni8Lm4pWi2lDIzUZlRDtsGolUjZ5EJLOyMUH22BE7Bw37
         MJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769289654; x=1769894454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eUW+Nn1xQDwW+fDL2+2weYSRCbL1Ugg4lN7x4qKedq0=;
        b=YFAmFGr0Q6wmOrIku99KxmGhsfLE6n91p0kS4HvcaDygZPXJJqGGgPHdC8erRt2CIT
         aR4JvYz6GKEOLBo0AeU7Sj51AlyToolLho1uBjjcLVRr3G/UGGOFmKObdu/d2oQy8hDV
         dnl2MANbOpjDMRXli7UO2P7fsdVrmzzOC8LzxAJhNmhRUo+y90Kl9N1rQJiEAL+BtnjG
         Ri8bvB+ei081MZqCzsZXeWYfQ1MgajQpZwYFyCGsQAOtrx5fY4amPaFypiuCEIC2pImF
         kWVzmGn6mBtUrTs5cybVAwUZGb4V465Jc49Jm+Ilj6pPsnRkuaEfpBageLAse6J0PVE1
         8VLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwGffoBZo4zZ3gDllxB+YfHmArLsDw1VNT6GyddINX4dXkPSObANu0TgMSfv+aMLng/JrSuiFq4odZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwpVS+wXEOZMUEI2WY/jCs38oicOizSygOtfGdK/KL3ZCQqI4rY
	poZ2ZPhzrO4WH5ch3KslRVKqYbyy0ig2vBBeGVJBnSGCxZZ+GwxqchLf265J2zpFAohtYM6dmcp
	++2839+tGHmaytuYHYiGboD1VXVCVcxA=
X-Gm-Gg: AZuq6aKSya9nCVM0bEtEDnkxoypcmL17FON1auFhN4NPT955oMYuQAyPCMZ+z17alM/
	OK1ZzkZ2NmwN9K+Nyn9mo84OWzE6riQThtx+bwQdCHQkrj1WRbNCxyIXn8ecFZkyWHclPa/PZTX
	AULaY5L4CS0VkbT9zkqgnjS3jnxyjDWUlOoIvLi3VHlMO8Rtt54mYFWEqKDbk2CnStiZO/mpg6i
	CVDxG+VL4Sksw5c/1X0Mp1Yh98mBaXkDedyM4G+Hxs1eLpI/mZwqU1gRmMz51TWo7YO6GW2p6kG
	MDxedntya9rgXhzsvkY/1LN+sEpjpt2a6ePl
X-Received: by 2002:a05:651c:31dc:b0:383:18fb:fdf0 with SMTP id
 38308e7fff4ca-385fa18a1a7mr202501fa.22.1769289654024; Sat, 24 Jan 2026
 13:20:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123-imx8mm_gpu_power_domain-v3-1-3752618050c9@nxp.com>
In-Reply-To: <20260123-imx8mm_gpu_power_domain-v3-1-3752618050c9@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 24 Jan 2026 18:20:42 -0300
X-Gm-Features: AZwV_QjYUVpRsQS5aWPwAi-rYkpNXVxY9EFDkrf6zt0nUDYNEKpxxlUFDNbm7q8
Message-ID: <CAOMZO5Ag6jtVqeXW30QNy5+1ykmGTt4G8DxcsyOUMvNaeJf5Ug@mail.gmail.com>
Subject: Re: [PATCH v3] pmdomain: imx: gpcv2: Fix the imx8mm gpu hang due to
 wrong adb400 reset
To: Jacky Bai <ping.bai@nxp.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
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
	TAGGED_FROM(0.00)[bounces-259204-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: 6B4557F07D
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 11:51=E2=80=AFPM Jacky Bai <ping.bai@nxp.com> wrote=
:
>
> On i.MX8MM, the GPUMIX, GPU2D, and GPU3D blocks share a common reset
> domain. Due to this hardware limitation, powering off/on GPU2D or GPU3D
> also triggers a reset of the GPUMIX domain, including its ADB400 port.
> However, the ADB400 interface must always be placed into power=E2=80=91do=
wn mode
> before being reset.
>
> Currently the GPUMIX and GPU2D/3D power domains rely on runtime PM to
> handle dependency ordering. In some corner cases, the GPUMIX power off
> sequence is skipped, leaving the ADB400 port active when GPU2D/3D reset.
> This causes the GPUMIX ADB400 port to be reset while still active,
> leading to unpredictable bus behavior and GPU hangs.
>
> To avoid this, refine the power=E2=80=91domain control logic so that the =
GPUMIX
> ADB400 port is explicitly powered down and powered up as part of the GPU
> power domain on/off sequence. This ensures proper ordering and prevents
> incorrect ADB400 reset.
>
> Suggested-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Shouldn't this have a Fixes tag?

