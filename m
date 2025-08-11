Return-Path: <devicetree+bounces-203128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5A0B2012B
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:03:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 62A3D189E19D
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 08:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03D5C213E90;
	Mon, 11 Aug 2025 08:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UgyIgxe5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6391B1EB5E1
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 08:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754899379; cv=none; b=WrGlbJfCr/Y9U6SdeS7SV2jzmnznEoabvIWVfjdvHqmORxED3rnRyitWDMAIxHmx+WtvnisfL79Q7c5a+9GtICckpYNVcQdraJY7q1FKFa53i/NBef7fU0bB+jI9zu/PzJRQjU5G1vvKi1UWAZw06tgTOHbo4QZ+LnvkiCRAXnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754899379; c=relaxed/simple;
	bh=7reyRBP3UdIht+6RRZkiKQMHmNl6aG2xURu4YxzEKWc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uq/9Crr/d56IZeNxwgE0qj5jjtS+SAFWK8+WRWWxQDEPMNW/vOKbT5Lj+EUtu7sOv1splRZvZgY+V4+dC4PcaAretxs4rYsfSuJ+zzS9MYGlUOqsa2gPeY5mfkQZftdgJS2sFAmt00owNxPz3lsXtI1Tkr/i/gFDcNbS26/4Htc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=UgyIgxe5; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3b780bdda21so3309680f8f.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 01:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1754899377; x=1755504177; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7reyRBP3UdIht+6RRZkiKQMHmNl6aG2xURu4YxzEKWc=;
        b=UgyIgxe5Ro6fYRxflU0Ego4guQMhfCEzSrhh6tDPEaJ/DO14bGBDcxzK1v+bTVGFl+
         tbiMxEaCksHK4YVOdUluwfTA5WWn1+g1AERaS1cKb3pxAasn+C0bwkJPU9fmDQicrcd3
         VmU1FBnX4Uyri97fP7/vxgPjIH0Q3u9Rb1tR320XdFi2GHxAXRLErICdVuFpBVVfooRR
         ywysR+LJf0ftKt+WlDl/Gi38R1XYgP1DE2/xXR+Cmj+Pl1EAyBFkrclB3SG9nkFU89xC
         z/eO2xxIdARlwvcRi5qTUT3enjYGdcGv3soYYJPlYpxbyt7SMYBN+4Cddt8ZJhpeWC/6
         KfTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754899377; x=1755504177;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7reyRBP3UdIht+6RRZkiKQMHmNl6aG2xURu4YxzEKWc=;
        b=len0dNVrOJJKM8J1yXgwPa0G5LxZYABx0kEx3N1/1Q+Vs9wGF3M7A46FdyMz0iw3W4
         MLlwmiIpo/BGqqoZYRVkT02j9Cdfe/3o75g/l7xIjngm9D+8YKaglTpMjP8DFrb0TtGF
         4cB+X2TYwL3qIZJryqIXMBbURKX+0CB60c8Wl0RkdTJ1w8eJtHokypL7UWYnpx+lAnrF
         kvtt9mkxSkcPN1nfU681wx+9DnrDA8kjEmrAN9AzBa+Z54u6y2/j3CZmKLL2R2zFs58a
         ckfIuPKFWQJWBNTLtGbaFQfHKLz/mWJGq1UzojKpnYh82Y0hUvvD7+piOaFepYGJTSSt
         g9zw==
X-Forwarded-Encrypted: i=1; AJvYcCUQbr0kObFdN3SEWt2+CZO4X/WY7Px8fwx/yyxT4GSdnajmrOQtVd5QpdwAIR0nGn5GJc6QkJc/7GHx@vger.kernel.org
X-Gm-Message-State: AOJu0YxzoRnNOSEezR26JUA6GFhuXjfRrAuLcI0IDo6J5V4ckCx2PCWX
	NheWm0z+fGtlcRufLzzGBiJoZ+w+kNFSKkox0ORdx/dhH2QNadmyJqvGOGR4phc/zCbkjk1wRC7
	8UeGmH6w+Z2/KFOR/wbQz638zg4rKHKCHQKxcLirF
X-Gm-Gg: ASbGncsX/V6Qds8kxhhf04YFReOszzeyNpSO5bEi+yOJ1UxRweUc0BnHYoF/WORLAN3
	XX9lO0aKPTS4o1gK6W+tb+Us8GcUOM4bpvsU3K1nIzfeIfVjjWnOhotSEb2j3GRjS3sorORpnOl
	mpUGIGNTSTGSHhZK5nO41gw2+mNU3WbI3GJtaengMPCCrjKZ5GP7DCZBitNF9AeVmWxXxNtUpq/
	PDtsVM=
X-Google-Smtp-Source: AGHT+IEsu+bZtUYeYy1qxaEMLjKNvZBb3uTm4CG8EO4rTl+OBSEfC36KtsdxhcyXXfpc50vvrKBBnYZqH3HvoakxFc4=
X-Received: by 2002:a05:6000:40de:b0:3b3:c4b1:a212 with SMTP id
 ffacd0b85a97d-3b900b4713bmr8942645f8f.7.1754899376430; Mon, 11 Aug 2025
 01:02:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <175489428990.9320.6825335165759789458-0@git.sr.ht>
In-Reply-To: <175489428990.9320.6825335165759789458-0@git.sr.ht>
From: Alice Ryhl <aliceryhl@google.com>
Date: Mon, 11 Aug 2025 10:02:41 +0200
X-Gm-Features: Ac12FXx9gehz2CxGJpQ6e8qy2Wc5klN9fbM4vuuLbJwT1_XhTbxYB4DdVe_ursc
Message-ID: <CAH5fLggrXbaOu8D2eFL+UtrNSqbm8H9sfgjDJzVJXMEgjBkffw@mail.gmail.com>
Subject: Re: [PATCH linux] of: resolves TODO for copy_from_slice
To: "~_xllx_" <elle@weathered-steel.dev>
Cc: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, rust-for-linux@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 11, 2025 at 8:38=E2=80=AFAM ~_xllx_ <_xllx_@git.sr.ht> wrote:
>
> From: elle <elle@weathered-steel.dev>
>
> Replaces the copy loop with `copy_from_slice` which became `const` in
> stable Rust with version `1.87.0`.
>
> Authored-by: elle <elle@weathered-steel.dev>
> Signed-off-by: elle <elle@weathered-steel.dev>

We still support rustc 1.78 and forward.

Alice

