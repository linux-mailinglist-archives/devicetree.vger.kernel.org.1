Return-Path: <devicetree+bounces-269570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BEXE1b0omlD8QQAu9opvQ
	(envelope-from <devicetree+bounces-269570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:57:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E01C3638
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:57:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 01665302EA80
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C37830C621;
	Sat, 28 Feb 2026 13:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="etDPzfgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DF637104C
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772287059; cv=pass; b=R31B2KTfKGi4Mw8xLaj8MErp+oF3BRp6lmtDYIf6fAf+J2uEF8vkMQdxIv7qL8NJImuKd7QuRBeXMZ+QbDq5xVSTMMtcWv8CfFYZ3IpPy27LA35tzoYjiSJuni4DwJrIl8KTc8BUOCIs+NwJmAXx4nKi4H9ZUg3xSqL0559QOVs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772287059; c=relaxed/simple;
	bh=OHy+nPU0PfKOPSTzaYhzi7AqD2TPKVJAIyn6BXVRVv0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=auL+1cZKAyOD3oT40hK64umS+vgc3I4PXEo5qiHCer3o33/nC8JZQTEtHz9dSDEl4vMnOuymJ3M9JrMFftDsUjB3OPROHb0RPUX9abBmtjR32aVcVy8pzUjknqN6nXn/L+EXbX4Aa5bl1TvRRKVmZcJBh9tyY+mrgkR6LSuxeY0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=etDPzfgJ; arc=pass smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-94de68feaf4so1868509241.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:57:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772287056; cv=none;
        d=google.com; s=arc-20240605;
        b=j2a+7EKCxMikEhF0h/uKtK9VPJJu6Ogpvgl6cQLWuONpZ7WwChEfGxGe9vL1D5xqpJ
         b0NsR8Ge2XGkmTneD/rE5ZifN0lprMCmD2wxhauNdFV83QZEhIV9AKQJNEVEMYPwzKhW
         vvu6KwwMFTofY2Toin1qaLAc737clXY4lTAy+zmSSBxeP4ijAeOmPLwPe/eEhPPIIF8/
         +GAZT/bM4cSDPB4AbM9N+LGONluJ0s7WHt43cPBrCglF6GKbpc5kh8MrZvU3eTAi6nTk
         R1ZwK+O/pJ2T5OQ5JXeZ5SpvOLR3QS3LXin2m5tCy7tOmNXvV5bLwd1NK4xZpbk6mTpO
         qz0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OHy+nPU0PfKOPSTzaYhzi7AqD2TPKVJAIyn6BXVRVv0=;
        fh=f5MKYZf8p38qdVJQzLSAA02XWmgZfY2Mcy1jForIv9w=;
        b=C8LtiJrIh5Jss1dDF+o1ODa6+URFluDb3SE0rZ8peUpUOAPi88WSJDGzPFsLYYDG30
         rba2O/cXzjd7d6/DhXrZCK7USzEv2WtM6j66qapPbiZGt669UxGWvS5psHgRqzSih0R1
         +xypuHuFBeMTXldRwmnU6iKZPVZnfBqXA9FqjM0Wm+gv/LSGaInoqB+ejcU8ml92K+WZ
         DzS8Y5M09CJ9vvPvDVsRc59c7GXJ5bIlrGG9K9j6VxSw796s7RpVeZ1IOiTjTof99cak
         afZDZJq86HZ1brKDclsZ4dtrVS/tFasWcCqNwzTMFmc+KKjI0dyMYih7gpVOQs+fEwm5
         45ug==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772287056; x=1772891856; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OHy+nPU0PfKOPSTzaYhzi7AqD2TPKVJAIyn6BXVRVv0=;
        b=etDPzfgJu6P+93bTGq6hjSFt8hloX8nrxEUIRikiGbQljG9j0FizsRc1ZAoNunA9B9
         2rWa02hgdhtdQhHwwkWhVf8SxU4gncSL/JYclpnlBCvGWjizyVQrLr15Y8514xfh6e1T
         yHesW55YNSw4oXa6QLHFB9WBkHXsr7alWPLM3YrCcMYjsUSMna9TDOqR8h5Ox2q04sCC
         Cy9JLsQUP4V+hTuShwHMp1DSCVLEXq3juE/9uYXvYEp827OX5jW8gU3sYgqPCfewwgFL
         Jd+t7X9K7o/Ab+z8qVtCp2sugDA1nXSrb1vH9Ri9PfN5mwK71gjz3GragDf5HxRloV7h
         aKAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772287056; x=1772891856;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OHy+nPU0PfKOPSTzaYhzi7AqD2TPKVJAIyn6BXVRVv0=;
        b=f6R6OStPmZnIGzlo4RpFTEiJwD8g7IOO5IWN1a3RvSim90AxFrKn0fjuOx8bXY0zMC
         G9o+h/wRW1ieJqos9X9zogQVNrW+lSHLO2LjZPEbvH5h3J5gwCgNWY1GCLBXVazVZciB
         kYSMm9MLqmMXakUFUdhuTpHxC2joV1rDnhX4bYplJwkMbGXpakcO0jQex77Ycg0ULdmH
         eqDv9i9TBcC/fe5FNRXcIcwqQvUY8peG8Qs90KlwuGDWPSltEtZdLsb5vBV+2YFtFh3M
         h0I3NEgSX/GK9M3qmvACcH+BMsTe/OxYpN4uc4leXxy2nMHDSGgEojUAEHGx2in09uCy
         5+RQ==
X-Forwarded-Encrypted: i=1; AJvYcCVC8n6hVWPh7zGNmv6uZY9jDT22FP49No4az+iGUwuXn0cqAUqY9zlUoYo/xIjHByvPkY8JoY1NadfV@vger.kernel.org
X-Gm-Message-State: AOJu0YycKDgjsLtT8O9xPrODxE0olavX6u6zCvcrRDB5xhpHGse6StIy
	Ftll97je/8k5Qs4LlJ1g6Lx8d6JgEkJpPiFMVBcCiZMyYihjOALLjxkZisissqxasxmtEjSu8Hn
	rKiU5P0Gxgdtw+pI62K4TuRuFIY7jRGw=
X-Gm-Gg: ATEYQzwVu2hDd24WOs3WEHzjLXrt0Us0b08XAovzwyXuOelBQRvJYUyDwShG8zKV2Mh
	2TLi9A/xqOcxnLljg0AlX7tV+nFC/M2OyJ6NkIhLjZdUx58CgLAynsFVnEZlLRGukW1D5w2rzka
	8OyrCbMZmxtCLv6lyohjhNa0xS0HpnR6GCZL2NR0+AYrdWXEQaT3DM1gPoz/9794/J9V1648+gS
	iHxaObbB1/9FL4Pacy/KctHt13lKNaOlOC5mFuAbd5KQe6w2s6oCwPbQXYmSr3BoLtWVYGk17VG
	EZa/2zl2FqJwixgKCg==
X-Received: by 2002:a05:6102:41ab:b0:5f1:606f:2a14 with SMTP id
 ada2fe7eead31-5ff3248d7f9mr3793793137.23.1772287056552; Sat, 28 Feb 2026
 05:57:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228101907.18043-1-mitltlatltl@gmail.com> <20260228101907.18043-5-mitltlatltl@gmail.com>
 <hfohv2evihmqbaehmnjsj2cgmqbjytsa2j2z6l3cph2jlszv3t@d4c32rfdvt6d>
In-Reply-To: <hfohv2evihmqbaehmnjsj2cgmqbjytsa2j2z6l3cph2jlszv3t@d4c32rfdvt6d>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Sat, 28 Feb 2026 21:57:19 +0800
X-Gm-Features: AaiRm528taAECdfaNz7MHnvxwd2NLIV6e5nb43M70lsJMEjqfm41ug7OY7NJn1E
Message-ID: <CAH2e8h5J7FdP41JBgEC7aUPk4AGwNnZ83+dYV0=n=7+PNeMVng@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sc8280xp: Add dsi nodes on SC8280XP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Jonathan Marek <jonathan@marek.ca>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Tianyu Gao <gty0622@gmail.com>, 
	White Lewis <liu224806@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269570-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 953E01C3638
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 9:32=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Sat, Feb 28, 2026 at 06:19:07PM +0800, Pengyu Luo wrote:
> > The DT configuration follows other Samsung 5nm-based Qualcomm SOCs,
> > utilizing the same register layouts and clock structures.
> >
> > However, DSI won't work properly for now until we submit dispcc fixes.
> > And some DSC enabled panels require DPU timing calculation fixes too.
> > (hdisplay / width timing round errors cause the fifo error)
>
> - Please squash refgen patch into this one.

Ack

> - Please post at least the dispcc fixes.
>

Yes, it will come later with the panel driver. Lewis provided the
patch but it was generated by Claude AI. The patch itself is not
complicated, it only removes CLK_SET_RATE_PARENT from
byte_div_clk_src dividers. But I need to find some time to analyze the
dsi phy clock diagram and reword the commit log.

Best wishes,
Pengyu

