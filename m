Return-Path: <devicetree+bounces-182119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32787ACA918
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 07:49:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 109EB3BABEC
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 05:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BB01155316;
	Mon,  2 Jun 2025 05:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w7lCvrTU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995E64A23
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 05:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748843360; cv=none; b=dSDP/rBa1OyZl3TNUwhz8YmgpLyx4QZlQ4+L1BaiL4qJAcuh9gjDKIEcB+MwBc7gREkUHxZukYF1xWPQkP2lb4iZAF5Wbe4Bkj1ffaTbs5jpSbj2If1YcYpAwelrMUSzTJAJRKCdvgNs7cEpU0LyCrkCo3/fWyREtnF5iaS9Qig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748843360; c=relaxed/simple;
	bh=TTcp0RH5goWWaDtNOyQbRWioZ+PFqTZ1mEjZoQQ13zE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gutdnaj/2C+KjuuMibg+e8HLHwofBpsCnQzaxbxHxxyIwZgvKHZaINCjmZbYlU/fJ9ZzWC92GvIvPNT1YOXM/SH/5zXwr1APmyIvRCdW0/b379MVkZ5x8jMWbwgszecnTI8mJPNciRaLgolMdtY+439C8zZllXNy6gun+i8+Xfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w7lCvrTU; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a507e88b0aso728639f8f.1
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 22:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748843356; x=1749448156; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eyhHth04KPeox09Lk8fzATKM5wNicRHQ47sc7G5TLEA=;
        b=w7lCvrTUgP4PvPNpssNtUzdi/4jEQDtVOh2hc1CyZwWG8Aj+a0++8n5F9hgqipH2Hk
         reUlahuvA1MoaRJI3kVZwx9qGJ1T6WU5FnWlRADi1+nFH+6ZBEMumqGQysi4fn/96XdN
         +jC+PwOv4rnOuLd2jkJjjiLti+L4olyzKavOJ9YBfM+GhdnGODMjnQ+cDnvcRnfsov8P
         9lGhqViSAlSu159tKzT8jg/eEgOQMF+MUplQoZ+ZcSu5587ZGwfzZ+XEjTSJZDTZSL3c
         AO0QnmRpoUcwzzQiMQv3RDuoRftzI8fbsxtb9xwzTP6wO9MbvWEbn6dx2/cbX+skKkwS
         T/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748843356; x=1749448156;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eyhHth04KPeox09Lk8fzATKM5wNicRHQ47sc7G5TLEA=;
        b=Gi/zZFpEqwKwbn2c6GzaKxVnybsdwjk8T2ybheQ2tTtAM9DAPsybY1ima2ewCGRNhb
         gJ0QcbJYNuGUYkJo9sGHqgbaXuYwdarcsi/aG3KZKTotY/lqNsN4FoK1lWJYC63mvixH
         90YGy9yAp2DJMbhHKnX3Cy4nO/AUCIUsqLClWw3aKYG1yoLygMbu2fysoI3rQO82fXSq
         zNU0Rme7Vg4nFP6rWpMWPJyu7EKXc6NBcHtHjq5klZUSiuxPJ+3YTMGts35myH7rQZar
         Gd30H3vLK9wc9565smgrhJNxItcN6yLQQVm9Yp7FAQ0rtdsdVV8AoEFNdE/aditnrZWZ
         5GVg==
X-Forwarded-Encrypted: i=1; AJvYcCXzEmVdlbc+HJHs+lh8irILnt2dPeBCF+Hc16pgLzwu0jceAERD8Addm390zgg23yY/lMnoVOOLTX10@vger.kernel.org
X-Gm-Message-State: AOJu0YxF9kR33MLW6vK5JkDhTRiYvogKZpGt6v/azrbUWn3R3NlDY6TL
	B/NennCb8eWxXfmNrQj/NSR15+puE1ZhrvFW+XWWE42scf571MD144NCwBj0h3IGUbQ=
