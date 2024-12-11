Return-Path: <devicetree+bounces-129599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ECA9EC489
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA6D228427F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3AAC1BDA95;
	Wed, 11 Dec 2024 06:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xipfkh1P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E6A5661
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733896815; cv=none; b=TdPvWdoQ1IUbZwbPPEXC1XUxjo70Eehtg8ymwhFz57mzBs+xp3nwsmwPugi6LGj0wpE1KEC+Kun1UAMyGm+hkkmubLrCvJe+X/Iff6EbSrtKqsbtUZwcp7zia1RqjgDJK6EZhWSw0yzbstWElbHENopTmjzt8pb7SJmi6g4XODw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733896815; c=relaxed/simple;
	bh=O/HUgr1J4WfobxzE8q+ngELR/opzNqY/jg3OvkCE2s0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=flFbG7WQjztyJ2J8/h+x2AK5R6k0wRBJtVzhmbjhAVyoj0ADOQyNmrN+dtlcwg5qJyHgugagADbyVTxvLF4mCMnmGG/Up5yXiGwePIewu4xLzEZdd0mdEG3EzN6hwMaCJ162qjVkjV3N4E1l0aPdc2yrvVj9GXcuLnnoHbLZmgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xipfkh1P; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-725ed193c9eso2600150b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 22:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733896813; x=1734501613; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o6D+5UJWf2Pb6ZMQTYtdZG9lwxLVemgiQeSinsEy4PM=;
        b=Xipfkh1PvJuKvPJZA7QDTVaH9AbL+BKKgPGprps+M/GhJuYzBDbulJXXzCdi2MfGAw
         2QP5+r9UJ9YFXPrMs/qaLI8pumzLBFksbTdfYGxePxMDZzaPx7WvTpRXDPn2dVxBNVLZ
         fQqKlhOrMHW3awuIyJ2lmVEFILvo/FrxlR6Zi2iZF+5CGA0SOVjlg89FHcQETRyMgvrx
         gpIlldISzDi0I3f96jFAd66i/W6ozkMBgNW5gEvmCqn1ERQ4D3iyp56ZJv7ISLre7DQB
         K1TZxAfJtShua6RfpDKhNj/uv5KK2u9UXVcg5lj4jMQMZnPJA40Mkk2WL0HYgm/gReUH
         RgAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733896813; x=1734501613;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o6D+5UJWf2Pb6ZMQTYtdZG9lwxLVemgiQeSinsEy4PM=;
        b=G0Wg/V9cIFo11sZcF5oly5tS7vxUC0WBbYoxzX2TvtThzEKLrL9lhxzaIKw/zBaqfg
         kZJyONGkXX1Nxjq8eMbCVBwG6RWX3UfaQW3XXPWimXgQZkCIoTpvqAuqGKFAVk0ttmv9
         jp9eFut45JgnuTJUQIv5k8M3PeKgxYz2mpFggEORrz50y6kGRzDc564xoibk3TMbLH91
         FRgeGziTo6nQQNZ1ATB7JBL9IAoJHKOsK5IIyj4JtI1FoFNuQ24MWCIGfRBIDaKKXRey
         4UClA2TS0w9HKmbi3JHcQGX5UPnGzdGv3iqAYIyKCskv4UJMXJpTvKSI6MqSuUB6dTp+
         rwIg==
X-Forwarded-Encrypted: i=1; AJvYcCVeokdiI9Cue5jViP4QF7CLDjF2z2rPmXP1H9Eo39BIdqoNSTNOuvK4w3/Wq8t3mC9fGpAqPCzwlu3W@vger.kernel.org
X-Gm-Message-State: AOJu0YwdIshof4tGk2CLYXMalbAMlkAe7XQFfzvwFIJ8ic0d/8LQCrDG
	rkM8eIkPJ0fMiePsPZppUXgte4Vijtt0AlEUwgUZeCWBSQ6Wg2AK4SYDKF/Ldw==
X-Gm-Gg: ASbGnctc8KG9MU5o/i8s871ByvDsVNKeMP6IgHSuCekPwxrg99G9FMeFXMf+ehDtM4j
	5i4dFanG+C2GF6sGcKyDNJQqNP1pLpxbeBbkhqCbBjnco2TeGnnjxyq3NsobgW8dNfgYIx28qyE
	ScTfiR4EHV1NYgZQB1qq+9YM3Cxn57Jkr0oXwhqBdOsJ1lT/BIuC1DtkmdB05X/2yPvFbKjai8B
	iF4GKmVxEvlyhyJibhzEXGR6onMPZl2e+DRiEpaJhU7S6qa6jfecV8nCjP4+LQ=
X-Google-Smtp-Source: AGHT+IETlOHgTkLxhqU/G3R9N0fR+q6nWJP5t1CaevYyD+oehCnYRHb6VBsIy/3q5g8vtc8rjNY1ow==
X-Received: by 2002:a05:6a20:d50c:b0:1e0:d5f3:f3ed with SMTP id adf61e73a8af0-1e1c129622amr3306101637.19.1733896813626;
        Tue, 10 Dec 2024 22:00:13 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e6e024e4sm5434850b3a.153.2024.12.10.22.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 22:00:13 -0800 (PST)
Date: Wed, 11 Dec 2024 11:30:00 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	andersson@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: PCI: Add binding for qps615
Message-ID: <20241211060000.3vn3iumouggjcbva@thinkpad>
References: <20241112-qps615_pwr-v3-1-29a1e98aa2b0@quicinc.com>
 <20241204212559.GA3007963@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241204212559.GA3007963@bhelgaas>

On Wed, Dec 04, 2024 at 03:25:59PM -0600, Bjorn Helgaas wrote:
> On Tue, Nov 12, 2024 at 08:31:33PM +0530, Krishna chaitanya chundru wrote:
> > Add binding describing the Qualcomm PCIe switch, QPS615,
> > which provides Ethernet MAC integrated to the 3rd downstream port
> > and two downstream PCIe ports.
> 
> > +$defs:
> > +  qps615-node:
> > +    type: object
> > +
> > +    properties:
> > +      qcom,l0s-entry-delay-ns:
> > +        description: Aspm l0s entry delay.
> > +
> > +      qcom,l1-entry-delay-ns:
> > +        description: Aspm l1 entry delay.
> 
> To match spec usage:
> s/Aspm/ASPM/
> s/l0s/L0s/
> s/l1/L1/
> 
> Other than the fact that qps615 needs the driver to configure these,
> there's nothing qcom-specific here, so I suggest the names should omit
> "qcom" and include "aspm".
> 

In that case, these properties should be documented in dt-schema:
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/pci/pci-bus-common.yaml

- Mani

-- 
மணிவண்ணன் சதாசிவம்

