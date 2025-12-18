Return-Path: <devicetree+bounces-248028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5546CCE004
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 00:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BBB1300A85F
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 23:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D4F72DCF72;
	Thu, 18 Dec 2025 23:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eKTj6/09"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFD2218ACC
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 23:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766101820; cv=none; b=Nhg4Zgs9CzIN8i+oH1FX56VUXsrmZ15Bi4+qqVxGw54Hz5sEHSE6SCBi58++7jtnSvNx52tZtLAaY9bt/xL8UXAThoXhEnnx50KolNe+qxPuK9gxcPFiA3E1WyY9EdsjqgicVHDq9T7joDKJjn50cqm+j264WpocdNhwswm8oWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766101820; c=relaxed/simple;
	bh=Wpo+wLLHCpnhYHi2PJBLdVcFRSpCm4lu8tCRZjT0PmM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BPqllSEP6MqUEck0fR2PXTIJnd4Ea4mDmtrZRbqhzN8S0vP62/46xfY/elZkg8zWnH6eS3395wXU5HvbN3nNLvQS/k/KUJ+VJ4V941gJcPd+AdFKcvl9iIa07JMZXkYIMAlXtWWuiTZtcJC17i9DsUNw8G5p3GJLhNKGvh3uEH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eKTj6/09; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b0d4b560aso1441135e0c.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766101817; x=1766706617; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wpo+wLLHCpnhYHi2PJBLdVcFRSpCm4lu8tCRZjT0PmM=;
        b=eKTj6/09B7TxnLU0aUg3I9qMa0I7x17P5smurSk7ZBKHNdZAoYLww0CgjP8moJM/r4
         hybM3KMHFTaFmEHhFrtF9xtMbn7kRJdA1lw9Nyb/ynSjE7XEDKyew2mowf036VkryuDO
         T51SXyd9D0WliLh4p4mPnFLJL+WbBLxpbbSIYJUe6xxZxsQ3CTge4pwd2UThZfvu+DKV
         juXfTLPs+jp9nbTPFzp+3DnA1XaBq+3aYPsXEpbuo5lopz57yPRq/hnUvqaBeh+NWAc/
         hRzAW77jI1qR9bdRlqcLqsg+hYs0mzU6vLonyYp/3nQHLUUXl7IGxgXFlhmL+NowUh1N
         Qy0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766101817; x=1766706617;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Wpo+wLLHCpnhYHi2PJBLdVcFRSpCm4lu8tCRZjT0PmM=;
        b=a9wa0h8Oqm4JLRAcDCJTs9YQRjqM7uZ7+C5nSx+3mM6mYH8Q/5wnhNhNqWIPU9RDTQ
         aPV0hsT0BQYrUB8J4E0nCjGLy3ORQFWUwFdgGt59NDgPjsDbgIhzsv+5aJEy7c2WuZqV
         m2wPlFsbc21raXR9sq1Rc31cLSikK6K7HfnjVr0PaIsIvkW2PN/0DE6HBTPB1mQg3H36
         Ip6wFqvZ0fOSuYNKQLY1WAiBEaXcGlcrCqDbUf/NGqNs7cPkC7ruKnT1mTmrgBR02rq6
         0KmP8JQObUA77YIsL8rXPvTPJllkDydZPeFxq/YMEMNtB54aS7u/MI8NCG6u7QL7fmbu
         0Apw==
X-Forwarded-Encrypted: i=1; AJvYcCWROrURArSrgz4p+CvFlzVZDHDjdBeY5jCwCIByp13w3sqRMxVYREuJPWLLqL1iwhJZGhLhhBkGAlhJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyfBUry9ejxHsK4gl5F67e0JC5lB+0x6e6NAeQp8Fr/3J8L40Mp
	nnr2sg16bBIOPYYP1zfTAbSQ7R9XNXnRYC8vJ3mhzv5hHbTOAfXtojpo1Dc4tFm9YnaOswm2tf/
	qSvfn/jGGJ9a2qYWz4zr12Spsb9qtuX4=
X-Gm-Gg: AY/fxX7I/YvDVLgU7RkebY97H+5fkCHHWchWOvv0HmcvxD9ozBsnQoUcxBJ1aIYEkwd
	efA9DkRjH5CTBDSXE1DB2u7c66hIsZk8hwz0lJ1V6c6VuPzh0lbDAfYvZ+bUj796ngoIA+cctDy
	A8dI8R5RJA8hdgWFiVEDYJ0pE+OgTQ7/4tEr2eU0J3k+OQ4joLTEnQM0Um1a3ZhlVLyZahsHr59
	xQrarXBRolFUcAP/zFsa1nH0tZ4ndDZDzz2WpKnQekL/nuCfUV0kYWNU02bKe7oWCUVnCy7
X-Google-Smtp-Source: AGHT+IHnR0GwUbTrm534Q1/m+ZZ9jujPq927Scm445ly1trjGF6X85R1mpAdN8dr7fgifrDpAhdDQKgkprkeXjmw/40=
X-Received: by 2002:a05:6122:1d91:b0:559:6b7f:b0f4 with SMTP id
 71dfb90a1353d-5615b851ddemr573987e0c.5.1766101817628; Thu, 18 Dec 2025
 15:50:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765782992.git.alex.t.tran@gmail.com> <ddb6f986cb54e513ba508fa28fc9d2c8df0e2987.1765782992.git.alex.t.tran@gmail.com>
 <20251217-fast-ambrosial-angelfish-ee39d2@quoll>
In-Reply-To: <20251217-fast-ambrosial-angelfish-ee39d2@quoll>
From: Alex Tran <alex.t.tran@gmail.com>
Date: Thu, 18 Dec 2025 15:50:06 -0800
X-Gm-Features: AQt7F2rJOOeUEfoWBXbDLMuMFvL8gBPhYhG18hZjfPdHPgZoluvju0-roqYQ1wM
Message-ID: <CA+hkOd5ASoO_HcRuOTzx3vMan+ZiKEwndTZ8fRBRATCo8MTFFA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: media: i2c: et8ek8: document missing
 crc as optional property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 12:27=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On Sun, Dec 14, 2025 at 11:58:33PM -0800, Alex Tran wrote:
> > Convert the et8ek8 sensor device tree binding from TXT to YAML format.
>
> Commit subject is completely wrong. You are not documenting missing
> properties.
>
> > Add the optional crc property to the endpoint node for the et8ek8 senso=
r.
>
> Why?
>
> > This property enables CRC checksums for the sensor bus and was added to
> > match the new driver support for reading it from the device tree.
>
> This does not explain me why.
>
> I asked you first to convert the bindings, not add new properties. If
> you add new properties, you must provide justification why binding has
> to be changed - see other commits how to do this. Also please read
> submitting patches how to split your work into logical chunks.
>
> Best regards,
> Krzysztof
>
Thanks for the review. I'll send in a separate patch series first,
focusing solely on the conversion of the bindings without any new
properties.

--=20
Yours,
Alex Tran

