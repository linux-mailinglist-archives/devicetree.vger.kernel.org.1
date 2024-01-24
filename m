Return-Path: <devicetree+bounces-34546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0985883A2DD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:26:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6088FB24CF4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD347168B7;
	Wed, 24 Jan 2024 07:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="2mn4U1lq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1C316431
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706081151; cv=none; b=RZga1wisvpsyqwjVgdtZM0CbNQukshj2QIngcRjEgKlgnWXWmkTezlJ8ALqynGNZKg4XF8yZp/EmAzT2rS61sjEGl84oKc3Zv/Jjnp7aYnSwMsW3I9OTX12iR8NmgZiRNmmeWpMox9qubL1opdp0NFKTb/lY6Rgjm2x7xGpFS2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706081151; c=relaxed/simple;
	bh=uKTpKRwgdliMGvJqNfq714c2uJwU47AlHoDB9zH76bE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sVu/Flo3+83uTpeWOGKfGO6kpfplazSuTlV3ZReY7yOlV5CCOdNSIdeeipsd0LQ0Q3r3epeqT3EWCMtIEihSv8D/rBsFNkNH4+89cSZPANHyJ7fu9xmndd5L6brYPp5ISaxQ79nfE1kewjBClSzqLpgcwqJh5Wx0Bmoi5fgVQPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=2mn4U1lq; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-55c24a32bf4so8285a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706081148; x=1706685948; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UPkbuIjULvfqIJO/R8PBqbx88R0LV2zfCf/TrJjRhJY=;
        b=2mn4U1lqUyZi9vOCJjJP3oRaMhJg65E1XafxdeOpQFTn9koJUPmb3gw0Oram1fbEKD
         m9OoDDTdRvjDbfrEDIYmFgAW4W/9048791rNl/DXP0GybxSaV4I5CE7yOX0Mo0PhTS64
         cNKo5CYZhgiBJeT2tawXVUcaliaBywRJYVxqxsMM0iKA0/u7S0nknykv5SxQKHxRUPeM
         RBqzUJ+HT4YTG4XtrfKu+lzcO7yburD+pgAD6yChucbz8T0mD2eloaUfMn4gbhmN6pcc
         5RazCc5ffjUBqzmBxCobDCwWiWkLYhFdkHg/o0UtPctGeE2PfJyPDJUMANfIEwr0IUYf
         4qQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081148; x=1706685948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UPkbuIjULvfqIJO/R8PBqbx88R0LV2zfCf/TrJjRhJY=;
        b=vZ/PL2HeZuGyqSe+IChCAbUuE9M86E9iRC9/SS0Aq0cnBx6iszt6JXLE7BSQoU+Yb1
         N6hFUR2Gf0lhKofHCDjArz2fs6zOhZb2iBXeVdfvxvlagmB/NK570gWm/UQkvNhhnaJ3
         YGsImRfAHpdb40BoD3JFaxl4k4VtBusDqXMzaoafA/HHrWyU3AssduBU/rB6hBPIE/B0
         bT56WXt3JCacHxH8nIezacqYdXNVaQHbz94NCOy43oegcKZz0B6nOaOEpVJ4IfPlmdL7
         gVcxd8dwM+gsZAlygA6b00IBP6h6MCma3NN2ix3h163Rcc71upQW84ueOl6sBVODHTk8
         QH7w==
X-Gm-Message-State: AOJu0Yz0SrCi4YbMoeWOyziNRoNAWNCPnPHiLTNW2EdlMDKl1NJ3dqyU
	Cfk5Hapu2mTxrAs9U/KAZ8P9OZgXTwDmMcv2/Yzjzvj7hpMIsuDrrG5YiH41oQAc4r9CrVXqXbp
	fj6gk924Iov2gcMwDCV5iTlvE3VYdqd+zFoqD
X-Google-Smtp-Source: AGHT+IGSNyzuq75J7KKJIfzqYC/lmpc9PIYPrCAxDW/BLugHhNxmjEw1mI0MmxiEV+Ib39M4zEd09ZhP2aBBDRm7rc8=
X-Received: by 2002:a05:6402:1ca7:b0:558:8096:5c2f with SMTP id
 cz7-20020a0564021ca700b0055880965c2fmr36844edb.1.1706081148060; Tue, 23 Jan
 2024 23:25:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240112200750.4062441-1-sboyd@kernel.org> <20240112200750.4062441-7-sboyd@kernel.org>
 <CABVgOSkymMzaOFtJ-6OuVaB4i4zoVafPMqssA=GHByMJ9VTsKg@mail.gmail.com> <47062115ff518edf8c4b02e22f3058bc.sboyd@kernel.org>
