Return-Path: <devicetree+bounces-61599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6268AD66A
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 23:16:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBF11282FEA
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 21:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531131CAB8;
	Mon, 22 Apr 2024 21:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZhKv7h2w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A889318AED
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 21:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713820560; cv=none; b=F7gk4Xt/PqMkEojozLdjBQ0iTtitShXhgnMGOmx+m1BQs6LxPMdwXLPrZcx1WyKasRVKZguJ0KDi2cEo0x8Ngm6AVa/8F5XMpJJXcTLHUtCpBJnRerHqOEbQXFc0ejcOL7g3eo04DZqLYsoQGE98J59Xkm8KvA893ysRmuJwpoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713820560; c=relaxed/simple;
	bh=lf9q3FwHh8q66uQSPMgiZSA5CAzBB1McTifkB9D6GfU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tTklsjZZJqfDJrXZWhKeB2nOA48xWf30nzouuCSg0ugmhuvkNeWNdxb0Wb3TgAu1os0w2vtjLfl9j1C2eWFvQAYo4sRsVMIVLPc51jGn7oCo6L2vB2JLyig59Yjp7c8RlH96JGocCQYrltQy3fryy7mGIBaG6/U0un+ft3m2tqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZhKv7h2w; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-34a3e0b31e6so3548344f8f.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 14:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1713820554; x=1714425354; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lf9q3FwHh8q66uQSPMgiZSA5CAzBB1McTifkB9D6GfU=;
        b=ZhKv7h2wCVDHikf+Q5wK2t2jcSPqAsgsiDQBHqZvz2188j85tYK1uKzESCrqPYe7E+
         kcCNu69/pAct766bb/kdBYB1HFD5BmtWQMrGgOa/7YHYY6ONCa7LYJJKZC6ognWy2ZFg
         yDLkG555MLoPbrHbuaM3/tWLQD3iGzse+6oE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713820554; x=1714425354;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lf9q3FwHh8q66uQSPMgiZSA5CAzBB1McTifkB9D6GfU=;
        b=eBqJivqReaZSaN5qGiRA+V7Xjs9A0oiAsHrPXQOuTKgisUT48QfBSLUmujX8mHcl+5
         RTZn+IY+Lsk+aq0evZT1kDFXdI1TuMr4hJkD61vMoUWIpPwsvsCmdJVhpOuooVrvMzD6
         kNLmq4HrJvpnXP9trjQurEvByKczrV/x5EaxBto5xNxK27I84XWOSbFA6WqHp7q55Uzk
         XADg5tZOxsiLBE5pgGEiVja9NCU2Eif0nwblAQeiXuqZgDuQjJAOJmIWWgVWu0SSGP0o
         RQjWUa0FSNMrW2U5eRsmvBYyGhJiyV8k4uEp62kD+DBm+VIEE6TF/IrYyjF89v3sK463
         zMDA==
X-Forwarded-Encrypted: i=1; AJvYcCWYZeuuXMKl0HUjb2jA4iCSk5zzqyYmNysNLA/RuHQdm7KGOfkndZ/P+7xvmFzWhejbZf+tn5q7MLE3d1rzijC5Grky7f+ii9YfPg==
X-Gm-Message-State: AOJu0Yynw3U9/GYFK10ROP6UD4YWLXrQHhe3tnD7qDDtTbg8eiiDzMGy
	50I5nhUokuPztQMTv9/dyEqvjzm4F+EuyHG4carO+PuCtUNgXS8ajH4nODkQdsc0BSlC0msrlgJ
	9/w==
X-Google-Smtp-Source: AGHT+IGFp717sYJxxQob42CW2I64zzzJZtFmnho+e6yVAWQl0UyQAq8EsJcMsB4qP+5LQIgxlB2wyQ==
X-Received: by 2002:a5d:628b:0:b0:34b:55dc:9eaa with SMTP id k11-20020a5d628b000000b0034b55dc9eaamr970365wru.65.1713820553712;
        Mon, 22 Apr 2024 14:15:53 -0700 (PDT)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com. [209.85.208.48])
        by smtp.gmail.com with ESMTPSA id 13-20020a170906058d00b00a522d34fee8sm6166706ejn.114.2024.04.22.14.15.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 14:15:52 -0700 (PDT)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-571b5fba660so2157a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 14:15:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVotH7giUKw2NApf92JmhMwlnW+1mwzBY8CjJd0PabqPr6Rgos4D9kxMxOMISTQ7Ced3vx4E1JGIcPMTcwHRa46TlYeRH4VtBivwQ==
X-Received: by 2002:a50:8d5b:0:b0:571:d9eb:a345 with SMTP id
 t27-20020a508d5b000000b00571d9eba345mr57099edt.4.1713820551808; Mon, 22 Apr
 2024 14:15:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
 <20240422090310.3311429-2-yangcong5@huaqin.corp-partner.google.com> <20240422151424.GA1273350-robh@kernel.org>
In-Reply-To: <20240422151424.GA1273350-robh@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 22 Apr 2024 14:15:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UCq9FmhFHfczxGAM+P=foz-XmNvO9r79=3=0SXUYQz8Q@mail.gmail.com>
Message-ID: <CAD=FV=UCq9FmhFHfczxGAM+P=foz-XmNvO9r79=3=0SXUYQz8Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: display: panel: Add himax hx83102
 panel bindings
To: Rob Herring <robh@kernel.org>
Cc: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	neil.armstrong@linaro.org, daniel@ffwll.ch, linus.walleij@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 22, 2024 at 8:14=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> > +additionalProperties: false
>
> Perhaps 'unevaluatedProperties' instead. Don't you want to support
> standard properties such as width-mm/height-mm?

For at least those two properties, it looks like the answer is "no".
From reading the Linux driver it appears that physical width/height is
implied by the compatible string. Unless there are other properties we
think we need, maybe it's fine to keep "additionalProperties" ?

-Doug

