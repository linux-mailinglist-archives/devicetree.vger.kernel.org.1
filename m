Return-Path: <devicetree+bounces-247638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EB54ECC9BA9
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 23:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DAF6F3017858
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 22:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 891A43271EC;
	Wed, 17 Dec 2025 22:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jCbdGGDe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7D4325728
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 22:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766011456; cv=none; b=q+Ahc+BzT6bJ45VB8Y8ttzL+bq0xqD4nrsLTKcagbziI987RWJoBkOcGHdFRRGqhiCayKPyRb1WBaZj+V3+QoLy+HrZk5ChSCQy577nlfOOjv994iLwatXZ2lhbrIFV43d6RyPy7h74QH0KxTdumgBmqoYwui0A/UXNz3qp//W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766011456; c=relaxed/simple;
	bh=iQRXXoy9kJmwdlqXE+YbrTt6xWjc0tI69ShaBUnS674=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X7CsewKToKw6HbKhc/WAfGu+QCEz8tdryzZtWPdt4U0WPUyogBd9F+lNGKjGPjEf0AgDK9JVeh2SYTcTwySY9/b0wNFvRmEvA2Pu4i9dlL2mReH+KFKqbx3ScahxrryYv9yILIksXR4C86C+8cXrWDwDh5ODCblzmoVl4LZDDTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jCbdGGDe; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5958187fa55so5256565e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766011453; x=1766616253; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zIFAR86G5qjWeUqc0ccAfmXmhviF4H4G25HBFPh/MFk=;
        b=jCbdGGDeIpD6dDRF94AlEz4IxfgRJtsrKiWnctb50xsQ6TEPM8KV7FNR5HBCJ0Jn81
         niOUeCM+5upWByrJJ8zC05FePSBTRgxqC9BAjF4geF0PqoRzq7kige+veeyyRLYYJKgx
         lcefdCeuJDjKwRNI7NWH95ihVDk/qH5L4DgM2lNrQkz4wuV1QznnTVSMCGa3WoTFjQmA
         H7r8thntlpejT0bQJPglUbcxPwk1kV8rj3PpS8Ol+8SvBGGJ4nkQWnWgCwClgA1c3+4b
         0GLTscN7zwf3+23lbI8ScqdNVCuzg73NKdoWNp9QJc/xbUrxtv/K7rmCfNl+WZKVJUkr
         kjDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766011453; x=1766616253;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zIFAR86G5qjWeUqc0ccAfmXmhviF4H4G25HBFPh/MFk=;
        b=e7Ariu9QAVWKYPFP04OJa3vl1xZLK8en143UYWJ4pR3M3P81soRwfJut/adleWWUkx
         x8oi2qjN5pvbWpZ/iMQ7bgWUPhZkS4GZwodBMI+VgzfUXwrcYI0zTdZvSIj1bK1Tm3m8
         Zkpe+IzBFAOJRuJ0zwG60IDuexknJblmyItjF79BR1iddcfGcfT70/hEj+HEXuvblOMO
         IRaViZIyIT+CIeDx73jF6TxfoDUj0SUd7ACQkCEDFPS5ho5v1K4mx9nRWZrlROY7i1x1
         AgiFA2xDpcPRy7H3LYLeasX45sGEjGX/fsNK19T/CsslQUjkBC1KR9JXDlYmjmXapQ6T
         sGJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZdeA0YyfDEXj3Rrab9rF1+5FC0QWT4zWG2h9BwxR2zUI3//WTK+ZWUgbGJt/c+2Uhn/Btd5qaenhI@vger.kernel.org
X-Gm-Message-State: AOJu0YxqTEjNSQUw8EaAHjzDVYzOS//F19GQocHS6sc8eJ8s3O16lzf2
	7Z91QoLAPs6R96cxiO+iJ5wKn3MX1YH96OiPWG54FVRyZwJ5aVsqjPRcmMd3UXE8Ynwrb3c1FSH
	d716nXs80o6Snk7ULRkQRhD2fLxtg2RE=