X-Gm-Gg: ASbGncv350nrVimuEhrJb+mFz689g8HnSWKBO7m+VPTjy6unnF0zzYclaKl9/Esf0lr
	MZjH8Ctto2yePXlx0+88TMRV8f9FtsfR5B5arGxauNDB51RNmKr5R4gFTcc7gawQWAplRQUAOl3
	WH5r9+gXlRuYgXZ0wINuUVxoqqoVbz460RxFAQPziSc1vGRvOtzONOxujFfVWNmuJYT2doZX94n
	GnPpJayjC+v0jT4vmsGTjhrJRJ7A+h1ds6n1z/LjK2FbonHrcc11a3rSDTETxmOzdjATLH7itsx
	yUpjbJTpy74jC2Ptvyc9e1nJ7XQzBOsXmWCxSBx/XsCYhPlk5CkSzv4=
X-Google-Smtp-Source: AGHT+IGEywdUX0aydO7qeLoFT3cz6r5kcLRXivHxspZpsWx9ZaJ8+GE/6DPG8HaQObUmlr8SGOikgA==
X-Received: by 2002:a5d:64e8:0:b0:3a4:dc42:a0ac with SMTP id ffacd0b85a97d-3a4f89dab95mr8160871f8f.49.1748843355821;
        Sun, 01 Jun 2025 22:49:15 -0700 (PDT)
Received: from localhost ([41.210.143.146])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-451d30a227csm43512715e9.0.2025.06.01.22.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 22:49:15 -0700 (PDT)
Date: Mon, 2 Jun 2025 08:49:10 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Xu Yang <xu.yang_2@nxp.com>,
	Peng Fan <peng.fan@nxp.com>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, s32@nxp.com,
	linaro-s32@linaro.org, Larisa Grigore <larisa.grigore@nxp.com>,
	Ionut Vicovan <Ionut.Vicovan@nxp.com>
Subject: Re: [PATCH 1/4] dt-bindings: usb: Add compatible strings for
 s32g2/s32g3
Message-ID: <aD07VqXXTEVst79-@stanley.mountain>
References: <cover.1748453565.git.dan.carpenter@linaro.org>
 <2a4317353557e4fac2a7bfa4261a75886eebe41b.1748453565.git.dan.carpenter@linaro.org>
 <aDd+nOo2KV2QmgXr@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aDd+nOo2KV2QmgXr@lizhi-Precision-Tower-5810>

On Wed, May 28, 2025 at 05:22:36PM -0400, Frank Li wrote:
> On Wed, May 28, 2025 at 10:57:10PM +0300, Dan Carpenter wrote:
> > From: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> >
> > Add the compatible strings for the NXP s32g2 and s32g3.
> >
> > Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> > Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 2 ++
> >  Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml  | 2 ++
> >  2 files changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> > index cc5787a8cfa3..400d885fea96 100644
> > --- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> > +++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> > @@ -24,6 +24,8 @@ properties:
> >            - nvidia,tegra114-udc
> >            - nvidia,tegra124-udc
> >            - qcom,ci-hdrc
> > +          - nxp,s32g2-usb
> > +          - nxp,s32g3-usb
> 
> keep alphabet order!

Ah, sure.

> Can you use b4 to send patch, look like cc list missed
> imx@lists.linux.dev

It's MAINTAINERS file which is wrong here.

$ ./scripts/get_maintainer.pl -f Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (maintainer:USB SUBSYSTEM)
Rob Herring <robh@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
Krzysztof Kozlowski <krzk+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
Conor Dooley <conor+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
Xu Yang <xu.yang_2@nxp.com> (in file)
Peng Fan <peng.fan@nxp.com> (in file)
linux-usb@vger.kernel.org (open list:USB SUBSYSTEM)
devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
linux-kernel@vger.kernel.org (open list)
USB SUBSYSTEM status: Supported

regards,
dan carpenter


