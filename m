Return-Path: <devicetree+bounces-161208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7514A72D8B
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52DB73B1E8D
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A757620FA84;
	Thu, 27 Mar 2025 10:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PH3/UzjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D6720F067
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070488; cv=none; b=PkLPg2EqVx40F4GJ+mnigRJnpcJ6h3Z/vZya7OW1Rq8GURzPoYIRysnN60uRPZj42XFdlTzF3V0fiu5F8OjzSMeOIvkHhPqdCsNRFiS2zfYmxjbPhBlxFlhxPuPrhC5g1K/CwaAVd43PL9fvgMf06Jj0suvrCAzqVVvLNIqy/40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070488; c=relaxed/simple;
	bh=C6Yhmj5NSDmuki5prkNWWgqAqbPvRZU5lqPe4zAvakg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FNcc47IYZh/Yf1hV6BcDPULx6WD1fxaxlBsl7TAFglLdXcMs40oetQrzy4kDYy268e+c6zCSvqT5bzex77AUPXZp5m7XzAxYRnZM4CMNRW5mFS0BtcJ1/uK1GxzWk5d2rnMTPgP4FRnnw0MjH2PPwPBM4ECOGcdia3TnvW6Jsuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PH3/UzjT; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2ff615a114bso2955043a91.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743070486; x=1743675286; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NXU1FLrii1vst2IhDKt8s9STfEquca1Y5iYBAMgYvYg=;
        b=PH3/UzjTb/1krpG8Qhb+auQ/CnsfSOHHdB5Q+A0CQ6doDY651lqKw/HkA7VjN8r5tU
         CrY0UQtBs3JEewTrzqDftEEb9Zb4gVZoJ9ZT4oM5VT1B0UXMzRfMBeO9G8dNVh5Cyq+4
         VYZvKWVsJQ/OwT7buSyKLOanCGFys1x1pAC8KdMiTHANjyFOHsDfMLp0FsGZx/VsjlRV
         YI8zgtsxAa80/58k6PTyoEEbR4MsUUR+671M9ABK5abRbO8EZtGaoNT870aDpujfno5l
         jGR45gPctibq+09rgy/uirYVpVDif3QdRwQf0cuL8YJlBvdrPEmpVrPBKUkmP/gSMuyW
         svcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070486; x=1743675286;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NXU1FLrii1vst2IhDKt8s9STfEquca1Y5iYBAMgYvYg=;
        b=lTzlTqR1dkFo6q/q6rppeuhFSHGKBji0n33P7HV8vrgpF+ks0rwiswSqhY+ybDwWcu
         RCfPkB4oH84pMrX4wXAT6W9p1F032MD/1LubawTUfxlUoEHGJk/oqVm8N7ebyk+DQU3W
         e6BJcdNAwnvDq311BBThrL0+0JnuVa2/sY1JVXYBLGGQD2xIuLMy8cBVfZ+cX1avA16B
         yuYbzUVXQ792a/3OodJXPOZVFPSGDsBRXFYDmQBu0bPxUWJqAPP7bDfAErzSqwY6bSbI
         2d1L7TJWS3I3L6x1SAz/OXBUVDkvhcFdzeWbiyRPQFvt2mr1nmyRMR6MtfJhF/Kkt6Rk
         GQbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcbm+6491dj9f9g0TigrQRpRcPx5kMUPplefMGLO0Cm8YtIhCdxxzbTAbdGAnrtjPP0jtl/GAhkA8z@vger.kernel.org
X-Gm-Message-State: AOJu0YxVJlg2H5yAUmakU+AHrjmmG5QIyIcPbl4XQzKOIMruCx228pw0
	RwV8eb8hqpEDYLw6gLun16ggWKsSgIKQCilca7zoSChq3d5LZFLhu+Tcu8v98+hc0DgAZ/qiyWT
	hp+ZSwpGSUd3gqdo7AXyOKexo7YodTKRlP1jo
