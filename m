Return-Path: <devicetree+bounces-217841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99249B5960B
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 14:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8BB41B285F3
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 140EE315D56;
	Tue, 16 Sep 2025 12:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="z7NfGuaM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17EA315D37
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758025349; cv=none; b=Aj344D0ax85LQJ68C57Js3+TIMKHdfD4i8FBR4vihDpm7FpmUiHaMGcqdnDvwGr0euHwjVUR+DVq2iAB7HEA80kDuKUKqh+iHbFLWTDdVnZ/qHheLY6nrdw45yvpoDj2Hcl5GxX14FPi54c7g7j4mzuj6LatS1S54oQH3p6Y1RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758025349; c=relaxed/simple;
	bh=fqM/JGxWXDvWSyz6fzJ8EaAgZz1wCn9ix0KOBZDkuEs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cw1favEfFQLhnxhqF4CR4ilU2QYmIZ5mh/CC1UMNX80uYcYTCYqmNufiYmPeMYx7uEI35Rf1Nsa0H7vkBFPh8snNvwBQ4HssoGWQmegqS0h66ZG9uUN5OVR9/PqoZu+co7AtIZV1EYoXKnVa5Kc3/IoRS7JjyNX83PrvR+Sp0Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=z7NfGuaM; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-24458272c00so57240085ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 05:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1758025346; x=1758630146; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nLRhawfUOnzg917Vpj9Yo7NT/ncmZFWuu+3t8quChCY=;
        b=z7NfGuaMEujffC2agRNlu32/G1h0DuHPIXz/M39LNU4eP9bKAphTXYaMYqTcYjWPIa
         pi4FZsZpYG93Yfgk0gaN1gK4MFJ4Hmx55caMZiGpfbkIz4mTvDvZcpAk3B7Fj4KaRDZU
         UUFu27h/n1yjfh+7jOHebYPR7z6GZYGBz3iwpYkBGsAMTizyRZOkmqYVTQKni/nL38G2
         vv8+EYGgWbTQYiFLlDalG5Z8Q9lMWT97aHqZpZ+9GDxEUOzOGAY3YokiXnJMbumdVOll
         9gnBKk7PYJx+Mq6ipAg+05+WGXoDbyYQpbj48x7+h9drV5fpCVYI8CQwM246RW0dNfPK
         Mvww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758025346; x=1758630146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nLRhawfUOnzg917Vpj9Yo7NT/ncmZFWuu+3t8quChCY=;
        b=vAkOsjfcOlKzVGzoPNG7PLY7nD/plc6GMiEt1395oM9EPwQoQWYTjMRNY4nO8rN32N
         r1xIKlQ7DpUdyY7n2OlnAuvmAGLl/nqKs5X0DL7Ii5jE4FG6qpxhePlmS7pItXtpP44P
         dcWNLyDwiybK0cg4eby+zTTiKKCrkmb0LLU+Oac+26waJ/l3i+xtS/0Q4DHDdkCOA4eA
         Qe2bRIiMRp99fv8FNaQVmv/Yan++ADdhTTiFOS7Y4NF3ZAjLcOMPa7woflecBFV2PyWf
         /mAFoGEcSZ75S08gFf71lee0dSCTE7rD6FBspi21e/48x4aN91X7hOBawASKI/7u9gH6
         Kv3w==
X-Forwarded-Encrypted: i=1; AJvYcCXDCQprkufH006fyXTi1Efx7fsrEVlE73uYnx/1G4jVZgw7Aon0jdi1gzJEUrUVz4f7x5zSR/PQv6oe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4WbMaDCb/B8/l4K1Obm29IDKIiUnPLhX6ipg07WIAUwog6Qv9
	c+3Jg63D8OWNOuN5oxU1Ognl3VqtR5aaN2/zwzf/Ej5WpJPCwKzzdE5Ti153pDD0VQ==
X-Gm-Gg: ASbGncv7valtryDt3xxhv8Y/1b2T/UcS5JhsXbw/CEnTZyMIKTwnenLK+B5EEhF39ie
	8TAC8AMOKbpMMqQZn0M2GpBRkfRPVMaD3QVOV4IE/v3DQ3PRd8WR96KLQfDOpJBWArrbhXsxMRf
	BofmqVYj3sWqMX3ibOamaxzpBsOoPt7wOl2YmUOEXHbA2scMfpMAIUGzayqtHk1xl+ec0Sq0jkN
	Iz16B+H84jLpzzhAyfgVJ+B5LGK7Tafr1sQ1pAl/f/XjCd7IyBaIQJEZvUEP6MrXraxvxWCSWhD
	t4cOXjANsLq7aZ1mOqregRMAbyku2kFsXb8RICVj00E+jpaRCjAT2y9Km1Q5MoX9LUGC6jGdrJp
	zQsGAQLQTY+y/yeD0VZS9Zo22uyQ12boWYRMlZVmvRBvZxsF440+qRjFmmyCyZq/Yfcb98Lfn/G
	2vS/y4opsnsh8=
