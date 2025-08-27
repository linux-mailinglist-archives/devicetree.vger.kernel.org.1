Return-Path: <devicetree+bounces-209735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D06C0B38A6F
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 21:49:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6C8344E1116
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 19:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51D472D24B2;
	Wed, 27 Aug 2025 19:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="AVgWmAGt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D6D273810
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 19:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756324150; cv=none; b=BAWh7uASi4/UWzeZK8ljiB+GRcIf75clK9BTpK813djskXM7UBLeqDmDrzHRzzkbEs1PwXZb51i4reUDrBZxcJHECh7Wpwad3bkGwfRwKFHDV2qeUd7nd9IMRe/AtJDBnw3d18slHdfNOASW9nweBXsrqB4WHp40qdXN34drNk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756324150; c=relaxed/simple;
	bh=Ljq8O8FsO0qS2A/K7Mf9pnciKOv4zVH+qUUHzWg7RD8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hn+C3Ea+tAxtBzGTk6Opawy0fBvb35kQPn6jgimeU/dIbziApo3pMephBKFlG1HfQgbg+/nlNu8KUNuKkXNxV9WGW/t5gFOgnO0/xkClWj5VT07y8FJTP+/YJBV+hSVA5wgT3Pu0E6QcPl/ktln7cpFjC9u9/eaqStaVsI3cOAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=AVgWmAGt; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55f3e4dfc5eso178407e87.2
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 12:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756324147; x=1756928947; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ljq8O8FsO0qS2A/K7Mf9pnciKOv4zVH+qUUHzWg7RD8=;
        b=AVgWmAGtVh0ENVvxi8ETICl0tBsrUiD0CWoVX88eRU12HHzl8Wrk5v4mth/A8ikS70
         crUAq04y9B7Kj7eVivy7Hd6qxo4FYzso6x5XAGgql59oWaq+SODRfeQCnRuOQCC/um+i
         kqokuvaQST4brvezlJLs6zkio+CLHadUPp7LOGwuKjBKQ8N3OK9McQ0TE9c+ugnmhcDV
         UAnfOmOYn/iIUP90yFkqrYnGcSEeNo4Z9byvah3KCwjfs2J/Waro8no8+ffxDDLcMaBD
         DGx6qM/u9iEeUCVZzdLQeQrUqJMiJ3sH+DFFCyPhhulOoLfdZyQoNtxdECr6XOja2q7y
         B2Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756324147; x=1756928947;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ljq8O8FsO0qS2A/K7Mf9pnciKOv4zVH+qUUHzWg7RD8=;
        b=fPoquYyhvvRlg7rLmTauFRu9kMihWUL8F+arITbFlHmlR37LndmUPvnyh9ZzyQA/Y9
         95Vz+/QhUchX/RksxVLndwH/61J4bsrtmc6SvgSLy9DAtBC26Frrku6+QMedMCXUYmVi
         VgkAl45Vh8f29Ilt/1xX9ru2T1JxlfNfWRgceGDgDe0G3Dv8Hf9nwe8SVeSUVImMIQet
         ayuCXgwMtwBa9HIDW+FMh0tH2PHRfgGsOksY+r8rH3THsRgj2P8QVvrx0GbAX9I/tH9u
         Ku2nf+ClPu8vQsltSB1MpB0TUmsN2es8tOLX34k5Ai+ysjUA1AvKULexlxWaWWhW0VxT
         ZORw==
X-Forwarded-Encrypted: i=1; AJvYcCU4OuPl1eRFrZw6GlbhtmkbacMgxYHWjKsbT8fKJ8JozCzDPa2MAvu1+aYTuR7X0VPyJPchc0UJPcWy@vger.kernel.org
X-Gm-Message-State: AOJu0YyqTW+u15p9lNOQXjLJrawqsDALWu4S2qaodKc+WihtEW79gxIw
	SYKEpFr70cRQMF2YyIsmZfk2XBvJ0xEhtbUt2Qq4xKG8ZcaVEJHUyvQCDYZrcUgBv+YleNPReGo
	FP/rABVP+NOCA41kCX01OhZTOWRDhvpcv72bXwxpZFg==
X-Gm-Gg: ASbGncuh1uCwyenb36o0384DJj9khENKhWrK8zq1Z07XFEnIiyKCYZOS7Ktn8VGwNBK
	KSs9ukwVD7pPThzmZ0F9p79vKRtjvwfVVTDX7XzE1AE+iai15pmSxOOpdKi3my5+IQV7shNNVDn
	iKSJ4u5wMjIOiFZBEQNKVTsKHAMpwZo6QUpM0OBVe0sye0AEoxGxdyk0S579sTieBIe7iEj31Mg
	hC4S4U4XFUIZJE9I4YWGrqDl9lvGp/tln6Re2bnmitB0I+8aA==
X-Google-Smtp-Source: AGHT+IGvU+l4X4mDjveiaWy08L4axwIngq15ZzA87m+6PTO6tYP2fp5QP6dKxsX2JZO43jAM8MyLXEMHGN9HUrnz3rA=
X-Received: by 2002:a05:6512:228d:b0:55f:43ff:9a3c with SMTP id
 2adb3069b0e04-55f43ff9c00mr3814510e87.57.1756324146596; Wed, 27 Aug 2025
 12:49:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250819-pci-pwrctrl-perst-v1-0-4b74978d2007@oss.qualcomm.com>
 <20250819-pci-pwrctrl-perst-v1-5-4b74978d2007@oss.qualcomm.com>
 <CAMRc=MdyTOYyeMJa_HBgJVo=ZNxsgdTsw6rhOUmGtNYeSrXLCw@mail.gmail.com> <gcrf4q45gpcmnvdz55qoga6sc7mxrizzhnb4h6afwgk4cmamp4@mggbezcfivff>
In-Reply-To: <gcrf4q45gpcmnvdz55qoga6sc7mxrizzhnb4h6afwgk4cmamp4@mggbezcfivff>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 27 Aug 2025 21:48:55 +0200
X-Gm-Features: Ac12FXyyHud2RjhKkgzGWoURpwyVzSpRKJqjDRfhrI8ZyvdB3H-HsqkJ7vi8iZ0
Message-ID: <CAMRc=Md+xmDg1LJ1Z-3r+5mga7sUZYN96BpJw5A3aJLDYeGZCQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] PCI: qcom: Parse PERST# from all PCIe bridge nodes
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: manivannan.sadhasivam@oss.qualcomm.com, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Saravana Kannan <saravanak@google.com>, linux-pci@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Brian Norris <briannorris@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 27, 2025 at 7:28=E2=80=AFPM Manivannan Sadhasivam <mani@kernel.=
org> wrote:
>
> On Wed, Aug 27, 2025 at 06:34:38PM GMT, Bartosz Golaszewski wrote:
> > On Tue, Aug 19, 2025 at 9:15=E2=80=AFAM Manivannan Sadhasivam via B4 Re=
lay
> > <devnull+manivannan.sadhasivam.oss.qualcomm.com@kernel.org> wrote:
> >
> > Then maybe just use the GPIOD_FLAGS_BIT_NONEXCLUSIVE flag for now and
> > don't bail-out - it will make it easier to spot it when converting to
> > the new solution?
> >
>
> But that gives the impression that shared PERST# is supported, but in rea=
lity it
> is not.
>

Ok, nevermind then, I'll write this down as a candidate for testing
once I have the shared-gpio driver functional. What platform could I
potentially test this one BTW?

Bart