X-Gm-Gg: AY/fxX5kS2HR2DwCa+a3UlajemYVKSj7xRqOzr5wC4LnaS6Ps3hu5lf1kimD4gEQWui
	Gt8ZCsBreY8NwjfanXh4U+TTphAHI2bsZKJQhcx7qAO8giz1DbgJnGfKmpHFlOedYZ5yEkMmYsk
	0/jnvGIU8V7yDjrssdTxrg8e8sxqUd30XPzskX3pBdyYSI5FWVjiBjART7Eb62JiMiu9HLTqE73
	T+JhOpIzSsJS7MWL+v5Gj+QcX1g419m1Cu6Ej2tQU2EBpJRGifpqxb5/IFZhnl18jFtzeI=
X-Google-Smtp-Source: AGHT+IGWxKI+iUIfwxjz9XgA5wASAFIEqiuT70FTfnGo6HV9rmidrVriA+aOD0O0fHLTXCXyvEnqWYadFLLlZIfBeXU=
X-Received: by 2002:a05:6512:3054:b0:59a:10df:7ee4 with SMTP id
 2adb3069b0e04-59a10df807emr939757e87.33.1766011452396; Wed, 17 Dec 2025
 14:44:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027-tegra186-icc-p2-v4-0-e4e4f57e2103@gmail.com>
 <d16803e5-7b6d-4472-b50c-aa324cf52736@nvidia.com> <CALHNRZ83Q2Ha8VYoWAnqoCZQ=Fd9rtVRVLwRFxAY68ePQ29GHw@mail.gmail.com>
 <29cf2c16-3a0e-42c5-a083-16f77ae5d09a@nvidia.com> <CALHNRZ9KAv-hL6+6Uiaz2O2odm1rqMnjNxNVPsbCOdqX15KTuw@mail.gmail.com>
 <856447ae-4338-471d-a71f-a34aed749ac7@nvidia.com> <CALHNRZ9y0n6JNfeDUQgZoECkxo+We0_G8TP0H4advcSqrX86kg@mail.gmail.com>
 <f906f85f-b110-4328-b177-02fcdf7ffe53@nvidia.com> <CALHNRZ8go4ATHgJ4SE=7pkAMgRP_0tj5z4pDXjxicV9o7F13Ng@mail.gmail.com>
 <1b9f0b14-876c-4c6e-90eb-b04d016f88e8@nvidia.com> <CALHNRZ_GGAg_VP8gSdtw_1CA2A0netrOeA2+guZfxyG7POhHoA@mail.gmail.com>
 <adc7ca5c-69d8-4164-bd89-3381b101576a@nvidia.com> <CALHNRZ-SU_kyak_u6mfUZBHJ9Cph6=-edhL+yhRizu8DDy=Big@mail.gmail.com>
 <CALHNRZ9mfO_DQR-RuH_QH=18R8zTt9VqbPaVCdnDKUWzx1pm3Q@mail.gmail.com>
 <45057c95-1dba-4302-94fa-f63941ee2b20@nvidia.com> <CALHNRZ8gJbyuD+0yFQwCJ+g7OcffjkXopRSJKoDnr5WMmUVGwQ@mail.gmail.com>
 <0c5eddc0-8b37-4199-a8b8-f235ac3aa476@nvidia.com>
