Return-Path: <devicetree+bounces-44539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE53885ED6F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 00:52:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 635431F23CB7
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 23:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB79312E1C6;
	Wed, 21 Feb 2024 23:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gNMHIhrU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2402812AAE4
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 23:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708559447; cv=none; b=B+nOYe8pVDgBZs/oyzqwiH5TY0bxozKRhREp6hvedEVKfe+uW96hbeCM+zvSRizjsV3Fu6V7PJwgD6f6AMDabA62QlKjFaY6kffcvekdj5YNZvxnfpeKtx5itq5r9BUbjEPV8ccfgCFIUM2US5u9EQiwJAScWSMU+JRaxAU+0RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708559447; c=relaxed/simple;
	bh=ZGM7SjD+2AN/b3C707WSEvKO5EIsUT4jEoH/tDMkotc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CJnMdMUuS8RIMun+FYKK3swSYuoV72ZoQRB9SpdKl45WC1qfuqhaTvvNeiSwDi9CZ3MKLsmrwnhKzsP/umcg9PLXvlVSh82Duvm9HrgrDszwhXJUS7O6TZNkOxaB2o3Bm6p5w+Xa0UVHTgZomLixfDnIlPTzJGk7gZyhCihBcPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gNMHIhrU; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-607d9c4fa90so75570337b3.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708559445; x=1709164245; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dRyWhwvB+YgxB8WYY/8RDhojBr0l/X72f+I+EDyaksA=;
        b=gNMHIhrUKvRdbJg6mCYzEy12MX7Q3pEKIDaul3Q+uf0Fvp9ztIggXadHRNDTxv85KW
         LMhdthjINDZEQHTJwP8SxfCMFuIy987F0xC5UBNdYiwHlB4hDMW/uff+eBj+8kd5dWZX
         u+BHbGKV6TkQ7PLQpHk0AaKikHbULlafhSFfdsvnuM2e3lzO+ZyYJ5uygCIDY5wi/4nr
         dmvZm61JTjwL8j+UdKDRa+W7sgX8KEiQxUnI+Z1UWxmcXRcngjLXXwgF6LNHpxD6DWCy
         dxI9CGpYqI2MKl3pGfilhpC7SHkuWaXq4vm4hZRBDDnOThdfVdY8WvmLZotKnBB5KQQE
         I3DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708559445; x=1709164245;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dRyWhwvB+YgxB8WYY/8RDhojBr0l/X72f+I+EDyaksA=;
        b=w19LR6C3XOAjyP1fOimex1iS825iwSTeOgvF4t/pJ0ebzURyK6SlsGi5jWfpjCW2dO
         eU7BSpNXDMBEzNNeNnd2OKKfEHPeDDVzKyGeTYDlrc9RqU8m9MxECMzAe/r5c9cVPKro
         71mKAZLPemq5rLTZ3rArp7ehNphItYRmIjC1bu+OFjveGvJ/Tiuck/fNxA2yQU/PKcLJ
         NvO0pqYjJ9pRYVX2bjsTQPWwKktHdT1sGY9AE6Qw8UOzte/TYxFmFv8xifAsA1olTm3j
         wWLU4u6aCEKuaVxdUywflwVVfSaQBdwrZRsSMD4ORt50jWOUSCZb9iOlaYIatcGmMvMH
         hecQ==
X-Forwarded-Encrypted: i=1; AJvYcCXx005rYrAPf3ZJl/O4c1XtsEh55BeEyMVcLDfi3JHxG/7kpKkjGsyUpMUKTlhfm/5qd0p6yGsZrcxlJFC0HFrf5eHZDFcB1YqdSw==
X-Gm-Message-State: AOJu0YzD6DJbexMekFr2gyvWrYMU97xi3Bq0cpgpAKNyDc58pNsRL6cE
	Y2R7Zcp96VBIcjRGQuHNW6alYxXUQk0rTiXfwx3pLBnePt3ogHit1zWx0afduErTEzUgdUKMDrQ
	llgkxarM+UEoD+H1teeXEoXCswY4mGIERC2DoLA==
X-Google-Smtp-Source: AGHT+IHU3Y06Sp27kn+vm0riOHx7jAbAYGiCMmYl9aItPwEeAoJ6loAk6SaQpv3mn4p+wcmpr6CrNg3BZNb7xYkUQRU=
X-Received: by 2002:a25:8d01:0:b0:dc6:c2b2:c039 with SMTP id
 n1-20020a258d01000000b00dc6c2b2c039mr882350ybl.41.1708559445157; Wed, 21 Feb
 2024 15:50:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com> <20240221-rb3gen2-dp-connector-v1-7-dc0964ef7d96@quicinc.com>
In-Reply-To: <20240221-rb3gen2-dp-connector-v1-7-dc0964ef7d96@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 01:50:34 +0200
Message-ID: <CAA8EJpq=kFhdqbnLXLLdQ3AkYb=vNOzjn1hMoNJx8qEJ4FLx-Q@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64: dts: qcom: qcs6490-rb3gen2: Introduce USB redriver
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Feb 2024 at 01:19, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> The RB3gen2 has a USB redriver on APPS_I2C, enable the bus and introduce
> the redriver. The plumbing with other components is kept separate for
> clarity.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>




-- 
With best wishes
Dmitry

