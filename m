Return-Path: <devicetree+bounces-106690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5732198B569
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 09:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7C94B21446
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 07:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AFD31BCA0A;
	Tue,  1 Oct 2024 07:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="GQGBC/XP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA181ACDE3
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 07:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727767431; cv=none; b=hEMxfEMBrwMYKgJ9FkU3Li7gM6+KS9idRa9BmuuIe9pN5ZdY+xWZl6etn9j2PIMax+by1LVYhzEeYCvO1lcRif2gehy5eeiT/8tlYCX8YOYYKldrrE2uF0YXFPoPf1e31GitOLxPIipsWtDyBHB+4Ils6RnbTtEaQeezSfpswm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727767431; c=relaxed/simple;
	bh=BUh6tRVRUSnz9JRAFV/mB0Ih/eQ7zBStnIqe5JL16Pw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cV7jZg1N1JL1CyYG+B/OXVPofclkrxGRXzQTtbX+RAu4nLCvkny9q9YI3VTrjCDOkqNiKsDEB8vz0uKqb5M6aQouXwNNo/zHu5+vx0vrHc09iF+ZDXnaddlUnapWaE9Jimz9Y4clX4hQustm75kqpRnqWXis42YqQbDI4yaldlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=GQGBC/XP; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e05f25fb96eso4783068276.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 00:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1727767428; x=1728372228; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3BDVsIR+AWM8VLHO3U4ofx1mhP0jR6b5o+0aZeIJ+kg=;
        b=GQGBC/XPbjZiOyTJ67R62LKspFFlSjxSb+MO2aDww/940E6b9FNxtywJE6oNO0uaMP
         G6CIlQe37QNbIbhQeAwKE7jjGc5E2KaxFsb54m+SUo9G4vGITMzkD9mJmO+W1IkbGdSA
         16kzqBnYdd98g/ul1A2vaddHfycanQW3nTm/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727767428; x=1728372228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BDVsIR+AWM8VLHO3U4ofx1mhP0jR6b5o+0aZeIJ+kg=;
        b=YwMg07gJEFSP0RICmxUadCGTByU+R/ZEQ15tPIUxu6geUfYKsPFCFYg6mx+pJoFi+I
         Ejmslk2YWDbEg3KJZzKi58OyH0T8ifmeR1CY5AkQTr+iBsLaoycsuMQ4QFnbEK7UmhxV
         TQiSq+cOcZY8DUelO68fKCKteBoTvmsuBG65S+Wyf0beqqzU2vUFQxgMfHWn+nE4S7NI
         qh87D9qYQsNsoNFkEb4B0ujaEiHIUAg0cxkksBrxTnPI6V2Mjvp0w+vdmzpQ8q4G2gIw
         wh8DO+Ybm07gau7ePNZPLAh3y9+W31cwOS7YfO2ll1OYWr6GPCXGwf5BFllu14qAdMVU
         xQAA==
X-Gm-Message-State: AOJu0YxJTH415YvMBzO0pwUbRIQhZk3cfvuwzPVMVyGfaweufgKYoqi4
	TTVWdc+ID5xJT2abtH1kXju1++vOn1okGAeykj07XasTbrzZTnJfn0PY4biJrxMEFeRyJAWD9DC
	RxNABvjgwejxPMJu5Y8dZiN5+w2DtmDXNqKileOOAqoVw9OJ2
X-Google-Smtp-Source: AGHT+IEDx6s60OXbbnFg6D7pGUQUUjMuK6DZaBWnI4T3NO+xHZKD4YwwtWu09YZ4TXBLLfXRKiJEiRFbWe3k2eo7T5Y=
X-Received: by 2002:a05:6902:70c:b0:e26:2bb7:19d4 with SMTP id
 3f1490d57ef6-e262bb72ce4mr1861696276.7.1727767427893; Tue, 01 Oct 2024
 00:23:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240930093054.215809-1-pavitrakumarm@vayavyalabs.com>
 <20240930093054.215809-8-pavitrakumarm@vayavyalabs.com> <fsp2l2ktvwznm64kwlb23yxlvioi47inzdwcngowbvet43us4k@svi4b7eq7gx7>
In-Reply-To: <fsp2l2ktvwznm64kwlb23yxlvioi47inzdwcngowbvet43us4k@svi4b7eq7gx7>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Tue, 1 Oct 2024 12:53:36 +0530
Message-ID: <CALxtO0nPzYpW7n37c5hdcigQtq+NOSxaPmLqeiwwiB8kumHjWw@mail.gmail.com>
Subject: Re: [PATCH v9 7/7] dt-bindings: crypto: Document support for SPAcc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, herbert@gondor.apana.org.au, 
	linux-crypto@vger.kernel.org, robh@kernel.org, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, bhoomikak@vayavyalabs.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,
  I fully agree, some things got missed out; they were supposed to be addre=
ssed
  in the v9 patch. Not contesting that. My apologies.

  We are doing a code cleanup based on your inputs and previous comments.
  I will address everything.

Warm regards,
PK



On Tue, Oct 1, 2024 at 12:03=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Mon, Sep 30, 2024 at 03:00:54PM +0530, Pavitrakumar M wrote:
> > Add DT bindings related to the SPAcc driver for Documentation.
> > DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
> > Engine is a crypto IP designed by Synopsys.
> >
> > Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> > Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> > Co-developed-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> > Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> > Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
>
> Please run scripts/checkpatch.pl and fix reported warnings. Then please
> run  and (probably) fix more warnings.
> Some warnings can be ignored, especially from --strict run, but the code
> here looks like it needs a fix. Feel free to get in touch if the warning
> is not clear.
>
> Best regards,
> Krzysztof
>

