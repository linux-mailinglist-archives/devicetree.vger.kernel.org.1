Return-Path: <devicetree+bounces-52603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3B5887687
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 03:00:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85CF8B21C1E
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 02:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 388CF10F1;
	Sat, 23 Mar 2024 02:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FrO3NjeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C44EA31
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 02:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711159246; cv=none; b=a4covLj5gins3KWuCrQ31Cbh7JLSefS3ZVooBB9slY9ubV1uH7Z276HYjjFaf7WL3A5y+J/N7ruaIWpyWniztVya2ftjAN/FiP5EUg6B78AisfF9/Y9uo6GDKCEIQs78b3+VSWMf68wmnXv0bFAG3H89j6sxTqnUR5qJMehAMWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711159246; c=relaxed/simple;
	bh=x+FdX9DQdTFaHf4AamxvgZg5mk3QbFF5nbQKe4Tw0Hg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WZVu1nd/3biECcIRn6iYDZDYaxT2bKISEBb+glMSDNsbiJaSdB7wtOuFHnq0cVh/hq/ZdmP+Mh6+l8ogqr+q8KI85jBswLL8ME6ipL6PEtmHRiG+YBUznrmSTTbK6N3obFEe+/z3LYe2LTImMN2Q/EX6nd8kYZ3d1c1LeYabceQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=FrO3NjeB; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-42ee0c326e8so67801cf.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 19:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711159243; x=1711764043; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x+FdX9DQdTFaHf4AamxvgZg5mk3QbFF5nbQKe4Tw0Hg=;
        b=FrO3NjeB1p3HNQ7n3aAwsjvbCZYdBqLycBLD1KhKgeBahgxAdugvWqpKS0O16MFlBE
         m5TA6QyHm7dzZ9+abrCQjRWy+wDOOUCUpxoujnCkxhDbo/rMecG6bNLYihZWErrah9t4
         frSTx2wt6393IX/JZWngN78P0cCGJmY+GRXUuADHYqZKIUPiabLUyk+lwG4Rmy1xPF8h
         y/YFeV9zsJo9eAI4DjlGmYYY7x16urD2Q5HtvStYAPI8egl4FFScYRdE+A6q7m2+0FTf
         +3CKkwU7dl2Wqx9jghR0vMLkmIJxf8cZNRLzlCWMsRTfYkoeEZSpLg9+jzABoTtbQaLJ
         jEzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711159243; x=1711764043;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x+FdX9DQdTFaHf4AamxvgZg5mk3QbFF5nbQKe4Tw0Hg=;
        b=mWUcCrYztEZJfev0MsbmT3n3CZ3NiEWPprDNB7a9Txd/ukaZBCoAJBIDocXh6LQN9H
         6DguSN/SUKkkhx35xg874kpLq423kr6zOJMAJ/qvFHFkR1GxXwTgAqDgc6E/f3W3TPGY
         8/loy9s1ptd7TT90zNRuqRsAH6PcLHoIyjeNE+xQjehNBIuOIwahY8TDOxXhr7+7fi34
         cFwqKn0jmyu5UP4sZ3FryT9Oh0cqQ9s3WfMve+k3nL67wvnDtNNmUZIRwErWzs9vNa35
         MKW9gkxdIc9sdmNt0hiW3jEIAuIS5fBRLBt0NSiZbOUBC/s1L7jDY29RIdUpaUU4p6FO
         F2yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMggA4JI++tFGowarnXiPbKap5Z/WWf0QsX10OI6kFA0mUrWZIdQp6EZKX2oaJWom2kRF/5TE9WowOjoHdQweZ6Mn0fI6THMfURw==
X-Gm-Message-State: AOJu0Yz59yUcVzKdRsK+l0KoBgNO8PCD8UFAPD6y5K+gjUQfI34Z0ClQ
	QmoVPRUoIYuhI6MfMxBJRA5YOBqsFrlKacaVTSZ7QxC1t0GCLYF5lXkQ4eOvL0/vXU80IQyTYhg
	27lZ0VA0JLX5PbJHmw+DTi8JwefrW1xukXcgN
X-Google-Smtp-Source: AGHT+IHEu5RsydW1nGrf112JXAAobeSfXYgjaT18QBQKEPz/AjPpVseTu9jTurdFvMxJjea4j9qTo3T86+aT+MmmskM=
X-Received: by 2002:a05:622a:5cb:b0:430:ed37:bad0 with SMTP id
 d11-20020a05622a05cb00b00430ed37bad0mr663579qtb.13.1711159243461; Fri, 22 Mar
 2024 19:00:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220111044.133776-1-herve.codina@bootlin.com>
 <20240220111044.133776-3-herve.codina@bootlin.com> <CAGETcx_xkVJn1NvCmztAv13N-7ZGqZ+KfkFg-Xn__skEBiYtHw@mail.gmail.com>
 <20240221095137.616d2aaa@bootlin.com> <CAGETcx9eFuqwJTSrGz9Or8nfHCN3=kNO5KpXwdUxQ4Z7FxHZug@mail.gmail.com>
 <20240321125904.3ed99eb5@bootlin.com>
In-Reply-To: <20240321125904.3ed99eb5@bootlin.com>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 22 Mar 2024 19:00:03 -0700
Message-ID: <CAGETcx-oMbjtgW-sqzP6GPuM9BwgQrYJawpui3QMf1A-ETHpvg@mail.gmail.com>
Subject: Re: [PATCH 2/2] of: property: fw_devlink: Fix links to supplier when
 created from phandles
To: Herve Codina <herve.codina@bootlin.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Wolfram Sang <wsa@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, stable@vger.kernel.org, 
	Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 21, 2024 at 4:59=E2=80=AFAM Herve Codina <herve.codina@bootlin.=
com> wrote:
>
> Hi Saravana,
>
> On Mon, 4 Mar 2024 23:14:13 -0800
> Saravana Kannan <saravanak@google.com> wrote:
>
> ...
> >
> > Thanks for the example. Let me think about this a bit on how we could
> > fix this and get back to you.
> >
> > Please do ping me if I don't get back in a week or two.
> >
>
> This is my ping.
> Do you move forward ?

Thanks for the ping. I thought about it a bit. I think the right fix
it to undo the overlay fix I had suggested to Geert and then make the
overlay code call __fw_devlink_pickup_dangling_consumers() on the
parent device of the top level overlay nodes that get added that don't
have a device created for them.

I'll try to wrap up a patch for this on Monday. But if you want to
take a shot at this, that's ok too.

-Saravana


-Saravana

