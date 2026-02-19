Return-Path: <devicetree+bounces-266671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPDlKHscl2ktuwIAu9opvQ
	(envelope-from <devicetree+bounces-266671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:21:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 142F515F6EF
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA65D301584A
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7ED033A9FA;
	Thu, 19 Feb 2026 14:21:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8474E33E34E
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771510904; cv=none; b=JaQSWEjwKeaPiJO8agxnDMeg0tyzBweVzrKIC8BxXoASoFa5WfRj2kYIUc9+AOTKAic3ACE4wmT40CyqwBsphfIXmPV0MlmiDTPuxsdfPUC21fZj8vmGVnBN4Xsvcx5CSPpYdzFKsm69+g7xJJldwjZzbTz0OpbLqA+zJvuFI5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771510904; c=relaxed/simple;
	bh=/ZYYXgtgPRKj1olgFBbWehbpGHm+uMISOKI3+DRNfa0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tmWaGA7aqYsic2IwGjEfq1aM6vbUGGcVDzyvEX/jkwCGMOKyflgTo68Oh4YvSzYiIKqpNUdQLJsz5FqQSaJO94bvo72PWLBTjA5GJePG+a5rVvEm9C/eviVvZ5BMeR3nu5mOlyQbJC0VfO6YRkDDms7LiiIZjSBcjGkb+IDQSjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5662c2937fdso1000568e0c.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:21:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771510902; x=1772115702;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnT2E6qzZtv6m4RxT1fh4Ezu4L7LN5MU6W5pzU+vKVg=;
        b=BgDtMLaaiYrwJNk+Wp1LjTVXoF8x/tlj/hKLRlzH0zegHQkkMlhqBNB5s6IyjAYmnV
         3B1SiafaMuaENRC1bE1yvv6ItQaqh28/DO6J1zOz5Hd5/sjVSocbwyw739UEhesXzRE6
         PTXZHMIC/zaaWQD9AwRCja0lvzHlimd6DxUQYOFZtKCJX7Zrqybz+9gxri894eTAMk99
         Ilr6XUzZNap/chotpiS6Lceh2wiCPcJxtjhPmEr91VfaprjLFFhu1TfHWs2k0LlPdumF
         aQfIrvsLP6QZn/cItrxLcOYjw1XUDHi8GnISWMnDwoQFI7zTSUT0NLplvpqRsSB+NnNn
         9PYw==
X-Forwarded-Encrypted: i=1; AJvYcCVQGHD7aTHlx6Rm4h/Bk6cpNLro+BYGWKYKQCyWWSbI53j+zfl+yDp1W1jw/KS5MxJXfWpRbJK7Sexd@vger.kernel.org
X-Gm-Message-State: AOJu0YwNKFfZ4ol40lG80LRct1zwwoXonky1r5lf5i1MK/ikNHxeUfUg
	BzIf84a0Cw6fjeRCBzyLcCE+vPVfrSVYmiUKDrIajFnWNm2AotvPvIpogwwzp+JM
X-Gm-Gg: AZuq6aL59Y5w7eCAbS0TR4fReMBWJg8JdG0Zm/qlfWYyUNJOwr3AtMICtVoCOOmMNeI
	y3adc4ONM7RTR5xcNhE5NDL6+GEklo66Hv/6yC2G3oq3PsybCyhoW1IAiPqLjD5NltErpKlhje7
	U/Nz666s///gd/y8adCS7gk2ccSa7+zvUzYsfSNajGYDj+ZyrRNxXJPaOczEgPqOA6OdE/uWuQU
	gR+rUgsr9gsIbcfDhN1GK2vtPx1WMh+6O5fWCtwT0qxg+IsTkD1nHjnYb1jRjj9hTWKwBbuDeN5
	CdTi67e51sLo9kX9pdlzmQgU6XOpoJYqtP/9FT3eFGzplKYQlZ6hlQ5fHnqiLCutxfPTfzY0MfY
	UtWRUFZZlQ658c8CatOUbtu+IGPsSN0d5cbw4bg2fjYgWzbZsq6BhKrRRx0jtfGDyioSm0NcJ16
	JOMgU53JG9wrWYAIfoTR/3ogLzQ62AtD+ik+hMRrb6Sh0sgUFv8T0djOvbQ/mt
X-Received: by 2002:a05:6122:4593:b0:54a:a3b1:db63 with SMTP id 71dfb90a1353d-568cdc5c203mr972361e0c.6.1771510902483;
        Thu, 19 Feb 2026 06:21:42 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674bc76b6asm14791761e0c.0.2026.02.19.06.21.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 06:21:41 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5fdf71f3327so1335821137.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:21:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW/cJzKuWOlACevaKgvAsRgpSPguoQWZHBeu5iBYaMNLzpf6mdp0CKnb7bgp8fF935K3Rb7Im3xab14@vger.kernel.org
X-Received: by 2002:a05:6102:3a0f:b0:5f7:246c:7d59 with SMTP id
 ada2fe7eead31-5fe90c29394mr965190137.18.1771510901101; Thu, 19 Feb 2026
 06:21:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260219140532.2259235-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20260219140532.2259235-1-andriy.shevchenko@linux.intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Feb 2026 15:21:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX9CdQNBGegrfHz+-UpuyO-rmHEQ2HUa=JjVpG_0ryacg@mail.gmail.com>
X-Gm-Features: AaiRm520qeQadKACmPUSOomPwLBIUK1pbrc4MXCEiEjLJYebeqKw7k_Necoay4M
Message-ID: <CAMuHMdX9CdQNBGegrfHz+-UpuyO-rmHEQ2HUa=JjVpG_0ryacg@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] hwmon: (isl28022) Don't check for specific errors
 when parsing properties
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, =?UTF-8?Q?Carsten_Spie=C3=9F?= <mail@carsten-spiess.de>, 
	Guenter Roeck <linux@roeck-us.net>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,carsten-spiess.de,roeck-us.net,glider.be,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-266671-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.980];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 142F515F6EF
X-Rspamd-Action: no action

Hi Andy,

CC devicetree

On Thu, 19 Feb 2026 at 15:06, Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
> Instead of checking for the specific error codes (that can be considered
> a layering violation to some extent) check for the property existence first
> and then either parse it, or apply a default value.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Thanks for your patch!

> --- a/drivers/hwmon/isl28022.c
> +++ b/drivers/hwmon/isl28022.c
> @@ -337,21 +337,28 @@ DEFINE_SHOW_ATTRIBUTE(shunt_voltage);
>   */
>  static int isl28022_read_properties(struct device *dev, struct isl28022_data *data)
>  {
> +       const char *propname;
>         u32 val;
>         int err;
>
> -       err = device_property_read_u32(dev, "shunt-resistor-micro-ohms", &val);
> -       if (err == -EINVAL)
> +       propname = "shunt-resistor-micro-ohms";
> +       if (device_property_present(dev, propname)) {
> +               err = device_property_read_u32(dev, propname, &val);
> +               if (err)
> +                       return err;
> +       } else {
>                 val = 10000;
> -       else if (err < 0)
> -               return err;
> +       }
>         data->shunt = val;

IIRC, we have removed superfluous presence checks all over the tree
during the past few years? E.g. of_property_read_*() is documented to
return -EINVAL if a property does not exist.
So this patch looks like a step back to me...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

