Return-Path: <devicetree+bounces-161450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCF7A742EF
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 05:11:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 346863BC8B1
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 04:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D95920E003;
	Fri, 28 Mar 2025 04:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Fy0Iu609"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD72C1C5D6A
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 04:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743135112; cv=none; b=G1+tUon8MbErSJ0ovVXdXiSj3scmXtYuwLcmrAepNOYOgrOxJiu6pIowvbHnQmgp1DIRf6E4l90Sqm6MAijRVDTLGrb2BqUWx8DRWSOKvSw5bLB3jCLRnIzYzDhW60mlhBhjr19+0mRZT/NLBmWnIz91vOCNjn3gdpVGAsXgr1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743135112; c=relaxed/simple;
	bh=VcQhGjwKbCvL7TRvUAl66tFmQC357t2OP7ZqCwnkd1s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I024NU6v+dUwKO1bQoY2zX8uLho+W3NS+uinJNnBD57fbHagWaAMWZ0UfLaLNwazG40zEK/yiTsKI0s2Svq5egIROWUimd5pS9tc+Tn+7uzswWaQPazSk8ijpsodTvGbU8i0NNjmQGrHVOomQqi3+86cSmgiy+eudn2AdVuYuf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Fy0Iu609; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-301a4d5156aso2701313a91.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 21:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743135110; x=1743739910; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KOaMt0R9YVNlwsA3/uI772AmvrvkxzcfR1yqEVw0pxY=;
        b=Fy0Iu609nlNHuG9ClqLu+UMxGHR0IAoL+VJmrvaJLVNypQU4rg7l23kou71EVsuS5l
         I85zvc0BhhWo+tSQCwghPfTc4rV1R/gDOyZMKPnRtmj/B0BchgusX8uuGW43DIcobBDW
         6g5BaIdakj0Zv/iuSU1nH6+xddj6+78Mxav/8d44n5J/sN/cew6OsM+hsApEtjRwLvcM
         piAi0a6kF+wKxxoE3MW3YBXhAx0H0XvvsUCElocGxy2dgDbMZQ1eIROn/mC8zr+CJ0cw
         pNFDpu9Fi142rhLR0tHXrwBL4thUjWiVtsPhcNrLgzLr8Wzz5RIUDJbcdjBlKR5BKG20
         NWeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743135110; x=1743739910;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KOaMt0R9YVNlwsA3/uI772AmvrvkxzcfR1yqEVw0pxY=;
        b=ZajxDs7OGmMJ8tOOduMoAEfuFTBkv4ts17ZRqD/puKtTgKNFP9Ft3f8nBbAoUari76
         KlEJZeHEHZuU/lJTaOwUcktvZ/xnbxdaWqO5lhw1VhO3v4oqmmucn9pQbjhseb1ZJE2Z
         J73O5xUXg+Vv+UqJ+0gKjiPOuAhRsqlzj/E6UMiPR6YsLY55+e6QoUqdXoVdaBGd75sb
         IvUXYR9Ro9UOHKy3iWWSa3f8Po6SbArBTjtnfDJG0FrC1hcbipDpveJNzBa8sGXAtHKG
         gzjI45pOH0001FL/GGA+sK7yFd4DaZsOdESB/R3HFSkDmyRflHvVlrwn0XppM4WgzAMs
         9ZxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAXrzMvBgoYUCyHbgw6uzFUdWSZZs1z0U73wfmjh/Eyd1hTXrZx3A0pxfn5fINbUpj1O1mjscnoPNi@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs+1QbOpeul9aPQG2IYI4ZwHlfx4WqOP2NP2I7BJr95NEU/u0A
	mBTsp1+4TKvAHBBHwmRGMA6iwgfo8CDO59E/jLugiCIx1YI6HDo06dS6iow2spWF+9qst5jqrlR
	71s65bzh8DtB/LoFMeUWzhTgx+MQ0dTV7SvSS
X-Gm-Gg: ASbGnctmLR2dvgsdIsP+/lfjGxGeLgkxlW/MqCm3gTyR6iyZ2Bh/9KaqPWQwSOjeU5j
	SuSobj6lyswb21dRQddXshOxlWiBiyh3/DcWbTKT3ogxGrOKTc8HNh7PG4jXPY6RYMSPB8Oc1ud
	vR0mU0P7fEP1ZmoZ0s5QO00DhcE09lLYCtV/9vLYtfyXGRVCG/3KNVsBsX
