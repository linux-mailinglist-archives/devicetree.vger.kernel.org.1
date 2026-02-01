Return-Path: <devicetree+bounces-261509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPgbAD23fmm0dAIAu9opvQ
	(envelope-from <devicetree+bounces-261509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 03:15:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F41C49F7
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 03:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B21CF301C599
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 02:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1BC31F3B85;
	Sun,  1 Feb 2026 02:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="AxQn8ZSZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0131C5D5E
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 02:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769912113; cv=none; b=r4aSZ/fY+9dJxdJlzVIY+i6sYjd6ZnIaUvzdVIhDp8/lA5ToNv87qFk1dK4h0ds7WOHdrt1sNleiptfzHUOe1rqrp4JbT7a18kCQ7iUjX+SpvRK5g9oqy+NhsPd9eTEVdNMW7DH27H1gLSrSKJv/fVde/ZAzMxtr5mwW0pASjSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769912113; c=relaxed/simple;
	bh=aj9lZYh7kNC+5k/nDqMXYXmMyDNkwDg0+SpPugkdyPg=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=moMOC/emx/nZtKCXfbXuEGK7Q78BLiYqfinZbFZMmuPr1+crntVSZTJpf0a2Koo6CVF9TNP52LoBEvV3RgjF7RJe7VgMUoqSrtKuNsVz7PNlG9Ax48LywkiJdEFXvR/SnXrTv96m4mHyYR6OC0or0vgGFVAhpZkLtB+5KqDaTUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=AxQn8ZSZ; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0d67f1877so21727465ad.2
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 18:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1769912110; x=1770516910; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sX+STYIHVNsNRwCOU5eoDnw7m2xr9Ak+mtAzKnocjoo=;
        b=AxQn8ZSZdxpDUMpJAzBT5rYs5ncX7YBsHz+MTp3FE8UWuDDTWZa+zgLB9jvOYkZQNs
         xhZVm9B+lDjycEhZOGashJTbAOzavduIqxeR5Mttc9l/iS6QFZmh3nbnglzOQkGarLpC
         P/P3f/1M5vY93BFjcyAgFprCe/QIFCJcINNYP03GaE5vTzwp5jCkw0b70yf+w4lV5UCX
         r9hxKps3Kvbi73XkN7gm4ZQVcXbSSGJBnu56oF9UKDKwEzFGlyhaiMufXtuWh3Luc5DN
         Z9zoxWB0PcjBAA616F0rusk8nWuIvzQZdM+4FKCPXvCBfPobCDnK5qKcTV+vE2JaOby6
         v34A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769912110; x=1770516910;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sX+STYIHVNsNRwCOU5eoDnw7m2xr9Ak+mtAzKnocjoo=;
        b=le5upzPU1ym+w3eXFqjg6UYwzUJlYVi56UOTnwQadq6xHBIPsjlv3VUlyoHIgR5NiW
         aCGMe4vfpUmnHVBQXEw4ASBgkOiarUAl3psECiBtt9KRLnH/rb3omm2CfYS5BRHjcyQu
         83yWtRUXqeHmIMT5WPNAg53HLMqeBs7ze9mx8fugzb40U8nP1+plocJ/MMpNp9QsCfK0
         9VlF8Kq7YXBnBHy2UyxhCaAmnT1n47YL4p0jpl4YDJnOpsKaCctT6d5TMV0vdUIz7boy
         TWVq/kmStMRfWBP3on2UM0b3Nj7IpbKasdJuUydWoeprxvcw8oSUq1KXaDD/ZXI6las8
         Xblg==
X-Forwarded-Encrypted: i=1; AJvYcCUEHz/V3N5M/DqPq0mUoXL4VobFBeoRW27KpR/Q1MxbllsCyb16tl/hI8idW8RqueITrmutsSKSskjh@vger.kernel.org
X-Gm-Message-State: AOJu0YwPT1re0l9EjajzYgThxVweRSiD5s+HC5rjAFxSqYGNCAJWuQmd
	6007pGCqcP0y/1PjKDLlQCFfpmI2Eq7R1wqbKNm3CAPwq28jiUsNUO9P41unvmRQN98=
X-Gm-Gg: AZuq6aIHmyM/7gtMntnb97t0PZhx2eQmbsIrtwF3t4xOVK2KiH1Fkv/TSJD3cI0fRym
	ZNnDIq0QRA2WnSiOKnvIzmeuKlQNo5N9yNDsPx/7Wj1qWvKF6K7Ka4xja/8I1JbYoj3Zlorts20
	HH5/tIrny+fhLAUDYrlRrdh3B8k2z9uxEd1Bv5Q90Z2/KH269m8cAFky0LvFTLx9R2/aJsfcH/+
	D0MH36/AEPjfTVsqPbOSfiyZanaK6UIphM3MD1oE6M+UgEG//JUJMwWPobORPhCvhi8LZW9EPi8
	DESTvE0N3ZSPPAHzrplKuMlU/QtUIiN+Q5r9Ukd+tjYE5CjoaxyQspVjMOYTPLcgyamiR31gwuc
	Ng7t3lninMn7kpYbFkoKU0ir7wga7s7mZOJU1qAFtErzShEs9dyadYYG6x7OFe26ux3FM+XDtCu
	A3V56Oo83Di2Oc2oz4CJvSQ7gfuY4DEqMt8pR6E3n9S68i5Xx+tJi7DIM0srg88SfR94LTq40=
X-Received: by 2002:a17:902:ebc1:b0:2a7:7872:8f52 with SMTP id d9443c01a7336-2a8d7ee6a5dmr71880265ad.26.1769912110101;
        Sat, 31 Jan 2026 18:15:10 -0800 (PST)
Received: from smtpclient.apple (c-24-16-26-157.hsd1.wa.comcast.net. [24.16.26.157])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a8ea985c48sm39915685ad.22.2026.01.31.18.15.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Jan 2026 18:15:09 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v7 5/6] i2c: xiic: cosmetic cleanup
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <202601311615.10yziOui-lkp@intel.com>
Date: Sat, 31 Jan 2026 18:14:58 -0800
Cc: oe-kbuild@lists.linux.dev,
 Abdurrahman Hussain via B4 Relay <devnull+abdurrahman.nexthop.ai@kernel.org>,
 Michal Simek <monstr@monstr.eu>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 =?utf-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 lkp@intel.com,
 oe-kbuild-all@lists.linux.dev,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <81522270-1703-48E1-B64C-8CF174E1EF94@nexthop.ai>