X-Gm-Gg: ASbGncs+B6F6zaZRruDOEGNsBgcWbwh2wjneF8QdnuLXCVmNoaXHjOJa7noxp3OkwIJ
	tOSy9phWG4VEW80bLsgpCTN4YpjnJturH7pZOd7mO0Xtk1f4rW5QRL2gd/+kbpV8SR5QPp62Jvw
	LmFA+k251hhj6uOZTntRgfAoAR6O3YtuVmRJ+kV1VduhPb+NlF69zQPtLd
X-Google-Smtp-Source: AGHT+IE1AefcJXIAWpDxPG3bUQ0bh6A+2grtsHhf+KAx7LnCFJqdzcBF4kLKgl+IZnDTHnXwKb1Ss9FhuZTqsrkbkRw=
X-Received: by 2002:a17:90b:2cc3:b0:2fa:4926:d18d with SMTP id
 98e67ed59e1d1-303789576damr11844174a91.13.1743070485612; Thu, 27 Mar 2025
 03:14:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250319005141.312805-1-quic_wcheng@quicinc.com>
 <20250319005141.312805-2-quic_wcheng@quicinc.com> <CAGCq0LZoi0MOJLJYUeQJW6EfOU_Ch=v1Sg8L4_B-KhdDCx1fCw@mail.gmail.com>
 <2025032734-reward-fantasize-dc16@gregkh>
In-Reply-To: <2025032734-reward-fantasize-dc16@gregkh>
From: Puma Hsu <pumahsu@google.com>
Date: Thu, 27 Mar 2025 18:14:00 +0800
X-Gm-Features: AQ5f1JpamchKB-mbo8HzMPc07dJP4L7AYc2gJudLypuurcRTBQseSpaQIpAXpM8
Message-ID: <CAGCq0LamxvvE8b45VAshw9aWJNC2so_vK9t+pzXd3C7Y7tfYAg@mail.gmail.com>
Subject: Re: [PATCH v36 01/31] xhci: sideband: add initial api to register a
 secondary interrupter entity
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Wesley Cheng <quic_wcheng@quicinc.com>, srinivas.kandagatla@linaro.org, 
	mathias.nyman@intel.com, perex@perex.cz, conor+dt@kernel.org, 
	dmitry.torokhov@gmail.com, corbet@lwn.net, broonie@kernel.org, 
	lgirdwood@gmail.com, krzk+dt@kernel.org, pierre-louis.bossart@linux.intel.com, 
	Thinh.Nguyen@synopsys.com, tiwai@suse.com, robh@kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-doc@vger.kernel.org, Mathias Nyman <mathias.nyman@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 27, 2025 at 3:02=E2=80=AFPM Greg KH <gregkh@linuxfoundation.org=
> wrote:
>
> On Thu, Mar 27, 2025 at 02:27:00PM +0800, Puma Hsu wrote:
> > Hi,
> >
> > We have implemented and verified the USB audio offloading feature with
> > the xhci sideband driver on our Google Pixel products. We would
> > appreciate it if this solution can be accepted. Thank you all for the
> > work!
> >
>
> Great, can you properly send a "Tested-by:" line for this against the
> 00/XX email so that it will be properly saved?
>

We(Google Pixel) only use the xhci sideband related changes and two
changes in the sound card driver. For the details, what we actually
tested are patch [01], [02], [03], [04], [05], [06], [08], and [12].
Do I still send the "Tested-by:" line to 00/31 email? Or should I just
send the "Tested-by:" line to the 8 changes above? (I added
"Tested-by" line for this [01/31] first.)

> Also, I think a new version of the series is coming, can you test that
> to verify it works properly?  We have to wait until after -rc1 is out
> anyway.
>

I think this v36 is the last version of the series as I discussed with
QCOM Wesley. And for sure I will test it if they do have a new
version.

Thanks
Puma

