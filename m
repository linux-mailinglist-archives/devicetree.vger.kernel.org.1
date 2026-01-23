Return-Path: <devicetree+bounces-258937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3KU5Ellwc2lNvwAAu9opvQ
	(envelope-from <devicetree+bounces-258937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:58:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BD1760E2
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:58:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 263DA300A321
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4BAA2E339B;
	Fri, 23 Jan 2026 12:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N5ZkSIHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028DB199920
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769173076; cv=none; b=JFXD0PbOl+cNpyb/JH1ZKxiUkY2Bh8/kqfwN2DHG9G5ESLtT2/r3F1JGtryvQ9iSBSlXF+wgNt/X1jux+ZzPfxigp89HYHsu/ZVBYZKwJjA6+2wNnWzT5DIRV+Uj6e4AfbIOgVXFn8aJb8x9Z91oHm0wgfrRTucMYU/HuxZT6y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769173076; c=relaxed/simple;
	bh=rWBVAuGP12n99DDYOBAxK5U9/YbnI5jCL2Vby+G7PXI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=orFvSFk760U8RmQIotgAtZazP1BsDH6ydgaG86kNE+OlfiE7O6VmUraPk4gc87ERfGxvd46Pp6dJsrgrQ2RveE9pu9tDoYPI7GT4HXWxlbQp48iQtf9I/WNzfaGcBQoB3NDAHYsbdFA53PEXgT8zrDTOJIsXCaikBn5W1WHWJeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N5ZkSIHD; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4359a316d89so1741955f8f.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 04:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769173073; x=1769777873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=23k0nL5or/g/Ncq6j1GNEPEPQgp73ML8YdFMHnjI+yo=;
        b=N5ZkSIHDhZPBddUJfdU9EfuCEnHl8TiV2V8NQFHhiuygKucbvSurg0S2oSgUfnwTfQ
         qLm+ltiHKcOC85AQ925Ih31PDx7HMMcFba3KCxCyKNQwgGQV9PmiEaPqqQ9a6kiwoi4L
         y9wkSfF4KjJvjY9cdr5EtzKdbIMIiIn/P8XDnPQmqglODAplxRxaE7blJlIGFrkWt7rb
         3wD5Z5VCpM2oUrUKVeAdOPx1EJFcGgGb8y7X4Yox4avMEFcWztUyUQZ6s51krOD9II0y
         QxENnM+GDtR+bKUmMwKZoMprfbQg/wZsYH//n9Iwms3OC2ov6VpXBK+vFdNw0I4IuALF
         VOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769173073; x=1769777873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=23k0nL5or/g/Ncq6j1GNEPEPQgp73ML8YdFMHnjI+yo=;
        b=bsCbquWNA+wLMffbxwbaagzKKpyR7bygtVsnqp/9Fc0Wy67cszoPfdBxWAi2ZxxPXP
         GYr9enj0UwyaYzhKHMfGcyJQ5lEMWuZQqZPbmO6L9edDsFp7PUXPUGY4GN9463ftKylg
         UVVdRVr5biWnNgFLs3cS9/reNZSxDp7oG5IHkCd/3MMljVMw+dP7bDwFl4x8A4/iIRAM
         ubIZR1PIS6zKVOLsEzGZcwRGC5VrV6zgV0C5MsfgMx1kH8eeavbjheyo9JCOOB5PxQFQ
         tAORATPmCsk47YS7+jWZPutKGgPGBihAMk0TjMFlCpAYy8lCFIv6Uu6WVy6adTR1Z6cq
         zbEw==
X-Forwarded-Encrypted: i=1; AJvYcCVvEgp+Ezzr6oa5zTl6CdDEblsVcLCPaPWtV268yMsm3AMjOO3lc4d+b4P4M0FV/J3fk0QTQLHnXdMl@vger.kernel.org
X-Gm-Message-State: AOJu0YzUnLkjn+0IoULWllgnxGW7SYketguqpoG1pfkw+6zBQNJghHAT
	FPkVoraI6O0G0Jy4lpngACqrElYqqbW4wO/Xp/Kj0oPnISTxu3q7ex9+
X-Gm-Gg: AZuq6aJik9Ebx+rIy1x2DpN+TiFpb4EG2lWEgCvAFZIvu7VkYfMNtbko7McB2Fw31VT
	3BE/YKm75OaZXfnjmTjaYMaMxElCTznDJZpdnw7b2WBQ9VRfqKwvwaCITZ3r5it3MRvndHi3Xem
	sh2swKIRXmLGw5NTR2zTWu+E10aPc+Np8LYxR7N7DX+Yt1d0fNh0k2lZ6c7EK/YRl8WZceCHMI/
	XZWnIBUxxu/9+g+zDAqzRGIDHbx5Rns3NBRWr0gcTgKHyv6Ji1y46G8vGG9wHr4JdgrdtGS/Ehi
	3q1CZ2TRWrCniIK86DlQN0yAtXXeMX0Z222DS17teA3TSNIPT3u8abZqcUvp/YmNdLISAkR9lBz
	vrZdM1iUIMjra1WbFpMPW+SSstaUQ+X1dkDtFPj22iqB1R8GCEQ4EXrqrizs1Fv88PqwPxKobc3
	6Qa3WSeU84MBbJJj+ZGWV3bQguIEtBE6d0wFp8Lvj9z+c/hF9nc5QJiZ/l1/0=
X-Received: by 2002:a05:6000:22c1:b0:42b:38b1:e32e with SMTP id ffacd0b85a97d-435b160587amr5594957f8f.46.1769173073087;
        Fri, 23 Jan 2026 04:57:53 -0800 (PST)
Received: from flaviu-Aspire-E5-572G.. ([5.15.64.173])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e717cbsm6573336f8f.24.2026.01.23.04.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 04:57:52 -0800 (PST)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jean Delvare <jdelvare@suse.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Flaviu Nistor <flaviu.nistor@gmail.com>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: tmp102: Add TMP110 and TMP113 devices
Date: Fri, 23 Jan 2026 14:57:47 +0200
Message-ID: <20260123125747.4270-1-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250929170730.8285-1-flaviu.nistor@gmail.com>
References: <20250929170730.8285-1-flaviu.nistor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258937-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[flaviunistor@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[suse.com,kernel.org,gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: D3BD1760E2
X-Rspamd-Action: no action

On Mon, Sep 29, 2025 at 08:07:43PM +0300, Flaviu Nistor wrote:=0D
>On Mon, Sep 24, 2025 at 19:12:26 +0100, Conor Dooley wrote:=0D
>>On Wed, Sep 24, 2025 at 08:55:39AM -0700, Guenter Roeck wrote:=0D
>>> On 9/15/25 10:18, Conor Dooley wrote:=0D
>>> > On Mon, Sep 15, 2025 at 08:08:18PM +0300, Flaviu Nistor wrote:=0D
>>> > > Add a compatible string for TMP110 and TMP113 devices.=0D
>>> > > =0D
>>> > > Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>=0D
>>> > > ---=0D
>>> > >   Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml | 2 ++=0D
>>> > >   1 file changed, 2 insertions(+)=0D
>>> > > =0D
>>> > > diff --git a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml=
 b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml=0D
>>> > > index 96b2e4969f78..840b5306a8cf 100644=0D
>>> > > --- a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml=0D
>>> > > +++ b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml=0D
>>> > > @@ -13,6 +13,8 @@ properties:=0D
>>> > >     compatible:=0D
>>> > >       enum:=0D
>>> > >         - ti,tmp102=0D
>>> > > +      - ti,tmp110=0D
>>> > > +      - ti,tmp113=0D
>>> > =0D
>>> > The driver has no match data and no compatible based decisions added =
in=0D
>>> > your patch. Why is a fallback to tmp102 not suitable?=0D
>>> > =0D
>>> =0D
>>> That should work for tmp110. However, tmp113 does have additional regis=
ters, and it=0D
>>> might be desirable to report the content of those using debugfs. Fallba=
ck for that chip=0D
>>> would work for now, but that might have to change later if support for =
the additional=0D
>>> registers is added to the driver.=0D
>>=0D
>> In that case, only the driver would need to change not the binding.=0D
>> That's fine though, of course.=0D
>>=0D
>=0D
> I am a little confused and I would appreciate some advice if I should lea=
ve=0D
> the series as it is or send a v2 only for documentation and Kconfig updat=
es,=0D
> droping the binding update?=0D
>=0D
>>> =0D
>>> Guenter=0D
>>> =0D
>>> > >     interrupts:=0D
>>> > >       maxItems: 1=0D
>>> > > -- =0D
>>> > > 2.43.0=0D
>>> > > =0D
>>>=0D
=0D
After some time (probably to much) I went through the patch again and=0D
based on Rob Herring response:=0D
https://lore.kernel.org/all/20250922162004.GA199858-robh@kernel.org/=0D
and a similar example for sensirion sh20, sh21 and sh25 sensors, =0D
where individual compatible string were added in the binding and the=0D
driver even if there is no match data:=0D
https://lore.kernel.org/all/20250908-sht2x-v4-3-bc15f68af7de@gmail.com/=0D
https://lore.kernel.org/all/20250908-sht2x-v4-4-bc15f68af7de@gmail.com/=0D
I think that the patch can stay as it is for the binding, so different=0D
compatible string can be use in the device tree in order for the real=0D
hardware to be describe.=0D
=0D
Flaviu=0D

