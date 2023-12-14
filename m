Return-Path: <devicetree+bounces-25129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BF38127D3
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 07:18:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4578B282404
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 06:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4D3C8ED;
	Thu, 14 Dec 2023 06:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LFMCkQ2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 336F6A3
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 22:17:50 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1d345b187bbso21256545ad.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 22:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702534669; x=1703139469; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zaR4Nz0vZgkJ/6+6AwqMKPaNjIg/RrKn0ONF1zwuOv4=;
        b=LFMCkQ2iLEO3mVZFltcya3E+jC4OijYvowal1w8kUnysAWfRIOBtIVLt8ijw0dEeAN
         TYkDqzUXAoBGfUWPK3IZvfnDJAJJ3xcwYgRUjC2Q7Hho8TaU1t5k+C14SlR3ZOtrRBe7
         vkK5a6QJ8WQdHmPYLYGVVDY/i5GytGAfiakBJmF1BumBguhUBpSd7+qeUf7gZzF5N6xL
         WTRTiUugjMxvf74hMhW+tsvk4rI1iq4WM0HlubWjb8k4tkxUkTY8NkLogIKBzXKFDrV8
         H/rj8F/EQqnfsHvU8X1mgDOn5vS6rPN16kqJ5IdNxzyZygoSBCIkZhJrNDpzg1RkBlUI
         VCag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702534669; x=1703139469;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zaR4Nz0vZgkJ/6+6AwqMKPaNjIg/RrKn0ONF1zwuOv4=;
        b=WfUrnCAo7C69kxGxdU2+Fe00OozG0SflNwhz59mHOI2zkdAoCm+gjPK4fofTuKnZg8
         Ddnd1JwkiVLjiXTcdMU3l/BbP2KEW9PN+W9eztALMilT65P8+v/Jjs0d0Nw6cXt+tXoA
         XJre8FHEgQBQWyESCqKfZBziTi8OSVKmrc1dGhsYu5cLOOhBhuuJIiRQGJPt8OpkWvI6
         n/1l7+gl3/PP3coprXo47ICNsCNdypPkpYEmDjDu8Ply8wB4pJrLB+p5pLjF+Kkh32dA
         x8o+LdB+6fj5WY6nrYxds629VwxCv9rfqXC3uPqYZfTH+i4Jd/QWMycecV0u4u8LqFd0
         D6Tg==
X-Gm-Message-State: AOJu0YzmUOl2rGeEIRKXYGPdkplt1c1vN1WoUGq704NBYEHCtHtBL+LM
	DbiRDCcUPpLUNPFwGgCKLeZA
X-Google-Smtp-Source: AGHT+IHR92QjZbICu7C8PPnG6JlLvcsImJ5E+pIfDHl5/QKM5+/Ay9U0iVnHNwxna3OkXhCBYEoabg==
X-Received: by 2002:a17:903:1d0:b0:1d0:9e59:35e2 with SMTP id e16-20020a17090301d000b001d09e5935e2mr11167773plh.123.1702534669669;
        Wed, 13 Dec 2023 22:17:49 -0800 (PST)
Received: from thinkpad ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id n2-20020a170902d2c200b001d04c097d32sm11485821plc.270.2023.12.13.22.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 22:17:49 -0800 (PST)
Date: Thu, 14 Dec 2023 11:47:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
	ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20231214061742.GG2938@thinkpad>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>

On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
> + Linaro team
> 
> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
> > On 12/12/2023 18:45, Nikunj Kela wrote:
> > > We are abstracting some resources(ex. clocks) under new firmware on an
> > > existing platform therefore need to make changes in certain drivers to
> > > work with that firmware. We need to make a distinction between two
> > > different variants of the FW. In one case, some resources will be
> > > abstracted while in other case, they won't be abstracted. My query is -
> > > "should we define a new compatible string for the variant with
> > > abstracted resources(in FW) or we should add a new DT property keeping
> > > the compatible same?"
> > Hi,
> > 
> > Usually change in the interface or behavior warrants new compatible.
> > Property would be suitable if the same device, e.g. same SoC component
> > with same FW, was configured differently on different boards.
> > 

Here, the hardware is going to be the same, but the resources (clocks,
regulators, etc...) will be controlled by the firmware instead of OS.

Should we still use a different compatible? For the similar usecase, we already
have properties like 'qcom,controlled-remotely' to let the OS know that it
should not configure the hardware and just consume it.

To me both usecases sounds similar.

- Mani

> > Best regards,
> > Krzysztof
> 
> Thank you for your prompt response! Will use different compatible as
> advised.
> 

-- 
மணிவண்ணன் சதாசிவம்

