Return-Path: <devicetree+bounces-261610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNMPLrAGgGn11gIAu9opvQ
	(envelope-from <devicetree+bounces-261610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 03:06:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C064C7D62
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 03:06:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C202B3004213
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 02:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B00D212FAD;
	Mon,  2 Feb 2026 02:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="CV6mQGF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA35F1FA859
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 02:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769997997; cv=pass; b=M5c+nqxJc26xUz7cQHIH5fdM58cRXitCGpmRvILBfRT4MqQzSqOl/VRJG4dVCnrKPMcbyOEMCDc1Cu9NQDwyHIF277E7b+RkJCbgJnIjFp+MBwJx+7hjRiR5MLAIlEw2eO6WDGUK1tK0jOq0vp262xtOKh1W5kRiFxrM5XUpoEg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769997997; c=relaxed/simple;
	bh=cZHOuyFSDD0YCiUahnVWqH20bORv4bma4nfHULxUbNM=;
	h=Mime-Version:From:References:In-Reply-To:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fID/Qd7TIuFMnPKazjzZOmK0XKIBQNF+ZsHpCEeKxUMGki3oAc0MoTmXN7sxqkxzvYJhRVpifcnlvZJZy/LrNKVWp1iS2Fi3NXzECCuwQTtdOw6G+kTGAMcC/VujVilpvC4x/fhJEYL9BPjsmJ5JyCQt2mjFjTs5LyfU6kdvV7g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=CV6mQGF+; arc=pass smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-790b7b3e594so39384947b3.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 18:06:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769997995; cv=none;
        d=google.com; s=arc-20240605;
        b=lvD4zzp/zivLr0wDQVGRWJ848vuKvt8TNdNvhWjyD/lpdrOIsR8PHQKzCbTrhscNl6
         3WGHZ3+59OQ62FGjJN5PtHsfZ5AB7tgtEYON7nst2N5m2qgfYT7+Q2phLQ9htRPA7Huj
         d1M2hBWLU9GDWyvdnGMUtG0dqEKV6WMAA8LsJgMj7ZKVz46qNUE02yRimfk1cQtN9NfY
         NPo7cxespQLNBEv3kk5pYrzxPrqyrbWrrVN/NoFZ5XrU1+hv/o4bTHGLoxzmFInDzE5x
         GI/2XwnKIMlrwJCl4bVHoOkqoqjii/HGiMPdw0E/1LjTAWSdEnr6XWkqP6SgM36DCUC5
         EB2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:from:mime-version:dkim-signature;
        bh=aMiZMMtcuEUphHiFBhOZs43qw2Jy4XV2UcTsb9dz3D0=;
        fh=Pwnh9ROeKeGSSWxJ/4mhlxJs6uAchYa7ZeWas31QSJo=;
        b=TQ3Rs+kaoaOo6ZIDKxrVQUXUrDO/d5C4vMl5rsRzhuJH4WzjwXxnl6EK9TIyjiNQsc
         EK82yXr1YXMN1ZfXZNlHa5Cmh1pYbkTHwBmqyk4zmqsguwnUgCMSKuSOsOfb07POjTZt
         q0U+T6KYTWsGXu6uP+BmeS3SU3drA+wbf0U2r+wb3IeM9cOMZq9LQaC/vUCuSIOWbsVj
         FSCHrTHcKf2QIrcs3Y1Tul17XSzp0Fitaq1ZzRbLD+UusxMVbCwNzzKC6yZIfCA1ys1D
         hs2ZfRMxkRO3wFK63gvbSk9IowWUOQGbowMbvxAnIx1Kn2HXLkcHldFraE/D+zKeTjAT
         MpXw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1769997995; x=1770602795; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:from:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMiZMMtcuEUphHiFBhOZs43qw2Jy4XV2UcTsb9dz3D0=;
        b=CV6mQGF+4ioMLL/OrHOp6SCrZ2vMfrCEV8bxM+SO89R7+MC5J6Tgy9U96Xfysk09Om
         VK+1lyyZOo7eF2V6inK8Uf71Cp9co08/rke+U+9LUOXC9SjfXJ8kWx82aPBRuKK+awB8
         fyWcWOORevBMXNcpFJAj8/DGehUp9KIwd7WBjz1BPSR00/FRJhZxyIhoYHvPU4jILhCU
         APuXRItZnhqMIZspGHsurQSeKJRMOHSkdDKRgUbyaDwlteFSoqLSuVFZ0iTRN3zSeESL
         1kz+ar1NbgWQIPtMwc7TWBwTDX/xUl1rkSY/fsi2dOZglcfkdvsaYFWgWHA7oZBWQsyh
         6t3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769997995; x=1770602795;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:from:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aMiZMMtcuEUphHiFBhOZs43qw2Jy4XV2UcTsb9dz3D0=;
        b=O5O5MubPsdwpRNsvTpfYjlSEjFVrNeqjADkXyBi1Oag2QWY7zyCcecxfJ00x4S0TCG
         BMTHNBW4XAyNRKItq33M9XGYZBlKA/uK3tljkLM4Yk5YKNPQL1UK0j0ktZ5+SSlZlBBi
         m6XgqOU2Mm4CJy9cOwwGtcEyP4a8cBZdfKx0WB6ibBInohiy+8dGPaIZiu9A8NqxJmSm
         oQ3EhFUuJwfPY5WFt3nWbYjMyhlE4SURxUothIHnZb8Swuhyt7fHP7gNXfWHZEzt2JHW
         jk6rWeW5yUywvCqb7zxAWVi4xGa6FsusNdhvWtmtRaCSSDDU7byZPBO2kqAXUvHOpUJx
         SfDw==
X-Forwarded-Encrypted: i=1; AJvYcCUhIggZn3wtbZqT/IAAMbsWiLtNDMyEt/BjyR/q5CVL8cEGc2ofzdJYGJGWAPYRKakVcSTsfn+kOIow@vger.kernel.org
X-Gm-Message-State: AOJu0YxVcTcqKSJxWxFFBtPU/oXmaBmMBrkXtzdctBw1tzkt+IUFxlJX
	M5yra3cZPh2Kv6kXxQjcHHLQLxliaf5jwnGVEOnzs8ErrKZxKwJ+5BKu+n+LHHbyv0KU+LOyM16
	c+XaO+b7LTHyl3UxhYrlzygU1zxIsbP/W/wsMdnCafg==
X-Gm-Gg: AZuq6aLRvg6tYkNmNc0O0QxbdpSNB7tCLbIkdMYMTpzrbItGJAEd5v7bdtDu8vf6/Y2
	sqbxdBfWC/Bt4QFjzgAwyD4MXWyEymigLJkDCsLJf72nnlnVutsL3ciGUEH5L/IcMZ392pFJCJJ
	cO956p5JczopSVi4svPig6RQ08NmzmfoTIjxi5GUjhFpYNwPbpyM/YgclpgrMEkzljRvBx77i0n
	u0H/t6DhPWW5bbzYAqayiOOGx9NFB+LbtQo/rGU0De7RrqKo/BFJnH04YLYmGy/sJiukPBp
X-Received: by 2002:a05:690c:e3e1:b0:794:198e:943b with SMTP id
 00721157ae682-7949de7f6bfmr88706007b3.8.1769997994805; Sun, 01 Feb 2026
 18:06:34 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 2 Feb 2026 02:06:34 +0000
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 2 Feb 2026 02:06:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
X-Mailer: aerc 0.21.0
References: <202601311615.10yziOui-lkp@intel.com> <81522270-1703-48E1-B64C-8CF174E1EF94@nexthop.ai>
 <r2qkeep6jf7xxjzckn72z4avgx3qiqh4g2fkvzeyu2p2o54bff@xs4kzlong7cn>
In-Reply-To: <r2qkeep6jf7xxjzckn72z4avgx3qiqh4g2fkvzeyu2p2o54bff@xs4kzlong7cn>
Date: Mon, 2 Feb 2026 02:06:34 +0000
X-Gm-Features: AZwV_QgA40VM4P6w_-3GskOG6YPGtVtQKONh5VU7M0VmOxyGKRkaTPHiN25oam0
Message-ID: <CAGYn4vxTAJwO3GiKmRtD1gTit-Wm4VOMnxZPxUfUJ0JEwj8dEw@mail.gmail.com>
Subject: Re: [PATCH v7 5/6] i2c: xiic: cosmetic cleanup
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Abdurrahman Hussain <abdurrahman@nexthop.ai>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, oe-kbuild@lists.linux.dev, 
	Abdurrahman Hussain via B4 Relay <devnull+abdurrahman.nexthop.ai@kernel.org>, Michal Simek <monstr@monstr.eu>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, lkp@intel.com, 
	oe-kbuild-all@lists.linux.dev, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[nexthop.ai];
	TAGGED_FROM(0.00)[bounces-261610-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,abdurrahman.nexthop.ai,dt];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,01.org:url,linaro.org:email]