X-Google-Smtp-Source: AGHT+IHmBwkxP+Zhpk5HnX/FJ08tuJ9zeLX2LjBddCIb0Zkm2NtUoGbkRB7285Cr8PepXjQeRcICXA==
X-Received: by 2002:a17:903:3d05:b0:267:f131:d657 with SMTP id d9443c01a7336-267f131d9a4mr5560315ad.33.1758025345718;
        Tue, 16 Sep 2025 05:22:25 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3f:4017:94e1:4956:54cb:7de7? ([2401:4900:1f3f:4017:94e1:4956:54cb:7de7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2656a9caf7dsm66844215ad.133.2025.09.16.05.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 05:22:25 -0700 (PDT)
Message-ID: <397483db-91de-4ff2-82e3-52ae785bc343@beagleboard.org>
Date: Tue, 16 Sep 2025 17:52:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Device tree representation of (hotplug) connectors: discussion at
 ELCE
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Herve Codina <herve.codina@bootlin.com>
Cc: David Gibson <david@gibson.dropbear.id.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Jason Kridner <jkridner@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree-compiler@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Andrew Davis <afd@ti.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250902105710.00512c6d@booty> <aLkiNdGIXsogC6Rr@zatzit>
 <337281a8-77f9-4158-beef-ae0eda5000e4@beagleboard.org>
 <aL5dNtzwiinq_geg@zatzit> <20250908145155.4f130aec@bootlin.com>
 <aL-2fmYsbexEtpNp@zatzit> <20250909114126.219c57b8@bootlin.com>
 <aMD_qYx4ZEASD9A1@zatzit> <20250911104828.48ef2c0e@bootlin.com>
 <aMebXe-yJy34kST8@zatzit> <20250916084631.77127e29@bootlin.com>
 <CAMuHMdXXi97HN-G_Ozbs7vc141GmbMTPD6Ew6U_0ERj5wh6gvg@mail.gmail.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <CAMuHMdXXi97HN-G_Ozbs7vc141GmbMTPD6Ew6U_0ERj5wh6gvg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/16/25 15:44, Geert Uytterhoeven wrote:

> Hi Hervé,
>
> On Tue, 16 Sept 2025 at 08:46, Herve Codina <herve.codina@bootlin.com> wrote:
>> On Mon, 15 Sep 2025 14:51:41 +1000
>> David Gibson <david@gibson.dropbear.id.au> wrote:
>>> On Thu, Sep 11, 2025 at 10:48:28AM +0200, Herve Codina wrote:
>>>>  From the addon board point of view, the only think we can
>>>> say is "me, as an addon board, I need a connector of type 'foo' and a
>>>> connector of type 'bar'".
>>> Agreed.
>>>
>>>> Also, at base board level, statically defined in the DT
>>>> connA is described (type 'foo'), connB and connC are
>>>> described (type 'bar').
>>>>
>>>> The choice to map connA to the type 'foo' connector expected by the addon
>>>> and the choice to map connB or connC to the type 'bar' connector expected by
>>>> the addon can only be done at runtime and probably with the help of a driver
>>>> that have the knowledge of the 3 connectors.
>>> Agreed.
>>>
>>>> I have the feeling that the choice of physical connectors to which the addon
>>>> board is connected to is a human choice when the board is connected.
>>> Yes.  Although if the addons have an EEPROM, or some other sort of ID
>>> register, it may be possible for some connector drivers to probe this.
>> Right, I think we agree that a driver is needed to help in the mapping at
>> least when multiple connectors are involved.
> I agree you need a driver to read an ID EEPROM.
> But why would you need a driver if no ID EEPROM is involved?
> If the connector types on base board and add-on match, it should work.
>
> Gr{oetje,eeting}s,
>
>                          Geert
>

How would a connector be disabled in such a setup? I guess maybe status 
property can be used while applying overlay to check if the connector is 
enabled. But maybe that goes outside the scope of fdtoverlay?

Also, I would assume that most such connectors would want to provide 
some kind of configfs based API to add/remove addon boards.


Best Regards,

Ayush Singh


