Return-Path: <devicetree+bounces-111950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C28E69A061C
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 11:52:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A07A1F2334B
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8258206975;
	Wed, 16 Oct 2024 09:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="CGEPSZOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555831AF0DF
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729072268; cv=none; b=vC1l8SpD7kR+xoBDK1tzvkFb69b/JsFN5QlKaj+LGSOsfb1IjmTA6M6nrXkgzWLVm/ry3I7ucGSXX0IlI/hi9TbrfCoZxLruNRFdszIGEoypsk4sJjfFMKKiXZGGnqoGPtJiQqLewWxYqY3/6WaEftYDBn0n7M2ozH56J/Ua/pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729072268; c=relaxed/simple;
	bh=Cj86NyIswgKoqmx4W92A+phSXUB2YaLiIZDYapAeldo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tm3CU3hHlqshGAXPM3Zxzz+MRxqQCyDgibxpHqiDfLpMFPKjyVcsUhXROBbMqIALjq5sFnhVooF8StDdT9gToiOp39jgLAZSzIh1UzcwVfgRZsJbfd66qcZtb9cK99gD4+FdxK54DXrTa7OwF6rmgNIaKFDRvKFviP/wHzzDMa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=CGEPSZOd; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7ea8d7341e6so2198576a12.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 02:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1729072267; x=1729677067; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=55z7MQbfeSSb5xwJVgndR9t0TWHNOqYIoBbegmDTohc=;
        b=CGEPSZOdx/fiuZNgETUbHRFOd4P3A04qoFoeK1v7tnCAv05pTpUnEtPmeyNXLurQ5m
         KZvqjfH7YjFFZ1GaJv+QmodZ2BDEkLMBhBuG2tyPdx4GVoC0AfSFHkJ7EVGbtJXhdRrI
         VM5r0216pr3mjaSsRX/SfqMoV6buERrmI7U141c6ueAD1LJeZTClQPYt4TEE8aLQpUjs
         2gUiGkJt8edGcxbz1+F5Cvv5NL4l55Wv+/f8xfaEP4yBsqn8XHY91BdmZCXNY0MT3goW
         zEcglYJKeX4XqcwFJDmY+RClpg0IQpa1n1smLTik4vAflHui/wOx4ERfvuTFfw/45Xfc
         A60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729072267; x=1729677067;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=55z7MQbfeSSb5xwJVgndR9t0TWHNOqYIoBbegmDTohc=;
        b=TrRbvM48ddtu1go7sqmCfY2LWeLh5nB7SimCF+tzvxOlClUOwOkyrZXG9NKe++IaFl
         3qw01Z1/JObh9/U3cEPSpXxhrmKSFf+2U0HEyomlSjIou+8FhpZ8PgiRCAJXLfIXGNPZ
         nYAc5x9vARWbewEvAJxgspTk05B5+6a2cy5LUCN442l+9aMjMe/f/VkFSxXPPzpxSbTL
         6n+8p4ztTf3Gu5qmTtR8909mHR11pJAaIcg2C4ndC0R8viK5WJWDVv8+nVn3ZHvllzEK
         ABJ4VYKM/5nIvl7LVK7TPzRuk1QThi/WmOrehj63jLdLDDZPMn/57jZlo+0v0bJ2Dt5t
         Li7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXNrqlVwx96eHJujdO5UYzjwZfEQh6Fcrx4f0tr6ls1cf85A6sSPjr9IJ2nD3XQ4T+dJmPMomP5VLdY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6u4haKmW3M8yNEFWfxNfw9PoZUtTxQQ3QNkyhCWZfxiE1GKE+
	9O6LoawVqzSIbmZAb6XmpyqzphtYRpXLaOwZuWbfiOAEKCnbrsHrO98qlHyDQICfryZ129WzL/k
	SBN0ZyOdwsydzTV3c6kZs3fW39+W7uUyx43Xyuw==
X-Google-Smtp-Source: AGHT+IEFyMfBHqpooctvg2iThMuJ2EZL7X1ymRn7DPngXS/aofDO/dY9X6Azot0jpV1C8esxg0Ncunf+8mxEudBKvL0=
X-Received: by 2002:a05:6a21:38f:b0:1d8:a29b:8f6f with SMTP id
 adf61e73a8af0-1d905ebfe64mr5058933637.16.1729072266720; Wed, 16 Oct 2024
 02:51:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241015113329.667831-1-naresh.solanki@9elements.com>
 <20241015113329.667831-2-naresh.solanki@9elements.com> <c07435f5-af3f-46e2-8e4d-b0a42969b60a@kernel.org>
 <30089bac-e764-45ca-b0fd-f0eb0333e632@roeck-us.net> <b981df66-2501-40ad-8064-158cf93407f7@kernel.org>
In-Reply-To: <b981df66-2501-40ad-8064-158cf93407f7@kernel.org>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Wed, 16 Oct 2024 15:20:56 +0530
Message-ID: <CABqG17hNSOA6onnH6Bp2oOGRiS_8EMnp4fGyWYZEYG5+HQYceQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: hwmon: pmbus: pli209bc: Add bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sylvester Bauer <sylv@sylv.io>, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof, Guenter,

On Tue, 15 Oct 2024 at 20:19, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 15/10/2024 16:10, Guenter Roeck wrote:
> > On 10/15/24 04:48, Krzysztof Kozlowski wrote:
> >> On 15/10/2024 13:33, Naresh Solanki wrote:
> >>> Add bindings for Vicor pli1209bc.
> >>> It a Digital Supervisor with Isolation for use with BCM Bus Converter
> >>> Modules.
> >>>
> >>> Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> >>> ---
> >>>   .../bindings/hwmon/pmbus/vicor,pli1209bc.yaml | 65 +++++++++++++++++++
> >>
> >> This has to be squashed with previous patch.
Ack
> >>
> >
> > Neither me nor the hwmon mailing list was copied on that previous patch
> > (or on an intro patch if there was one), so I have no idea what this
> > is about.
>
> Heh... that's even worse because without that visibility you would pick
> up this patch only leading to duplicated compatibles warnings.
>
> Naresh, sending such patchsets is really not correct. Be sure you
> organize them logically and in fully bisectable way, and then you CC
> relevant people.
Yes this definitely causes confusion. I should have organised it better.
Will make sure I handle it properly. Pardon me for the confusion

Thanks
Naresh
>
> Best regards,
> Krzysztof
>

