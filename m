Return-Path: <devicetree+bounces-102137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2C99759CF
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 19:54:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BFF44B243C1
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D76C1B78F3;
	Wed, 11 Sep 2024 17:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WfMvKnEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EFD1B3F17
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 17:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726077209; cv=none; b=lQelcRlRhklKN881UHnjvGC9EO+QzcKrzDfNvPSopJTQ0IF/QtE3snm6unlbE1O6WkdQ/lUcjEUf2D5HKrnMxQK6KyXBCpsKQCjTACWXOEHHOMgCv+Mn3MuQWinq1F4Y4A3NjaNCX3YAsL0dt5walT1a5wFupZTfZAuR5us9Vw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726077209; c=relaxed/simple;
	bh=VgNduxwzmGgTFYBdPhiKbYYvurGifJW2D1mFzinBT2g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lokqCCzDP+ub/7IRXTgqC9xy/aLhlMg01gcD1dR/6wfKZol9GuMERfvM1htpt2RvGsgJTyJUubkXUPlAO+OlPH3wQMhD/G/+eEkxiwHeSOL8mHch3XHMA3Wl4TTVkxBWAMJJUn7/EFxvBW3YHti3YiTS5P/ScbAchZjuz+1h/xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WfMvKnEt; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2f75d044201so630331fa.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726077205; x=1726682005; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VgNduxwzmGgTFYBdPhiKbYYvurGifJW2D1mFzinBT2g=;
        b=WfMvKnEtpWZCJgKLGrf7HS+/fLgMvHBzB1j3VQ1PoT9O+N0KF0cd+XzuGLz9PTt7oD
         71p3tEuXmqz+bZ9ghpw3yLN63MhrKYksZ9Do4uyX7Qbg5ecuRFMuIPp4nMVgj24ZJu+R
         pWzGfH6mFgdtGZbr9Zxn9zncx+IMjTXD8BO51rjmbBbu04EXnna5sz8nWzZ9oKJY9cb1
         HTOrqj5fi8+lCCQvh8VeXRvwLiom329kOOMF/J5oK/o+XNE3gCbT10L+N5GOUCT/T1Xr
         D5xv9t4UVSFdE09twTmrSX4rtw1+QlPqzSECiVLFAOMNjdTxOKWiw9kTH0sEcJwyaA/K
         OlTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726077205; x=1726682005;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VgNduxwzmGgTFYBdPhiKbYYvurGifJW2D1mFzinBT2g=;
        b=KyoVNNa7q2+UdHrkN56Vjns8n5PMTMwhYmXMK2bnvZ5OHkQPbIfTNaS2hKqxGyUZTH
         BZ4XTKeCzR0OIGNDJKPuDh+jKuoMI2UR62nLj6LPP8kV1Ckwwg5LzgkOHFHzvDdP+/eT
         t+rZeMEdyl07Q8heBMKFIAKHLDg/bioETwwhN2JSMYlD7OPsDjYabVSWsQsG5GU/CXFM
         EwGEsHXxdm0Xncc8cGdxX3p2Ksit9nqGiy92G70Z8OSwKMPIzG6ppUL0J6kFk+gQj73y
         0ZO3UBpW1mOjWwtXC5Q1SRU02jCJhsR+VCxU1iGmw8mecEdb5wAB4kGd0lG0oNM6Jvd7
         wwIA==
X-Forwarded-Encrypted: i=1; AJvYcCXeeiFYmCm36NGbV+OhayqDrAzMJ0uZBhDzGrYiQK/h339ZrtWoi6NHDvfqupwfOPANp5pa7IsBJ+61@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo61ZpMXoKSqznil+YWZDLBR7BJY/wC2vC2TLDOSctSyaKm6/t
	MxcMhe1UB1qZUcNx5RpNeESZ1rF4iTmnWox1NiMbDOxs+frnKG3Dc9+7eydB105Q0VLx5kUBAxP
	K05dSTqbtzF6C6YHesnNAs24j7qI=
X-Google-Smtp-Source: AGHT+IH1vgXJ9WExRbN2vAK6l2+rY/g4HWgUJfWpp9ZGP0vrln/VrMc+A7zRPHlOgBf9jHeSwJMsFC3fzu8WihhoV5E=
X-Received: by 2002:a05:651c:2227:b0:2ef:1c05:6907 with SMTP id
 38308e7fff4ca-2f787c1ae70mr554271fa.5.1726077204925; Wed, 11 Sep 2024
 10:53:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240910213056.963998-1-festevam@gmail.com> <20240911174430.GA1015067-robh@kernel.org>
In-Reply-To: <20240911174430.GA1015067-robh@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 11 Sep 2024 14:53:13 -0300
Message-ID: <CAOMZO5Bah=osAWnG4adrfqqv6OZXu+r07EEuJ8Z_8RUtzKtiAg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: elgin,jg10309-01: Add own binding
To: Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	otavio@ossystems.com.br
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 11, 2024 at 2:44=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, Sep 10, 2024 at 06:30:56PM -0300, Fabio Estevam wrote:
> > Currently, the compatible 'elgin,jg10309-01' is documented inside
> > trivial-devices.yaml, but it does not fit well there as it requires
> > extra properties such as spi-max-frequency, spi-cpha, and spi-cpol.
>
> Looks good, but it will have to go to Mark or wait til 6.12-rc1 for me
> to take it.

Ok, I will send it to Mark then.

