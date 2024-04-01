Return-Path: <devicetree+bounces-55157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A882894598
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 21:40:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 807B01C215E6
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 19:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 797DF54772;
	Mon,  1 Apr 2024 19:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yjSW9Puh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D91053E1E
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 19:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712000432; cv=none; b=pYezYA8dg9nt2uz1pnrQ9kHQpmnLMIlWOz1hwGTc9dsAkvIY3nH4/y/+gmN/u8jMysHMX4/qmT082iqVNokmDcrthivkxlsdIwpRQ3MSKR0s8XDGa7/78E9fjRPSlwPUccxrQyqJ83tK7I3VNlUcfNVdBSQj2/vnDe++6S9MNGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712000432; c=relaxed/simple;
	bh=l0Z6BGOa6aQ3LzuruVpcOIFCOQoft5ykkCp4c+D9ca4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lA3+s8FZ8bfeKcK0QX/0S2f/dXbhqavzYZagZbV7e/4KcBWsGrqa17OsnCRjyahKDo1eQTjL2tnUxCtNgYtn4sXCkbzSkOdb0DBZmR4q6sT+5fNM8PfCfVfClNO4kCLzfsHwZVwqlnURf18FxK/Tl13W+myeauYoWdvd6xQvBn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yjSW9Puh; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d4360ab3daso56445161fa.3
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 12:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712000429; x=1712605229; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0Z6BGOa6aQ3LzuruVpcOIFCOQoft5ykkCp4c+D9ca4=;
        b=yjSW9PuhLmF2rczI2BlI6wkDGe2gcdZiKBQZO5vvvMxaJAOQPaYCcYC9O/Yh+00cBz
         uEGfmWuPUfWJzUCOpkwr+tuA2lxbxpMUGCdAVtetDeZOL9jeSwDWbi2WT2BFea2bjyW7
         lVIwx401xUi8pIPtTFKAyJtVz+jhfdTMFFuKxNYuKKCytgYaKY5UaCrWTFAbczMAt2C0
         ka1y1wf9l8h9gleVWyy/818gGpe8fcykMMqRP3+D4PnXzH3Io89LXKsIqTZq8s9M56r3
         kNqIxTuelmjl1E8NWNRU9JlVMAl+hJq+Y13Ke90XJjFeSS2Wr20KALFJhH7CxztyAYRO
         iydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712000429; x=1712605229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l0Z6BGOa6aQ3LzuruVpcOIFCOQoft5ykkCp4c+D9ca4=;
        b=WczHUCy/UTibgi+E+mpyR44uOTvrQJ5PKSndKwXB6jVN5PcRPFXQQ28utAtF8VIKyb
         CHg8Stt1pwAb/95y1RcyAYl1VLAYOfBxfro/YWiOnhUJt6Zvusk6j4+gWQvqtsQJx7gI
         XxCtIW3bHXzYkBrJRwD/8UB2sLgPxO8/h57WojG3EgAk44/3fV6+Xrx3dIufB8+o4PEq
         dPGQdLG4ZsBqS+aF6lvimndLBu4VvXE5GVBo17OImghuuzrNPQm0ngqZ60T1V3yQYsrP
         Ugb1j9EJBONQRmqoJeZR+qqI6gw4VchZXI6g75p79A+DmWQUbCa7ETp5ZNqME9THRY3P
         r0AA==
X-Forwarded-Encrypted: i=1; AJvYcCVVd4d4zmDpcFq3vB1NYANpP7SItITApbUYmRsgUDEetVjlx+zp0ojuKXNhlbhjdaRjbL2Wd9/J7CJgxJKXtu+faSO2AjyaKq7WkA==
X-Gm-Message-State: AOJu0Yxpvr+YhH3egCfMHKwqxn0HU0bEL5ONx8B4J9rTylNkwK49q1a1
	G0nPzrBT9K7Pjn+ha8Ti+U2lY76dvdhUbaBIz/rK8z6FgIbqRIe5o4nkT0q1gzlz5dXUin9W48+
	YLDOPCpNjGxo2Pv+CFXO6k69LaH4Cwx+Vga1TzA==
X-Google-Smtp-Source: AGHT+IFl6bzue3XRZCycrKbfasb0UTboZ3/Gvf+nMAgRiEG89W5cAu7gDepSOQQdI6cKXe1iJqAsYE9kdjEaNXBp2/I=
X-Received: by 2002:a2e:7a16:0:b0:2d4:d78:b05a with SMTP id
 v22-20020a2e7a16000000b002d40d78b05amr5775375ljc.19.1712000428742; Mon, 01
 Apr 2024 12:40:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-4-34618a9cc502@analog.com>
In-Reply-To: <20240401-ad4111-v1-4-34618a9cc502@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 1 Apr 2024 14:40:17 -0500
Message-ID: <CAMknhBH8UEPSyYiyMPo4en4vcjnJ7_W5q+iJtMOhdp5eNmP=8w@mail.gmail.com>
Subject: Re: [PATCH 4/6] iio: adc: ad7173: refactor ain and vref selection
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
<devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
>
> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
>
> Move validation of analog inputs and reference voltage selection to
> separate functions.
>
> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> ---

Same as my comment on PATCH 3/6. We would like to know why this change
is being made.

