Return-Path: <devicetree+bounces-242992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDC8C921EE
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68F773AD7F4
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 13:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23CBA32BF23;
	Fri, 28 Nov 2025 13:22:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC3E28E0F
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 13:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764336138; cv=none; b=lUr/SRHb3TpW/RWBRVNmcaaexCmblbeN8nsFsOV9czsimV8KM+EUKhYffvjo9O7HHlf0LoDDxh5bY4kABY+2GBVVs+vBa0cQNl2v1kb6W0l6Dv5yQdkAy3xXF9gsHpJGvGVMwrtLSpSXqCvmUyQyVnq5uEy3g5P1in8kMQpg3ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764336138; c=relaxed/simple;
	bh=7xq7heuAuNjcD9AWEu9SNI+F3md/r0GAg2tKCEJ6BPQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hyWsB2fq1/Im8hfoICpACLozVfugaoR493UafZdfq53lb1bRuyg2ngv/uJvPGlhzF5PjV1AlTW0MaKV3A/PbyUXFT9apdA1zEPRQDyd0N33fZNGwHB0kcGYxPcXshLoqzOj1SNGcf+BUZHG+fhYN0VEgutubSihIeZsGLh//qXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-55b6a642a4cso1233397e0c.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 05:22:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764336135; x=1764940935;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tcaEGBByo1RvJh5lFhRaZZz4cOGVoFl1Fq3F4IKlddU=;
        b=Nd/OrKUbisjqIEszIqC/Gsehjh1QLklzxNs8eSmQus2gpJgab3w6PuVSP2FlEbgCCJ
         xAT2OTCTmer4Qv69mYDQtOssijJB22AkUxQwMk9jC/nRRCfrDf5RBOxLJUAk1luVvEob
         x0TMlO0Mn427as523V7dNLSoiVtwk6Gf38CmxsMlHG2nw7gCfEnOnlUu8vxbdgf6WVFb
         7J/iCVh8HznWCpsyPkFnE3d9/dnMefrh+xsY/D4nmkTj7vmBThplhsb/ytdlOdpIyJBp
         8FT+/h711XbO++LuYG8cuSkTfY3FyYQ77eEQnEZuKlljyRPcACf1QoKYoN729QU6dPvx
         wBSg==
X-Forwarded-Encrypted: i=1; AJvYcCXEcY+hehYZDtSdq0tax+6DVDr8MxjF+zFrDC6X6DfeiD0OhrXeCiARhizSYKLlx7OWT++GDh0k7q+x@vger.kernel.org
X-Gm-Message-State: AOJu0YzIiboUKcss5FL7ARbpTxnXmM8X11YaFZ+DZhsf9807Uiao7km1
	LFmhLTzVo1Hnpz123weLwAKUwfXG56FA3sCW+2G5mqVYCvodmQjnRa615ZRtG6gC
X-Gm-Gg: ASbGncua04zeUKHBbr37bU5sK2NG8syMOUAtjzAge2Lwiv7r2O0zq3zRHR0JmljDFLH
	YLocrK7gDw+M9yjGLghio9EB9kgOYJGFI/DnQunMqSl/M8Gl4wPsXd0WnhMaCT01jEuYOZ+ycix
	BvUWIK2Rm4Y2fIV3NnZdwMJmSi5w6XehW+gfQbw7LLvVfokwSDewi961OVCg6s6AjOr/oMoxPQ/
	Aadt6wyh+sc6KUk5wpSNNmJg/03e1H/mOeFZ1JqizAAC23f+ly0f+EtjSMJaV5irQTHdvwuR5Se
	J/TKcTYmrY5poLFisvLXfBdSOsUBaFay3QklIjffERlMpEe13ickHuroxLbRFccxi3utYzdyEps
	gGX5v4Q12P24nSL/laeJgl6gRyL8w2bAjznniMNCl638ZY/OS7svMFrvGD4iR8jFoWfvffOiW/N
	9cOOCqqJWf6Wqplkr/sKGe87TiUeWO1EjhB4PSwwMLGm6a+ca6AOyqkPOEUSo=
X-Google-Smtp-Source: AGHT+IF9EV5btBs5pY8uzYf6t0Ou6kDxQO/Vs9qiOyzU1iTGlYi8JFYXYc7lRYNslsiIFTa2kE8VhA==
X-Received: by 2002:a05:6122:3d06:b0:55b:9c2d:1147 with SMTP id 71dfb90a1353d-55cd761e433mr5847330e0c.1.1764336135406;
        Fri, 28 Nov 2025 05:22:15 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf4e44a4esm1859816e0c.6.2025.11.28.05.22.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 05:22:15 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5dfa9c01c54so1153613137.0
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 05:22:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXohKhQidTr0OYfL/fiHCKFcle0K2knPWsDo15WZMk7NaUdGKSuqyIwlenawc2gW0AmWpfXiEfZan8I@vger.kernel.org
X-Received: by 2002:a05:6102:4a82:b0:5d5:f53b:c993 with SMTP id
 ada2fe7eead31-5e2243a02d1mr5248809137.24.1764336134499; Fri, 28 Nov 2025
 05:22:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027154615.115759-1-biju.das.jz@bp.renesas.com> <20251027154615.115759-19-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251027154615.115759-19-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 Nov 2025 14:22:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX5xZuc10atbPNWqp9HAuzyjpodwnSBg8EwzROYofK5uA@mail.gmail.com>
X-Gm-Features: AWmQ_blcTLv1QYnn3SKmiJb_vImA91RYPRO6L6lPFzjYh517xcHwm6NvnPPNBcA
Message-ID: <CAMuHMdX5xZuc10atbPNWqp9HAuzyjpodwnSBg8EwzROYofK5uA@mail.gmail.com>
Subject: Re: [PATCH 18/19] arm64: dts: renesas: renesas-smarc2: Move aliases
 to board DTS
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju Das <biju.das.au@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Mon, 27 Oct 2025 at 16:47, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> SMARC2 board dtsi is common for multiple SoCs. So Move aliases
> to board DTS as SoC may have different IPs for a given alias.
> eg: RZ/G3S does not have RSCI interface.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

Makes sense, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