In-Reply-To: <47062115ff518edf8c4b02e22f3058bc.sboyd@kernel.org>
From: David Gow <davidgow@google.com>
Date: Wed, 24 Jan 2024 15:25:34 +0800
Message-ID: <CABVgOSkFY_c5-=g2HeND4J4Fyxnx+_m0EtW8E=5JgJSRmXFdtg@mail.gmail.com>
Subject: Re: [PATCH 6/6] of: Add KUnit test to confirm DTB is loaded
To: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-um@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, kunit-dev@googlegroups.com, 
	linux-kselftest@vger.kernel.org, devicetree@vger.kernel.org, 
	Frank Rowand <frowand.list@gmail.com>, Brendan Higgins <brendan.higgins@linux.dev>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000d0ba11060fabf895"

--000000000000d0ba11060fabf895
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jan 2024 at 06:48, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting David Gow (2024-01-15 21:03:12)
> > On Sat, 13 Jan 2024 at 04:07, Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Add a KUnit test that confirms a DTB has been loaded, i.e. there is a
> > > root node, and that the of_have_populated_dt() API works properly.
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Frank Rowand <frowand.list@gmail.com>
> > > Cc: David Gow <davidgow@google.com>
> > > Cc: Brendan Higgins <brendan.higgins@linux.dev>
> > > Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> > > ---
> >
> > I won't pretend to be a devicetree expert, but this looks good to me
> > from a KUnit point of view, and passes comfortably here.
> >
> > checkpatch seems to have one complaint about the kconfig help text.
> > Personally, I think the brief description is fine.
> >
> > Reviewed-by: David Gow <davidgow@google.com>
> >
>
> Thanks! I noticed that x86 has some devicetree init code. Did you happen
> to try on an x86 kvm instance? Or only run on UML?
>

I admit, I only tested on UML, plus a quick check that the default
kunitconfig wasn't broken on anything else.

A further look is showing:
aarch64: PASSED
UML: PASSED
UML LLVM: PASSED
powerpc64: PASSED
m68k: FAILED
i386: FAILED
x86_64: FAILED
x86_64 KASAN: FAILED

The failures are all of the form:
> [15:18:34] ============ of_have_populated_dt (2 subtests) =============
> [15:18:34] # of_have_populated_dt_false_when_flag_set: ASSERTION FAILED at drivers/of/of_test.c:53
> [15:18:34] Expected of_root is not null, but is
> [15:18:34] [FAILED] of_have_populated_dt_false_when_flag_set
> [15:18:34] # of_have_populated_dt_true_when_flag_clear: ASSERTION FAILED at drivers/of/of_test.c:70
> [15:18:34] Expected of_root is not null, but is
> [15:18:34] [FAILED] of_have_populated_dt_true_when_flag_clear
> [15:18:34]     # module: of_test
> [15:18:34] # of_have_populated_dt: pass:0 fail:2 skip:0 total:2
> [15:18:34] # Totals: pass:0 fail:2 skip:0 total:2
> [15:18:34] ============== [FAILED] of_have_populated_dt ===============

-- David

> ----8<----
> diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
> index afd09924094e..650752d112a6 100644
> --- a/arch/x86/kernel/devicetree.c
> +++ b/arch/x86/kernel/devicetree.c
> @@ -283,22 +283,24 @@ void __init x86_flattree_get_config(void)
>         u32 size, map_len;
>         void *dt;
>
> -       if (!initial_dtb)
> -               return;
> +       if (initial_dtb) {
> +               map_len = max(PAGE_SIZE - (initial_dtb & ~PAGE_MASK), (u64)128);
>
> -       map_len = max(PAGE_SIZE - (initial_dtb & ~PAGE_MASK), (u64)128);
> +               dt = early_memremap(initial_dtb, map_len);
> +               size = fdt_totalsize(dt);
> +               if (map_len < size) {
> +                       early_memunmap(dt, map_len);
> +                       dt = early_memremap(initial_dtb, size);
> +                       map_len = size;
> +               }
>
> -       dt = early_memremap(initial_dtb, map_len);
> -       size = fdt_totalsize(dt);
> -       if (map_len < size) {
> -               early_memunmap(dt, map_len);
> -               dt = early_memremap(initial_dtb, size);
> -               map_len = size;
> +               early_init_dt_verify(dt);
>         }
>
> -       early_init_dt_verify(dt);
>         unflatten_and_copy_device_tree();
> -       early_memunmap(dt, map_len);
> +
> +       if (initial_dtb)
> +               early_memunmap(dt, map_len);
>  }
>  #endif

