Return-Path: <devicetree+bounces-143783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F9AA2BA84
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 06:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88B1318894AA
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 05:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C3E233134;
	Fri,  7 Feb 2025 05:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s/4MIITE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E11D23312D
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 05:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738905171; cv=none; b=sAdsg9QH3HXV/KbPUoMOU5yJdINXPWM1qRis2EwtWwtGYRPibOTkrlbF+anxMq/Z0RaC8dMl4M7APALLPzPDf9QKNyLAthQwksWlh31hm56Npbhft/8i2a1btuo5fgFDM16dRg6nlkNFMx448yQKlRDIQs+Hcu6txsZ7DYJIXqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738905171; c=relaxed/simple;
	bh=FzAGaPlLaweajGoIIj+Xr9VB8vTpfZqyn2PkFUSCgyg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FV+FDUIUQa4BKQ81/xF0esMBTbPFGpOaYiRMT2lnVFkvemDGaBvJnebBan/0OHlkiLvDZuPJCAhioHJZxQQvqpVZTJCgRatKj1aW0Kpb7MCEBApD/36rOxJKV6e1Rs9LS1GSV2BUU4805oW0VPEosekVVVrE6RHpSE+CWTGfMP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s/4MIITE; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-4ba82f2bdd9so330395137.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 21:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738905168; x=1739509968; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jAqxiqpAkCMvKRS8aIsBMQxfvImPXVu+azXD9hvL8PY=;
        b=s/4MIITEdXx0HKAw0WKPJ6NGYKpZVyoEzyTn5BgdeKxHo3HpjGZAjdFjlFrWVejL6g
         fK5ViNxqvOCk3pzXfosTm5lyDiVoox2sEITBmwHZxIQyP4Ra9t2dS18UYSCmT/8rxrGI
         a2XRjB9MvmQZTEjvz5AHJpWTivbfwMfGdV8E5z0GNsbGKBzYXM9yKj+TwB1qBJaT+USn
         ER2Chjl/vpDVhKCLr2+dffEpRev903rCPUycxPXGF968C8Njv4DNQeybAPYICvzOSIXR
         mVOiGnj2ehtfc42BFRGIfQmPSRabBZQK/gTTu5SBx8DK+kZRvyrwn2TIrTq3dGiEoUdn
         za/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738905168; x=1739509968;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jAqxiqpAkCMvKRS8aIsBMQxfvImPXVu+azXD9hvL8PY=;
        b=Uri7uJV7FDeJi6CEsVcJm9H64iajw330lWSX4Hc1SCgjq9lDyyHYqws9XVGUup0ttz
         qHJl9U1uP0JUETan0pK5a0NwwSQ8doldsgNbjxHQVA11OIwypRFmmxDhkEhMzwINEmxo
         0wJ496gJkvx0ASo/1g+MgadTI6s0B/dFDX4QDvdd5Y4dXYEZwMYEHDcqjyweHvKS4sJ/
         P/5lyzPz5cKeXOXIZu8n6ib9nYtoewwvROUAjdiT254gfb4tLGsjbq13CDqYB27TAyYe
         wedMPyHccmxSAqyIqVVQ31aUhMDmvA/GJvh2iaKllv0hK7HvVB9/YttHn6Fd7imEtThA
         +saA==
X-Forwarded-Encrypted: i=1; AJvYcCUIvFJll0MIebEn+2jfAcL7P5BiJM/iLD13uafm2p1onwqG0Chn0Ehan/P0BvqJDdBdUl8lXdqO6Vvp@vger.kernel.org
X-Gm-Message-State: AOJu0YwJiGIbijPYQN0DDstOecn9qmHVhcLNeCatWzy6jN81Eis9It90
	GCieui2XctT3SxyZL8G46dGNasdixi1IDZixc4OxPFXI0HbcOlUsZJJjqq8rR+lZrizkHQBOWaQ
	x4tTzp6q4rwMBMYXvcV/fay2xGLZy5rXV+FU+Nw==
X-Gm-Gg: ASbGncu9yeRflkUqybb9AEokUV075ctHOffnk5cI+Onhdf4bFSeL+KYYgEfkoKc4A2d
	YWferIghBem4tgB6KlrZi8/Y6k+uWwRkJbjmkMtJFrY8suLGkFVUt3cRU8I6f/E11LK8D6tsgKu
	M=
