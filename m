Return-Path: <devicetree+bounces-166146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C3ABAA8669B
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:45:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FF1A189A753
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 19:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B5528369D;
	Fri, 11 Apr 2025 19:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="D+XhEpOS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102C4283694
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744400722; cv=none; b=tu8fxOieogKq1XcigZASkgNIFexVChgV54yO2+hh24ACugx7pbaj+i176LSdqqPb/uQz+jtEQcVlT9bcZHcOyO4pXrr7CxmHieb8DiiuDzJVVHxUAjXzplMcMYnt78Ku7v2u0pDt+EAsqr5qa8YzykREFVjZxYksimaWu6jdIuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744400722; c=relaxed/simple;
	bh=0k+RRSIshNmJjhWDP0sDhEaJ74DfqYYPE9poDNlKT+4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TUEydbJynmXUAy+nlbYqSpDZoFnIoET0c20JJURosUE9QiDqbq3x8/yWUgpEOyfLrsZ1BwTloviHjvjLssB6cEqxG8MM6V/IZdoZVO+UJOyERovQsWNsDDKghnqsiyP/KH24BJqGtA+eAEn90/Ls9CQkwF0GTRTB3XZxKhDTnrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=D+XhEpOS; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54b10594812so2742281e87.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 12:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744400719; x=1745005519; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kxYbMPJ9/3WWUWhZ50uH3rQ7QOEKEgqBV9xF/3bzbaw=;
        b=D+XhEpOSTY2iRLZNvIyJdESthVk9ylxkqTJv7FokRICCYftCzTmK6xnJDojYwW89ji
         2AFg7ifCj9Veb3HJw873OFYIKlcMfUwFcfLXsp2HXhuitNezaqLNBx9+23vmpUuXzJDF
         ca90T4zKAs9ScilMaX8jACwZ2Mhsys399QeR8BUlMz18Lo2iclMaj0m6Lx72mjpYlKt0
         IXgJRRcRWK+9UTF/5UNRWF9lWXl68EAgpiNrsN5uxI+dEGhs1HdEZ9zBFtlaKhEkzmcC
         3nYCrj3X6NYHQ+cAsW5szj5GX+YQyRsmMSNEWT/iB29b9JyVms4Kg8IkxxE2Wd/7Up6f
         I76g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744400719; x=1745005519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kxYbMPJ9/3WWUWhZ50uH3rQ7QOEKEgqBV9xF/3bzbaw=;
        b=R8DkogyKfgg80IxLpOH8vPMgXWf4w5EIlIpHaUhJlItsgvSw7t5YqJNOYyMhB0lUHq
         RM+eIqwkat6O7xPcphvwTVEk337OWdMJI+ok1/9ncSSYLViwdhDKkSC9XC8gXEbKQ1t5
         wibLscP2wLhasyaMt779oTZ6q554R1JfJwwiAy/3VUTTrd33ZK59jLBQktp1vEvzEISp
         IFhrQy6JGWzaq8tJ1gzVOiiEjErvJfuhL6jOn3/S91+bdPwOuPq8bjIWLSzMM1Msvxih
         fWOBKwKhO4XQo0DoRhy04juCHipzAuFc2bSNogD8BMHryAinWxoWt6hKvlbcVY/I5TQT
         uWAA==
X-Forwarded-Encrypted: i=1; AJvYcCXjRvXy6eFDol+pb8yLfES0AM0FUvIN9Mbic6uP8IKxvs/nCZ23bU06l5Ia7XExFzgeNtErovLz/e9f@vger.kernel.org
X-Gm-Message-State: AOJu0YxRydTR7m/9dB0EoV0CADRXqpTWPvikUkrVE0/75uLfriaZKJO3
	7HFxd6kbrskd6xMqmzxG9FP6k2sV/mG9ISzNLiTUB0P6ltXqV0uxy2hMyJCt7Kz40OXfC5dOjuC
	ZsNYZCf64BMtb9W6udBQfh0hQicXxe3K/Sloq
X-Gm-Gg: ASbGncuQF9QTYg5JMmBwusKxUQYR7S1kz+QNmEDcdyz6fBZnHK4qi0Xd/+ou9s1lfil
	ieKocpIYRl/FQd7tmHvBehyeThSBV3KgkUv+i+r/n+Ll5Yq4rYlBAZwIHZGhB52wLfyLUuhG1xL
	QmckrGtejGcuM5aj4FPQLr
X-Google-Smtp-Source: AGHT+IFQGifPI7ndsGleSodbkGXAUKIZ07u6ZNQvsjF+hIGRNgR8glp2xAOBfn6+WWgANIaxwBpEYzIsWHLxnZAfzB4=
X-Received: by 2002:a05:6512:1154:b0:549:55df:8af6 with SMTP id
 2adb3069b0e04-54d452d543amr1362508e87.53.1744400718920; Fri, 11 Apr 2025
 12:45:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250407231746.2316518-1-sean.anderson@linux.dev>
 <20250407232249.2317158-1-sean.anderson@linux.dev> <174438283512.3232416.2867703266953952359.robh@kernel.org>
In-Reply-To: <174438283512.3232416.2867703266953952359.robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 11 Apr 2025 12:44:42 -0700
X-Gm-Features: ATxdqUFdZE_uhkHLsbxiOOiN0d_S9dmu-M7D17wvEEtC9Aa85-uCx9f3jAHFoIs
Message-ID: <CAGETcx8FVb91mL-LYN2=7yJGMaVsadpe_WiMn=OkEjMEHdJU3g@mail.gmail.com>
Subject: Re: [net-next PATCH v2 14/14] of: property: Add device link support
 for PCS
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, devicetree@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, Paolo Abeni <pabeni@redhat.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, upstream@airoha.com, 
	Kory Maincent <kory.maincent@bootlin.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Christian Marangi <ansuelsmth@gmail.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 11, 2025 at 7:47=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Mon, 07 Apr 2025 19:22:49 -0400, Sean Anderson wrote:
> > This adds device link support for PCS devices, providing
> > better probe ordering.
> >
> > Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
> > ---
> >
> > Changes in v2:
> > - Reorder pcs_handle to come before suffix props
> >
> >  drivers/of/property.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
>

Reviewed-by: Saravana Kannan <saravanak@google.com>