--000000000000d0ba11060fabf895
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIPqgYJKoZIhvcNAQcCoIIPmzCCD5cCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg0EMIIEtjCCA56gAwIBAgIQeAMYYHb81ngUVR0WyMTzqzANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA3MjgwMDAwMDBaFw0yOTAzMTgwMDAwMDBaMFQxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSowKAYDVQQDEyFHbG9iYWxTaWduIEF0bGFz
IFIzIFNNSU1FIENBIDIwMjAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvLe9xPU9W
dpiHLAvX7kFnaFZPuJLey7LYaMO8P/xSngB9IN73mVc7YiLov12Fekdtn5kL8PjmDBEvTYmWsuQS
6VBo3vdlqqXZ0M9eMkjcKqijrmDRleudEoPDzTumwQ18VB/3I+vbN039HIaRQ5x+NHGiPHVfk6Rx
c6KAbYceyeqqfuJEcq23vhTdium/Bf5hHqYUhuJwnBQ+dAUcFndUKMJrth6lHeoifkbw2bv81zxJ
I9cvIy516+oUekqiSFGfzAqByv41OrgLV4fLGCDH3yRh1tj7EtV3l2TngqtrDLUs5R+sWIItPa/4
AJXB1Q3nGNl2tNjVpcSn0uJ7aFPbAgMBAAGjggGKMIIBhjAOBgNVHQ8BAf8EBAMCAYYwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFHzM
CmjXouseLHIb0c1dlW+N+/JjMB8GA1UdIwQYMBaAFI/wS3+oLkUkrk1Q+mOai97i3Ru8MHsGCCsG
AQUFBwEBBG8wbTAuBggrBgEFBQcwAYYiaHR0cDovL29jc3AyLmdsb2JhbHNpZ24uY29tL3Jvb3Ry
MzA7BggrBgEFBQcwAoYvaHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvcm9vdC1y
My5jcnQwNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIz
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
7xDrOPfX3COqq162RFg/MFcGA1UdIARQME4wCQYHZ4EMAQUBATBBBgkrBgEEAaAyASgwNDAyBggr
BgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wDAYDVR0TAQH/
BAIwADCBmgYIKwYBBQUHAQEEgY0wgYowPgYIKwYBBQUHMAGGMmh0dHA6Ly9vY3NwLmdsb2JhbHNp
Z24uY29tL2NhL2dzYXRsYXNyM3NtaW1lY2EyMDIwMEgGCCsGAQUFBzAChjxodHRwOi8vc2VjdXJl
Lmdsb2JhbHNpZ24uY29tL2NhY2VydC9nc2F0bGFzcjNzbWltZWNhMjAyMC5jcnQwHwYDVR0jBBgw
FoAUfMwKaNei6x4schvRzV2Vb4378mMwRgYDVR0fBD8wPTA7oDmgN4Y1aHR0cDovL2NybC5nbG9i
YWxzaWduLmNvbS9jYS9nc2F0bGFzcjNzbWltZWNhMjAyMC5jcmwwDQYJKoZIhvcNAQELBQADggEB
AK0lDd6/eSh3qHmXaw1YUfIFy07B25BEcTvWgOdla99gF1O7sOsdYaTz/DFkZI5ghjgaPJCovgla
mRMfNcxZCfoBtsB7mAS6iOYjuwFOZxi9cv6jhfiON6b89QWdMaPeDddg/F2Q0bxZ9Z2ZEBxyT34G
wlDp+1p6RAqlDpHifQJW16h5jWIIwYisvm5QyfxQEVc+XH1lt+taSzCfiBT0ZLgjB9Sg+zAo8ys6
5PHxFaT2a5Td/fj5yJ5hRSrqy/nj/hjT14w3/ZdX5uWg+cus6VjiiR/5qGSZRjHt8JoApD6t6/tg
ITv8ZEy6ByumbU23nkHTMOzzQSxczHkT+0q10/MxggJqMIICZgIBATBoMFQxCzAJBgNVBAYTAkJF
MRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSowKAYDVQQDEyFHbG9iYWxTaWduIEF0bGFzIFIz
IFNNSU1FIENBIDIwMjACEAHS+TgZvH/tCq5FcDC0n9IwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZI
hvcNAQkEMSIEIP3fZlCn+pUaeKN2xD3PzZekiOSsr3mtWxlFcxjJcWwyMBgGCSqGSIb3DQEJAzEL
BgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDEyNDA3MjU0OFowaQYJKoZIhvcNAQkPMVww
WjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkq
hkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQA3Bo5w
edcx4yLCGG/V82IjojVcsV26/B+RUWI8IabGhMvuc2tGXR8XEAGdUAvqxWxeDoUomZgc5y6iE9Kg
3kj+rLmrSIyXIucC+sZ+we2jJfZti9THyOnU8scXRfb1M3nJOLI6u2ITO+YMbAAkthMp6AT9FzEP
DnTWz1KmJBnt+E8mmcRe8I3O83JGxmZtUFmKz6IVMJsf2xwdZRs2qyNLzDfMHCELQtEYt8rnyAAn
DPLNcNuF/aMVGRYI0phBsiEnEMFVTEY8cJdQJdq9QpB2da+JTi3TV1G/PatyOghiC9jNu1wdBrop
0dG6yC7hcEWj4kQoFqd8kxdxTNidTLgB
--000000000000d0ba11060fabf895--

