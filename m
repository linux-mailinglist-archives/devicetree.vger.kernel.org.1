Return-Path: <devicetree+bounces-56733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C01989A550
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:59:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C11F1F22DBD
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 19:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47AF7171E5C;
	Fri,  5 Apr 2024 19:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YwNIO2CL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0CD85D734
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 19:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712347140; cv=none; b=ufrggT9BjRYY/+oZT5kaIXMVsyUq1U3CzSjRVhYEpxLOd8tESC3riYqIBP4sUsr5GYmvii6/oUd2IO1tK9iSpZY6eoQh6vGsrgt8Bva+zF12DCXqEe6vWSXa7AnIoMm3YZe57/QhxPNEQk4JHdljRSHXB/CR0a3rFKmDFFwbyWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712347140; c=relaxed/simple;
	bh=eMavUBPoGgMzEidbHeVGuEntRJnjD/1VXHuLoI4Quis=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=duiioLg8CPCVnC+WCjkclJCo3aR4RnaXK7RLqlteigoPxUJxnBZM5tmg9bYQry35uLxyhAj1I1Y6edjCoHYeXOW1jUxOMcXniTGABLzmgRlDKUjQ0OU+mM2T9C+gp18FcynZHNi3bNT2PwJ9IKDD7KA2XIvVQk9X8LPwv5qfmMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YwNIO2CL; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2a2fbbd6cd6so372414a91.1
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 12:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712347138; x=1712951938; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eMavUBPoGgMzEidbHeVGuEntRJnjD/1VXHuLoI4Quis=;
        b=YwNIO2CLAz7Qy28zNLpazJsUX5VdjDMVQdV8Z7HofYY0nXQtao6urQRaHAmovBbesY
         I5zFhkf7bKIx6C2fyHV9CA3isgB2LZ7J5phO3HYEnNI8ksDGvk5AWQYKfb+Rn5MWk2B7
         6exy+kodH9RkUY3/V/ilrETsI2Y5AQAnKkSONobjwyoGY8t0b5/bc+H2/aVpZF5deiOi
         UlQV7mqvb0fQ02Y1TLTe0/kKVruRTU7hhdYqDFXgz97BWyziuNEHnVj59T3KQqeVVN6C
         FUNVKc4bkqFqUMoRIvTuTIgY8MGI0X30rxPiatglpGnCHHDHkt6AZceFB1Z+xmLPsS4L
         ancw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712347138; x=1712951938;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMavUBPoGgMzEidbHeVGuEntRJnjD/1VXHuLoI4Quis=;
        b=PtqAOlT4JEZsVysP7npL5p37vjWrRru47qZUuJAfp5RHfi1Mbc9zIMVfqKA8f3DKnn
         PQRg2rw65fz3n5dBsRbyUUGJa+/5gbtcYP5M0pxXyRvW55eVKflLhXBaQJGmBrxXMmnk
         sfs9SGSs62lKsr5jWXqxKDelTpXugXKCFCdWFRdrbMFBHrx9aTGXcOyFmfoGEkJJ+JFM
         DLhDOsPZlPwsqSR1hL1bVnwcytrans97Kf0um4lxfrRhbEDLLVY279Cmgt1zWnpI5/VQ
         WzY1gy5j2fJE3B+wTu1rPFmf7MlBYy50Iu1NoVii33deccChBl8LfLXkP/8zUfGH7nf3
         mCuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCJt+t2i9rhbJNIMkcJcxPUTN+0d+7pmUaLP73iHRi9ieddmxvgyVcKhAK9RCa4I0VyeM5Qgb35CsIDXzepV1ZLxdy9YCFhmpPpw==
X-Gm-Message-State: AOJu0Ywjuekp/APjR3TdqWFzRYtDrBajllwC7jFRbaHXmMgs0i/q+sF+
	BWA8DbrMgzwq99HEXwkbtUylQTjyxkCaV+ryCJJLptzWSaxdqbXOshOeV4Tru64BcJhO3eOpq1R
	tMREJ15uuueFrUsDWZRGE1yuRe/0=
X-Google-Smtp-Source: AGHT+IExRCcCUvvAVLdjIgH27a81zZ2CE6fxq8FE6erCxEzz1qofHN7wHuSD+sNyn9O5YMoamtXU+8Aa/Q3z1zr+ONo=
X-Received: by 2002:a17:90a:d70e:b0:2a2:ac46:8842 with SMTP id
 y14-20020a17090ad70e00b002a2ac468842mr2339428pju.3.1712347138325; Fri, 05 Apr
 2024 12:58:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404022943.528293-1-festevam@gmail.com> <714fa88b-2abd-4485-bacf-b8dada683d08@kernel.org>
In-Reply-To: <714fa88b-2abd-4485-bacf-b8dada683d08@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 5 Apr 2024 16:58:45 -0300
Message-ID: <CAOMZO5A7yiYdeOjv6BabDSNKk4Gp=n1qwJP0seFvmjYYgjvhOA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: extcon: ptn5150: Document the 'port' node
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: cw00.choi@samsung.com, myungjoo.ham@samsung.com, robh@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, marex@denx.de, 
	Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2024 at 6:24=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:

> But more important, what about USB C connector?

In a previous attempt, I tried describing the USB connector:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
h=3Dv6.9-rc2&id=3Da4dca89fe8a1585af73e362f5f4e3189a00abf8e

This broke the USB support as reported by Marek, so I had to revert it:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
h=3Dv6.9-rc2&id=3Df954785a124e77d4e6bb52cab689a8de447999aa

Would it be OK if I send a v2 without the USB C connector description
and address your other comments?

