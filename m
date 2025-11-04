Return-Path: <devicetree+bounces-234966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD29C32F35
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 21:44:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BBF26343EC7
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 20:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD4D1257423;
	Tue,  4 Nov 2025 20:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dq2GRtc2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272242EDD71
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 20:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762289068; cv=none; b=kGIoLNb4H045y9xl3rM7Hr+puByEq+IuTJoZfKJpkumNtSci32boeOsPcr9/XPw9xq1X1pUBrk2X1tYNgk38YcEmuDdb5LdyNyrlY1IDmOm9lUBC6mro+TaVIZoxdulhV1gSkAG7chowMn+zmAOXrIfl5HvZXu9/yeTv1biEoO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762289068; c=relaxed/simple;
	bh=GKbKLrx8KAYUI0LS8udrzqIkqtR4H19YIDzb4FUMMWM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gdGtyFVRqZNxJ69BgtcQxn2fUwXEHWYhnpQjQwobKVsRV1MZtq2dO8FhDOq/71yXO5eT8jjq95i9YIDTSPkk03ApEGHcVKBmGVYEM3jK1N5UihpILYvtuX+wFgD1jKcdbXai9HH0gLBSU1VNa+8OT3zrMkzGlszG6IrQOvxSYdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dq2GRtc2; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59052926cf9so6569596e87.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 12:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762289065; x=1762893865; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M2ENbKwT7lv9tz28/K2qju3sHWO/1gvFfQERib9t/N8=;
        b=dq2GRtc2yIWRqgoVDoLOoO77A0l/B6jhE/adR4I2mwyl5Q3K7TIPVWYqpfZnxDdT6H
         nu44zMn3I2hvpTnVtCbelbi/f6n0z5el6gqaa2Grbl+cbmqLVVmOH8ud64dKzJqaKX45
         rmTMvQl0FHTRwOoskDooOMtGy7B/VKQK/K6cIM7FqonnGEM0q+DJ/538mtEgpK7F34hA
         Vk8hfMI/S+LvJH8Hnz01U2JVEAiFbvJ2OFmW3KjsAl0q4uNwu7xnYkVsM8rgsNuwql7o
         im28bgFKXR2vDyBR31g3Wq/nydCc3P0hhMv437oxEGu9GfItIokokD1FWO8h04xGE+4v
         GeEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762289065; x=1762893865;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M2ENbKwT7lv9tz28/K2qju3sHWO/1gvFfQERib9t/N8=;
        b=um8UYHjwMCbCJCUOJeXr0W8eX8g6UHaQAdbUrUoOSUBJMQ9gpAK1WfgHOz+nP+qWHb
         NFcWtDe7NVFipcXLTw5gncq9znvD7TjobWsZWE/zxLI6GMSDWp2oGoP9UoaHoz/MMgSu
         3kSSSbR73RfDhJpPOimOqYtVfSMyK8/esPFQKHUX3UBBbcG5unNXRE4UPKrvMjltAeZC
         sG4OXFaypu13YbNfJD6vq9I7/S+nM1qPXxcVWDbGVozf0wJ6G5xxHidQd+4PucFhd7QG
         uACxHmuiZ5p08oCCuc7nP3eR/htH5RMaCZ4XG/3Qyrvlcj7fBaJf6Pb5yfFKDF1NS407
         k/2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVRA/MFwTD4LbB6YsnLXrcvQBosHC7+2O8/fhEgk6yYSyHr2k4APd9q9D79hzH62BWp/TMWklb8fDxo@vger.kernel.org
X-Gm-Message-State: AOJu0YxVrSJJxRPO3WNTDNCdu05KPnjPDz4bGI+F/RkUbE8j5KlNwURS
	TR2X0IBRGN2wcge7Jzh/w+1/mc6BTXq4poyt9m0p0JI5AgpTbog0DoEFwfn7PImPD4p0LURU/2f
	ByAwv+M9T9I3u5EVWFUqnvvfzdRLNTpI=
X-Gm-Gg: ASbGncu+NfVDhWwmd/wCiSvqJfes1LwPNwTN0tsIBkMS+KNwAZCrexqtO1S1BALpa7M
	f5Y25HkI4xzKOoJ5i15W9RQzs6Va7/bflDdrxR+cUQDBWpD9IMzwhFDSeDLTdXa/6PeeF3JUgrK
	5dXn71nLrYHFmzfkPHDK6VapyM3y71ucP/HesBOxC7k2m+6OHiVOu3yS03TWsk2F/Q61o1jz2g9
	1drIcgTp5xca41hz0JWODa4Jq3AUq3Hzhn72c79TDinhNb40bsazSje7sCC6dt5c7tfnmhgjf3t
	w15ZtKV6vuxQemM2
X-Google-Smtp-Source: AGHT+IEgyDz6GgQ36aOhYZfcy+M9mJYKbg+MSqwHomwdqA+8oevBdUI0GcxGO3WedYpy3mCE8otuQ+c7+LgGwJyJeBc=
X-Received: by 2002:a05:6512:114f:b0:594:3c08:4f05 with SMTP id
 2adb3069b0e04-5943d74dd99mr147323e87.14.1762289064896; Tue, 04 Nov 2025
 12:44:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013205155.1187947-1-festevam@gmail.com> <4bd512fd-b3df-484a-8a04-a1ed066c42fa@nxp.com>
 <CAOMZO5AGRejEwNvkH0Di0HVi8QPduTeCSud+_GqOkD4tqEcsdA@mail.gmail.com> <37b8d968-a725-404e-8fd4-84c2a0bb464c@nxp.com>
In-Reply-To: <37b8d968-a725-404e-8fd4-84c2a0bb464c@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 4 Nov 2025 17:44:13 -0300
X-Gm-Features: AWmQ_bn9ScRQzwOew3nNnHj8C-mT5iCyP0mJjFFvOaLk_a5CcV4aEWSlDVa3aoE
Message-ID: <CAOMZO5B+VcGxx9Xa6FFXxeka0qcqBmATrartguqMLMDK4fGduA@mail.gmail.com>
Subject: Re: [PATCH RESEND v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
To: Liu Ying <victor.liu@nxp.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: marex@denx.de, stefan@agner.ch, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	shawnguo@kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ahmad,

On Mon, Oct 20, 2025 at 11:53=E2=80=AFPM Liu Ying <victor.liu@nxp.com> wrot=
e:
>
> On 10/20/2025, Fabio Estevam wrote:
> > Hi Liu,
>
> Hi Fabio,
>
> >
> > On Tue, Oct 14, 2025 at 1:12=E2=80=AFAM Liu Ying <victor.liu@nxp.com> w=
rote:
> >
> >> Strictly speaking, I don't think i.MX6SX LCDIF is compatible with i.MX=
28 LCDIF
> >> because at least i.MX28 LCDIF has the version and debug{0,1,2} registe=
rs(at
> >> 0x1c0, 0x1d0, 0x1e0 and 0x1f0) while i.MX6SX LCDIF hasn't.
> >
> > There are some DT users, such as Barebox that matches against
> > fsl,imx28-lcdif, so we cannot remove it.
>
> Hmmm, it looks like software projects like Barebox don't really follow th=
is DT
> binding.  Is it possible to fix Barebox to avoid changing this DT binding=
 by
> this patch?  I'm assuming that Uboot has already been fixed.

What do you think?

Thanks