In-Reply-To: <0c5eddc0-8b37-4199-a8b8-f235ac3aa476@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 17 Dec 2025 16:44:01 -0600
X-Gm-Features: AQt7F2pLJdgyFoszlq9a-Pz7jiBsWcTMqBU2nL6vxxD38owykfZY07KGberWTqE
Message-ID: <CALHNRZ_zhZ3a7h8nSWkpGv6+unKn6DkSA9tKQ6cmb5TXjGcC9w@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] memory: tegra186-emc: Support non-bpmp icc scaling
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 3:53=E2=80=AFPM Jon Hunter <jonathanh@nvidia.com> w=
rote:
>
>
> On 17/12/2025 20:29, Aaron Kling wrote:
> > On Wed, Dec 17, 2025 at 12:59=E2=80=AFPM Jon Hunter <jonathanh@nvidia.c=
om> wrote:
> >>
> >>
> >> On 17/12/2025 18:39, Aaron Kling wrote:
> >>
> >> ...
> >>
> >>> To try to move a resolution along, let me try to enumerate the issues
> >>> again. Again, please clarify should I have something incorrect or
> >>> incomplete.
> >>>
> >>> 1) The primary issue is when an old dtb is used with this commit and
> >>> the pcie driver is loaded. I can reproduce this issue on t186 and
> >>> t194. If this becomes the sole remaining blocking issue, I would like
> >>> for an exception to the normal rule be considered and this merged
> >>> anyways. Since it does not cause a boot failure and distros package a
> >>> new dt normally anyways. And to my knowledge, working around this
> >>> would involve redoing part off the icc subsystem itself, a major task
> >>> in comparison.
> >>>
> >>> 2) T194 is reported to have low clocks even with a new dt on the
> >>> Nvidia regression bench. I cannot reproduce this, even with the pcie
> >>> driver loaded. Can this be re-verified, please? And if it still
> >>> happens, can logs from the failure be made available and/or more
> >>> information provided as to the state of the unit? Like changes to the
> >>> default defconfig, modules that get loaded, etc.
> >>
> >> Can you list all the patches that need to be applied on top of the
> >> current -next and I will run it through our testing to make sure I hav=
e
> >> this correct.
> >
> > This series, message id:
> > 20251027-tegra186-icc-p2-v4-0-e4e4f57e2103@gmail.com. And the dt
> > series, message id:
> > 20251021-tegra186-icc-p3-v3-0-68184ee8a89c@gmail.com. So, my build
> > sequence is:
> >
> > git checkout next-20251217
> > b4 shazam 20251027-tegra186-icc-p2-v4-0-e4e4f57e2103@gmail.com
> > b4 shazam 20251021-tegra186-icc-p3-v3-0-68184ee8a89c@gmail.com
>
> Thanks I added all these on top of next-20251216 (as that is the latest
> I have tested) and Tegra194 fails to boot. We always include all the
> modules in the rootfs that is being tested. You can see the boot log
> here [0]. We are using an NFS rootfs for testing and I see a message
> related to the NFS server not responding. I am guessing something is
> running too slow again because the only thing I changed was adding your
> patches. The test harness reports it is timing out ...
>
> FAILED: Linux Boot Test 1
>         Test Owner(s): N/A
>         Execution Time 219.31 sec
>         Test TIMEOUT reached. Test did not report results in 120 secs
>         Percent passed so far: 0.0

Okay, so. Modules are in the rootfs, none get copied to the initramfs?
And the rootfs is on nfs? And for this failure, nfs never gets
mounted. So... for this case, no modules get loaded, implying that
whatever is happening is happening with the built-in drivers. Which
means this case isn't pcie related. Are there any modifications to the
defconfig? It appears that there must be, to have dwc-eth-dwmac
available. I will see if I can trigger anything when using ethernet.

If this does eventually boot to a rootfs, as implied by the comments
about debugs below, can you check to see what emc clock speed is after
boot?

> >>> 3) Setting the max clock via debugfs fails when icc has pushed the
> >>> current clock higher than the requested rate. This is a logic issue
> >>> with all tegra emc drivers that implement dfs via icc. The suggested
> >>> resolutions are to leave this as is to keep consistency with the
> >>> existing drivers, perhaps updating all later, or to update the
> >>> existing implementations in a separate series, then send a new
> >>> revision here to match. I am personally unable to verify anything
> >>> older than tegra124, however.
> >>
> >> Thierry and I chatted about this last week and we feel that debugfs
> >> should be able to override the current configuration. So this will nee=
d
> >> to be addressed as well.
> >
> > Alright. I will start looking at getting that logic straight, then
> > upload a new series for the older archs and a new revision of this.
>
> And just to confirm the test that sets the EMC frequency via the debugfs
> also still fails.
>
> Jon
>
> [0] https://pastebin.com/5ghbSsu7
>
> --
> nvpublic
>

Aaron