X-Google-Smtp-Source: AGHT+IE38JWQ2LCgjBYwmT3N3ol5clUSl4tITr+DYbzBN4LacIyJ/8n+15f0JggCZmLkGY8UfJDe2aSTD/beIrAwTp0=
X-Received: by 2002:a05:6102:4b1b:b0:4b4:6988:b12b with SMTP id
 ada2fe7eead31-4ba85f83342mr1232055137.23.1738905168219; Thu, 06 Feb 2025
 21:12:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250202-qcom-tee-using-tee-ss-without-mem-obj-v2-0-297eacd0d34f@quicinc.com>
 <CAFA6WYNGH_LP-R4hQx-+XMY3zFN74ij-JngwnuKOsz8=r_-bsQ@mail.gmail.com> <f3b30e00-d6cd-44ee-88a5-e5a523563bb3@quicinc.com>
In-Reply-To: <f3b30e00-d6cd-44ee-88a5-e5a523563bb3@quicinc.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 7 Feb 2025 10:42:37 +0530
X-Gm-Features: AWEUYZkJm1RihC28R4o1haiyj5l-eJg1q_e1aaNfSATrdDF3p0v_A4C4GrMIZlI
Message-ID: <CAFA6WYMhyDLmFaZMWd3TFfNTnujAN8ZuzguPgzjJXfhZf2ZnKA@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] Trusted Execution Environment (TEE) driver for
 Qualcomm TEE (QTEE)
To: Amirreza Zarrabi <quic_azarrabi@quicinc.com>
Cc: Jens Wiklander <jens.wiklander@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, 
	op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 7 Feb 2025 at 01:25, Amirreza Zarrabi <quic_azarrabi@quicinc.com> wrote:
>
>
>
> On 2/5/2025 4:38 PM, Sumit Garg wrote:
> > Hi Amirreza,
> >
> > On Mon, 3 Feb 2025 at 08:14, Amirreza Zarrabi <quic_azarrabi@quicinc.com> wrote:
> >>
> >> This patch series introduces a Trusted Execution Environment (TEE)
> >> driver for Qualcomm TEE (QTEE). QTEE enables Trusted Applications (TAs)
> >> and services to run securely. It uses an object-based interface, where
> >> each service is an object with sets of operations. Clients can invoke
> >> these operations on objects, which can generate results, including other
> >> objects. For example, an object can load a TA and return another object
> >> that represents the loaded TA, allowing access to its services.
> >>
> >> Kernel and userspace services are also available to QTEE through a
> >> similar approach. QTEE makes callback requests that are converted into
> >> object invocations. These objects can represent services within the
> >> kernel or userspace process.
> >>
> >> Note: This patch series focuses on QTEE objects and userspace services.
> >>
> >> Linux already provides a TEE subsystem, which is described in [1]. The
> >> tee subsystem provides a generic ioctl interface, TEE_IOC_INVOKE, which
> >> can be used by userspace to talk to a TEE backend driver. We extend the
> >> Linux TEE subsystem to understand object parameters and an ioctl call so
> >> client can invoke objects in QTEE:
> >>
> >>   - TEE_IOCTL_PARAM_ATTR_TYPE_OBJREF_*
> >>   - TEE_IOC_OBJECT_INVOKE
> >>
> >> The existing ioctl calls TEE_IOC_SUPPL_RECV and TEE_IOC_SUPPL_SEND are
> >> used for invoking services in the userspace process by QTEE.
> >>
> >> The TEE backend driver uses the QTEE Transport Message to communicate
> >> with QTEE. Interactions through the object INVOKE interface are
> >> translated into QTEE messages. Likewise, object invocations from QTEE
> >> for userspace objects are converted into SEND/RECV ioctl calls to
> >> supplicants.
> >>
> >> The details of QTEE Transport Message to communicate with QTEE is
> >> available in [PATCH 10/10] Documentation: tee: Add Qualcomm TEE driver.
> >>
> >> You can run basic tests with following steps:
> >> git clone https://github.com/quic/quic-teec.git
> >> cd quic-teec
> >> mkdir build
> >> cmake .. -DCMAKE_TOOLCHAIN_FILE=CMakeToolchain.txt -DBUILD_UNITTEST=ON
> >>
> >> https://github.com/quic/quic-teec/blob/main/README.md lists dependancies
> >> needed to build the above.
> >>
> >> This series has been tested for basic QTEE object invocations and
> >> callback requests, including loading a TA and requesting services form
> >> the TA.
> >
> > Thanks for sharing these test user-space applications/libraries. Can I
> > know which platforms are currently supported by this QTEE driver? I
> > would like to run and understand the overall stack on a real device. I
> > do have rb3, rb5 and db410c on my desk to test with.
> >
> > Also, platform support is important information you should put in the
> > cover letter as well as the QTEE documentation.
> >
> > -Sumit
> >
>
> I have tested it with sm8650-mtp. But would expect it to work with any platform.

Good to know that I will try to test it by next week on one of the
available platforms on my desk.

> I'll update the cover letter with the details :).

Also, put it in QTEE documentation too such that people are aware
about supported platforms.

-Sumit

