Return-Path: <devicetree+bounces-78445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C02B9124CD
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 14:09:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95FCAB2467B
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 12:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A594173357;
	Fri, 21 Jun 2024 12:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="jQzgP2sN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91816495E5
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 12:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718971763; cv=none; b=oyX7rvSEtvnWX/ijHhhb7iD7R3nJ9cdbUb+v7Vsu41a5lsDWwXVnT0MCPpgt88q8n4/7JI9pduAi+ooP1Dqs97YGg8BiucyAHKdrf2hotFYZDnDOOKfBgtW5MPtNEdcrAQkVEMIsh+UJaSP7svtxGzpmKRXanm9HCUV23fydi4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718971763; c=relaxed/simple;
	bh=f9Fg5GNSZeLciJN/LwZcYU7SmgqVIWe2N8vBYAkhHR8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lZE42lwA8RnVkCxhSxmlTV661Q1C4r7lVPLbtSzmPnqavV6BXbQItVFubRdyderTnNsPkAykeyVcN/YCHUu9fpncAbCY64ffb0aFH++lHPubcioUYWQsilcicthiy28+nyHe14Dc0w/Ok00S/A09bv+RqlUGDLKa1xeVKniXOE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=jQzgP2sN; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-652fd0bb5e6so1486109a12.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 05:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1718971761; x=1719576561; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N3bpiTUuQIwX4Xfzvkw+JGfc81Y8IZVkUoMFi4AzcE0=;
        b=jQzgP2sNuNxh53HQmoMn9zA9x8DgjVshuDD8+6DYkmZSo2MZWgTdHGXc6x9OexhaJJ
         HZwpdXxbIC0uOSnJhvfREqfv+v/kv88uUX3g3DYxibfKvgzqyroAfNI0OhFYncY7ECnR
         QL2IpBYAhHlj3DtfaaAjFMJl67F0Fr4ElDefRk0p+zmjpcqOr4GA7C3vSSYmx2AF1SxY
         Tvbgs1qoNMjK9LPf9I6W3G3hg7octB/Z1fTJD9shw4sjvHimHSgQ8iTURwAplc95kk/Y
         eMrONWnm+KtsxQkNtzlT1mp9QHfMn4hP/oWIXKfA0ZslLA+3p9PT17XpMQhLswGldcS1
         tvkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718971761; x=1719576561;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N3bpiTUuQIwX4Xfzvkw+JGfc81Y8IZVkUoMFi4AzcE0=;
        b=vNAdkw9TAi+S5mA77fcBtghhfiP9z1/5qw36HOaGZX8wzYMm6v/WBJBEWMQNdCGiUe
         IQeB+ZrM2XXGfRWM9CSXx69gFWRj1noXhQ+EasTSBKsVnHX481H558R9xrBk5RffchT5
         zzKFYYnBQJ5O1Tje8NRPkxZS3Brz9vSqOmTfEQNfZO7zrHRmP7Q19cQzigT+EkGSxhax
         mWksRHwvVGjH+QDx513dVHaO06MAG15aifJoUKjFzvj/x3ROrmo8fg2YzDNHseZxUo+J
         L/ObbPjBr4idbRZV87H/hCOOEuXOCICIOnL06sQu2rYgDFVNihV7kt6yOxF8ts/5Ve0v
         jFqQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8e03GjMvrYOFwhwY9FebJ+CuMVo3m6vFYPPD40kzwpJX7OoQfoxJvEkcScqyIZl+3b6Y7vr9jYVhTMFLi5x69ha+0kGUWc6E/bQ==
X-Gm-Message-State: AOJu0Yyn2qsovs0Xd3q1zPTkaADLFCYiaQIk98phcF2ah2eRGPsWmKGc
	zRWMvhjYsQ2nvXweKHMFDIcapDKeswb9xRsFUkMCWbSOGbofGTP5tzPuBkjaKX4CUhs+2IQSyE5
	wsv1uQi7Nkw3dDXzTfgMvvqpwnY2wNKM20qQ5XA==
X-Google-Smtp-Source: AGHT+IE1eWisatE54yPyogUi1nCzHuRa+Ft1MLTrDQNKgWeQZYGbOjZEa5IllYpCxPNjLDMbi3chxWaGYYUSUrI2DBM=
X-Received: by 2002:a17:90a:3044:b0:2c4:fc64:6b81 with SMTP id
 98e67ed59e1d1-2c7b5d52cb7mr8337358a91.31.1718971760877; Fri, 21 Jun 2024
 05:09:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240621093223.37893-1-luxu.kernel@bytedance.com> <ZnVhIi0Jre77i3RN@andrea>
In-Reply-To: <ZnVhIi0Jre77i3RN@andrea>
From: Xu Lu <luxu.kernel@bytedance.com>
Date: Fri, 21 Jun 2024 20:09:10 +0800
Message-ID: <CAPYmKFuS-wJTfZBeVo_AS9PscLC7zSiEDZnRU9NDB5+LYxjNSw@mail.gmail.com>
Subject: Re: [External] Re: [RFC v2 0/2] riscv: Idle thread using Zawrs extension
To: Andrea Parri <parri.andrea@gmail.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org, 
	atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, christoph.muellner@vrull.eu, heiko@sntech.de, 
	charlie@rivosinc.com, David.Laight@aculab.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 7:17=E2=80=AFPM Andrea Parri <parri.andrea@gmail.co=
m> wrote:
>
> > This is the second version of idle thread based on Zawrs extension. We
> > rebased our code on Andrew's patch series[1] which provides basic
> > support for Zawrs as well as optimization for spinlock.
>
> There's some feedback on Andrew's v2 [1] which seems to equally apply
> to the later, mentioned series/submission, and hence to the series in
> question (although only indirectly admittedly).
>
> As an additional comment, please do add  linux-kernel@vger.kernel.org
> (the LKML) to your Cc:  list on patch submission (again, this applies
> to both Andrew's and the present submissions).
>
>   Andrea
>
> [1] https://lore.kernel.org/linux-riscv/ZiWCP6f6zZ3dKXfN@andrea/
Hi Andrea,

Thanks a lot for your reminder. I will check the feedback and add this
email in the next patch series!

Xu Lu

