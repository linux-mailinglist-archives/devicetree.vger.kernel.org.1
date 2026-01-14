Return-Path: <devicetree+bounces-254998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D038D1E3EA
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:55:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4681A300559F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B0AF395D98;
	Wed, 14 Jan 2026 10:55:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com [209.85.221.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82122393DD4
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768388121; cv=none; b=twguIJlAfgihFIFqtI7tLc8N3+ezOaGOtOMdLBNrWwVntypIR7EgGLex2uxIun0+Mm/10XeRdeDNTVibZhmWkfWUolmC8hMbopXKuphjau60zGpgEyrO6iXHBj4ruqt6v8pw41T9N7M0q4ncN1O8MfvEygQDr0AgYP4jOjdZyFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768388121; c=relaxed/simple;
	bh=jAAPKPIjU8sa2L+2kYmydJMC21hDbeIeKEo1zijFhUc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gAavFq0ON0sr0UEPZI5gNBEIwEjRIhSJt0GQ1ti2WUCzooiQKoURvLTmi19rXHR9a8XEbOHCC8xSPQ4rJgiPu2t53LSc2u39lj+sBGDUNIf5wFw9P+CrQf35Z4RXHO3Fq4D5UC/Q+fHT5lqBpcm016+Gv+4I0LkH0rD2SSxnSGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f196.google.com with SMTP id 71dfb90a1353d-5636274b338so656817e0c.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:53:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768388008; x=1768992808;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7nBfD023nU+/m9RS1/PqlUjs/Tm6bQqk3JW3sWTwihE=;
        b=mWq7eA5ZQlYqZrVQB3nmuLx7Pte4GlrrCslr3HPvk1FsFoHIBm0IgZ6a/yw4eft/gm
         GudRdHe0TzgRKcle+1qhlS98foxJQganFilNqyCzE7V9WGvQbCXokkKwbWtYYApi9RxE
         wLVWSeNkGP46qPL5jjPVzcWiv0bUAa4DbbMBrJM7rC28KhacsUB5NM9P6CQJAkAnUnsE
         wxOAkiJs6Cekzy7MoAVy8JSJkzQn5VTIrNTwRZKkJUxR0pDrRj+hoSP3sQ91caEGjS2f
         QyPWnMjREiBbnVhSCF6kyDTYiQKnNnumkF801LSW6IxcBBrktON+uWzLJra17JpJnMoW
         HKJg==
X-Forwarded-Encrypted: i=1; AJvYcCX+jbCBQcuNvLsr6kDgNaoef3je/ZsI8AL3on8yDtpjFQVnhiliCD0BDgdr1xNVwdM3uzJ//vKzjOEU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4BnNywjFYEAY6lsDnfEaduL8PpyLK8XUoJepqGIR1oyRMN5XG
	HSyNPAcCghEu3kp3psEGZNCV6WSlyg+lOSJkyQMlBmQlGphAoe66UNogsH9QVdsj6Po=
X-Gm-Gg: AY/fxX6+BjeLOvrZElHg8Xfa5oXUZkpqIDYChopzMCp69NSxTAuKeeQS6GwFhjpm83P
	QYQLy0jVonh0OD7TL8/WRtp9ayI+QGlIOmkTD9Oz6JrfgivMuRMJUir6Y9Yx4+P4rJVQ+cqOnXx
	eCwvIu+0nx4wD0laSyHRosPgjs34XgsOEX3BBsDMMgIT7IncY75p5xFjGb3lLW0xdVquUeU+jPg
	hVuKzRCx3snMSFJpVZHqsUMV8zmGfnHyBiMnYYH01Wo+ymqeQjkxtpiKlrGn1TrpSxG4gFq0UvP
	nIgCrAizssLeCsNpwgAQosYvsst5rv1i+HarOTTQAV0aNT7XeD/2a7xqArivSxxH5XPHhXTX4bQ
	S/DEJ5rxgiDSE8NoOkWOjWLaDBWjQR1QJU/MiuWv273ucGfXHuh/ebRULTu3coZBa4mKOreHpIE
	ra3nCeYBa6oBH+Z9Gahm9Zx2jhE2DpU1AcPyKSTcpRCdXiLJhT
X-Received: by 2002:a05:6122:169a:b0:559:ebd7:56b5 with SMTP id 71dfb90a1353d-563a0f338ccmr742199e0c.4.1768388008388;
        Wed, 14 Jan 2026 02:53:28 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634d9162a4sm20662714e0c.15.2026.01.14.02.53.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:53:27 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93f63c8592cso532881241.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:53:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXmtwDSZI3csENdHu84294wo3i37eIs1BI5ZCqOxGWLVulKFcLdYgq7zmjK/C3nnk5clxR193GmbgCp@vger.kernel.org
X-Received: by 2002:a05:6102:5792:b0:5ef:a416:be63 with SMTP id
 ada2fe7eead31-5f16cba55cdmr3059465137.22.1768388007165; Wed, 14 Jan 2026
 02:53:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260104222653.1659382-1-niklas.soderlund+renesas@ragnatech.se> <20260104222653.1659382-2-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20260104222653.1659382-2-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 11:53:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX+djJyRsAZW9e38=oP5G1UBZ2ng0Kw6C-7r+4JMVzyug@mail.gmail.com>
X-Gm-Features: AZwV_Qjxm-3tOn4PgFSCctakzFrk_Fo1JWYSMTv7eBgch034dmEmYfCJ9BCweb4
Message-ID: <CAMuHMdX+djJyRsAZW9e38=oP5G1UBZ2ng0Kw6C-7r+4JMVzyug@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpu: img,powervr-rogue: Document GE8300
 GPU in Renesas R-Car D3
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 4 Jan 2026 at 23:28, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Document Imagination Technologies PowerVR Rogue GE8300 BNVC 22.67.54.30
> present in Renesas R-Car R8A77995 D3 SoCs.
>
> Compared to other R-Car Gen3 SoCs the D3 only have one power domain and
> it is always on. Extend the list of special cases for R8A77995 to
> capture this.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

For the contents:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