X-Rspamd-Queue-Id: 1C064C7D62
X-Rspamd-Action: no action

On Sun Feb 1, 2026 at 10:23 PM UTC, Uwe Kleine-K=C3=B6nig wrote:
> Hello,
>
> On Sat, Jan 31, 2026 at 06:14:58PM -0800, Abdurrahman Hussain wrote:
>> > On Jan 31, 2026, at 6:35=E2=80=AFAM, Dan Carpenter <dan.carpenter@lina=
ro.org> wrote:
>> > kernel test robot noticed the following build warnings:
>> >
>> > url:    https://github.com/intel-lab-lkp/linux/commits/Abdurrahman-Hus=
sain-via-B4-Relay/i2c-xiic-skip-input-clock-setup-on-non-OF-systems/2026013=
0-054653
>> > base:   63804fed149a6750ffd28610c5c1c98cce6bd377
>> > patch link:    https://lore.kernel.org/r/20260129-i2c-xiic-v7-5-727e43=
4897ef%40nexthop.ai
>> > patch subject: [PATCH v7 5/6] i2c: xiic: cosmetic cleanup
>> > config: i386-randconfig-141-20260130 (https://download.01.org/0day-ci/=
archive/20260131/202601311615.10yziOui-lkp@intel.com/config)
>> > compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 8=
7f0227cb60147a26a1eeb4fb06e3b505e9c7261)
>> > smatch version: v0.5.0-8994-gd50c5a4c
>> >
>> > If you fix the issue in a separate patch/commit (i.e. not just a new v=
ersion of
>> > the same patch/commit), kindly add following tags
>> > | Reported-by: kernel test robot <lkp@intel.com>
>> > | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>> > | Closes: https://lore.kernel.org/r/202601311615.10yziOui-lkp@intel.co=
m/
>> >
>> > smatch warnings:
>> > drivers/i2c/busses/i2c-xiic.c:1539 xiic_i2c_remove() warn: pm_runtime_=
get_sync() also returns 1 on success
>> >
>> > vim +1539 drivers/i2c/busses/i2c-xiic.c
>> >
>> > e190a0c389e601 Uwe Kleine-K=C3=B6nig    2023-05-08  1529  static void =
xiic_i2c_remove(struct platform_device *pdev)
>> > e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1530  {
>> > 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1531   struct device *d=
ev =3D &pdev->dev;
>> > e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1532   struct xiic=
_i2c *i2c =3D platform_get_drvdata(pdev);
>> > 36ecbcab84d023 Shubhrajyoti Datta  2016-03-02  1533   int ret;
>> > e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1534
>> > e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1535   /* remove a=
dapter & data */
>> > e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1536   i2c_del_ada=
pter(&i2c->adap);
>> > e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1537
>> > 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1538   ret =3D pm_runti=
me_get_sync(dev);
>> > 2557b4ba04df79 Abdurrahman Hussain 2026-01-29 @1539   if (ret)
>> > 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1540   dev_warn(dev, "F=
ailed to activate device for removal (%pe)\n",
>> > 810199f7315604 Uwe Kleine-K=C3=B6nig    2022-10-19  1541   ERR_PTR(ret=
));
>> >
>> >
>> > pm_runtime_get_sync() can return 1 on success.  Perhaps use
>> > pm_runtime_resume_and_get()?
>> >
>> > 810199f7315604 Uwe Kleine-K=C3=B6nig    2022-10-19  1542   else
>> > e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1543   xiic_deinit=
(i2c);
>> > 810199f7315604 Uwe Kleine-K=C3=B6nig    2022-10-19  1544
>> > 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1545   pm_runtime_put_s=
ync(dev);
>> > 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1546   pm_runtime_dont_=
use_autosuspend(dev);
>> > e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1547  }
>> >
>> > --
>> > 0-DAY CI Kernel Test Service
>> > https://github.com/intel/lkp-tests/wiki
>> >
>>
>> This maybe a false positive.
>
> It's not.
>
> The blamed commit 2557b4ba04df ("i2c: xiic: cosmetic cleanup") has:
>
> -       ret =3D pm_runtime_get_sync(i2c->dev);
> -
> -       if (ret < 0)
> -               dev_warn(&pdev->dev, "Failed to activate device for remov=
al (%pe)\n",
> +       ret =3D pm_runtime_get_sync(dev);
> +       if (ret)
> +               dev_warn(dev, "Failed to activate device for removal (%pe=
)\n",
>                          ERR_PTR(ret));
>
> So we need
>
> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.=
c
> index 37a15065db60..a5334b7c46d8 100644
> --- a/drivers/i2c/busses/i2c-xiic.c
> +++ b/drivers/i2c/busses/i2c-xiic.c
> @@ -1536,7 +1536,7 @@ static void xiic_i2c_remove(struct platform_device =
*pdev)
>  	i2c_del_adapter(&i2c->adap);
>
>  	ret =3D pm_runtime_get_sync(dev);
> -	if (ret)
> +	if (ret < 0)
>  		dev_warn(dev, "Failed to activate device for removal (%pe)\n",
>  			 ERR_PTR(ret));
>  	else
>
> Best regards
> Uwe

Hi Uwe,

Yes, indeed, I missed that. Thanks for pointing it out!

Best regards,
Abdurrahman

