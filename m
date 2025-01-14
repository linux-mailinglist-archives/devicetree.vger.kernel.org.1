Return-Path: <devicetree+bounces-138462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71940A10813
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:45:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28D293A4B94
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 13:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 886CEC2C8;
	Tue, 14 Jan 2025 13:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="oqCGNPQi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C840C23243A
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 13:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736862345; cv=none; b=DKYDVLsAYkOUc1GDekisn8Kub8Ht/FrTPDaeYjh9PprnR9cV5Io6+Bb17T4OklbCoDSx5DsK4iURuRZ3/0TZMyYrEgh12++YQ8XlNCjC3RoA7xljHuqmIxZr2JTcB8FO/1K6YMmI6ZVJqAHvWPkEu6B/wWHzJYLcYe1L5YaQkLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736862345; c=relaxed/simple;
	bh=bsLMFG+J1r7oFl5VogEQPhlrLhQfw/mx5kqBlLHZbS0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ipWQ3zzGoGPVuzmitUaALsPJUCqjLWl/IWQvY/l8gMIrSSLWIvHIvr+EjpULLGYB/GMar2w+9EXwB9JR+gWbcfcR0QmVDph9KXfcQ7H4bOvbM5sGJ6E5bvM3o69PZ29XkFpbM+/zAPt6nm1V7UdY11EnXbwclRrr62i0l5XjO/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=oqCGNPQi; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa6c0d1833eso355003966b.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 05:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736862342; x=1737467142; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4PPw6FpRN54/gYF6MDe7e/niZ0I7JKIP2WTfMVVEs4k=;
        b=oqCGNPQiisd6mQ+SQ/zHfLetNi5mCh8AAUg2LPOY0RHwO/DDhRPbJxenbv+SjnCpfl
         BKQAx9kSPyghzoC/ysFOLDARBUKIlk8dhDwMqFJZJLKznXT/akD2GYYmboZvCmh+QPlV
         CHFYXKgVH4lW7ilRa5Eb73kPZQjCc6Au4Dlzobna3rNFbyQ2zuXQdK5iRPkHTDGUUMXx
         MBx8coEiZQVkYxsmAUFQ/djJ0Hg2m7ANdPClwiBJK3d7C9PJnxkz5WCu16+MXIQUpfDD
         AUKEBz1CUCXPvirGppe5nocRKxwrlTKSQDNyXuOjFL2ZOlXY/J6/UDYv8ub+WCEURMNd
         3luQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736862342; x=1737467142;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4PPw6FpRN54/gYF6MDe7e/niZ0I7JKIP2WTfMVVEs4k=;
        b=cqfc+d5W8YgVCg0Q4dDW5Rh/A1FCSf/G6xIOs7FKXcmJyVeQfvTju8XVzG9ns54HTd
         SpERKlN6yAbInyQF+u7TXWoa9Kw0pr3hn77tvqk00xEt0P8jyak260P184GL+9pL6Yae
         /TIQnUTgIJfmg2yQeFcsMwShOcudS/+X9Q6YE77eLSQTJgDmmtpKbyUz6Q2eNTs2urWR
         lNmXzkB9sd6lNwWbVumzyb7uZ7f6Q0bI0XUPYn1Rr8ql9QeCSRDzgZ3y1GDTXTPrwES5
         aRMJlUTIWfKHDD+v0m/Ybx6g6PC16aLVexQPVz5OnVZXr6KXBkThXWSsUv0MzpCnn4zX
         lOng==
X-Forwarded-Encrypted: i=1; AJvYcCULNWD2L2VtGmy1aKidSiNjU7xwcbz18vtN1chOkNK9yL/YIvQo0CzDHqqm6T/81+EY96OmcRPvL3zE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8M7X0jOrjVpAk5OWRpzhA7TQVtoo+bPIQShMnfbZ7K9dhxl7u
	6Xe7WlYEzPFgdv2euLdldOcxGceNBINPD8eesOOktAoHsOXPP7V/OsKgPLUXsX/jHRa0+ElQohZ
	9TNyxCS/e1zNRY0yzr0bcpQYA0B2j8/XLe7U=
X-Gm-Gg: ASbGncve/+E/cZrGBncUwF7vMhfyI472boP01FS2rVuEB91kxSDo1m13u+9vGTSgzAb
	xfyEEvxMyifVuWo1oCMeggiJ9AHXnBSVNcQgSQ6H0n/6D3gKIYcBTRXOHbP77yZAd1M9fq6Y=
X-Google-Smtp-Source: AGHT+IE+OIdZryYN6cdQrJ0IANM5C4W1bdAokKQCgKQ7axcCcD03TGdAvMbfbq3c/QMYMEyiOqj9G6Nk1y/s+MCGx8Q=
X-Received: by 2002:a17:907:a48:b0:ab2:c1e2:1da9 with SMTP id
 a640c23a62f3a-ab2c1e22977mr2315552866b.51.1736862341998; Tue, 14 Jan 2025
 05:45:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250111080903.3566296-1-iwamatsu@nigauri.org> <CAMuHMdXdvAYLi-3Eyt=5LTuDG+7rh5fo7VT9kbG1TD5dLLsvbw@mail.gmail.com>
In-Reply-To: <CAMuHMdXdvAYLi-3Eyt=5LTuDG+7rh5fo7VT9kbG1TD5dLLsvbw@mail.gmail.com>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Tue, 14 Jan 2025 22:45:15 +0900
X-Gm-Features: AbW1kva3pu29N9nfRW3UKRrj3KH10M_890YMRUbFgf-FwaZCpfGktJFFoz9G3ho
Message-ID: <CABMQnVJ8bAF29s_=nusZWK_Q57Ru6vGsnW4PL5j0YE_DdqD2pw@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add support Yuridenki-Shokai Kakip board
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

2025=E5=B9=B41=E6=9C=8813=E6=97=A5(=E6=9C=88) 18:42 Geert Uytterhoeven <gee=
rt@linux-m68k.org>:
>
> Hi Iwamatsu-san,
>
> On Sat, Jan 11, 2025 at 9:09=E2=80=AFAM Nobuhiro Iwamatsu <iwamatsu@nigau=
ri.org> wrote:
> > This patch series add basic support for Yuridenki-Shokai[0] Kakip board=
[1] based
> > on R9A09G057H48.
>
> Thanks for your series!
>
> > [1]: https://www.kakip.ai/
>
> Are the full schematics available, too?  The "Simple H/W Ref." document
> contains only a block diagram and connector pinout.  Access to the
> schematics would make it easier to review DTS patches.

Currently they are not publicly available. But as you wrote, I believe
they should be made public.
I am asking about this.

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

