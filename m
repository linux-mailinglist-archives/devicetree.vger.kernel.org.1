Return-Path: <devicetree+bounces-249893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D3666CDFFC0
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 17:56:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3982303F28D
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 16:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1D632571D;
	Sat, 27 Dec 2025 16:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RlvzTBex"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C6E325717
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 16:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766854454; cv=none; b=V/13b/anoy/n03TyN9Gc/8kf3dJmQ7ytzNhXSZnmV8LWMZdt+CyY6GEIc0WnsZPItabXlUe7VPhJPoz0yHlzMclMhteV7CsQ/Wa4nQTSgwSVOyuFUnrb/BZF+HYCRoVDKW38TERiKe9NwJijxHFT1JbUzXt6Oi8eJRt7mNX+xgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766854454; c=relaxed/simple;
	bh=fEYdGJTBXajaUrNAsrK5tA6o0RHNKjo0+Wl1GKYTiuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wdf6i50qfjRG88JhXXul569UwBSDZQMCTxWdLOtc1LIadmoYwrCJOVKOYiUktovBQxrKPA+UmjTK8Xw2VOICuNSKOOhM9mYo4ixhTNoAzyeV48BJf/WFb1vzwmHSXXvNPSEAfBgMXaJSClQ+naBsrTpqm5w11ivwgfvBYTv7kjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RlvzTBex; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64b9d01e473so10747459a12.2
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 08:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766854450; x=1767459250; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fEYdGJTBXajaUrNAsrK5tA6o0RHNKjo0+Wl1GKYTiuI=;
        b=RlvzTBexLB8vAH9j/twWw+A4hf8zyUwpSag9hVrZrRdef+TBEGjtluQ3iLfRX6EnHx
         wtDCy/eKiNCXiufxq8HszBiil+7q3FSdE85cP/wRuLKi+XApPDz662t5ZvIQMBAcBOma
         Z5UR1B4OmqD7WJbmd3zQWk9foHN0RnrhtqoKjYxpyJFpWdAiRsXRraGCEEaNpJxWpMed
         pK1GUSb7N+JRj4sJzZ2Bxr9kp2r00KKWSSRhaMBFr+IWxrc0ELvPEtR6rjbAojNe6Pt3
         pqY/oIvwBnYRRmbg65ek2wyq6CGslxXZt3/cnDfm7I7S1GYYHAGH//MAs5TV/NrVCPTT
         tnMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766854450; x=1767459250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fEYdGJTBXajaUrNAsrK5tA6o0RHNKjo0+Wl1GKYTiuI=;
        b=KetdBIT6LXjudGcq9vk/AD57SuKxzV1hFYR+deCMOlR05EsPzKIfqwiqF6Te3hKwKU
         JDeN3t/SDMRcJ1gG9KUqtWbROCxWY6Cw7waCpI45LL3WtVJnCj5sEb9chcR8W+bGRQb5
         ZGcWCb6sMMyC3W95csjrkMH+HCQp8DcFYSbbCgM9/bqy42VAzHVz+66eg1KK4z5WMwt+
         DKtmL4Ru3CB8NKPxASb9EEBoWA8o2QocMUuSeJG7ntpr+VhgchcUkFHOnSKQ8cB64mnY
         gtmOK69KfTYK2eHtvrTjNAHssvGqUKVnPMA98hzFtrCi7/H/0BNzASTOpdOssXqbxgN+
         zCQw==
X-Forwarded-Encrypted: i=1; AJvYcCWLL4AZWMHxTp5+6l8GjNxNfIjgP3utch4eO4rVpD3vCCvOfajD8XelEMmk8R2IvUxearl+ka53rbll@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwh2UBC9NgNL5YWZnWNKuapdGQsubBtYGiMK0WGcTednDTSIcW
	DsJO4ftDDMqW/FCzJIu5EuZH6F9QaUTA1KRbLaDmG83/UqMC1ys6ZJUJtoOufCq92KuMCSP+5PD
	LierjsFnDGh8Clu4/xK1uOBSXSLSNOk0=
X-Gm-Gg: AY/fxX7KtdamO9iGmfN5URkPm3scgjIv4+wwc7sI8Rh9gSSvF6q6Y2ToDoNrToLiH9Z
	Tj8MLwhDLSgSPjWVadUxMRhj1RPI5djl9FjM79GtcoL7+XOPNyN8qphKylfHdo1U9wNsATDCkqK
	COPDJp0WVx0wNSbPKs7ON2EFOziYSKLmp8vJfRmeGMbIUP+BL0UpZEVS90Oy/tsppEKaYfxd7+O
	0k/LVgxsz+G4UfavxwyOU29GrY4BdWSf5cbw2xe894uTuBL6uKPAVAds+Qe+W9iAtZkPmESlXcD
	ofOpotYYSJ5npuXCHjL/DmJxo7neF7lEo6UyQKh2Er+1Vqhdn0mrNbHGyJCl/qsi2f27oeM=
X-Google-Smtp-Source: AGHT+IGzhdKUm2kUh6gBHGyRHPs5NkLVgUF1gZqV6A7v61VPEy5XWWzE5biUv9XfjwATbwqlgPYDe2MvbumQ7GhMMY8=
X-Received: by 2002:a17:907:3e1c:b0:b79:e974:4060 with SMTP id
 a640c23a62f3a-b80371d7db3mr2912543166b.48.1766854450421; Sat, 27 Dec 2025
 08:54:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765900411.git.Jonathan.Santos@analog.com>
 <43504217d5b3c32da946bed0ce4d81e216f7c7c7.1765900411.git.Jonathan.Santos@analog.com>
 <20251227155525.6d712f42@jic23-huawei> <CAHp75Vd0n+aTkdzMC53y9LrPW4t0mckpzmmud4Ez5gXbAdLeVg@mail.gmail.com>
In-Reply-To: <CAHp75Vd0n+aTkdzMC53y9LrPW4t0mckpzmmud4Ez5gXbAdLeVg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 27 Dec 2025 18:53:33 +0200
X-Gm-Features: AQt7F2o5pKu3JZDHtQuLDnXH7bgPd_iJLkPg7pb83Ops5_qMZGPLToR05RzuF8I
Message-ID: <CAHp75VfA3Ww2N9CA-gUpko7=s===s6DDM2ik=w2NJ=mUQqo4XQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] units: add PERCENT and BASIS_POINTS macros
To: Jonathan Cameron <jic23@kernel.org>
Cc: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, lars@metafoo.de, 
	Michael.Hennerich@analog.com, dlechner@baylibre.com, nuno.sa@analog.com, 
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jonath4nns@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 27, 2025 at 6:52=E2=80=AFPM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Sat, Dec 27, 2025 at 5:55=E2=80=AFPM Jonathan Cameron <jic23@kernel.or=
g> wrote:
> > On Wed, 17 Dec 2025 02:52:45 -0300
> > Jonathan Santos <Jonathan.Santos@analog.com> wrote:

...

> Also there are pp (percentage points) and others like per mille
>
> https://en.wikipedia.org/wiki/Percentage_point (see "Related units" secti=
on).

And given most of them are in the PER* namespace I would use those
names instead of variants.


--=20
With Best Regards,
Andy Shevchenko

