Return-Path: <devicetree+bounces-153699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9516CA4D924
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3958A17838C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EA5B1FDA8E;
	Tue,  4 Mar 2025 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AmIgf7ma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982721F8AC0
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 09:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741081594; cv=none; b=A3yICn/TPg5A9uJmFi6gtivIpU49a+kS/HzjxBYsnwUCOPZjNJhAGpYkx1W2gzPaKkq1kW7vkF4D2d5xt1RtkZHIWFYn2PtYRlXqzAkX4AM/n4wrOxdo/tAvJtmVt3b1ErNzUP7pY1n0u3uMX3Ssqr3GbvKIfuE1d8EcCNhG5GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741081594; c=relaxed/simple;
	bh=lkcrIjTkq1UIQT0SkOH+4uaD7wIEqpSNJVOOJw0jvRE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tVg6xhxS8AS9jEirzbjWDhDjJ8RPPobtEu3qr1/X5hJYbqJDZWiA1Nwsm7oxP2eYgAt8CMChekPon8Q1GV/IUhOpNvzx6d6ZlDgnfykmYHJea+brzGPCw2z03RM4HR+1YvZ3Bh4FDPicMnv0dHjfCZCJCsPI308j1opy3pquv00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AmIgf7ma; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e4419a47887so4074484276.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 01:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741081590; x=1741686390; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=42NUMWp1p+p6ckMbx/Ocz1ORWAedvf6DRggC3Szep3o=;
        b=AmIgf7maqmzagac5ef2fAlXpysjAYeZowCfg41F3wnuqeXXYXZv3lHHu3pRtbLAPR/
         LdjzbFCFPCArCWjdJvNh1BnKlIRT+0pWzbAvmB/EBe66Gbq1PwHXtSSLNwIgaK844dMd
         W2LqmzLU3GHI5/bA/M+pJ0218TnT9YNnrbJZ+1KlP9GgqyChSFEgHCpxv8tgVpi5Qt37
         RDwbukLmk2LTLvRZNv51PDRCu8DlMpRQMWmVdmu1fqzxEaM0SGjBsLDYHw7vAt6kmFUs
         PS+UH/NpRVpTtXtws9uYmnUyYP9TK8KxqfXs62CFMlP1bAenrOv6Fc2/sy2tAQyNZ1u+
         I9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741081590; x=1741686390;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42NUMWp1p+p6ckMbx/Ocz1ORWAedvf6DRggC3Szep3o=;
        b=l15ZXwz+nGtXxSkngdOIC4FKRYvIvJhXUWA3b2rnxY8qRcQJeuhC7sTZtuqgFK+5b1
         mrNpWZmCKvb7bcDquj4/o68KlamYU6JJGQ1f4icMVBCc4UoYN8xk/4mPbW5XMAldG/kI
         w0+Srv6ZDRAFF3KG93Ud2+JqdNFx73ExOaX1So4jcVACO7MIuUQ920oMWmJwNzE+yFsS
         fXemWlxrH/Sja7ZFRy38o7fA0VWH7for2+LZhkvcir6wZTSefLo9x45fmSkty+SUHJGu
         jlIijaHqrTHfFVDZsiIQ0cdVC4g+o0ZIucEbdxtar2Xfi2kRz2JlJ+tenR382jNcPnRf
         G9WQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDxskJ4i9zj+q6HKjmgVDAdVez1qC6HoS28LwjK/SgLY/jMbk4twwkuqPDrKstGYgTIBJmIDANqZl4@vger.kernel.org
X-Gm-Message-State: AOJu0YyhndQtMLXkXwG3MboNGcVRaPtd6Pq+fbjZTgBT6jSmLAw/wi5p
	T62coI2WUyaBqLnAbec9tP0A/ukZqx1NgAvO0aKoyrgNtS6vFpoFhoLPjtC2qHPtL1twLKxnDPQ
	G4Ay+lQVtGShQD2dx8K3opqGROwC8O9j2+kwpjg==
X-Gm-Gg: ASbGncvBOZCY3Xp+4H61x+mSqacm2WTnBuOMCWAG3nqeC+xoNwAeiK9tP9xWJEuatla
	rmtza2UhD+gojXXtAJ412vfOMdfXMY46/dh2o4M/Zxp2zMAhP0OPcvj1vjeKsy6F7iosJgNyO2v
	x6AF0MyXFOQGNSrlkhvnth6XQ5
X-Google-Smtp-Source: AGHT+IFInbqjmWLZj4CguI5UAuggpoFNnXPyCXEm68iY1s881uvIpdVSxHhbK99CylDz15ZxH6O+wYWkYQJcVjpg4TU=
X-Received: by 2002:a05:6902:161e:b0:e5d:ce4f:66bc with SMTP id
 3f1490d57ef6-e60b2f5c916mr21056408276.45.1741081590555; Tue, 04 Mar 2025
 01:46:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250228045356.3527662-1-quic_srichara@quicinc.com>
 <20250228045356.3527662-3-quic_srichara@quicinc.com> <lakoxihaqlu3vq42eoqtlip23ggdieizotyzax5up5n6ndbwsi@ddqyzvsdtmkv>
 <1359984c-2ace-450b-a3ff-bac0b9fb5cc9@quicinc.com> <2xpu26pu4ovnchumwx7xzlp2gldpfgsurnhuqaioygb4a6xmsp@ygmpk6furqs6>
 <3e326578-ab46-4d7e-ad1e-3d572613498b@quicinc.com>
In-Reply-To: <3e326578-ab46-4d7e-ad1e-3d572613498b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 4 Mar 2025 10:46:19 +0100
X-Gm-Features: AQ5f1JrLWZmbA3L3ZWFZ6k5ZbyNJk4rnUbtfMAyZmdQl1qilIhBMnwVu8p1019I
Message-ID: <CAA8EJppXHXafwx+GPh0UhFLRLW5DNj8RwXdO4+fDdXp=SE13Uw@mail.gmail.com>
Subject: Re: [PATCH V3 2/2] mailbox: tmelite-qmp: Introduce TMEL QMP mailbox driver
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	andersson@kernel.org, konradybcio@kernel.org, 
	manivannan.sadhasivam@linaro.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 4 Mar 2025 at 10:33, Sricharan Ramabadhran
<quic_srichara@quicinc.com> wrote:
>
>
>
> On 3/3/2025 6:34 PM, Dmitry Baryshkov wrote:
> > On Mon, Mar 03, 2025 at 03:58:42PM +0530, Sricharan Ramabadhran wrote:
> >>
> >>
> >> On 2/28/2025 12:03 PM, Dmitry Baryshkov wrote:
> >>> On Fri, Feb 28, 2025 at 10:23:56AM +0530, Sricharan R wrote:
> >
> >>>> +          dev_err(dev, "Failed with status: %d\n", msg.resp.status);
> >>>> +          ret = msg.resp.status;
> >>>
> >>> return msg.resp.status (is it really errno?)
> >>>
> >> ok, yes error.
> >
> > The question was if it is an errno, not if it is an error.
> status != 0 is an error always.

Is it an _errno_ ?


-- 
With best wishes
Dmitry