X-Google-Smtp-Source: AGHT+IFzcIsDka9WHZJAJxFJMpLG8c8sNW7ZlIUJIwmaNAc9LhnSuWXu0PkDrFCS/5qopuG/ewx09I4HC8RtpYaWMI8=
X-Received: by 2002:a17:90b:5450:b0:2ff:64a0:4a58 with SMTP id
 98e67ed59e1d1-303a83c3c41mr7500138a91.22.1743135109830; Thu, 27 Mar 2025
 21:11:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250319005141.312805-1-quic_wcheng@quicinc.com>
 <20250319005141.312805-2-quic_wcheng@quicinc.com> <CAGCq0LZoi0MOJLJYUeQJW6EfOU_Ch=v1Sg8L4_B-KhdDCx1fCw@mail.gmail.com>
 <2025032734-reward-fantasize-dc16@gregkh> <CAGCq0LamxvvE8b45VAshw9aWJNC2so_vK9t+pzXd3C7Y7tfYAg@mail.gmail.com>
 <87746e66-84c1-4ff3-8b69-fbee1664eff6@quicinc.com>
In-Reply-To: <87746e66-84c1-4ff3-8b69-fbee1664eff6@quicinc.com>
From: Puma Hsu <pumahsu@google.com>
Date: Fri, 28 Mar 2025 12:11:00 +0800
X-Gm-Features: AQ5f1Jpnovh_4p-_u6V4wCVMQJgZBCl06fy9sGBvVcdkQOOr_maNF6N-1VIckKo
Message-ID: <CAGCq0LYi=Dq+3RvvK6Z5kFGZ3XanPq2BuizEBZ353oVo2FGHAg@mail.gmail.com>
Subject: Re: [PATCH v36 01/31] xhci: sideband: add initial api to register a
 secondary interrupter entity
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, srinivas.kandagatla@linaro.org, 
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

On Fri, Mar 28, 2025 at 12:12=E2=80=AFAM Wesley Cheng <quic_wcheng@quicinc.=
com> wrote:
>
> On 3/27/2025 3:14 AM, Puma Hsu wrote:
> > On Thu, Mar 27, 2025 at 3:02=E2=80=AFPM Greg KH <gregkh@linuxfoundation=
.org> wrote:
> >>
> >> On Thu, Mar 27, 2025 at 02:27:00PM +0800, Puma Hsu wrote:
> >>> Hi,
> >>>
> >>> We have implemented and verified the USB audio offloading feature wit=
h
> >>> the xhci sideband driver on our Google Pixel products. We would
> >>> appreciate it if this solution can be accepted. Thank you all for the
> >>> work!
> >>>
> >>
> >> Great, can you properly send a "Tested-by:" line for this against the
> >> 00/XX email so that it will be properly saved?
> >>
> >
> > We(Google Pixel) only use the xhci sideband related changes and two
> > changes in the sound card driver. For the details, what we actually
> > tested are patch [01], [02], [03], [04], [05], [06], [08], and [12].
> > Do I still send the "Tested-by:" line to 00/31 email? Or should I just
> > send the "Tested-by:" line to the 8 changes above? (I added
> > "Tested-by" line for this [01/31] first.)
> >
> >> Also, I think a new version of the series is coming, can you test that
> >> to verify it works properly?  We have to wait until after -rc1 is out
> >> anyway.
> >>
> >
> > I think this v36 is the last version of the series as I discussed with
> > QCOM Wesley. And for sure I will test it if they do have a new
> > version.
> >
>
> Hi Puma,
>
> I'm discussing with Stephan on the QC specific stuff, so the common chang=
es
> won't change on v37.  Please provide your tested-by tags for each commit,
> so I can carry them accordingly on the next submission.  If I do end up
> making changes to any of the common patches, I will remove your tested by
> tag, which means you might have to test it again.
>

Thank you Wesley, I will add Tested-by for the commits, and I will
track your next new version.

Thanks
Puma

