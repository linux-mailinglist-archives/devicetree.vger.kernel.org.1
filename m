Return-Path: <devicetree+bounces-238960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA09C6032B
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 11:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7894D4E1378
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 10:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BDC22874E4;
	Sat, 15 Nov 2025 10:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mqf0vtk/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E6341760
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 10:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763201530; cv=none; b=FtbW6o8TkC4xZWIhyb1L3xAlyO0AYUduGVeBZIfqJNjfYPWOKxS1/5Fb8hh9Wq6xZdm44oI3ROw7dydQmCisteDZltFX7zXrubctmnCnJhf0gX6Jk6hJrLhTmBEgj9dBnYEwSDLzNW+Eivq7SoHZA81z+uALCsMqywdUY/IKKeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763201530; c=relaxed/simple;
	bh=tTipRfPoP0MF1Jl+BTl3lV1NSWbP9afYNktAm+9O+Qs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l8dD338dhHpkcFt3c6H8dK11ViOvyVisSwhYOFg5hY0jfViG3cYlXzcog0G9pu/X7R1GfUxn4NLjsNR0e+8N8SqnexHCwZGhIh+5a5UhBB4gJwZEs7ejVGI7rFj/eknaoT9bBm2hTRYYZnCyRrdxV9Zeuioz9eRsIZHX8cPu9t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mqf0vtk/; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b98983bae80so1913684a12.0
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 02:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763201527; x=1763806327; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gm+ckSfEplX4Ke9EThg3ex6u+yrRtxkSfPzMWCL9PGA=;
        b=mqf0vtk/gVaIhgOrv3VS1rvyf90F/hoLmzEjS1UWDzlWVJdwvv9hp9rcdY8h7R9wKH
         HIzs5xtmcyLdWjyqCnQynXQMbDq8UG5rFySGrvmg7rU2Htt+5gBPtqOW1uxScYzXVTNt
         W3fCurx3lV8JLYRkCYJ6Ryx1rRg78lAgoCGdvd6aqDENyW0WU6nXDfcnmgrJ5wuwXQMr
         ucdvuzY2xofE3qf2q/WIi4kdow/ihz9R65je/gO6XiW8Wx1GfMCCUb6TJthUNheIDDuI
         mDJVbzg3q7pwxE6NEG4YZtOQp+Are8AEHH2LuT1nIzvhV9ICwb6vWD/8s9bcIlDmhob6
         Qc2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763201527; x=1763806327;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gm+ckSfEplX4Ke9EThg3ex6u+yrRtxkSfPzMWCL9PGA=;
        b=BMikGV97ooUwODaKJsFrc+7llLJOPd+WSqWGIw8GoaOUYR0g0pgoNZT2RsduMAhYjh
         0Vkn7+B5MbVTpeek8L9yQFziXGXvEgYoGhjckAWj9z+e88CcBFGxAME5J+NjLqmTWjj0
         spWWvqunGrU6uGOJT3HpE9Zt4GsXvodBXrUim6r/0hJHq5AqX8NVPgUrdLokpVloxo5W
         MD2dy5IrA1ZnuTpN1SEqte9vGtGcQRw90Lse3WYPOxrSny9M7OKvpzWiePMr5U2oQ/Un
         tBzuVZ3acSg7F1Xp3X1yjFAXcUTZdi3Y8oIkEdprbB/w+SjJbh5t/KmZ84j8B4R/aDPx
         k0CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVo2hjY1rNbWWnvN6Jd4O3TNLNJL+6hBOBeqC+E6HtWTE+oxI1L4u8c79CLLsRTDX84VqNmqMe/ASkG@vger.kernel.org
X-Gm-Message-State: AOJu0YzeQE4/cF4DiCNQP1lQkBnqU/JAfJzN3erg3LPf0B82AcUuWKBG
	pvL5lYX9u6Pii1uLyTO99gMbyFBUlXDQ7RN4FR2o8GYSiS4h7DgHQ8W/
X-Gm-Gg: ASbGncuLM42IiF6lXgVUuSEbZIZkVOgJAMGENNzouHyia4yg0pdy88JHzBMhgOCMGrL
	sjDa2NYQdamWg67VM+P0RimtcF3wcUDnE0BL/E+Ap78weGByRgXOXjiFwI/3pRk5TkZtxWpC8FU
	Y6bj3S8SajOS8G0BUwfXWfyeUEIXBEV7lFRwLfIZTExmXkJ7el+QECqmSO5BBK0vEDv8X+k2cX9
	dnEe5CjYCw4jYBGa8hAk/u+134GsQynUmonDXvr1j7u/x/rR7Hd92+Xo0jSfBVQX2zipcSTPAQc
	ho2X9d8EKZT+Curv3tFUVVaW3Gs5k1uTVTp4DZPLczh5K+5/dcuNEyFlRNJR4UjT86k++KcOw12
	F+AalNlc0wSPn/h8e2jS6GG4L6fxVwLTiBvj6mUT+HggOWTV8la14Oh2IRNn90NRRNRywPf/65Q
	==
X-Google-Smtp-Source: AGHT+IFOLT76Y53zANSgKQXjUT+7ysvQ4Xrl63BgxDn5v68pWGwdHgGSzDNQOkc+msl09UwqFa5XFw==
X-Received: by 2002:a05:7301:b0d:b0:2a4:3594:d552 with SMTP id 5a478bee46e88-2a4abb23c99mr1792869eec.31.1763201526899;
        Sat, 15 Nov 2025 02:12:06 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49dad0aefsm15522074eec.3.2025.11.15.02.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 02:12:06 -0800 (PST)
Date: Sat, 15 Nov 2025 07:11:59 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/3] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <aRhR79u5BPtRRFw3@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
 <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org>
 <aRhNIcGcQKp2ylqN@geday>
 <85d1543b-ea91-5f0f-59d6-e00fcf720938@manjaro.org>
 <aRhQMRjffbeCeArE@geday>
 <52931e25-0d6f-ca0a-7c26-2c65ab11432e@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <52931e25-0d6f-ca0a-7c26-2c65ab11432e@manjaro.org>

On Sat, Nov 15, 2025 at 11:09:42AM +0100, Dragan Simic wrote:
> Please, wait a day or two before sending the v2, because that's
> standard procedure.  Sending more than one version in the same day
> is highly discouraged, because it doesn't give enough time to people
> for reviewing, and may cause people to look at a wrong version.

Yeah, you're right, sorry.

