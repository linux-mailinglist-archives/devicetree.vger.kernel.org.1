Return-Path: <devicetree+bounces-269664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCRPOVC3o2mLKgUAu9opvQ
	(envelope-from <devicetree+bounces-269664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 04:49:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD231CE743
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 04:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B099D3006991
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 03:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEDC72D1931;
	Sun,  1 Mar 2026 03:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W7f6BYp3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0732311C27
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 03:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772336969; cv=pass; b=PJZr4zm8IkpqmFJtPXEs2PM8HCSvnjk2nTkI2SVEgzywo/PCTkNoPGiKxbfRSJf8ZgDsRiOTT5iToA89ws3/WpRzca8+78NqILMqcBZx3Ek1nrcR0Rib9+03BuAdw2zzJfLCDxdWSHb4Vu+44UHBmO7m2jSzPf5BOfRdorJJc2w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772336969; c=relaxed/simple;
	bh=1TL0svUqlQ8WjbyQXv4ZQ6ctPtDBgRE126ERAHh4Yqg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PdRGrggew1e0LZGiO8wsXjoBcKPp9GF/b3lfvmsRnV616A304Ycx9XVGFff5gd+u7co7E71ZR/LsudDuW5yYzxisXXCYt+YDw1vSCTMGqYtMC9Gmbgt5OyOx6OyRw1UrgTCXs+mHCWiY9f9xALTJar2HTuVlVZVebNV7+AMrPDs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W7f6BYp3; arc=pass smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-94dd06a96easo2332171241.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 19:49:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772336967; cv=none;
        d=google.com; s=arc-20240605;
        b=Nj7QlZhjp2yUEnGvpX2kwS9LYBMNEmsSFuD7qCxqUEAR9onWppPdGD20k7pHbIRVo+
         oD6uaKFLX43hWzN2aKwn72HpsGHHKwEZLu+72RFkNXmSqwmt95YjO7N2d2D+kV0iLTWH
         hbOgDcHWjh1X7KX9qfmRNpPe4qvy5fRtGBW1twnI/4Nt9dmW+FuN3/lh3cm/zDBKerm0
         Pu4pfbWJ/+R5hBAHstWln73+PeZAMDEjZ6pdBubelOMFQ4OrFBblyxEOMSNZqzypf8zZ
         dX3qlIfdIw485oig9olZLQQhcduyXCGfEylENRLHvGKRnAJfk+UYHlRqRhWmphHkrRxr
         Jdlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4lnU1mLxbjn2+cl02vzRP4sy51RqCquCiXAgj5a19P8=;
        fh=PHDDituMlO0otqe++dPQRV7u6Jslv7xV6rIYO12FcHk=;
        b=ZOwpMuGAASjA7TD7G/whr/vYOEw332gGPfZDl+0COkqDVkT6bDYDYiBoDp1xPZowzd
         YuKl2UkhPx3aG0DKPlC/nw51CPMfttHQk1pkC+pESt0PlQqPrWY5Veco5EtU4g4aT5mK
         kRILNUosU4jgYd6m0RBmIChRd2+13hD3dZJq0It5609g6fO3Vy6qQkIOLraJQvem1rgX
         jqBHhp2c9hiK9dkwXodewqExYg9W0uZLRYSnDR2T67C2DDSA19yZNN9XzPX3zkzh5NY2
         RhzPxy4exSx6HAsHnQoo44bc0lWhBKDK7THEOv4LttquUmZsP4X7/RaBCjJUiaLKyx+d
         C8CA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772336967; x=1772941767; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lnU1mLxbjn2+cl02vzRP4sy51RqCquCiXAgj5a19P8=;
        b=W7f6BYp3l5OwMJpxm4O2NAKOnba+ZLRKHl8acoyXRrHLpziCh3hDBKp9NwUjVNebvp
         Q91986QPnJxFkFKyYV5mWDSSgV83QDlxYlGzWREtCxf0cpnuvbNfphrA0/ycJ+vGwcqA
         J6cc/NZ1qtAjQdKYpVAbEOJMWT3mo388KgqYVuHTBZQRbHo5L8OMRa8y6HmwGvoeWm9D
         9d4zGtCVldCAhX+6UWIB2WjGrpoHZ7Xs4fsKCvd2y0hFmRzxPBJ+suBL4758tsTa9/iL
         KuZfMns3XDCIIppFNgHkpXqt8c4EHt88nNR1+uTqYx/B/robQsdSeW1t0f331QUbg1SP
         K4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772336967; x=1772941767;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4lnU1mLxbjn2+cl02vzRP4sy51RqCquCiXAgj5a19P8=;
        b=q0reDjAvoNSXTOVWWpAChh06h+lunIk61r7Cyhllha986R4C1cuKDYe+KtzwZMFXmL
         mTwaBJwPuwI7BXYhgpY4I/I6G+dSAsHxauIJRvcWnVzlLpi8c5y+XIIS+BYKoP9ABG1K
         pEaPZQY32BGHvUKso9bcc9zWppCSe9+/84L2JLZCHTXbi4HbzGnaUQN63q9hChNYMoH3
         k2DiMq3uySJK03OE4LIQ3T97FU0BY9wwSlk+litsjGGk27P1eIsOtpy/dv5oXDEtnSUq
         BivXOwuCu6K1Iyj5XTNJYU8nrxos7VYpBucioyLL5MGBvbQDBXvDjuzlWAhbuHkupoc5
         xscw==
X-Forwarded-Encrypted: i=1; AJvYcCVVg0nT5dHNcXX1CqF+Li6LAZ6ebj86+1QIpGjvV58SbKW9qtFUodIiv6A0ETCTa0l9BX1+M3a8XC7m@vger.kernel.org
X-Gm-Message-State: AOJu0Yw628nhxf5FEN7USXDed7cT2+48vXCT/nH9Y3Q5wmI6KzRnCjLp
	XkhJfGuHJgaWal7KIodtJvo+EILoZX/r37iPAzBCVT1NunRsMRgkhT4yfEqLS+vmzlypzxOnX75
	Uep8or4507VrpgQZpTIryTxGP9x4iodY=
X-Gm-Gg: ATEYQzxA9cBFagEKzBdTrJLEKXgvrbRlI0LAYO3pKuoBvmlBTl3Zid2QACXxiyX8Ml8
	C2k35v9HshOsbaxkOMPNhYPi50D99Zjuru6KQPVKOLqngG90+3GM9aqyxiQsV3A2VDuwwYlnStj
	H9Mgowu4SLdNPcO8MNn2lqaadT3JnD1VRi3BG/jek0RdzJq7JwD0FN5bRuuY4nk6xJK/BRfLmxU
	v6hT/ANBu+GXxfxRNTiL69Jn04K7RVyALSH8Q8JRDDMEzBtyw46wOQmWRyYIjcLBhj2zLFJ9IAO
	T6Itobg=
X-Received: by 2002:a05:6102:3ec7:b0:5ef:8ae:85a5 with SMTP id
 ada2fe7eead31-5ff32324fa6mr4498357137.16.1772336967571; Sat, 28 Feb 2026
 19:49:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228101907.18043-1-mitltlatltl@gmail.com> <20260228101907.18043-5-mitltlatltl@gmail.com>
 <hfohv2evihmqbaehmnjsj2cgmqbjytsa2j2z6l3cph2jlszv3t@d4c32rfdvt6d>
 <CAH2e8h5J7FdP41JBgEC7aUPk4AGwNnZ83+dYV0=n=7+PNeMVng@mail.gmail.com> <sb54l554woevgaetb54zwyn6fdrz4bqi7vnsavdy4czqzbcwjn@qf5wckbfzt2z>
In-Reply-To: <sb54l554woevgaetb54zwyn6fdrz4bqi7vnsavdy4czqzbcwjn@qf5wckbfzt2z>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Sun, 1 Mar 2026 11:49:10 +0800
X-Gm-Features: AaiRm53oZLI3cEOC6H1iwG89lbfTLYxPepZoGTGf8tU72v7-R0PVDG9WPFt8CG4
Message-ID: <CAH2e8h48wG92D20Mq8P=8qcur1FWTvwU4R5PEN3LRNE+D1es-w@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269664-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DAD231CE743
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 10:23=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Sat, Feb 28, 2026 at 09:57:19PM +0800, Pengyu Luo wrote:
> > On Sat, Feb 28, 2026 at 9:32=E2=80=AFPM Dmitry Baryshkov
> > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > >
> > > On Sat, Feb 28, 2026 at 06:19:07PM +0800, Pengyu Luo wrote:
> > > > The DT configuration follows other Samsung 5nm-based Qualcomm SOCs,
> > > > utilizing the same register layouts and clock structures.
> > > >
> > > > However, DSI won't work properly for now until we submit dispcc fix=
es.
> > > > And some DSC enabled panels require DPU timing calculation fixes to=
o.
> > > > (hdisplay / width timing round errors cause the fifo error)
> > >
> > > - Please squash refgen patch into this one.
> >
> > Ack
> >
> > > - Please post at least the dispcc fixes.
> > >
> >
> > Yes, it will come later with the panel driver. Lewis provided the
> > patch but it was generated by Claude AI. The patch itself is not
> > complicated, it only removes CLK_SET_RATE_PARENT from
> > byte_div_clk_src dividers. But I need to find some time to analyze the
> > dsi phy clock diagram and reword the commit log.
>
> Krzysztof wrote a perfect description in the commit  b8501febdc51 ("clk:
> qcom: dispcc-sm8750: Drop incorrect CLK_SET_RATE_PARENT on byte intf
> parent").
>

Thanks, that is very helpful. It's indeed the same problem.I'll post
it in the next two or three days.

Best wishes,
Pengyu

