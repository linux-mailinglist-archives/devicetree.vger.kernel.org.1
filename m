Return-Path: <devicetree+bounces-117313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CBB9B5D61
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 09:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3168B28409D
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC7511E0DFE;
	Wed, 30 Oct 2024 08:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="q/EMnEqP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB371E0DCC
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 08:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730275776; cv=none; b=qPDXqzMsCMa0jrDL8NyCsPgFrhz8A8+Yd656OtYADUx9zDgEO+HOh+Z6+dQXDtxkHAzYX/E7HN1f3g74hrXH8pTpy2E1dBxI8DfhX+prIVZkO+6SIdM7d9L0Z0gZEqZvjr/yKsCPspJurZHYPAXOxaJJl+RU1epXpDpnBhYKqws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730275776; c=relaxed/simple;
	bh=+kVSzx9rf4BIG7BfgSll1dC+VOkG6fik/owXU9ICoG4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R3gqBuEeGOoem0w9Sjie1kvBnLusAiRyoywGEVE5ITwa9u7J3A4h4pcl1odhBYbGUK/h4U1iEnPQr3JPJnlsiN4N9Wj5x2BPB7YY3kz4qJ71qWVQZY0kBRHndYK4rJPXiAM06hQq6P1Zlq/nYm0pLedWjnKfiY9bHu4LyIcsj+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=q/EMnEqP; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37d4c1b1455so4028368f8f.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 01:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730275773; x=1730880573; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+kVSzx9rf4BIG7BfgSll1dC+VOkG6fik/owXU9ICoG4=;
        b=q/EMnEqPFZUZV/gEDBmi998tbHUDIBDjB29VJ5eQeCB1i4+TxHBJmsUom0zgPXkHeu
         039vVD+15aUVSPij3pKtNhn3r9XK6y3cCO1DhRxUFTj5fVquBo08ixr9cUpe2/oAQ1Ee
         mBHTkf2CN86fsz+sO4C8Z6LhJk6DM9i4Yfkmk5ZBFrish8WCWkrmIEc+QTQUKrSScBD/
         ug7kTq2KAZZPxU+35LrS/AVDlqW8f4qIZvqy5eEVJMmT4VgpRtoHLniqg0cTcK/TU9WX
         U6O60ygRLcLy7EChrMAFggTQ+qXUyGAb9LO2ZtDlRQjj2NU3Wwehg49LzfrufBHGUiXn
         Ri+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730275773; x=1730880573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+kVSzx9rf4BIG7BfgSll1dC+VOkG6fik/owXU9ICoG4=;
        b=kzdpDOttNejQRidBoTm3GGkSTb2bCYmfQWcT2xU7/66eVdzhRkRJTD/6WYVBim/J3n
         NZv3d8/LBR5jnbC8PDD3maUWJi1Ixq+0XydVNgRBY1fSM5YxnETJVsnugqEl/b5KdGvw
         ZzG5+stlpiG12wIfkwIX81H8n/5kuTAnKlPbxRv+/PR+AZigIqaCJgV72rtBkCwQs6XN
         lG8hn4BX26xbk8mCWwwXH9CFJEhoS9VKABW21JEOmZfwWhSfGvoHAOQ2KmXyXdhgNMoE
         LBgsFCmGujGCdEjvD+n3DuvVdFQW/KhEVm9ZaPXPUr/FgVPSceA1PNRPle9b1cZz5aXW
         G9KQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2hmXwMSlHsS0mQpDZDD/i96vUW8N/mUosQrtz88QTsak4RlUqGX/KdkiLxsPzbZQFnq5TQ7zAoNLe@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1Ejx9YyAtl1v5Q5bUkjR4iDjxTUWtyeCmAreN3Y84RdVbMiTJ
	3O2dwFZ7nbrKrnqhGpo9WuKh5f8HVZ9HMx6RTrItHq2nsAJhX+VvsoozNG7NQB53Hz/jDVa6zYa
	8DQRgntbGVunyBFD1gxK3TdQTqjU01x6uNsrE