References: <202601311615.10yziOui-lkp@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261509-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[nexthop.ai];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,abdurrahman.nexthop.ai,dt];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,nexthop.ai:mid,nexthop.ai:dkim,01.org:url,linaro.org:email]
X-Rspamd-Queue-Id: 42F41C49F7
X-Rspamd-Action: no action



> On Jan 31, 2026, at 6:35=E2=80=AFAM, Dan Carpenter =
<dan.carpenter@linaro.org> wrote:
>=20
> Hi Abdurrahman,
>=20
> kernel test robot noticed the following build warnings:
>=20
> url:    =
https://github.com/intel-lab-lkp/linux/commits/Abdurrahman-Hussain-via-B4-=
Relay/i2c-xiic-skip-input-clock-setup-on-non-OF-systems/20260130-054653
> base:   63804fed149a6750ffd28610c5c1c98cce6bd377
> patch link:    =
https://lore.kernel.org/r/20260129-i2c-xiic-v7-5-727e434897ef%40nexthop.ai=

> patch subject: [PATCH v7 5/6] i2c: xiic: cosmetic cleanup
> config: i386-randconfig-141-20260130 =
(https://download.01.org/0day-ci/archive/20260131/202601311615.10yziOui-lk=
p@intel.com/config)
> compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project =
87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
> smatch version: v0.5.0-8994-gd50c5a4c
>=20
> If you fix the issue in a separate patch/commit (i.e. not just a new =
version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: =
https://lore.kernel.org/r/202601311615.10yziOui-lkp@intel.com/
>=20
> smatch warnings:
> drivers/i2c/busses/i2c-xiic.c:1539 xiic_i2c_remove() warn: =
pm_runtime_get_sync() also returns 1 on success
>=20
> vim +1539 drivers/i2c/busses/i2c-xiic.c
>=20
> e190a0c389e601 Uwe Kleine-K=C3=B6nig    2023-05-08  1529  static void =
xiic_i2c_remove(struct platform_device *pdev)
> e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1530  {
> 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1531   struct device =
*dev =3D &pdev->dev;
> e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1532   struct =
xiic_i2c *i2c =3D platform_get_drvdata(pdev);
> 36ecbcab84d023 Shubhrajyoti Datta  2016-03-02  1533   int ret;
> e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1534 =20
> e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1535   /* remove =
adapter & data */
> e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1536   =
i2c_del_adapter(&i2c->adap);
> e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1537 =20
> 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1538   ret =3D =
pm_runtime_get_sync(dev);
> 2557b4ba04df79 Abdurrahman Hussain 2026-01-29 @1539   if (ret)
> 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1540   dev_warn(dev, =
"Failed to activate device for removal (%pe)\n",
> 810199f7315604 Uwe Kleine-K=C3=B6nig    2022-10-19  1541   =
ERR_PTR(ret));
>=20
>=20
> pm_runtime_get_sync() can return 1 on success.  Perhaps use
> pm_runtime_resume_and_get()?
>=20
> 810199f7315604 Uwe Kleine-K=C3=B6nig    2022-10-19  1542   else
> e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1543   =
xiic_deinit(i2c);
> 810199f7315604 Uwe Kleine-K=C3=B6nig    2022-10-19  1544 =20
> 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1545   =
pm_runtime_put_sync(dev);
> 2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1546   =
pm_runtime_dont_use_autosuspend(dev);
> e1d5b6598cdc33 Richard R=C3=B6jfors     2010-02-11  1547  }
>=20
> --=20
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki
>=20

This maybe a false positive.

The following commit switched from pm_runtime_resume_and_get() to
pm_runtime_get_sync():

commit 810199f7315604b i2c: xiic: Make sure to disable clock on =
.remove()

Uwe, Michal, can you guys comment on this?

Regards,
Abdurrahman=

