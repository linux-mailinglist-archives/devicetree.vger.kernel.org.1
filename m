Return-Path: <devicetree+bounces-224644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE69BC693E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 22:25:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC6713C0A16
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 20:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E05B29A309;
	Wed,  8 Oct 2025 20:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="sxeNVMkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940C728E59E
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 20:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759955132; cv=none; b=HEvGt+x+qe5pUWSyBHUl3rHXINDNUNc94Q7fuHxpAkCkIxLuTJ3YPtRT3y7l2OnmqGXjhUBs0bmASp1UcGAlBYj+z/CQGJvaYR6iM4iW0izJ90tf0kl1CHKT50Iv8Hj2IEkIFrTR4oqFBqKiMa5klkin9UDP2r+QdGMsnqq1izk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759955132; c=relaxed/simple;
	bh=pkF8t1F/yS30PeNW+BPwG2wyZzv9rA3CJHnyM+CBV8o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uHXbnIaPXw3TyMNe0ZMZAv6p0BzgqIT/4wpl9JL0XOL/S/atZpOzpCsin6BGL5mlslcWqXJvFr6lMipD8QTGTSonhhkjrH9V8VZqk5UUuO7Xu8AElB5lM47ze0Uw84B6/Az8uzPgSZv0865yA5K+hei8o57BfyPIRfsxYZYrjUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=sxeNVMkR; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3fc36b99e92so1076241f8f.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 13:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759955129; x=1760559929; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pkF8t1F/yS30PeNW+BPwG2wyZzv9rA3CJHnyM+CBV8o=;
        b=sxeNVMkRmvVcIW6G1joRFUabekdHRsrGDJF8sFzTJgn2g+47ANZrKMUjNMjyBlA31y
         8zCPbJcYNoxEYfc4tRYmModsMlOakxwYYvzHcMMPljd2/gsD4I8DdPIAU17Yay6Mq3aZ
         GIxijUzHxSvCgiCpMo06gIe33O6O3pW3eG+hgqwmKcCPSJm88stGNILXlf0i9LaY30U6
         eWeaI5xwWOqgF/AuQWGk01vMyMc8lzwqqNiZgp8iFU519CeRM/Ag69R6d3DgK9wMuDuY
         ipK7s2kXVY8FOf5sEknF57bSytsPwkkJCpnc2VPITsCBQ53j36BwzPIStFvJOX6Yiw+O
         +WHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759955129; x=1760559929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pkF8t1F/yS30PeNW+BPwG2wyZzv9rA3CJHnyM+CBV8o=;
        b=FOr/XelN7re4tkfY8+16/xjNkFYtCQq6Dj31g8WtwuFx95ijjQR8c+DPeElfgh0DX9
         2Qv9J1psgFKm4mDT1lvY4bpYgCGGMX7LUXsOkcpLyDRcl93OVS01xOYRo7skaHtVMzoB
         hA8LcsX0X/fFbHZg7Ep24SSqOoR1tLMVU+wrZMJSgpMTANpGWXg7FD1ilpA4m4yu0206
         cgxxEhT6BjeOLVqzd9MS4k9CtzR6jIB0Ol0YcMLG9WVGYq9ZzmLN4EP8u+Ck08d2Q3fO
         8418siSfcvmv5+8sI09uFXNd9ACsc/i0RHGmtw+wdHd1+OR3jXqGObLGI1ew+KSBeBnq
         KZ5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXFuf5ORbaE7RJ351vbOcjauc42xi359sbu/STUKQbLWfHteT/2qTdy8xdiFl9i6WfdyjS5NNX1841k@vger.kernel.org
X-Gm-Message-State: AOJu0YyNljAgtWmufaLdd9e5tIxCdF4oxjfn4MPhRe1VgJeX8p61Umfn
	10QSIF3IAUHPQvUTsUmX0wg/j7UObjWcWgLYUyIsk4UwlylX6wMXjKZEU3ElhtlC30+gA4j4tkS
	ffoqrr43rXlvK/vzsO9bEsl2M/oABD2QUA5p64xbd
X-Gm-Gg: ASbGncuxdmNYuGvywKypNZSllrUYgxzQ5kLTtKcFjQaCAe7WACjehhWq4HJKTVuJopd
	7bau8qD1HStwzfi9hK0FVcBc7qjuKZYRwINdU/NU3FN9v722BbKBx4taN4G8KoFyZHPvLSXdFe/
	hqcKXxh1gxPkFTghbf7lv2+VH6mVq2pAV5nxGanXFKWCuvrG7Be/xC/sNJZ2SF2+CVKD8MZ5HWD
	DErQmdfqJ3Iz7Pagbtbj5jKoQpHr14V4IwrTd1/S8vMfikHTOF3AXgUh30cPCu3U5bdw4fuJQhb
	nCk=
X-Google-Smtp-Source: AGHT+IE7vszNjL34ga6ZlF87FGJyCFvkLaT4QME4cTsoSkHUnw1osUy/bHfoR1cCedCCUNKAN+lPRA/JTrLq5/lblcU=
X-Received: by 2002:a05:6000:24c9:b0:3ec:42f9:953e with SMTP id
 ffacd0b85a97d-425829b0556mr6352133f8f.7.1759955128611; Wed, 08 Oct 2025
 13:25:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001193346.1724998-1-jthies@google.com> <20251001193346.1724998-2-jthies@google.com>
 <20251008160354.GA3764744-robh@kernel.org>
In-Reply-To: <20251008160354.GA3764744-robh@kernel.org>
From: Jameson Thies <jthies@google.com>
Date: Wed, 8 Oct 2025 13:25:16 -0700
X-Gm-Features: AS18NWAXqAZMg1YTF3Xq_FAQ2QhulCuEZTvP8EM0hBHj6dvno26tVBuRXa5noQ4
Message-ID: <CAMFSARfvBQrwdeeCaBbqF++HGNyAza40usFLtAoij4Y52r64aA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: chrome: Add Cros EC UCSI driver
To: Rob Herring <robh@kernel.org>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org, krzk+dt@kernel.org, 
	bleung@chromium.org, heikki.krogerus@linux.intel.com, ukaszb@chromium.org, 
	tzungbi@kernel.org, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> What's PDC? What's UCSI?

PDCs are "Power Delivery Controllers". It refers to an IC which
manages PD communication for a USB-C port. UCSI stands for "USB Type-C
Connector System Software Interface". It is a specification maintained
by the USB-IF which defines a standardized interface for communicating
with PDCs. I'll update the description in the v3 series to provide the
full name for both of these terms.

> This is the exact same binding as google,cros-ec-typec.yaml. Why are you
> duplicating the whole thing rather than just adding a new compatible
> string?

I separated these bindings because they are associated with separate
mutually exclusive drivers. But, I'm fine with adding this as a
compatibility string in google,cros-ec-typec.yaml and will make that
change in the v3 series.

