Return-Path: <devicetree+bounces-225533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 604D2BCEC65
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 01:43:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63F6442539D
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 23:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D44282D0C69;
	Fri, 10 Oct 2025 23:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="08jTALD2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC7D2D193C
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 23:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760139774; cv=none; b=PfuErOrUc6l/8ep+TiDKGj4ItT5Q3JKAyRtM0HlH7VWwrHzHyiYy81nJoa5BwHvR/yLzlxH56p+nJymAL2YtGP4pC+JKfPqqS6xC+Mdn4M2UU2Y/FKJYbchh5VUW8dpLenf0TE24kASjhY41qLTFjvGe6LXWNsD+t7fuYF07o6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760139774; c=relaxed/simple;
	bh=1DHRMQqIywXJrr6QTGXP6duk0tt6J5QON/Qjub4crf4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m+qVqG8fSCn1/SXi69P139dcEMERj55TSGdt0P2Qwx+My0wpxx3mY/zG6UAeJqL/n9OvwZN/d0r9dVIU5i8XiPhBuwObY7/Xn9VTvkP8B0AD4GWIG303LjIxq+SUvJBTFa0W0oGUFjQ3gJD53xi5920Nb6sZ9Zi+PoWG4cctfCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=08jTALD2; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-421b93ee372so1339432f8f.2
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 16:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760139771; x=1760744571; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qjgmlS/nwdme/rqi8+Zl0mMzFEWA0WaAZGElUraE+oY=;
        b=08jTALD27JrtJOANd7g3q0Q/bboL+rjTie/jvR4byY1apN6kr269mfn7dKjWFOCn/P
         OFvzak+pK90w1hRRSo2T0TFyYFgHz1wWTSNylclVcKy5vRpE9UdLBQp4CyXoPwmvex+5
         eVHc6s4yfSxm57vIo45H5iuo8IJCsTciHNZTeAPXxzds4Pi7PWpGnub2QhyUOiQ/qBTx
         dj5zNskkkPXvzoNvjWUX4wjMrtYxjX8hBecNAlkykyTjTUjEyCWsXEo/mVU5j+rfa0iQ
         7wpMZP/jYDVvWJpDifp7yyN8pXOiAtNTy9ntK3rv1WL/30dMuUA7Mh6qghgJSVV+L9Z1
         eY0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760139771; x=1760744571;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qjgmlS/nwdme/rqi8+Zl0mMzFEWA0WaAZGElUraE+oY=;
        b=EaFcouFXlfrcLqeEAUChrgK7/yYWIBYb60q0IzwjASIo6UnEHypJBoAajdhZ7imegH
         S12xBETqXqxzp49dNgGYthmk0Xl1vF4IjUZaGP/rJDHO+6XmvqYLCwb3qtSypBkjMEpQ
         hv742HWex8MSbe8S397VY4rc7Uw/1nyAc2cKe4kGiRTgFDlj/NLkxFULYiYaRV1fh4/n
         oFSSLoeFODQO880kXu02QrJWBE842vecvI8mE7yjKcuFQq7ovbKggJv+dm0UeIKr8UMl
         x1xNMc2O38ORsJlHt+/idrHPVv/lTXhenPw21QTUDM3cO1UNp6tOg/MlqOasRgcKTOWy
         T7GQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOVXX/pjPXIo7MEmw5NQpkl97mJJhr7XH4y2beqi/xrp3rQ7VDzSVIaIYMi9UxhmSKARyfQpz0HM2S@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq0yNd9s+tTgU+SkLqP8ymfP4bQ9nt8CuNN4s2GD03CQ1126hY
	Ub/eHr90Uy7HA7vliuNkiFIxPXrbTjV42xenhTid8aSfZKbgCH6/BUk+2d4NUbyIQEzxVm/EkCK
	Sf0oqQH3S1/vZ5W+gmIxVaWFf20WNpSl3vPdOoekH
X-Gm-Gg: ASbGnctRav15mx33DS9w8JMHoXWbutscYUouPa/CykVy2ix833VHKVzNPyuF/jFNBb2
	843Q9jPpxH2naqJtOKdBpI41yK0YTSojaP4z6i/ZkTge3qIc1UJCT4cs6j9Tb8Kg5t+Qrdryd5l
	02ExcPsHwBROEG6nOoDJiopGs8QRWL13EyUsqz1yaJ6U2ekYdWaAIliq8zLjAobm8F8GGobmsoq
	w95psX4NNv/vDq0vYfXTaYLzQA6Pf8K6SEJZXZ+IrKN1ee3Ky/zJeBduTgGXrkqpOyaZxtTVQ==
X-Google-Smtp-Source: AGHT+IHwk0C8u8+BGJMJhnPgtDgiHfihQd43A30Zms6p211AfNBUz2Fb03qCPj3iq3U+g5DYO0xAbnnUFf3zJMfbsts=
X-Received: by 2002:a05:6000:1a8f:b0:3fb:aca3:d5d9 with SMTP id
 ffacd0b85a97d-42666ac39c0mr7811026f8f.1.1760139771103; Fri, 10 Oct 2025
 16:42:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009010312.2203812-1-jthies@google.com> <20251009010312.2203812-4-jthies@google.com>
 <zcs3utvlaac336ezw2y7mzbbjsqocbls3e4nx5sc4tufiig475@cekebowcrpmz>
In-Reply-To: <zcs3utvlaac336ezw2y7mzbbjsqocbls3e4nx5sc4tufiig475@cekebowcrpmz>
From: Jameson Thies <jthies@google.com>
Date: Fri, 10 Oct 2025 16:42:38 -0700
X-Gm-Features: AS18NWAbdJz1C0NgiYf1yQNoHH17CeGVC6GnFq4ht1hoOI5sdcoyeMHRLCTzf2I
Message-ID: <CAMFSAReOGgXAKsTPiGi55t2Xt=FsKu9FAznmYzDU=i71N-GTyA@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] mfd: cros_ec: Don't add cros_ec_ucsi if it is
 defined in OF or ACPI
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org, krzk+dt@kernel.org, 
	robh@kernel.org, bleung@chromium.org, heikki.krogerus@linux.intel.com, 
	ukaszb@chromium.org, tzungbi@kernel.org, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> It still can be a subdevice of the EC, if it has a correct DT node.

That's correct. What I meant to say in the commit message is that it
does not need to be added as  a subdevice of the cros_ec_dev mfd. I'll
clarify the commit message in the v4 series.

