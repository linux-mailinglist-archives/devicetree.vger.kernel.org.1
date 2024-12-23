Return-Path: <devicetree+bounces-133672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB6C9FB470
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 19:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C5EB1885108
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 18:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5A291C3F3B;
	Mon, 23 Dec 2024 18:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nYeZA1sT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7B080038
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 18:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734980317; cv=none; b=emwm6c8qknm6q9WnKxbXaS9LXK9N2ko7vlRuKxZJBuxd7L47r51ZngxwO+Tc9Gqtm5uSX23KunVoQJANei12kfm0zvI8xS452xoJfGRpd8YR0DYi4Ml26ArFnyaf51/2J9xeVptcXD1yxQoHYv6FwiSYklhn8eMDjtMuSquOpAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734980317; c=relaxed/simple;
	bh=9e8k8JsOuq3Lyw7YbfY8XkwYsS2e1ChPhuTYq0muhS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=byjWdCWxMmNRtUpB3f/rzqUPo6GDm0Ur5BnvufjmCsuGTPaJwu5sZabbWaJn69ugeDuj/kEqCf64o+cadz8fmpR9CI104ofHtEnOGotRPxkgSiC9p5asiCXT28PoITtdbr/lETQz1T9ZK840r2uMigN1ldt6WDQGoi3xRV4RpZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nYeZA1sT; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ffa49f623cso57532681fa.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734980313; x=1735585113; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NafCQxwJmOkvoMXvzQ41cvEv1gNV8av0R9IvJSptuN8=;
        b=nYeZA1sTM2Zhbh6hdVeq0AeDlgg+MNWGPJ8LJxlplPb5M1Pw+u8iPRa6zJWtIYYrA0
         eNgbvsQrndT6hZgoBLFIztLwQsq5MqtyERRoXK2bLZJhh9tPB1CCdYQIY4v/fEsLSg2o
         d4L/KqLhXxLb1eTb7eRV164ZLiC+OFW1on9lXIqwgCnaIwPLi/ccJEgEt5tcLG6oxYGH
         Hdnxh7GLqBudUnmrEej5b68VB3/yR6gy2qZgCN4BY4a81dtg697E5B+nmhpZ9a7NTKRY
         +d1kaYFFJ7IxtpMzw8WlldnEAy9173ww1a4I5brH1heEgQEcQfjs39wsb0k0DKgNCYU/
         z8LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734980313; x=1735585113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NafCQxwJmOkvoMXvzQ41cvEv1gNV8av0R9IvJSptuN8=;
        b=e24VYrjfbISD+gnkN/xit8rrHOy47HdgkmP8FTgcF30bUNA2QIKlE12SOb9SeJ49L/
         jfuFdJfeKkgXf9Ep7Ll4DRp8MW8jb5qMv3FWBUY3CWMGa8hcsF/VCcXyoFi6bqdxaVG4
         AvI3L2nqg4huyKQNS5DCy6oSq++p2P5xBPCaZ70sxVQpVzuq0owgLwST247zUgC5xJak
         Lb3B/XUFdn1ePUQwW15dEOh9CJhPFyVfr5/fdW8F3NgYs5mwROebOdIeVWQzERs7wpwa
         7erkqYzG3OoxjVrZz/8++Xe/YxyuOuUCG1UlL+6PYgGTei7OCC9N/C3dndqtrkIgsBB+
         hO0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUbeFd7D5hAhQSZFvwfrKXAtPujvMi/VQ2Xb0PzVMMnk7ZztLYxOwbtGFLZz/t4ZgY/QBABMUHzhZ7s@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+xtK+CjspLihofZx4/ML4fSjwpHwE61y63vKVyUhTUGR+zsE6
	iYL1EH5g4KddwnScqOMcV/WNJ28zpqxjBsLgO9WvalRyQPjAgyBNH6NNSuBa9wE=
X-Gm-Gg: ASbGncvcUQ+UNYMllFZsU0/a1CKPHe7Y9rFVIu5cpzqc71pXQuk+ebZC3pzn3BPnNUi
	60fh/p4pWf5/unCKbaa8Aj17yzijDAS3Q0EyXidcGeMRW2TDzydX7Q4Kq4KGLujKK5xproO77/E
	Rcs2ynOBujnkTgK98OuLizmghvg7nb3WzwWxfeigx297JU0NfjV8GeaLr8HmaisUk7X+7vpXbwT
	umvSkbwhiqaoIyrSt8XeK9d2nch5LgrwbLsv1pbCBOWLXltyDOf5VEv3Rw3VDt3KHlkwDpdLj2n
	fERWVeX3THRyvq8Ecw8FGRP2nB+xNRESuYea
X-Google-Smtp-Source: AGHT+IHPb6SW08p1Sk/egzXNbASrffIvwilfZZMkOde25LLZktxTeqMtZZEbnt5aKm7eZrMKs3usjg==
X-Received: by 2002:a2e:be94:0:b0:300:32a3:a322 with SMTP id 38308e7fff4ca-3046860cef5mr46520301fa.32.1734980313338;
        Mon, 23 Dec 2024 10:58:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30484c377b1sm3344011fa.35.2024.12.23.10.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 10:58:32 -0800 (PST)
Date: Mon, 23 Dec 2024 20:58:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bjorn Helgaas <helgaas@kernel.org>, Rob Herring <robh@kernel.org>, andersson@kernel.org, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: PCI: Add binding for qps615
Message-ID: <m6h27swiax7wgtyldwl5sd3ddzh2tgiux3f4bgf6nuqlxsn6e3@o7rhwdjvaydw>
References: <20241112-qps615_pwr-v3-1-29a1e98aa2b0@quicinc.com>
 <20241204212559.GA3007963@bhelgaas>
 <20241211060000.3vn3iumouggjcbva@thinkpad>
 <bf57eca8-69b5-9c21-0350-bf1c07de786f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf57eca8-69b5-9c21-0350-bf1c07de786f@quicinc.com>

On Mon, Dec 23, 2024 at 10:18:24PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 12/11/2024 11:30 AM, Manivannan Sadhasivam wrote:
> > On Wed, Dec 04, 2024 at 03:25:59PM -0600, Bjorn Helgaas wrote:
> > > On Tue, Nov 12, 2024 at 08:31:33PM +0530, Krishna chaitanya chundru wrote:
> > > > Add binding describing the Qualcomm PCIe switch, QPS615,
> > > > which provides Ethernet MAC integrated to the 3rd downstream port
> > > > and two downstream PCIe ports.
> > > 
> > > > +$defs:
> > > > +  qps615-node:
> > > > +    type: object
> > > > +
> > > > +    properties:
> > > > +      qcom,l0s-entry-delay-ns:
> > > > +        description: Aspm l0s entry delay.
> > > > +
> > > > +      qcom,l1-entry-delay-ns:
> > > > +        description: Aspm l1 entry delay.
> > > 
> > > To match spec usage:
> > > s/Aspm/ASPM/
> > > s/l0s/L0s/
> > > s/l1/L1/
> > > 
> > > Other than the fact that qps615 needs the driver to configure these,
> > > there's nothing qcom-specific here, so I suggest the names should omit
> > > "qcom" and include "aspm".
> > > 
> > 
> > In that case, these properties should be documented in dt-schema:
> > https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/pci/pci-bus-common.yaml
> > 
> > - Mani
> I am fine to move to pci-bus-common.yaml but currently these are being used
> by qps615 only I hope that is fine.

With bindings there is no such thing as "currently". Once defined they
become an ABI and must not be changed.

-- 
With best wishes
Dmitry

