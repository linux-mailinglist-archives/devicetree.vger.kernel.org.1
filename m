Return-Path: <devicetree+bounces-304186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFilEgVkGWoBwAgAu9opvQ
	(envelope-from <devicetree+bounces-304186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:01:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D32CB600669
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9AA03037160
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 09:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AABA31A807;
	Fri, 29 May 2026 09:53:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7384315F
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 09:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780048428; cv=none; b=U1+5y3z0GgqNEDTIpJbBNBETOpvwnylMMBl7R5Z5tu/3ygJQ+bs7uSC7ww+QPwamTAMDMcGcmUFkyyPtSBBVvETD5IZv2zlIE1uVZkw8Ae8XphSypaJLGiiYwFHT5Bp6FTRveQ26x91aCmIA6quQcqDe+v4uJQOK9VIvv3QVdK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780048428; c=relaxed/simple;
	bh=PNxZ1ZSWxQktRel0VIU9+ncnpbyTsai9GjZU4o8X9AE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GJkokxFXIp2maR8AJ5+QkZwjNLBBrAxb8IDr/Dp+FTDTkLtIMfIKDz382r+1SXFzt5SvTWjiS7WDx0aFWEaxYwa2ZAiBBNY8TXLzFRePNZukHvzklKE/JLWJlydxmawLZhxWHZHPIwDQRwhKEBaljQntFQ1kv3Oe8kW4bILrLMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-95f61c1ace0so8320779241.2
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 02:53:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780048426; x=1780653226;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=62xqlDQ54Tz/hWgLYE0Bl+jO+OO+Qog2TKg7daGuCMI=;
        b=o77/wEpCgo1/SrKYOTubhU/pckgxQJ/84aqJiBg2xrV3WfcIvBGaqAWEnPYPDKOM7M
         X7cVIMTAxbmpDkWexU8aKxvO+jX4T0zu0nNaij6+0Cuiq/QCx63UjHGj49qePhWLRUDK
         RfTfQqbknVBf1rnNXo7IEnUEcrxJh3CMxQZHO0RSGwgQTXjTeUT+7KYnATkb30pCOcX/
         Cx/YeZqixt1m3viam7ep28YYi8gN2RKZq01LbJzIdGGks4FbSHctfqP87MpiXypES08f
         VkEma0wSN9mF3PJKmNIisohfuPKdBWnB295afSzgCl4vn6O+AiVrHe65XbP5zZ1KONRu
         7WkQ==
X-Forwarded-Encrypted: i=1; AFNElJ/RyFE8ubbCDgdmCQAXcxUzwEMIHnyJUOVD4qP95GgDw/Sw1WVXLCGGyUXfI9748mAHn+gd72Jmcw0C@vger.kernel.org
X-Gm-Message-State: AOJu0YxipTVTj3A6zj5hKgY+JFj86ROxOxKgVv8MOaNAb2jIrdE3V7zk
	4t7xJ1QlixIXlTS+YkEoETIBu2ec0WWJIVc68z0Ee5AxgftnVmgCafxrp8YuOCv8+yU=
X-Gm-Gg: Acq92OHvpWCK6GxGBKIBA7rXfsoWzrq0jmn0q2FeyPYpKLK3i7ulhH8+fF3ESftFQ2Y
	q6VxlprBBdbWb6bSr5aCL3AwHIZxohT0OP+OUA34PYsxcy9OR317i8OUR3g1nhBJAztYVo7dVor
	NQ+1udpVnSU/lea35bQ6qvu9u2uSEdekOakvi23Cst9VM6CV0wdh7fo0roXf0TWOHreovpuxy70
	jbgG5+rUQdMFE/VzsJ64dQR8EEHaw1hIDh6NQs4i2f72tuzDgGg350Nfp98boHb9nLegZBgtRrW
	Uk/Y3BXbHCBGx3jdPhWzsrcpJQFhXvASpdhQU+0C/jyoJas9Xo9gZM6hOy2bBCDOgP16JcyhddI
	NBkwGIOTcpQApNi1tCmzkGFl1Kd26sxPmmqA7PK6kqiKGcdTf9Z5Yicu2ftCE7sXhdLI8Dw3hDg
	nTlrInXcePZ2cWoWTrkz/LvLTrkK1cWl0EY76gkpurso7CiOiTLxiE07ncCECsiosdczR2FoM=
X-Received: by 2002:a05:6102:26c1:b0:631:8665:3510 with SMTP id ada2fe7eead31-6bf40e862a9mr714604137.31.1780048426440;
        Fri, 29 May 2026 02:53:46 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-6bfc81ab22esm650146137.7.2026.05.29.02.53.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2026 02:53:45 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-6c25b040555so169571137.1
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 02:53:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9/iuwC0aHVud8r/cTN61Sx2TY9Dwp5tmdtQjByfB/0L9Z7F7n2vYIOAasOpze7dspPzzDzT5Hu50l1@vger.kernel.org
X-Received: by 2002:a05:6102:3e19:b0:604:f155:9374 with SMTP id
 ada2fe7eead31-6bf39268585mr788185137.15.1780048425234; Fri, 29 May 2026
 02:53:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260519100022.116318-1-biju.das.jz@bp.renesas.com> <20260519100022.116318-3-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260519100022.116318-3-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 29 May 2026 11:53:33 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXEnidpA01431Rqm_X1ro0XD0zRXuYEao1Y2H5dB6BF6w@mail.gmail.com>
X-Gm-Features: AVHnY4IgytCf4g4vVvkl_DTDux6ZbuRTuEGS5daghZ0sc-QecbMVbcW5iprm0YA
Message-ID: <CAMuHMdXEnidpA01431Rqm_X1ro0XD0zRXuYEao1Y2H5dB6BF6w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r9a08g046l48-smarc: Enable
 rsci{1,2,3} nodes
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304186-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RSPAMD_URIBL_FAIL(0.00)[renesas.com:query timed out,linux-m68k.org:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.982];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux-m68k.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email]
X-Rspamd-Queue-Id: D32CB600669
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Biju,

On Tue, 19 May 2026 at 12:00, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Enable rsci{1,2,3} device nodes for the RZ/G3L SMARC EVK.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts

> @@ -147,6 +175,37 @@ ssi0_pins: ssi0 {
>         };
>  };
>
> +#if SW_SER0_PMOD
> +&rsci1 {
> +       pinctrl-0 = <&rsci1_pins>;
> +       pinctrl-names = "default";
> +
> +       uart-has-rtscts;
> +
> +       status = "okay";
> +};
> +#endif
> +
> +#if (!SW_DPI_EN) && (SW_SER0_PMOD)

Can 't you drop the last part?
  - If SW_SER0_PMOD is enabled, rsci2 is routed to the PMOD connector,
  - If SW_SER0_PMOD is disabled, rsci2 is routed to the M.2 connector
    (replacing rsci1 above)
In both cases it is available for use.

> +&rsci2 {
> +       pinctrl-0 = <&rsci2_pins>;
> +       pinctrl-names = "default";
> +
> +       uart-has-rtscts;
> +
> +       status = "okay";
> +};
> +#endif

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

