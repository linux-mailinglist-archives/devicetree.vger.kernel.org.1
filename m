Return-Path: <devicetree+bounces-39295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3453584C140
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 01:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B14DF281E9C
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 00:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652668BEE;
	Wed,  7 Feb 2024 00:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SGAFsKGy"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8E48C05
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 00:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707264606; cv=none; b=JvPQc0kkpH5XCfot2/EOEcIqn+5/bbna93+ztXBX0dRP9L91hkNu6bmX/RlNIbkjR3okobiBr3hdkj8Y8ZGepmD3m/zk9gtBWW2aEX98byUbyYJVk9H4xnZI4zlBZOzHntBP5FEBneuk4GYc45elWFVIJB2AfskXeyRWvG+79K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707264606; c=relaxed/simple;
	bh=Cdcap5uMXxvB1kBQ9xVZaxBupdA8BdwIYAkLrQteCBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dF9donWlFENs5U9zRRS1E85T65WeayHEMAc1E+ZnCJmP0L6rbCf1zdZbkLTar957jowIPN5dSFmU7JJTozw4f8TkxPpHDSms5/Bkqc+a5BCoYQLhW6N0IIuXJwhNb3gaqW/F27VmJ3ucRiprCe9a9tb/5w4bb5Vkw3muovitFMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SGAFsKGy; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1707264603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8PeIaiF8S8G4r3R+HzDgZLObyMgMOMMGNfccF3lVkkc=;
	b=SGAFsKGyM/YxDlZ0vxuYhirr7GjwQlChD5Ep5iSrrW384v3oJ5+YSBqGbTeydEpPXNjCK+
	LawelrJkucoPw5qceW3V5oykv+np81kgYwM0ZtxluUIZG4C0ZrvLvWIGdrnexnX+5oeqPh
	qnFfxO8TvJwUTTBrDLmTuhyl27SQzug=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-472-V8fYSkmhNeKcgLJwVbYm_Q-1; Tue, 06 Feb 2024 19:10:02 -0500
X-MC-Unique: V8fYSkmhNeKcgLJwVbYm_Q-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-68c4e69e121so1028476d6.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 16:10:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707264601; x=1707869401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8PeIaiF8S8G4r3R+HzDgZLObyMgMOMMGNfccF3lVkkc=;
        b=a8Y3KXEPacX+S8l0TtNZP8tm+OCNfHocS4w/Vy0C1Pu9X7lsxzo3H2Hk0jgIqXQWPD
         LPZ0RrApp1ZkMbsqWcMye38akVtCpD95YoTzySy4YNH3rp+YFH041ulmH5BBzMX7lNIr
         nS/aJlq+b54PbWb7BvvvjJPYzF66AVzZC+2N1feqXi+mm9ncUe/zCHrXm5lPuWdB/ZN/
         SrFq6FTnA4hiroaVAs3krhnCsE/XGFn34ORS/HzzZrQbVr1NlyWlhRLyTMOJVuZ5ZWiE
         S+vszoTpkKJdxCAulSRnxQ3I8u/5x1yR/vAy89j9ql0DEu6OlcZNGs3Hrmb+1PbRqvFt
         8S5A==
X-Gm-Message-State: AOJu0Yx6y1V5KhjMlU1j7OI/XHo7XZh2s55r4xv/PzwCWkb/01QzoOJA
	f6q5rwVsKXlJ/y6gujNwdDtCRO6noR4BohHaRR3l/vBWnltKznOhjdxz2hY+lxY49v+Eubb201B
	1ge7GmJ/iZ/FZs0JJClBD/R+phtCkwvLLNFZNmO4Nax0RyjKqVQ2M19xk+mU=
X-Received: by 2002:a05:6214:410e:b0:68c:49a1:5c95 with SMTP id kc14-20020a056214410e00b0068c49a15c95mr4407505qvb.55.1707264601666;
        Tue, 06 Feb 2024 16:10:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFdJS1fYNbxcKarJ0njOQ0m9/eqTJtiD59/XUfeqwKtwbIQlfAhxokwVel6zXVbgv04fzCArA==
