Return-Path: <devicetree+bounces-49057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1996874C11
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 11:13:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D04E283CE3
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 10:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF77A84FD7;
	Thu,  7 Mar 2024 10:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="VLneGRlf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5273A85293
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 10:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709806403; cv=none; b=c/FJntHOH0chkFvESvCFYVbr3os/uBpMVCaVpCyXdme4u/uU1jt5gpAUvG3SDhwkImzCLRTk+kV59C20ryDMZi/UWj2l4sILvIgZ1gQD8RrB1kGc0gNyCP2aCwrwPis4fo832SfcyF2w7SGorcT9ANN33NLVZ/WWz2K+9rhH4uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709806403; c=relaxed/simple;
	bh=KPfbW2lQX/bJg7kEZFYwIIRBOeQ37xyQSbgAoCjTrbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XxS0TGYNK3dE1T/hUk4ueif311rXauXS2NM/xq+RCLvSmGUq1I/olRQglB0h3iQ+TFF1OwvOK0MnSwne+YwDFFjdiHo/tjV4u55et/A77IyJd43atdIiZ6joO5sXifF5bt+VtWrhlA5gGbrGRGBizhZwMwxCqxrq3ez/yIz/d9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=VLneGRlf; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-29a2d0f69a6so383481a91.3
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 02:13:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1709806401; x=1710411201; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KPfbW2lQX/bJg7kEZFYwIIRBOeQ37xyQSbgAoCjTrbE=;
        b=VLneGRlfQEidOvTjDa//8OrSlNr6v+E1zFDntkew+xEFl+rRX99EXZo+ew1HhJkCW+
         cwTJOcxYSYdJNM+KVsTfu4fH0VVhwcIjAUxuC6b8CJ1VfPzs8c36DM8lp0wtvq93XNMW
         xabAYjuxtO6DCghfy1RHAIQ+xhzOFJx70B3G76gVGFM36rjeCUx6CEy1Z1FWw1w2BfXP
         +TsFCDIA0N+0VW1/PKfaR/vf+w8chNpxf482omt1aFxO6Xjhhqt2i50C3flz/LAtV+YN
         yn2Bu43AJW1aITIiCVjDSkNAVeqdYrKgF1SbawXJh50XEEZO9rqkQ36EtiuCLTOa6w0w
         WlWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709806401; x=1710411201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KPfbW2lQX/bJg7kEZFYwIIRBOeQ37xyQSbgAoCjTrbE=;
        b=Gho1Tn1iNkk72zKtkcEuJRFNdd/7O34JciHWV+aIvCmW6sXi7Qw2TekTqHpS/SWDBA
         KFNfH3iJmO70V1L0Fc8uLyfL7GrAVPsQNf3ozO/TXr52DCW0QIrdMYAzN33DEt9TvFhX
         MGSypaA7au6GMAr76jdDs4QAhncmQjjHhSQbEEHePHKLnMVym2WXuv6tj6Pc5xfNuqBw
         oHb6LmSh9biZLyIgJz0zapgKM/9KDFLQsaTqp/yfozWkWnwJOkTJ5pidw3M1/MEYGrK0
         mgmtQDQ8sQMGMGO06+PM7HawBC9DDbJLSxf6P3QQhgZMWNA2mZWqfCpoz7n3YCLKXQA1
         o35w==
X-Forwarded-Encrypted: i=1; AJvYcCULTrqiRVuKZ4KBI9FAvkk6Ug+iajmtawX9izGu61Sz68C8uOBStNA6AH2N0GNmkopXQuHTKsgUgpoDyzflZQf0C//AZNZh864T2w==
X-Gm-Message-State: AOJu0Yyjf6l90DuBxHsdOQdBIvK4XptWNjcw+drUetPqsAzHkk50//Se
	mAvBDzPLPdB9Lhp8dfG6irHkEaX0jqSf/B5Ejd1xMyD411HtnIKbx2R9so+U9uDz+uQJVVs07kn
	BA+U641H5VO2RMCW2c2mgB+4zNBH5STrmmDHIrQ==
X-Google-Smtp-Source: AGHT+IGTeiuRWXfAKAN+bzQz32OBrz4/khXPlf49jXRu/+k3YnYjuC0Iw+nbitbKtncVWjYgrCxnDKvNp+2E5ZP06b8=
X-Received: by 2002:a17:90a:c7d5:b0:29b:9b4a:99b with SMTP id
 gf21-20020a17090ac7d500b0029b9b4a099bmr364557pjb.3.1709806401537; Thu, 07 Mar
 2024 02:13:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240305210747.1377506-1-naresh.solanki@9elements.com>
 <a32a2655-7561-4339-8521-bc2558e0bdb1@linaro.org> <CABqG17hYK8MFMPVNXxZ6JT4TW00PPt48q1qZBzS=gJrpC--iTg@mail.gmail.com>
 <20240306-decay-overbid-9c8ea43a511f@spud>
In-Reply-To: <20240306-decay-overbid-9c8ea43a511f@spud>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Thu, 7 Mar 2024 15:43:09 +0530
Message-ID: <CABqG17h5fU4nueaz235XXjJwuPJoLmjo3fs-xZ5mFjtGGYQFkA@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: hwmon: tda38640: Add interrupt &
 regulator properties
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jean Delvare <jdelvare@suse.com>, 
	Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	mazziesaccount@gmail.com, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,


On Thu, 7 Mar 2024 at 00:08, Conor Dooley <conor@kernel.org> wrote:
>
> On Wed, Mar 06, 2024 at 03:20:02PM +0530, Naresh Solanki wrote:
> > Hi Krzysztof,
> >
> >
> > On Wed, 6 Mar 2024 at 12:44, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> > >
> > > On 05/03/2024 22:07, Naresh Solanki wrote:
> > > > Add properties for interrupt & regulator.
> > > > Also update example.
> > >
> > > Nothing improved.
> > Yes, Just aligned the regulator node name in this revision.
> > I missed aligning the commit message.
> >
> > I'll fix in next revision & update commit message as:
> >
> > tda38640 has a single regulator output along with
> > CAT_FAULT# pin to report internal events.
> > Hence add properties for regulator & interrupt.
> >
> > Let me know if any others changes needed.
>
> That should be fine - but your line wrapping is really odd, you can make
> use of 72 characters but you are wrapping at ~50.
Sure. Will push another revision with the changes.

Thanks & Regards,
Naresh