X-Google-Smtp-Source: AGHT+IFKM7cBceg79DhIJpxYNbilbjqWxqPxFbnvkwCq6F8IMzAmrdLoK45koFerLCKZMqJgFqe+f8/8Mxyt4nqaq3g=
X-Received: by 2002:a5d:4d03:0:b0:37c:d225:6d33 with SMTP id
 ffacd0b85a97d-381b710f718mr1739159f8f.55.1730275772880; Wed, 30 Oct 2024
 01:09:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025-rust-platform-dev-v1-0-0df8dcf7c20b@kernel.org>
 <20241025-rust-platform-dev-v1-2-0df8dcf7c20b@kernel.org> <CAH5fLgjhiLUYPgTt_Ks+L-zhWaQG5-Yjm-Y3tfh2b2+PzT=bLg@mail.gmail.com>
 <CAL_JsqJWPR-Q=vsxSvD7V9_v=+om5mRuW9yYNqfavVRUwH9JFw@mail.gmail.com>
 <CAH5fLgiXPZqKpWSSNdx-Ww-E9h2tOLcF3_8Y4C_JQ0eU8EMwFw@mail.gmail.com>
 <CANiq72kaidDJ=81+kibMNr9jNxg467HjOm9C_4G7WRvaiddGvg@mail.gmail.com>
 <CAL_Jsq+T6T_3p2C62U3v4aSjm_oc-Ycjxi_ckF0ufh=JJDz=rg@mail.gmail.com> <CAL_Jsq+PYtRR2T2ShPyC0Ae3P0FnzKKPr1uK=QG0hVmPUV=PVg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+PYtRR2T2ShPyC0Ae3P0FnzKKPr1uK=QG0hVmPUV=PVg@mail.gmail.com>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 30 Oct 2024 09:09:20 +0100
Message-ID: <CAH5fLgjyOMa_pVW1fLP8MR1E-=xF-qL2F4_NT42+y7tP9za2Xw@mail.gmail.com>
Subject: Re: [PATCH RFC 2/3] rust: Add bindings for device properties
To: Rob Herring <robh@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Saravana Kannan <saravanak@google.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Dirk Behme <dirk.behme@gmail.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	rust-for-linux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2024 at 11:05=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Tue, Oct 29, 2024 at 2:35=E2=80=AFPM Rob Herring <robh@kernel.org> wro=
te:
> >
> > On Tue, Oct 29, 2024 at 1:57=E2=80=AFPM Miguel Ojeda
> > <miguel.ojeda.sandonis@gmail.com> wrote:
> > >
> > > On Tue, Oct 29, 2024 at 7:48=E2=80=AFPM Alice Ryhl <aliceryhl@google.=
com> wrote:
> > > >
> > > > One option is to define a trait for integers:
> >
> > Yeah, but that doesn't feel like something I should do here. I imagine
> > other things might need the same thing. Perhaps the bindings for
> > readb/readw/readl for example. And essentially the crate:num already
> > has the trait I need. Shouldn't the kernel mirror that? I recall
> > seeing some topic of including crates in the kernel?
>
> Looking a bit closer at FromBytes, that's almost what I need. I'm not
> worried if it also includes usize and isize. However, since the trait
> also is provided for arrays/slices, the following happens to work:
>
> let prop: [i16; 4] =3D dev.property_read(c_str!("test,i16-array"))?;
>
> Which is a typo meant to be:
>
> let prop: [i16; 4] =3D dev.property_read_array(c_str!("test,i16-array"))?=
;
>
> And it doesn't really work. It reads all the data, but reads it as a
> u64 (DT data is BE), so the order is wrong.
>
> And now my dreams of "if it compiles, it works" are shattered. ;)

It sounds like FromBytes isn't the right way to go, then.

Alice