X-Received: by 2002:a05:6214:410e:b0:68c:49a1:5c95 with SMTP id kc14-20020a056214410e00b0068c49a15c95mr4407481qvb.55.1707264601395;
        Tue, 06 Feb 2024 16:10:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWvxIl6coLO1rbDQJ8RjF1D3gsUxXQJ9LrU9v6Bw0nQ4l0uUwnWpqCL/cwxq6ZJnGUyz5k1WcPlepJBLGpQ03D78Ghv/YzIBaWLaVQrW8zLkWPQhKFmVgMABZHxrfnf5sLsjbUpaJBQRgOC2RJIa90ukRmb2i5NKbAn5TTVjGlfA1SW5EMBwMvIYVy4BBS6ZV/CwO6/WnCU22wLEqeFUtsyRn1jaljfOsHmMADayBTiXUGm00RADK0B8WbRkpZ9Z4XLn/huGKJFmXhc8ooETwnsk8G5VIoiQi1kv1QTlkBgdPxKVSDpcCp1DObertMWC+7LGHgSIW7eNxfMyqG+7wk5L6SNkZ4cCY5e5QP8ImGMA85XfCkRTgS7xNOw4JxwDU07BTthNpnCrplEFCktBQVgMRQI9vhiMO5f7hwbICZqQPoO6to6WKuPP0dIvG5ax9I=
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id xq2-20020a05620a5ca200b00783534c512bsm21043qkn.32.2024.02.06.16.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 16:10:01 -0800 (PST)
Date: Tue, 6 Feb 2024 18:09:58 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: neil.armstrong@linaro.org, 
	Krishna Kurapati <quic_kriskura@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: Re: [PATCH 3/3] arm64: dts: qcom: sa8540-ride: Enable first port
 of tertiary usb controller
Message-ID: <6q2ocvrujbli42rjddflyol74xianr7j47jwcgdnnmwjanv25d@uw2da7zulqqd>
References: <20240206114745.1388491-1-quic_kriskura@quicinc.com>
 <20240206114745.1388491-4-quic_kriskura@quicinc.com>
 <23824242-1b37-4544-ae9a-0a5a0582580e@linaro.org>
 <CAA8EJpqbXvKMQktGsxMFJnR+fXoOz8hFmm+E3ROPTjjiD0QLvg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpqbXvKMQktGsxMFJnR+fXoOz8hFmm+E3ROPTjjiD0QLvg@mail.gmail.com>

On Tue, Feb 06, 2024 at 03:30:32PM +0200, Dmitry Baryshkov wrote:
> On Tue, 6 Feb 2024 at 15:28, <neil.armstrong@linaro.org> wrote:
> >
> > On 06/02/2024 12:47, Krishna Kurapati wrote:
> > > From: Andrew Halaney <ahalaney@redhat.com>
> > >
> > > There is now support for the multiport USB controller this uses so
> > > enable it.
> > >
> > > The board only has a single port hooked up (despite it being wired up to
> > > the multiport IP on the SoC). There's also a USB 2.0 mux hooked up,
> > > which by default on boot is selected to mux properly. Grab the gpio
> > > controlling that and ensure it stays in the right position so USB 2.0
> > > continues to be routed from the external port to the SoC.
> 
> What is connected to the other port of the MUX?

/me blows off the dust on the schematic

It's a 1:2 mux, and one option is the out the board, the other
is a test point I believe if I'm reading things right, although its not
labeled so I'm not sure anyone would actually find it on the board.

> 
> > >
> > > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > > Co-developed-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 21 +++++++++++++++++++++
> > >   1 file changed, 21 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > index b04f72ec097c..eed1ddc29bc1 100644
> > > --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > @@ -503,6 +503,18 @@ &usb_2_qmpphy0 {
> > >       status = "okay";
> > >   };
> > >
> > > +&usb_2 {
> > > +     pinctrl-0 = <&usb2_en>;
> > > +     pinctrl-names = "default";
> > > +
> > > +     status = "okay";
> > > +};
> > > +
> > > +&usb_2_dwc3 {
> > > +     phy-names = "usb2-port0", "usb3-port0";
> > > +     phys = <&usb_2_hsphy0>, <&usb_2_qmpphy0>;
> > > +};
> > > +
> > >   &xo_board_clk {
> > >       clock-frequency = <38400000>;
> > >   };
> > > @@ -655,4 +667,13 @@ wake-pins {
> > >                       bias-pull-up;
> > >               };
> > >       };
> > > +
> > > +     usb2_en: usb2-en-state {
> > > +             /* TS3USB221A USB2.0 mux select */
> > > +             pins = "gpio24";
> > > +             function = "gpio";
> > > +             drive-strength = <2>;
> > > +             bias-disable;
> > > +             output-low;
> > > +     };
> > >   };
> >
> > Isn't gpio-hog the preferred way to describe that ?
> 
> That depends. As this pinctrl describes board configuration, I'd agree
> with Neil.

I unfortunately don't have the experience with gpio-hog to weigh in
here, but wouldn't be opposed to Krishna switching it if that's what's
recommended for this type of thing.

> 
> 
> -- 
> With best wishes
> Dmitry
> 


