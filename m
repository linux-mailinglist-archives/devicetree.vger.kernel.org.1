Return-Path: <devicetree+bounces-49428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 265F087674F
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 16:25:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 999FDB2117B
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 15:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D116C524A;
	Fri,  8 Mar 2024 15:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FqDfLKQ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555F51DFC5
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 15:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709911549; cv=none; b=rdbyGgYRL4mU5KhL4uOy7j2VL0NMaZTNnd88Vffb/6f1RVg5183eqcw9Ba3bNl26bQiBA01Fw2G51ArDggOw+pOwLtcRlYRbE3e0eX0Kdgv48M2/0cq8NyYsXSYWNtXSyDN5wlpxrsqrWJq437ONDTkWt0G77Rb5mNSo0AX7/H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709911549; c=relaxed/simple;
	bh=TFLZXdU3ies1N74nkimz1dUi49Sig9GXkWQrBIaS9r0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q61zvEbDGih0p8s9efSNGvLKGfg9OzfqqQlMJWQgdKbMnfVWlHiFKPJMxphSMyrUUAsfjp+7s6KRtq/OE2tCOJREslnh3SzEppxAsJhoU3Yl8ElOjS+2f4zal56GLsNNpecYSoxqD34li+qA8KdyaBHZ2dYkEpumBAF4kBr6i0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=FqDfLKQ/; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-42f024b809cso294031cf.0
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 07:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709911547; x=1710516347; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TFLZXdU3ies1N74nkimz1dUi49Sig9GXkWQrBIaS9r0=;
        b=FqDfLKQ/fbi6S70lRntmG3wXPNXSvPEHkdf5NFj4Kcsa7KOBkDpL10OS6YEI1Z9ZJK
         3TJvmK2Sy2TQ/9BykghT1jWCo4Y3s0hNlwKD2ivcGUm10XYDQ1Gq+G8pQWv3M9+JfEqi
         H31wWdNBuEo7DRRvc7Q+oaY1QwD+5QAckRE2VwS8Ks0MkJn8r55p5lW/YNJw7BlaScgR
         VOOPVE2A6DwVAjse5IaPV1Bf9bWR44EiWCcXo4CLuCUrcOT+2zPpjDsSktTSBevEm2iy
         ly0Alhu3XUG6L3Ovw1l/V0mUZh5SiQyl0GMJ0+A+ByEiGyyRp90SQIrRrLyBir2Gk49E
         pgSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709911547; x=1710516347;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TFLZXdU3ies1N74nkimz1dUi49Sig9GXkWQrBIaS9r0=;
        b=PDUxnc6zUk4fGWUEETixudc2CwaIhZ56Jblnmwa5DxK5q0hSK9nu/qWMMlF6NlZ9KN
         w5asCil0fvrGj+WeNOQKR8yjyv+ycQZ6OjihQAY1fdBdTW5Py1NQ9zlExUUXteen4X2E
         NVNEkvzhE4F7QG+einM6MU5Bva6ATsnenjeGFLORm5XbuRzIy2ALBU/39vvizn/wuLzV
         wFQT1UcBNBfb/uMFcsjRrCdjEdWNYMLE8WeEdXU1KojY27ydll/tPyFyPc+2DMLatcHA
         wT5nP6s5WkNPdtcjkhTPisS16TwlyxxDMz393B2V5yTSyEKIL5RHAc8Pz+AAXAv/FIHL
         Dv5A==
X-Forwarded-Encrypted: i=1; AJvYcCUqHy0QkGgCkV67bG3UNqbMDvbzfBcQJNFgtem2d9KwkOBAfQoz69GWq41Rp6ab/882fPnkU/KLIqCpp4ue6AlV6oG+gVXX7HeIkw==
X-Gm-Message-State: AOJu0Yz5idOe++1MZQEN6NfgH9tpRaZFhe7xBhY9H1y39sLAEeToa93Y
	hh/GZsWeIlumj7Dtc9/HHETLP+TSB7VKW7i/flaNKosWSf+EqQA5WcFMlrG8vqtyLMHC0/xzGPU
	x++VIj0WPSpTQ6+SkdSicBQC9pcQzGMtFmapl
X-Google-Smtp-Source: AGHT+IGwvRqhH5/5u0dRebXEE93CUmjojhrEOWLQxodoD5XGA8x68lzCwMdItYYAqK5wHkhfsJazt1RD0edt8txgF60=
X-Received: by 2002:a05:622a:295:b0:42e:b2a8:e239 with SMTP id
 z21-20020a05622a029500b0042eb2a8e239mr627320qtw.21.1709911546958; Fri, 08 Mar
 2024 07:25:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240308004757.1048284-1-xuxinxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240308004757.1048284-1-xuxinxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 8 Mar 2024 07:25:31 -0800
Message-ID: <CAD=FV=V7t8vYZLunDLBh7xDPLoennBP+7Gi6b1Y_GKnYOW1cMw@mail.gmail.com>
Subject: Re: [V2] drm/panel-edp: Add BOE NT116WHM-N44 and CMN N116BCA-EA1
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Mar 7, 2024 at 4:48=E2=80=AFPM Xuxin Xiong
<xuxinxiong@huaqin.corp-partner.google.com> wrote:
>
> Add support for the following 2 panels:
> 1. BOE NT116WHM-N44
> 2. CMN N116BCA-EA1
>
> Signed-off-by: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

It's fine this time, but please be careful in the future. I never
actually gave you my "Reviewed-by" tag for v1, I just said "The patch
looks OK" [1]. You should only add/carry someone's "Reviewed-by" tag
if they explicitly give that tag.

I'll also note that the subject of your patch starts with "[V2]". I'd
normally expect it to start with "[PATCH v2]". Maybe something you can
fix about your process for next time?

In any case, I've applied to drm-misc-next.

dcb6c8ee6acc drm/panel-edp: Add BOE NT116WHM-N44 and CMN N116BCA-EA1


[1] https://lore.kernel.org/r/CAD=3DFV=3DU8wdT_5k-yrLVpmh=3Dq4k18LntqujK7Mw=
88TdweBXCPgg@mail.gmail.com

