Return-Path: <devicetree+bounces-225574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA82BCF055
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 08:14:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E4D7402AED
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 06:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E8220B21E;
	Sat, 11 Oct 2025 06:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdtNQNQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14A3200C2
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 06:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760163277; cv=none; b=cTOvCqGnjTK1VHKZfcePXAsSyTbgacvNer3eB8YwJrEN4ZgZMKPRTFIURSHCuAaSQ0o+d00mcT6TisRVLPF4a+htLzH2hM1Oh/2o5kD3dLGBXf1aUqU78T7/bMJke0unC7Wf8vRrt2f5/SNYFzOa6CmYNNIfC5KLLEjtpKBxhw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760163277; c=relaxed/simple;
	bh=UTjaf42LIjeTyo3K/jv+vC5L/FS5z6g6VwMZQWcCu2s=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=YN/d84eKj12ypJmJA5g05CjOGC8TXncySSEtnsmHRAYQ3YLz+G95S2Gwsvl+Nc+ecFPBV0dI84hMJNAjY7d4CZUqmrW9xM9UiC1CjSxlFHI3SItqg5IsmvcsFCBshghet+ooTL69AZQEE5oShmOrWJnWxUIdoSPOIXA8kx9PPAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdtNQNQT; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-639e1e8c8c8so5335447a12.1
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 23:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760163274; x=1760768074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UTjaf42LIjeTyo3K/jv+vC5L/FS5z6g6VwMZQWcCu2s=;
        b=mdtNQNQThZ4sxuHyBDi+G8X5+WwqGgYXWXMtxYtFWjVnbfznjvDdI1XnCAbC0HpZRP
         jU57IeaO+oxlaZrS9/I39KG6Px3ZZjz7mtf5yAVFJoDqZd0UP/FBhK16Pi0r1RbLz/GA
         nGOyIhifO1VkjYtGuXT1Cf+dUBPwi8Dw77rrd7D5ghU/gtjkNzfOnP+Otpcu5aPv3UHR
         mNFV3h1hG86LG1PiY4KLWM3GDHlwiqodgYnRqdnWDIhXpODdfFF63yjg7r9qNfmWbEtZ
         ZGfjOzhCEVYS3gEDSzDTtKvq/Rr1hdXTp7SWMqWzssizMwKbFSjaeREbEeF6e75omdox
         RsIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760163274; x=1760768074;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UTjaf42LIjeTyo3K/jv+vC5L/FS5z6g6VwMZQWcCu2s=;
        b=B9pC5JOqJ8OUN9rHT6OOJK0lDeY3QJa9zvZ/ojnlYNgRwomvhYrT9GyE4P89Eyudsc
         FW1srbH+1B8IYvrFHEMaFq+jc0dkmTk02MiWRRRaifW5HINjmQe7J8JtjvovBAyYMCUX
         TIswwvJivQlMg6BoNgaO17w3gxP/FHSp2nTq5uvC0vHaA/M53uzS6oBCXG08jLbGxV8J
         ppa7pSD1RNSQ19P079i3+HxgrJ+lP3sjnD/xawo4JmnsVRQ0bIfMMfznHx0pKl6xcUgZ
         /y7Lb7URSvZ2OxTJgH7S9Fw2ln27Gk7c+tjW0I9QRzu7BEvYysm3spnelp4yIqa5OGSx
         TGzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJl7bYs1rs+HaT7q/VOJ3Fjm11HMLwZlrS02YNJ80ES2QP7LF9bpn2jT8gAMbYsfrI6MXJ66usJ8rA@vger.kernel.org
X-Gm-Message-State: AOJu0YwNQzQNCrIf+CqPf2KELS/k71yD/vIK9Pdrrm3IdHH4oF3dYBqs
	VCGOCiUDjsofSjbGgPekRsnwFS8IGbBJKWKWcFybHLa+NZ+FFDGELKIe
X-Gm-Gg: ASbGncs90+4oBndsJsLdcGQ1qgUj4n0Lia+lID4hrkXRNETNUAlyrabUTYD1wSrhS+8
	Bx+ERr7q1kXfYJ9I3mrjnuBKyAxaOxGCP47254GOcxPKR36YksvelzyiTHz1s3Iys7dxB9ptfim
	xkBMf55kr8cnfFwp29iBW+gs/whNo4eSR2vWb7qxaOHKPm30WAjr8hEUuwPc+U5W75lZbDbbNUM
	qAkyGQIkD7IouAszR3MdojqxUAwwEltj2NEAvwu0cFZHyjMtC/hsDzZRU8W3lO+wsI7FTi/0HUf
	HOIHXrdXVrdbO0yjk5hnj5SNWmyCcZeEZ8ARykJ/AbgCLVVqFDnGRp8QKzX2BuP3y0nVPxMznWN
	nCSvyH4BeAMVyQ6ntp6s9C3AN7/wbU9n9k/lekx5R6SnWsDUv1v9Hzl2NZZkOoRFQ+Zb/jtZh
X-Google-Smtp-Source: AGHT+IG9SiURtmUDXsCj0m5qBSvP5bZNzNwwIMu2kUT/BVhDH/YQM5FZneBmwBkIJ7WDhNDUvCu1Qw==
X-Received: by 2002:a17:907:9621:b0:b4f:3169:3ec3 with SMTP id a640c23a62f3a-b50aa9a25a7mr1564821966b.21.1760163274281;
        Fri, 10 Oct 2025 23:14:34 -0700 (PDT)
Received: from ehlo.thunderbird.net ([91.187.204.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d951d210sm414765366b.74.2025.10.10.23.14.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Oct 2025 23:14:33 -0700 (PDT)
Date: Sat, 11 Oct 2025 08:14:30 +0200
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Joshua Milas <josh.milas@gmail.com>
CC: Inochi Amaoto <inochiama@gmail.com>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, unicorn_wang@outlook.com, rabenda.cn@gmail.com,
 thomas.bonnefille@bootlin.com, chao.wei@sophgo.com,
 devicetree@vger.kernel.org, sophgo@lists.linux.dev
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_2/2=5D_arm64=3A_dts=3A_sophgo=3A_a?=
 =?US-ASCII?Q?dd_initial_Milk-V_Duo_S_board_support?=
User-Agent: Thunderbird for Android
In-Reply-To: <aOcVeFTUx_Qn85cs@sleek>
References: <20250927173619.89768-1-josh.milas@gmail.com> <20250927173619.89768-3-josh.milas@gmail.com> <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui> <ad86009bff38ddae0b291d3edbf958ce6363ece2.camel@gmail.com> <aOcVeFTUx_Qn85cs@sleek>
Message-ID: <55E9C068-3ADA-443D-BC51-1D50B09219A1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 9 October 2025 03:52:56 CEST, Joshua Milas <josh=2Emilas@gmail=2Ecom> wr=
ote:
>Hi Alex,
>
>> I believe, gpio is long time discouraged here=2E
>
>Does this mean just the '&gpio*' entries, or other GPIO
>items like i2c and spi?
>
>Thanks,
>- Joshua Milas

Hi!
I referred to "&gpio*" entries only being deprecated=2E

